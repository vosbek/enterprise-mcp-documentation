---
title: MCP Servers
description: Enterprise Model Context Protocol servers for development teams
---

<div class="hero">
    <div class="container">
        <h1>Enterprise MCP Servers</h1>
        <p>Production-ready MCP servers designed for secure enterprise environments with read-only access patterns and corporate authentication.</p>
    </div>
</div>

<div class="section">
    <div class="container">
        <div class="section-title">
            <h2>Available MCP Servers</h2>
            <p>Choose the right MCP servers for your enterprise development workflow</p>
        </div>
        
        <div class="mcp-grid">
            {% for server in site.mcp_servers %}
            <a href="{{ '/servers/' | append: server.name | downcase | replace: ' ', '-' | replace: '.', '' | relative_url }}" class="mcp-card{% if server.status == 'under-evaluation' %} under-evaluation{% endif %}">
                <div class="mcp-card-header">
                    <span class="mcp-icon">{{ server.icon }}</span>
                    <h3 class="mcp-title">{{ server.name }}</h3>
                </div>
                <p class="mcp-desc">{{ server.desc }}</p>
            </a>
            {% endfor %}
        </div>
    </div>
</div>

<div class="section section-alt">
    <div class="container">
        <div class="section-title">
            <h2>Server Categories</h2>
            <p>MCP servers organized by enterprise function</p>
        </div>
        
        <div class="card-grid">
            <div class="card">
                <h3>🗄️ Data & Analytics</h3>
                <p>Connect to enterprise databases and data warehouses with read-only access for safe querying and analysis.</p>
                <ul style="margin-left: 1.5rem; color: var(--gray-600);">
                    <li>Oracle Database</li>
                    <li>Snowflake Data Warehouse</li>
                    <li>PostgreSQL</li>
                    <li>Amazon RDS</li>
                </ul>
                <a href="{{ '/servers/database' | relative_url }}" class="btn btn-primary" style="margin-top: 1rem;">Configure Database</a>
            </div>
            
            <div class="card">
                <h3>🔧 Development Tools</h3>
                <p>Integrate with your existing development and collaboration tools for enhanced productivity.</p>
                <ul style="margin-left: 1.5rem; color: var(--gray-600);">
                    <li>Enterprise GitHub</li>
                    <li>Jira Project Management</li>
                    <li>Figma Design Platform</li>
                    <li>File System Access</li>
                </ul>
                <a href="{{ '/servers/github' | relative_url }}" class="btn btn-primary" style="margin-top: 1rem;">Setup Dev Tools</a>
            </div>
            
            <div class="card">
                <h3>📄 Enterprise Systems</h3>
                <p>Access corporate document management, service catalogs, and IT service management platforms.</p>
                <ul style="margin-left: 1.5rem; color: var(--gray-600);">
                    <li>SharePoint Online</li>
                    <li>Backstage.io Service Catalog</li>
                    <li>ServiceNow ITSM</li>
                    <li>Internal APIs</li>
                </ul>
                <a href="{{ '/servers/sharepoint' | relative_url }}" class="btn btn-primary" style="margin-top: 1rem;">Configure Systems</a>
            </div>
            
            <div class="card">
                <h3>🧠 AI & Data Processing <span class="evaluation-badge">Under Evaluation</span></h3>
                <p>Advanced AI memory management and web data extraction capabilities currently being evaluated for enterprise deployment.</p>
                <ul style="margin-left: 1.5rem; color: var(--gray-600);">
                    <li>Context7 Vector Search</li>
                    <li>Firecrawl Web Scraping</li>
                    <li>AI Memory Management</li>
                    <li>Content Extraction</li>
                </ul>
                <a href="{{ '/servers/context7' | relative_url }}" class="btn btn-secondary" style="margin-top: 1rem;">View Evaluation</a>
            </div>
        </div>
    </div>
</div>

<div class="section">
    <div class="container">
        <div class="section-title">
            <h2>Enterprise Security Features</h2>
            <p>Built-in security and compliance features for enterprise environments</p>
        </div>
        
        <div class="card-grid">
            <div class="card">
                <h3>🔒 Read-Only Access</h3>
                <p>All MCP servers operate with read-only permissions by default, ensuring data integrity and preventing accidental modifications.</p>
            </div>
            
            <div class="card">
                <h3>🛡️ Corporate Authentication</h3>
                <p>Integration with enterprise SSO, LDAP, and certificate-based authentication systems for secure access control.</p>
            </div>
            
            <div class="card">
                <h3>📊 Audit Logging</h3>
                <p>Comprehensive logging of all MCP operations for compliance and security monitoring requirements.</p>
            </div>
            
            <div class="card">
                <h3>🌐 Network Security</h3>
                <p>Support for VPN, private networks, and corporate firewall configurations with encrypted connections.</p>
            </div>
        </div>
    </div>
</div>

<div class="section section-alt">
    <div class="container">
        <div class="section-title">
            <h2>Installation & Configuration</h2>
            <p>Quick setup for enterprise MCP servers</p>
        </div>
        
        <div class="card">
            <h3>Bulk Installation</h3>
            <p>Install all enterprise MCP servers with a single command:</p>
            <div class="code-block"># Install core enterprise servers
mcp install database github sharepoint backstage internal-api filesystem

# Install additional productivity servers
mcp install jira figma servicenow

# Configure enterprise authentication
mcp auth configure --enterprise --sso</div>
        </div>
        
        <div class="card">
            <h3>Environment Configuration</h3>
            <p>Set up environment variables for secure configuration management:</p>
            <div class="code-block"># Database connections
export ORACLE_CONNECTION_STRING="oracle://user@host:1521/db"
export SNOWFLAKE_ACCOUNT="company.snowflakecomputing.com"

# Authentication tokens
export GITHUB_TOKEN="ghp_xxxxxxxxxxxx"
export SHAREPOINT_CLIENT_ID="xxxxxxxx-xxxx-xxxx"

# SSL certificates
export SSL_CERT_PATH="/etc/ssl/certs/company.pem"</div>
        </div>
    </div>
</div>

<div class="section">
    <div class="container">
        <div class="section-title">
            <h2>Next Steps</h2>
            <p>Continue with detailed server configuration</p>
        </div>
        
        <div style="text-align: center;">
            <a href="{{ '/quick-start' | relative_url }}" class="btn btn-secondary" style="margin-right: 1rem;">Quick Start Guide</a>
            <a href="{{ '/best-practices' | relative_url }}" class="btn btn-primary">Security Best Practices</a>
        </div>
    </div>
</div>