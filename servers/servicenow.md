---
title: ServiceNow MCP Server
description: IT service management platform integration for enterprise operations
---

<div class="hero">
    <div class="container">
        <div class="hero-badge">🛠️ ServiceNow MCP Server</div>
        <h1>IT Service Management Integration</h1>
        <p>Enterprise ServiceNow integration for IT service management, incident tracking, and operational workflow automation.</p>
    </div>
</div>

<div class="section">
    <div class="container">
        <div class="section-title">
            <h2>ServiceNow Capabilities</h2>
            <p>Comprehensive ITSM and enterprise service management features</p>
        </div>
        
        <div class="card-grid">
            <div class="card">
                <h3>🎫 Incident Management</h3>
                <ul style="margin-left: 1.5rem; color: var(--gray-600);">
                    <li>Search and filter incident records</li>
                    <li>Track incident status and resolution</li>
                    <li>Access incident history and notes</li>
                    <li>Monitor SLA compliance and metrics</li>
                </ul>
            </div>
            
            <div class="card">
                <h3>📋 Service Catalog</h3>
                <ul style="margin-left: 1.5rem; color: var(--gray-600);">
                    <li>Browse available IT services</li>
                    <li>Access service request templates</li>
                    <li>Track request fulfillment status</li>
                    <li>Service approval workflows</li>
                </ul>
            </div>
            
            <div class="card">
                <h3>🔧 Change Management</h3>
                <ul style="margin-left: 1.5rem; color: var(--gray-600);">
                    <li>Change request tracking and approval</li>
                    <li>Release and deployment coordination</li>
                    <li>Risk assessment and mitigation</li>
                    <li>Configuration management database (CMDB)</li>
                </ul>
            </div>
            
            <div class="card">
                <h3>📊 Analytics & Reporting</h3>
                <ul style="margin-left: 1.5rem; color: var(--gray-600);">
                    <li>Service performance metrics</li>
                    <li>Team workload and capacity analysis</li>
                    <li>Customer satisfaction tracking</li>
                    <li>Operational efficiency reports</li>
                </ul>
            </div>
        </div>
    </div>
</div>

<div class="section section-alt">
    <div class="container">
        <div class="section-title">
            <h2>Step-by-Step Setup</h2>
            <p>Follow these steps to connect to your ServiceNow instance</p>
        </div>
        
        <div class="card">
            <h3>Step 1: Install the ServiceNow MCP Server</h3>
            <p>Install the ServiceNow MCP server on your development machine:</p>
            
```bash
# Install the ServiceNow MCP server
npm install -g @mcp/servicenow-server

# Verify installation
mcp --version
```
        </div>
        
        <div class="card">
            <h3>Step 2: Get ServiceNow Access Credentials (Ask Your IT Admin)</h3>
            <p>Contact your IT administrator for ServiceNow access. You'll need:</p>
            
            <ul style="margin-left: 1.5rem; color: var(--gray-600);">
                <li><strong>ServiceNow Instance URL</strong> (e.g., https://company.service-now.com)</li>
                <li><strong>Username</strong> (your company ServiceNow username)</li>
                <li><strong>Password</strong> (your ServiceNow password)</li>
                <li><strong>Role permissions</strong> for the tables you need (incident, sc_request, change_request)</li>
            </ul>
            
            <p><strong>Tell your IT admin you need read access to these tables:</strong></p>
            <ul style="margin-left: 1.5rem; color: var(--gray-600);">
                <li>incident (for incident management)</li>
                <li>sc_request (for service requests)</li>
                <li>change_request (for change management)</li>
                <li>sys_user (for user information)</li>
            </ul>
        </div>
        
        <div class="card">
            <h3>Step 3: Configure ServiceNow Connection</h3>
            <p>Set up the connection using your credentials:</p>
            
```bash
# Set your credentials (replace with actual values from IT)
export SERVICENOW_INSTANCE="https://company.service-now.com"
export SERVICENOW_USERNAME="your-username"
export SERVICENOW_PASSWORD="your-password"
export SERVICENOW_TABLES="incident,sc_request,change_request"

# Configure the MCP server
mcp config servicenow \
  --instance $SERVICENOW_INSTANCE \
  --username $SERVICENOW_USERNAME \
  --password $SERVICENOW_PASSWORD \
  --tables $SERVICENOW_TABLES \
  --readonly
```
        </div>
        
        <div class="card">
            <h3>Step 4: Test Your Connection</h3>
            <p>Verify everything is working:</p>
            
```bash
# Test the connection
mcp test servicenow

# Verify table access
mcp auth verify servicenow

# If successful, you should see:
# ✅ ServiceNow connection successful
# ✅ Table access verified
# ✅ Read permissions confirmed
```
        </div>
    </div>
</div>

<div class="section">
    <div class="container">
        <div class="section-title">
            <h2>Usage Examples</h2>
            <p>Access ServiceNow data through Copilot and MCP integration</p>
        </div>
        
        <div class="card">
            <h3>Method 1: Ask GitHub Copilot (Recommended)</h3>
            <p>In your IDE with GitHub Copilot, you can ask natural language questions:</p>
            
            <p><strong>Example questions you can ask Copilot:</strong></p>
            <ul style="margin-left: 1.5rem; color: var(--gray-600);">
                <li>"Show me all critical incidents assigned to IT operations"</li>
                <li>"What service requests are pending approval for my department?"</li>
                <li>"Find all change requests scheduled for this week"</li>
                <li>"What incidents have been reported about the authentication service?"</li>
                <li>"Show me the average resolution time for P1 incidents this month"</li>
                <li>"List all open tickets assigned to me"</li>
            </ul>
            
            <p>Copilot will automatically query your ServiceNow instance and provide answers!</p>
        </div>
        
        <div class="card">
            <h3>Method 2: Direct MCP Commands</h3>
            <p>You can also query ServiceNow directly from your terminal:</p>
            
            <h4>Query open incidents:</h4>
```bash
mcp query servicenow "show all critical incidents assigned to IT operations"
```

            <h4>Find service requests:</h4>
```bash
mcp query servicenow "list pending service requests for my department"
```

            <h4>Track change requests:</h4>
```bash
mcp query servicenow "show change requests scheduled for this week"
```

            <h4>Search specific incident:</h4>
```bash
mcp query servicenow "show details for incident INC0012345"
```
        </div>
    </div>
</div>

<div class="section">
    <div class="container">
        <div class="section-title">
            <h2>Integration Patterns</h2>
            <p>Common ServiceNow integration use cases for development teams</p>
        </div>
        
        <div class="card-grid">
            <div class="card">
                <h3>🚨 Incident Response</h3>
                <p>Integrate incident management with development workflows:</p>
                
                <p><strong>Example Copilot questions:</strong></p>
```
"Show me all P1 incidents related to authentication service"
"What incidents were resolved by my team this month?"
"Find incidents with similar symptoms to current issue"
```
            </div>
            
            <div class="card">
                <h3>🔄 Change Coordination</h3>
                <p>Track deployment and change management:</p>
                
                <p><strong>Example queries:</strong></p>
```
"Show change requests for production deployment"
"What approvals are needed for database migration?"
"List all changes scheduled for maintenance window"
```
            </div>
        </div>
    </div>
</div>