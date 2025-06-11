---
title: Database MCP Server
description: Enterprise database connectivity for Oracle, Snowflake, Postgres, and RDS
---

<div class="hero">
    <div class="container">
        <div class="hero-badge">🗄️ Database MCP Server</div>
        <h1>Enterprise Database Integration</h1>
        <p>Secure read-only access to Oracle, Snowflake, PostgreSQL, and AWS RDS databases with enterprise authentication and compliance features.</p>
    </div>
</div>

<div class="section">
    <div class="container">
        <div class="section-title">
            <h2>Supported Database Systems</h2>
            <p>Production-ready connectors for enterprise database platforms</p>
        </div>
        
        <div class="card-grid">
            <div class="card">
                <h3>🏛️ Oracle Database</h3>
                <p>Connect to Oracle Enterprise databases with advanced security features.</p>
                <ul style="margin-left: 1.5rem; color: var(--gray-600);">
                    <li>Oracle 19c, 21c, 23c support</li>
                    <li>SSL/TLS encryption</li>
                    <li>Wallet-based authentication</li>
                    <li>Read-only user connections</li>
                </ul>
            </div>
            
            <div class="card">
                <h3>❄️ Snowflake Data Warehouse</h3>
                <p>Access Snowflake data warehouse with enterprise SSO integration.</p>
                <ul style="margin-left: 1.5rem; color: var(--gray-600);">
                    <li>SSO authentication support</li>
                    <li>Role-based access control</li>
                    <li>Query result caching</li>
                    <li>Warehouse auto-suspend</li>
                </ul>
            </div>
            
            <div class="card">
                <h3>🐘 PostgreSQL</h3>
                <p>Connect to PostgreSQL instances with advanced connection pooling.</p>
                <ul style="margin-left: 1.5rem; color: var(--gray-600);">
                    <li>PostgreSQL 12+ compatibility</li>
                    <li>Connection pooling (PgBouncer)</li>
                    <li>SSL certificate authentication</li>
                    <li>Read replica support</li>
                </ul>
            </div>
            
            <div class="card">
                <h3>☁️ AWS RDS</h3>
                <p>Secure connections to RDS instances with IAM authentication.</p>
                <ul style="margin-left: 1.5rem; color: var(--gray-600);">
                    <li>IAM database authentication</li>
                    <li>RDS Proxy integration</li>
                    <li>Multi-AZ deployment support</li>
                    <li>Automated failover handling</li>
                </ul>
            </div>
        </div>
    </div>
</div>

<div class="section section-alt">
    <div class="container">
        <div class="section-title">
            <h2>Step-by-Step Setup</h2>
            <p>Follow these steps to connect to your enterprise databases</p>
        </div>
        
        <div class="card">
            <h3>Step 1: Install the Database MCP Server</h3>
            <p>First, install the database MCP server on your development machine:</p>
            
```bash
# Install the database MCP server
npm install -g @mcp/database-server

# Verify installation
mcp --version
```
        </div>
        
        <div class="card">
            <h3>Step 2: Get Your Database Connection Details</h3>
            <p>Contact your database administrator or check your company's developer portal for:</p>
            <ul style="margin-left: 1.5rem; color: var(--gray-600);">
                <li>Database hostname (e.g., oracle.company.com)</li>
                <li>Port number (e.g., 1521 for Oracle)</li>
                <li>Database name or service name</li>
                <li>Read-only username and password</li>
                <li>SSL certificates (if required)</li>
            </ul>
        </div>
        
        <div class="card">
            <h3>Step 3: Configure Your Database Connection</h3>
            <p>Choose your database type and run the appropriate command:</p>
            
            <h4>For Oracle Database:</h4>
```bash
mcp config database oracle \
  --host oracle.company.com \
  --port 1521 \
  --service-name PROD \
  --username readonly_user \
  --password your_password \
  --readonly
```

            <h4>For Snowflake:</h4>
```bash
mcp config database snowflake \
  --account company.snowflakecomputing.com \
  --warehouse COMPUTE_WH \
  --database ANALYTICS \
  --username your_username \
  --password your_password
```

            <h4>For PostgreSQL:</h4>
```bash
mcp config database postgres \
  --host postgres.company.com \
  --port 5432 \
  --database analytics \
  --username readonly_user \
  --password your_password \
  --ssl-mode require
```
        </div>
        
        <div class="card">
            <h3>Step 4: Test Your Connection</h3>
            <p>Verify that your database connection is working:</p>
            
```bash
# Test the connection
mcp test database

# If successful, you should see:
# ✅ Database connection successful
# ✅ Read permissions verified
```
        </div>
        
        <div class="card">
            <h3>Step 5: Set Environment Variables (Optional)</h3>
            <p>For easier management, you can set these environment variables in your shell profile:</p>
            
```bash
# Add these to your ~/.bashrc or ~/.zshrc file

# Oracle configuration
export ORACLE_HOME=/opt/oracle/instantclient
export TNS_ADMIN=/opt/oracle/wallet

# Snowflake configuration  
export SNOWFLAKE_ACCOUNT="company.snowflakecomputing.com"
export SNOWFLAKE_WAREHOUSE="COMPUTE_WH"

# PostgreSQL configuration
export POSTGRES_HOST="postgres.company.com"
export POSTGRES_DB="analytics"
```

            <p>After adding these, reload your shell:</p>
```bash
source ~/.bashrc  # or ~/.zshrc
```
        </div>
    </div>
</div>

<div class="section">
    <div class="container">
        <div class="section-title">
            <h2>How to Use Your Database Connection</h2>
            <p>Now that it's set up, here's how to query your databases</p>
        </div>
        
        <div class="card">
            <h3>Method 1: Ask GitHub Copilot (Recommended)</h3>
            <p>In your IDE with GitHub Copilot, you can ask natural language questions:</p>
            
            <p><strong>Example questions you can ask Copilot:</strong></p>
            <ul style="margin-left: 1.5rem; color: var(--gray-600);">
                <li>"Show me the top 10 customers by revenue this quarter"</li>
                <li>"What are the most common error codes in the application logs?"</li>
                <li>"Generate a report of user activity by department"</li>
                <li>"Find all orders from the last 30 days with status pending"</li>
            </ul>
            
            <p>Copilot will automatically use your MCP database connection to answer these questions!</p>
        </div>
        
        <div class="card">
            <h3>Method 2: Direct MCP Commands</h3>
            <p>You can also run SQL queries directly from your terminal:</p>
            
            <h4>Query customer data:</h4>

```sql
mcp query database "
SELECT customer_name, total_revenue 
FROM customers 
WHERE created_date >= DATE '2024-01-01'
ORDER BY total_revenue DESC 
LIMIT 10
"
```

            <h4>Analyze application metrics:</h4>

```sql
mcp query database "
SELECT DATE(log_timestamp) as log_date, 
       COUNT(*) as error_count
FROM application_logs 
WHERE log_level = 'ERROR'
GROUP BY DATE(log_timestamp)
ORDER BY log_date DESC
"
```
        </div>
    </div>
</div>

<div class="section section-alt">
    <div class="container">
        <div class="section-title">
            <h2>Security & Compliance</h2>
            <p>Enterprise-grade security features</p>
        </div>
        
        <div class="card-grid">
            <div class="card">
                <h3>🔒 Access Control</h3>
                <ul style="margin-left: 1.5rem; color: var(--gray-600);">
                    <li>Read-only database connections</li>
                    <li>Role-based access control (RBAC)</li>
                    <li>IP address whitelisting</li>
                    <li>Time-based access restrictions</li>
                </ul>
            </div>
            
            <div class="card">
                <h3>🛡️ Data Protection</h3>
                <ul style="margin-left: 1.5rem; color: var(--gray-600);">
                    <li>PII data masking and tokenization</li>
                    <li>Query result encryption</li>
                    <li>Audit logging for all queries</li>
                    <li>Data residency compliance</li>
                </ul>
            </div>
            
            <div class="card">
                <h3>📊 Monitoring</h3>
                <ul style="margin-left: 1.5rem; color: var(--gray-600);">
                    <li>Real-time connection monitoring</li>
                    <li>Query performance metrics</li>
                    <li>Failed authentication alerts</li>
                    <li>Compliance reporting</li>
                </ul>
            </div>
        </div>
    </div>
</div>