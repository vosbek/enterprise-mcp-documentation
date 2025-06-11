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
            <h2>Configuration</h2>
            <p>Set up database connections with enterprise security</p>
        </div>
        
        <div class="card">
            <h3>Installation & Setup</h3>
            <div class="code-block"># Install database MCP server
mcp install database

# Configure Oracle connection
mcp config database oracle \
  --host oracle.company.com \
  --port 1521 \
  --service-name PROD \
  --wallet-path /opt/oracle/wallet \
  --readonly

# Configure Snowflake connection  
mcp config database snowflake \
  --account company.snowflakecomputing.com \
  --warehouse COMPUTE_WH \
  --database ANALYTICS \
  --schema PUBLIC \
  --sso-enabled

# Configure PostgreSQL connection
mcp config database postgres \
  --host postgres.company.com \
  --port 5432 \
  --database analytics \
  --ssl-mode require \
  --cert-file /etc/ssl/client.crt</div>
        </div>
        
        <div class="card">
            <h3>Environment Variables</h3>
            <div class="code-block"># Oracle configuration
export ORACLE_HOME=/opt/oracle/instantclient
export TNS_ADMIN=/opt/oracle/wallet
export ORACLE_CONNECTION="oracle://readonly@oracle.company.com:1521/PROD"

# Snowflake configuration  
export SNOWFLAKE_ACCOUNT="company.snowflakecomputing.com"
export SNOWFLAKE_USER="mcp_service_account"
export SNOWFLAKE_WAREHOUSE="COMPUTE_WH"

# PostgreSQL configuration
export POSTGRES_CONNECTION="postgresql://readonly@postgres.company.com:5432/analytics?sslmode=require"</div>
        </div>
    </div>
</div>

<div class="section">
    <div class="container">
        <div class="section-title">
            <h2>Usage Examples</h2>
            <p>Common database queries through MCP integration</p>
        </div>
        
        <div class="card">
            <h3>GitHub Copilot Integration</h3>
            <p>Ask GitHub Copilot natural language questions about your data:</p>
            <div class="code-block"># Example queries you can ask Copilot:
"Show me the top 10 customers by revenue this quarter"
"What are the most common error codes in the application logs?"
"Generate a report of user activity by department"
"Find all orders from the last 30 days with status pending"</div>
        </div>
        
        <div class="card">
            <h3>Direct MCP Queries</h3>
            <p>Execute queries directly through the MCP interface:</p>
            <div class="code-block"># Query customer data
mcp query database "
  SELECT customer_name, total_revenue 
  FROM customers 
  WHERE created_date >= DATE '2024-01-01'
  ORDER BY total_revenue DESC 
  LIMIT 10
"

# Analyze application metrics
mcp query database "
  SELECT DATE(log_timestamp) as log_date, 
         COUNT(*) as error_count
  FROM application_logs 
  WHERE log_level = 'ERROR'
  GROUP BY DATE(log_timestamp)
  ORDER BY log_date DESC
"</div>
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