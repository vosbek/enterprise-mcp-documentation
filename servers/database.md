---
layout: default
title: Database MCP Server
description: Connect to Oracle, Snowflake, PostgreSQL, and AWS RDS with enterprise security
---

<!-- Page Header -->
<div class="page-header">
  <div class="page-header-container">
    <h1 class="page-title">Database MCP Server</h1>
    <p class="page-description">
      Connect GitHub Copilot to enterprise databases including Oracle, Snowflake, PostgreSQL, and AWS RDS with read-only access and enterprise security configurations.
    </p>
  </div>
</div>

<!-- Documentation Content -->
<div class="doc-content">

  <div style="display: inline-flex; align-items: center; gap: 8px; background: #e0f2fe; color: #0277bd; padding: 8px 16px; border-radius: 20px; font-size: 14px; font-weight: 600; margin-bottom: 32px;">
    <svg width="16" height="16" viewBox="0 0 24 24" fill="currentColor">
      <path d="M12,3C7.58,3 4,4.79 4,7C4,9.21 7.58,11 12,11C16.42,11 20,9.21 20,7C20,4.79 16.42,3 12,3M4,9V12C4,14.21 7.58,16 12,16C16.42,16 20,14.21 20,12V9C20,11.21 16.42,13 12,13C7.58,13 4,11.21 4,9M4,14V17C4,19.21 7.58,21 12,21C16.42,21 20,19.21 20,17V14C20,16.21 16.42,18 12,18C7.58,18 4,16.21 4,14Z"/>
    </svg>
    Read-Only Enterprise Database Access
  </div>

  ## Prerequisites

  Before setting up the Database MCP Server, ensure you have:

  - **Database client libraries** installed for your target databases
  - **Service account** with read-only permissions
  - **Network connectivity** to database servers through corporate VPN
  - **Valid connection credentials** stored securely

  ---

  ## Installation

  <div style="background: var(--bg-dark); color: #e5e7eb; border-radius: 12px; padding: 24px; margin: 24px 0;">
    <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 16px;">
      <span style="font-size: 12px; font-weight: 600; text-transform: uppercase; color: #9ca3af;">Terminal</span>
      <button onclick="copyToClipboard('npm install @modelcontextprotocol/server-database')" style="background: var(--primary-color); color: white; border: none; padding: 4px 12px; border-radius: 4px; font-size: 12px; cursor: pointer;">Copy</button>
    </div>
    <code style="background: none; color: inherit; padding: 0;">npm install @modelcontextprotocol/server-database</code>
  </div>

  ---

  ## Configuration Examples

  ### Oracle Database

  Add this configuration to your `mcp-config.json`:

  <div style="background: var(--bg-dark); color: #e5e7eb; border-radius: 12px; padding: 24px; margin: 24px 0;">
    <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 16px;">
      <span style="font-size: 12px; font-weight: 600; text-transform: uppercase; color: #9ca3af;">Oracle Configuration</span>
      <button onclick="copyToClipboard(JSON.stringify({\"oracle-prod\":{\"command\":\"node\",\"args\":[\"node_modules/@modelcontextprotocol/server-database/dist/index.js\"],\"env\":{\"DB_TYPE\":\"oracle\",\"DB_HOST\":\"oracle-prod.internal.company.com\",\"DB_PORT\":\"1521\",\"DB_SERVICE\":\"PROD\",\"DB_USER\":\"readonly_service_account\",\"DB_PASSWORD\":\"your-password\"}}}, null, 2))" style="background: var(--primary-color); color: white; border: none; padding: 4px 12px; border-radius: 4px; font-size: 12px; cursor: pointer;">Copy</button>
    </div>
    <pre style="margin: 0; background: none; border: none; padding: 0;"><code>{
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
}</code></pre>
  </div>

  ### Snowflake

  <div style="background: var(--bg-dark); color: #e5e7eb; border-radius: 12px; padding: 24px; margin: 24px 0;">
    <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 16px;">
      <span style="font-size: 12px; font-weight: 600; text-transform: uppercase; color: #9ca3af;">Snowflake Configuration</span>
      <button onclick="copyToClipboard('Snowflake config copied!')" style="background: var(--primary-color); color: white; border: none; padding: 4px 12px; border-radius: 4px; font-size: 12px; cursor: pointer;">Copy</button>
    </div>
    <pre style="margin: 0; background: none; border: none; padding: 0;"><code>{
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
}</code></pre>
  </div>

  ### PostgreSQL

  <div style="background: var(--bg-dark); color: #e5e7eb; border-radius: 12px; padding: 24px; margin: 24px 0;">
    <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 16px;">
      <span style="font-size: 12px; font-weight: 600; text-transform: uppercase; color: #9ca3af;">PostgreSQL Configuration</span>
      <button onclick="copyToClipboard('PostgreSQL config copied!')" style="background: var(--primary-color); color: white; border: none; padding: 4px 12px; border-radius: 4px; font-size: 12px; cursor: pointer;">Copy</button>
    </div>
    <pre style="margin: 0; background: none; border: none; padding: 0;"><code>{
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
}</code></pre>
  </div>

  ---

  ## Read-Only Security Setup

  <div style="background: #fff3cd; border-left: 4px solid #ffc107; padding: 16px 20px; border-radius: 8px; margin: 24px 0;">
    <strong>🔒 Security Requirement:</strong> All database connections must use read-only service accounts to ensure data protection and compliance.
  </div>

  ### Creating Read-Only Service Accounts

  #### Oracle Database

  <div style="background: var(--bg-dark); color: #e5e7eb; border-radius: 12px; padding: 24px; margin: 24px 0;">
    <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 16px;">
      <span style="font-size: 12px; font-weight: 600; text-transform: uppercase; color: #9ca3af;">Oracle SQL</span>
      <button onclick="copyToClipboard('-- Oracle read-only setup\nCREATE USER readonly_service_account IDENTIFIED BY \'secure_password\';\nGRANT CONNECT TO readonly_service_account;\nGRANT SELECT ON schema_name.* TO readonly_service_account;')" style="background: var(--primary-color); color: white; border: none; padding: 4px 12px; border-radius: 4px; font-size: 12px; cursor: pointer;">Copy</button>
    </div>
    <pre style="margin: 0; background: none; border: none; padding: 0;"><code>-- Create read-only user
CREATE USER readonly_service_account IDENTIFIED BY 'secure_password';

-- Grant connect privilege
GRANT CONNECT TO readonly_service_account;

-- Grant read access to specific schemas
GRANT SELECT ON schema_name.* TO readonly_service_account;

-- Create read-only role (recommended)
CREATE ROLE read_only_role;
GRANT SELECT ON schema_name.* TO read_only_role;
GRANT read_only_role TO readonly_service_account;</code></pre>
  </div>

  #### Snowflake

  <div style="background: var(--bg-dark); color: #e5e7eb; border-radius: 12px; padding: 24px; margin: 24px 0;">
    <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 16px;">
      <span style="font-size: 12px; font-weight: 600; text-transform: uppercase; color: #9ca3af;">Snowflake SQL</span>
      <button onclick="copyToClipboard('-- Snowflake read-only setup\nCREATE ROLE read_only_role;\nGRANT USAGE ON WAREHOUSE COMPUTE_WH TO ROLE read_only_role;')" style="background: var(--primary-color); color: white; border: none; padding: 4px 12px; border-radius: 4px; font-size: 12px; cursor: pointer;">Copy</button>
    </div>
    <pre style="margin: 0; background: none; border: none; padding: 0;"><code>-- Create read-only role
CREATE ROLE read_only_role;

-- Grant usage on warehouse and database
GRANT USAGE ON WAREHOUSE COMPUTE_WH TO ROLE read_only_role;
GRANT USAGE ON DATABASE ANALYTICS_DB TO ROLE read_only_role;
GRANT USAGE ON SCHEMA ANALYTICS_DB.PUBLIC TO ROLE read_only_role;

-- Grant select on all tables
GRANT SELECT ON ALL TABLES IN SCHEMA ANALYTICS_DB.PUBLIC TO ROLE read_only_role;

-- Create user and assign role
CREATE USER readonly_service_account PASSWORD='secure_password';
GRANT ROLE read_only_role TO USER readonly_service_account;</code></pre>
  </div>

  ---

  ## Usage Examples

  Once configured, you can ask GitHub Copilot questions like:

  <div style="display: grid; gap: 16px; margin: 32px 0;">
    <div style="padding: 16px; background: #f8f9fa; border-left: 4px solid var(--primary-color); border-radius: 8px;">
      <strong>Schema Exploration:</strong> "Show me the schema for the users table"
    </div>
    <div style="padding: 16px; background: #f8f9fa; border-left: 4px solid var(--primary-color); border-radius: 8px;">
      <strong>Data Analysis:</strong> "What are the top 10 most active customers this month?"
    </div>
    <div style="padding: 16px; background: #f8f9fa; border-left: 4px solid var(--primary-color); border-radius: 8px;">
      <strong>Relationship Mapping:</strong> "Explain the relationship between orders and customers tables"
    </div>
    <div style="padding: 16px; background: #f8f9fa; border-left: 4px solid var(--primary-color); border-radius: 8px;">
      <strong>Query Generation:</strong> "Generate a query to find all transactions over $10,000"
    </div>
  </div>

  ---

  ## Security Best Practices

  ### Environment Variables
  
  Store sensitive credentials in environment variables, not configuration files:

  <div style="background: var(--bg-dark); color: #e5e7eb; border-radius: 12px; padding: 24px; margin: 24px 0;">
    <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 16px;">
      <span style="font-size: 12px; font-weight: 600; text-transform: uppercase; color: #9ca3af;">Environment Setup</span>
      <button onclick="copyToClipboard('# Windows\n$env:DB_PASSWORD = \"your-secure-password\"\n\n# Linux/Ubuntu\nexport DB_PASSWORD=\"your-secure-password\"')" style="background: var(--primary-color); color: white; border: none; padding: 4px 12px; border-radius: 4px; font-size: 12px; cursor: pointer;">Copy</button>
    </div>
    <pre style="margin: 0; background: none; border: none; padding: 0;"><code># Windows (PowerShell)
$env:DB_PASSWORD = "your-secure-password"

# Linux/Ubuntu
export DB_PASSWORD="your-secure-password"</code></pre>
  </div>

  ### Connection Security

  <div style="display: grid; gap: 20px; margin: 32px 0;">
    <div style="padding: 20px; background: white; border: 1px solid var(--border-color); border-radius: 12px;">
      <h4 style="margin: 0 0 8px 0; color: var(--text-primary);">SSL/TLS Encryption</h4>
      <p style="margin: 0; color: var(--text-secondary); font-size: 14px;">Always use encrypted connections with proper certificate validation</p>
    </div>
    
    <div style="padding: 20px; background: white; border: 1px solid var(--border-color); border-radius: 12px;">
      <h4 style="margin: 0 0 8px 0; color: var(--text-primary);">Connection Pooling</h4>
      <p style="margin: 0; color: var(--text-secondary); font-size: 14px;">Configure appropriate connection limits to prevent resource exhaustion</p>
    </div>
    
    <div style="padding: 20px; background: white; border: 1px solid var(--border-color); border-radius: 12px;">
      <h4 style="margin: 0 0 8px 0; color: var(--text-primary);">Audit Logging</h4>
      <p style="margin: 0; color: var(--text-secondary); font-size: 14px;">All database access is logged for security reviews and compliance</p>
    </div>
  </div>

  ---

  ## Troubleshooting

  ### Common Issues

  <div style="display: grid; gap: 20px; margin: 32px 0;">
    <details style="padding: 20px; background: white; border: 1px solid var(--border-color); border-radius: 12px;">
      <summary style="font-weight: 600; cursor: pointer;">Connection Timeout</summary>
      <div style="margin-top: 12px; color: var(--text-secondary);">
        <p>Verify VPN connectivity, check database server status, and confirm firewall rules allow connections on the specified port.</p>
      </div>
    </details>
    
    <details style="padding: 20px; background: white; border: 1px solid var(--border-color); border-radius: 12px;">
      <summary style="font-weight: 600; cursor: pointer;">Authentication Failed</summary>
      <div style="margin-top: 12px; color: var(--text-secondary);">
        <p>Verify service account credentials, check account permissions, and ensure password hasn't expired.</p>
      </div>
    </details>
    
    <details style="padding: 20px; background: white; border: 1px solid var(--border-color); border-radius: 12px;">
      <summary style="font-weight: 600; cursor: pointer;">SSL Certificate Issues</summary>
      <div style="margin-top: 12px; color: var(--text-secondary);">
        <p>Verify certificate paths, check certificate validity, and confirm SSL configuration matches server requirements.</p>
      </div>
    </details>
  </div>

  ---

  ## Advanced Configuration

  ### Performance Optimization

  <div style="background: var(--bg-dark); color: #e5e7eb; border-radius: 12px; padding: 24px; margin: 24px 0;">
    <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 16px;">
      <span style="font-size: 12px; font-weight: 600; text-transform: uppercase; color: #9ca3af;">Performance Settings</span>
      <button onclick="copyToClipboard('Performance config copied!')" style="background: var(--primary-color); color: white; border: none; padding: 4px 12px; border-radius: 4px; font-size: 12px; cursor: pointer;">Copy</button>
    </div>
    <pre style="margin: 0; background: none; border: none; padding: 0;"><code>{
  "env": {
    "DB_POOL_MIN": "1",
    "DB_POOL_MAX": "5",
    "DB_POOL_IDLE_TIMEOUT": "30000",
    "DB_QUERY_TIMEOUT": "30000",
    "DB_MAX_ROWS": "1000"
  }
}</code></pre>
  </div>

  ## Compliance Notes

  <div style="background: #e8f5e8; border-left: 4px solid var(--accent-color); padding: 16px 20px; border-radius: 8px; margin: 24px 0;">
    <strong>✅ Enterprise Compliance:</strong> This MCP server configuration meets all enterprise security requirements including read-only access, audit logging, and data governance policies.
  </div>

  <div style="text-align: center; margin: 48px 0;">
    <a href="../quick-start.html" style="display: inline-flex; align-items: center; gap: 8px; padding: 14px 28px; background: var(--primary-color); color: white; text-decoration: none; border-radius: 12px; font-weight: 600; transition: all 0.3s ease; margin-right: 16px;">
      <svg width="16" height="16" viewBox="0 0 24 24" fill="currentColor">
        <path d="M11,4H13V16L18.5,10.5L19.92,11.92L12,19.84L4.08,11.92L5.5,10.5L11,16V4Z"/>
      </svg>
      Back to Quick Start
    </a>
    <a href="github.html" style="display: inline-flex; align-items: center; gap: 8px; padding: 14px 28px; background: white; color: var(--primary-color); border: 2px solid var(--border-color); text-decoration: none; border-radius: 12px; font-weight: 600; transition: all 0.3s ease;">
      Next: GitHub MCP
      <svg width="16" height="16" viewBox="0 0 24 24" fill="currentColor">
        <path d="M4,11V13H16L10.5,18.5L11.92,19.92L19.84,12L11.92,4.08L10.5,5.5L16,11H4Z"/>
      </svg>
    </a>
  </div>

</div>

<script>
function copyToClipboard(text) {
  navigator.clipboard.writeText(text).then(function() {
    // Could add a toast notification here
    console.log('Copied to clipboard:', text);
  }, function(err) {
    console.error('Could not copy text: ', err);
  });
}
</script>