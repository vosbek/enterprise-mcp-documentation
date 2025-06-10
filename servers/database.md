# Database MCP Server

The Database MCP Server provides read-only access to enterprise databases including Oracle, Snowflake, Postgres, and AWS RDS instances.

## Prerequisites

- Database client libraries installed
- Service account with read-only permissions
- Network connectivity to database servers
- Valid connection credentials

## Installation

```bash
npm install @modelcontextprotocol/server-database
```

## Configuration

### Oracle Database

Add to your `mcp-config.json`:

```json
{
  "mcpServers": {
    "oracle-prod": {
      "command": "node",
      "args": [
        "node_modules/@modelcontextprotocol/server-database/dist/index.js"
      ],
      "env": {
        "DB_TYPE": "oracle",
        "DB_HOST": "oracle-prod.internal.company.com",
        "DB_PORT": "1521",
        "DB_SERVICE": "PROD",
        "DB_USER": "readonly_service_account",
        "DB_PASSWORD": "your-password"
      }
    }
  }
}
```

### Snowflake

```json
{
  "mcpServers": {
    "snowflake-analytics": {
      "command": "node",
      "args": [
        "node_modules/@modelcontextprotocol/server-database/dist/index.js"
      ],
      "env": {
        "DB_TYPE": "snowflake",
        "SNOWFLAKE_ACCOUNT": "company_account",
        "SNOWFLAKE_USER": "readonly_service_account",
        "SNOWFLAKE_PASSWORD": "your-password",
        "SNOWFLAKE_DATABASE": "ANALYTICS_DB",
        "SNOWFLAKE_SCHEMA": "PUBLIC",
        "SNOWFLAKE_WAREHOUSE": "COMPUTE_WH"
      }
    }
  }
}
```

### PostgreSQL

```json
{
  "mcpServers": {
    "postgres-app": {
      "command": "node",
      "args": [
        "node_modules/@modelcontextprotocol/server-database/dist/index.js"
      ],
      "env": {
        "DB_TYPE": "postgresql",
        "DB_HOST": "postgres-app.internal.company.com",
        "DB_PORT": "5432",
        "DB_NAME": "application_db",
        "DB_USER": "readonly_service_account",
        "DB_PASSWORD": "your-password",
        "DB_SSL": "true"
      }
    }
  }
}
```

### AWS RDS (Multiple Engines)

```json
{
  "mcpServers": {
    "rds-mysql": {
      "command": "node",
      "args": [
        "node_modules/@modelcontextprotocol/server-database/dist/index.js"
      ],
      "env": {
        "DB_TYPE": "mysql",
        "DB_HOST": "rds-mysql.cluster-xyz.us-east-1.rds.amazonaws.com",
        "DB_PORT": "3306",
        "DB_NAME": "application_db",
        "DB_USER": "readonly_service_account",
        "DB_PASSWORD": "your-password",
        "DB_SSL": "true"
      }
    }
  }
}
```

## Read-Only Setup

### Creating Read-Only Service Accounts

#### Oracle
```sql
-- Create read-only user
CREATE USER readonly_service_account IDENTIFIED BY 'secure_password';

-- Grant connect privilege
GRANT CONNECT TO readonly_service_account;

-- Grant read access to specific schemas
GRANT SELECT ON schema_name.* TO readonly_service_account;

-- Create read-only role (recommended)
CREATE ROLE read_only_role;
GRANT SELECT ON schema_name.* TO read_only_role;
GRANT read_only_role TO readonly_service_account;
```

#### Snowflake
```sql
-- Create read-only role
CREATE ROLE read_only_role;

-- Grant usage on warehouse and database
GRANT USAGE ON WAREHOUSE COMPUTE_WH TO ROLE read_only_role;
GRANT USAGE ON DATABASE ANALYTICS_DB TO ROLE read_only_role;
GRANT USAGE ON SCHEMA ANALYTICS_DB.PUBLIC TO ROLE read_only_role;

-- Grant select on all tables
GRANT SELECT ON ALL TABLES IN SCHEMA ANALYTICS_DB.PUBLIC TO ROLE read_only_role;

-- Create user and assign role
CREATE USER readonly_service_account PASSWORD='secure_password';
GRANT ROLE read_only_role TO USER readonly_service_account;
```

#### PostgreSQL
```sql
-- Create read-only role
CREATE ROLE read_only_role;

-- Grant connect to database
GRANT CONNECT ON DATABASE application_db TO read_only_role;

-- Grant usage on schema
GRANT USAGE ON SCHEMA public TO read_only_role;

-- Grant select on all tables
GRANT SELECT ON ALL TABLES IN SCHEMA public TO read_only_role;

-- Grant select on future tables
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT SELECT ON TABLES TO read_only_role;

-- Create user and assign role
CREATE USER readonly_service_account WITH PASSWORD 'secure_password';
GRANT read_only_role TO readonly_service_account;
```

## Security Best Practices

### Environment Variables
Store sensitive credentials in environment variables, not in configuration files:

```bash
# Windows (PowerShell)
$env:DB_PASSWORD = "your-secure-password"

# Linux/Ubuntu
export DB_PASSWORD="your-secure-password"
```

### Connection Pooling
Configure appropriate connection limits:

```json
{
  "env": {
    "DB_POOL_MIN": "1",
    "DB_POOL_MAX": "5",
    "DB_POOL_IDLE_TIMEOUT": "30000"
  }
}
```

### SSL/TLS Configuration
Always use encrypted connections:

```json
{
  "env": {
    "DB_SSL": "true",
    "DB_SSL_CERT": "/path/to/client-cert.pem",
    "DB_SSL_KEY": "/path/to/client-key.pem",
    "DB_SSL_CA": "/path/to/ca-cert.pem"
  }
}
```

## Usage Examples

Once configured, you can ask GitHub Copilot questions like:

- "Show me the schema for the users table"
- "What are the top 10 most active customers this month?"
- "Explain the relationship between orders and customers tables"
- "Generate a query to find all transactions over $10,000"

## Troubleshooting

### Common Issues

**Connection Timeout**
- Verify VPN connectivity
- Check database server status
- Confirm firewall rules

**Authentication Failed**
- Verify service account credentials
- Check account permissions
- Ensure password hasn't expired

**SSL Certificate Issues**
- Verify certificate paths
- Check certificate validity
- Confirm SSL configuration

### Debug Logging

Enable debug logging for troubleshooting:

```json
{
  "env": {
    "DEBUG": "mcp:database:*",
    "LOG_LEVEL": "debug"
  }
}
```

## Advanced Configuration

### Query Timeout
```json
{
  "env": {
    "DB_QUERY_TIMEOUT": "30000"
  }
}
```

### Custom Schema Filtering
```json
{
  "env": {
    "DB_ALLOWED_SCHEMAS": "hr,finance,operations",
    "DB_EXCLUDED_TABLES": "audit_log,temp_data"
  }
}
```

### Row Limit Protection
```json
{
  "env": {
    "DB_MAX_ROWS": "1000",
    "DB_QUERY_TIMEOUT": "30000"
  }
}
```

## Compliance Notes

- All database access is logged
- Read-only permissions strictly enforced
- No data modification capabilities
- Audit trail maintained for security reviews
- Complies with enterprise data governance policies