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
            <a href="{{ '/servers/' | append: server.name | downcase | replace: ' ', '-' | replace: '.', '' | relative_url }}" class="mcp-card{% if server.status == 'under-evaluation' %} under-evaluation{% elsif server.status == 'community' %} community{% elsif server.status == 'beta' %} beta{% endif %}">
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

<div class="section">
    <div class="container">
        <div class="section-title">
            <h2>MCP Server Tools & API Calls</h2>
            <p>Actual tool definitions and API methods available through each MCP server</p>
        </div>
        
        <div class="card-grid">
            <div class="card">
                <h3>🗄️ Database Server</h3>
                <div style="font-size: 0.875rem; color: var(--text-secondary); margin-bottom: 0.75rem;">
                    <strong>CLI Tools:</strong>
                </div>
                <ul style="margin-left: 1rem; color: var(--gray-600); font-size: 0.8125rem;">
                    <li><code>mcp config database oracle</code></li>
                    <li><code>mcp query database "SQL..."</code></li>
                    <li><code>mcp test database</code></li>
                    <li>Natural language SQL queries</li>
                </ul>
            </div>
            
            <div class="card">
                <h3>📱 GitHub Server</h3>
                <div style="font-size: 0.875rem; color: var(--text-secondary); margin-bottom: 0.75rem;">
                    <strong>CLI Tools:</strong>
                </div>
                <ul style="margin-left: 1rem; color: var(--gray-600); font-size: 0.8125rem;">
                    <li><code>mcp config github --token</code></li>
                    <li><code>mcp query github "repositories in org"</code></li>
                    <li><code>mcp query github "search code 'function'"</code></li>
                    <li><code>mcp auth verify github</code></li>
                </ul>
            </div>
            
            <div class="card">
                <h3>📄 SharePoint Server</h3>
                <div style="font-size: 0.875rem; color: var(--text-secondary); margin-bottom: 0.75rem;">
                    <strong>CLI Tools:</strong>
                </div>
                <ul style="margin-left: 1rem; color: var(--gray-600); font-size: 0.8125rem;">
                    <li><code>mcp config sharepoint --tenant-url</code></li>
                    <li><code>mcp query sharepoint "search documents"</code></li>
                    <li><code>mcp query sharepoint "find documents by user"</code></li>
                    <li><code>mcp test sharepoint</code></li>
                </ul>
            </div>
            
            <div class="card">
                <h3>🏗️ Backstage.io Server</h3>
                <div style="font-size: 0.875rem; color: var(--text-secondary); margin-bottom: 0.75rem;">
                    <strong>CLI Tools:</strong>
                </div>
                <ul style="margin-left: 1rem; color: var(--gray-600); font-size: 0.8125rem;">
                    <li><code>mcp config backstage --url</code></li>
                    <li><code>mcp query backstage "list microservices"</code></li>
                    <li><code>mcp query backstage "find API docs"</code></li>
                    <li><code>mcp test backstage</code></li>
                </ul>
            </div>
            
            <div class="card">
                <h3>🔗 Internal API Server</h3>
                <div style="font-size: 0.875rem; color: var(--text-secondary); margin-bottom: 0.75rem;">
                    <strong>CLI Tools:</strong>
                </div>
                <ul style="margin-left: 1rem; color: var(--gray-600); font-size: 0.8125rem;">
                    <li><code>mcp config internal-api add</code></li>
                    <li><code>mcp query internal-api "get user details"</code></li>
                    <li><code>mcp query internal-api "health status"</code></li>
                    <li><code>mcp test internal-api</code></li>
                </ul>
            </div>
            
            <div class="card">
                <h3>📁 File System Server</h3>
                <div style="font-size: 0.875rem; color: var(--text-secondary); margin-bottom: 0.75rem;">
                    <strong>CLI Tools:</strong>
                </div>
                <ul style="margin-left: 1rem; color: var(--gray-600); font-size: 0.8125rem;">
                    <li><code>mcp config filesystem --workspace</code></li>
                    <li><code>mcp query filesystem "show structure"</code></li>
                    <li><code>mcp query filesystem "find config files"</code></li>
                    <li><code>mcp test filesystem</code></li>
                </ul>
            </div>
            
            <div class="card">
                <h3>📋 Jira Server</h3>
                <div style="font-size: 0.875rem; color: var(--text-secondary); margin-bottom: 0.75rem;">
                    <strong>CLI Tools:</strong>
                </div>
                <ul style="margin-left: 1rem; color: var(--gray-600); font-size: 0.8125rem;">
                    <li><code>mcp config jira --url --api-token</code></li>
                    <li><code>mcp query jira "show open bugs"</code></li>
                    <li><code>mcp query jira "sprint progress"</code></li>
                    <li><code>mcp test jira</code></li>
                </ul>
            </div>
            
            <div class="card">
                <h3>🎨 Figma Dev Mode <span class="evaluation-badge" style="font-size: 0.625rem; background: linear-gradient(45deg, #3b82f6, #2563eb);">Beta</span></h3>
                <div style="font-size: 0.875rem; color: var(--text-secondary); margin-bottom: 0.75rem;">
                    <strong>Official Integration:</strong>
                </div>
                <ul style="margin-left: 1rem; color: var(--gray-600); font-size: 0.8125rem;">
                    <li>Enable MCP in Figma → Preferences</li>
                    <li>Server: <code>http://127.0.0.1:3845/sse</code></li>
                    <li>AI prompt: "Generate code for selection"</li>
                    <li>Real-time frame selection</li>
                </ul>
            </div>
            
            <div class="card">
                <h3>🖼️ Figma Context <span class="evaluation-badge" style="font-size: 0.625rem; background: linear-gradient(45deg, #10b981, #059669);">Community</span></h3>
                <div style="font-size: 0.875rem; color: var(--text-secondary); margin-bottom: 0.75rem;">
                    <strong>URL-Based Integration:</strong>
                </div>
                <ul style="margin-left: 1rem; color: var(--gray-600); font-size: 0.8125rem;">
                    <li><code>npx figma-context-mcp</code></li>
                    <li>Paste Figma URLs in AI chat</li>
                    <li>AI-optimized metadata translation</li>
                    <li>Cross-framework code generation</li>
                </ul>
            </div>
            
            <div class="card">
                <h3>🛠️ ServiceNow Server</h3>
                <div style="font-size: 0.875rem; color: var(--text-secondary); margin-bottom: 0.75rem;">
                    <strong>CLI Tools:</strong>
                </div>
                <ul style="margin-left: 1rem; color: var(--gray-600); font-size: 0.8125rem;">
                    <li><code>mcp config servicenow --instance</code></li>
                    <li><code>mcp query servicenow "critical incidents"</code></li>
                    <li><code>mcp query servicenow "service requests"</code></li>
                    <li><code>mcp test servicenow</code></li>
                </ul>
            </div>
            
            <div class="card under-evaluation">
                <h3>🧠 Context7 Server</h3>
                <div style="font-size: 0.875rem; color: var(--text-secondary); margin-bottom: 0.75rem;">
                    <strong>CLI Tools:</strong>
                </div>
                <ul style="margin-left: 1rem; color: var(--gray-600); font-size: 0.8125rem;">
                    <li><code>mcp config context7 --redis-url</code></li>
                    <li><code>context7 init --index-name</code></li>
                    <li><code>mcp query context7 "remember that..."</code></li>
                    <li><code>mcp query context7 "what do we know?"</code></li>
                </ul>
            </div>
            
            <div class="card under-evaluation">
                <h3>🔥 Firecrawl Server</h3>
                <div style="font-size: 0.875rem; color: var(--text-secondary); margin-bottom: 0.75rem;">
                    <strong>CLI Tools:</strong>
                </div>
                <ul style="margin-left: 1rem; color: var(--gray-600); font-size: 0.8125rem;">
                    <li><code>mcp config firecrawl --api-key</code></li>
                    <li><code>firecrawl scrape "https://url"</code></li>
                    <li><code>mcp query firecrawl "scrape and extract"</code></li>
                    <li><code>mcp test firecrawl</code></li>
                </ul>
            </div>
        </div>
        
        <div style="background: rgba(30, 64, 175, 0.05); border: 1px solid rgba(30, 64, 175, 0.2); border-radius: 8px; padding: 1.5rem; margin-top: 2rem; text-align: center;">
            <p style="margin: 0; color: var(--primary-dark); font-weight: 500;">
                <strong>🔧 Technical Access:</strong> All MCP servers provide both CLI commands for direct access and natural language querying through AI assistants. Use <code>mcp --help</code> for complete command documentation.
            </p>
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