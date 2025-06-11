---
title: SharePoint MCP Server
description: Enterprise SharePoint integration for document search and retrieval
---

<div class="hero">
    <div class="container">
        <div class="hero-badge">📄 SharePoint MCP Server</div>
        <h1>SharePoint Enterprise Integration</h1>
        <p>Secure access to SharePoint Online and on-premises sites for document search, retrieval, and collaboration insights.</p>
    </div>
</div>

<div class="section">
    <div class="container">
        <div class="section-title">
            <h2>SharePoint Capabilities</h2>
            <p>Comprehensive SharePoint integration for enterprise document management</p>
        </div>
        
        <div class="card-grid">
            <div class="card">
                <h3>📁 Document Management</h3>
                <ul style="margin-left: 1.5rem; color: var(--gray-600);">
                    <li>Search documents across sites and libraries</li>
                    <li>Access document metadata and properties</li>
                    <li>Retrieve file content and versions</li>
                    <li>Navigate folder structures and permissions</li>
                </ul>
            </div>
            
            <div class="card">
                <h3>🔍 Advanced Search</h3>
                <ul style="margin-left: 1.5rem; color: var(--gray-600);">
                    <li>Full-text search across document content</li>
                    <li>Filter by document type, author, and date</li>
                    <li>Search within specific sites or libraries</li>
                    <li>Semantic search with AI-powered insights</li>
                </ul>
            </div>
            
            <div class="card">
                <h3>👥 Collaboration Insights</h3>
                <ul style="margin-left: 1.5rem; color: var(--gray-600);">
                    <li>Track document sharing and access patterns</li>
                    <li>View recent activity and modifications</li>
                    <li>Access comments and collaboration history</li>
                    <li>Identify subject matter experts by content</li>
                </ul>
            </div>
            
            <div class="card">
                <h3>📊 Analytics & Reporting</h3>
                <ul style="margin-left: 1.5rem; color: var(--gray-600);">
                    <li>Document usage and access statistics</li>
                    <li>Content lifecycle and retention analysis</li>
                    <li>Storage utilization reports</li>
                    <li>Compliance and governance metrics</li>
                </ul>
            </div>
        </div>
    </div>
</div>

<div class="section section-alt">
    <div class="container">
        <div class="section-title">
            <h2>Configuration</h2>
            <p>Set up SharePoint integration with Azure AD authentication</p>
        </div>
        
        <div class="card">
            <h3>Azure AD App Registration</h3>
            <div class="code-block"># 1. Register application in Azure AD
# - Go to Azure Portal > Azure Active Directory > App registrations
# - Create new registration with name "Enterprise MCP SharePoint"
# - Set redirect URI (optional for server-to-server)

# 2. Configure API permissions
# Required permissions:
# - Sites.Read.All (SharePoint sites)
# - Files.Read.All (OneDrive and SharePoint files)
# - User.Read (basic user info)

# 3. Create client secret
# - Go to Certificates & secrets
# - Create new client secret (note the value)

# 4. Note application values
export SHAREPOINT_CLIENT_ID="xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"
export SHAREPOINT_CLIENT_SECRET="your-client-secret-value"
export SHAREPOINT_TENANT_ID="xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"</div>
        </div>
        
        <div class="card">
            <h3>MCP Server Setup</h3>
            <div class="code-block"># Install SharePoint MCP server
mcp install sharepoint

# Configure SharePoint connection
mcp config sharepoint \
  --tenant-url https://company.sharepoint.com \
  --client-id $SHAREPOINT_CLIENT_ID \
  --client-secret $SHAREPOINT_CLIENT_SECRET \
  --tenant-id $SHAREPOINT_TENANT_ID

# Test connection
mcp test sharepoint --connection
mcp auth verify sharepoint</div>
        </div>
        
        <div class="card">
            <h3>Site-Specific Configuration</h3>
            <div class="code-block"># Configure specific sites for access
mcp config sharepoint sites add \
  --url https://company.sharepoint.com/sites/engineering \
  --name "Engineering Documents"

mcp config sharepoint sites add \
  --url https://company.sharepoint.com/sites/hr \
  --name "HR Policies"

# Configure document libraries
mcp config sharepoint libraries add \
  --site-url https://company.sharepoint.com/sites/engineering \
  --library "Shared Documents" \
  --recursive true</div>
        </div>
    </div>
</div>

<div class="section">
    <div class="container">
        <div class="section-title">
            <h2>Usage Examples</h2>
            <p>Access SharePoint content through Copilot and MCP integration</p>
        </div>
        
        <div class="card">
            <h3>GitHub Copilot Integration</h3>
            <p>Ask GitHub Copilot questions about your SharePoint documents:</p>
            <div class="code-block"># Example questions for Copilot:
"Find the latest HR policy documents about remote work"
"What engineering standards documents were updated this month?"
"Show me project documentation for the authentication system"
"Find presentation templates in the marketing site"
"What are the most downloaded documents in the legal library?"
"Search for documents containing 'API security guidelines'"</div>
        </div>
        
        <div class="card">
            <h3>Document Search & Retrieval</h3>
            <div class="code-block"># Search for documents by content
mcp query sharepoint "search documents containing 'authentication API'"

# Find documents by author
mcp query sharepoint "find documents created by 'john.doe@company.com'"

# Get recent documents from specific site
mcp query sharepoint "recent documents from engineering site last 7 days"

# Search within specific library
mcp query sharepoint "search 'security policy' in HR library"</div>
        </div>
        
        <div class="card">
            <h3>Advanced Document Analysis</h3>
            <div class="code-block"># Analyze document trends
mcp query sharepoint "
  document activity analysis for last quarter including:
  - most accessed documents
  - frequently updated files
  - collaboration patterns by department
  - content gaps and opportunities
"

# Compliance and governance queries
mcp query sharepoint "
  compliance report for documents with:
  - retention policy violations
  - missing metadata fields
  - external sharing permissions
  - documents requiring review
"</div>
        </div>
    </div>
</div>

<div class="section section-alt">
    <div class="container">
        <div class="section-title">
            <h2>Security & Permissions</h2>
            <p>Enterprise security features for SharePoint integration</p>
        </div>
        
        <div class="card-grid">
            <div class="card">
                <h3>🔐 Access Control</h3>
                <ul style="margin-left: 1.5rem; color: var(--gray-600);">
                    <li>Respects SharePoint permissions and access levels</li>
                    <li>Service account with minimal required permissions</li>
                    <li>Site-specific access configuration</li>
                    <li>Document-level security enforcement</li>
                </ul>
            </div>
            
            <div class="card">
                <h3>🛡️ Data Protection</h3>
                <ul style="margin-left: 1.5rem; color: var(--gray-600);">
                    <li>Secure OAuth 2.0 authentication flow</li>
                    <li>Encrypted connections (TLS 1.3)</li>
                    <li>Sensitive data detection and masking</li>
                    <li>Audit logging for all document access</li>
                </ul>
            </div>
            
            <div class="card">
                <h3>📊 Compliance Features</h3>
                <ul style="margin-left: 1.5rem; color: var(--gray-600);">
                    <li>Retention policy compliance checking</li>
                    <li>Data loss prevention (DLP) integration</li>
                    <li>External sharing monitoring</li>
                    <li>Regular access reviews and reporting</li>
                </ul>
            </div>
        </div>
    </div>
</div>

<div class="section">
    <div class="container">
        <div class="section-title">
            <h2>Performance Optimization</h2>
            <p>Optimize SharePoint MCP server for enterprise scale</p>
        </div>
        
        <div class="card-grid">
            <div class="card">
                <h3>🚀 Caching Strategy</h3>
                <div class="code-block"># Configure intelligent caching
cache:
  enabled: true
  ttl: 1800  # 30 minutes
  max_size: 2GB
  
# Cache frequently accessed content
cache_patterns:
  - "document metadata"
  - "site navigation"
  - "user permissions"
  - "search results"</div>
            </div>
            
            <div class="card">
                <h3>⚡ Query Optimization</h3>
                <div class="code-block"># Optimize search queries
search:
  batch_size: 50
  max_results: 1000
  timeout: 30s
  
# Configure search scopes
scopes:
  - name: "engineering"
    sites: ["https://company.sharepoint.com/sites/engineering"]
  - name: "policies"  
    sites: ["https://company.sharepoint.com/sites/hr"]</div>
            </div>
        </div>
    </div>
</div>

<div class="section section-alt">
    <div class="container">
        <div class="section-title">
            <h2>Troubleshooting</h2>
            <p>Common issues and solutions for SharePoint integration</p>
        </div>
        
        <div class="card-grid">
            <div class="card">
                <h3>🔑 Authentication Problems</h3>
                <p><strong>Issue:</strong> 401/403 authentication errors</p>
                <div class="code-block"># Check Azure AD app permissions
mcp auth verify sharepoint --verbose

# Test client credentials
curl -X POST https://login.microsoftonline.com/$TENANT_ID/oauth2/v2.0/token \
  -d "client_id=$CLIENT_ID&client_secret=$CLIENT_SECRET&scope=https://graph.microsoft.com/.default&grant_type=client_credentials"</div>
            </div>
            
            <div class="card">
                <h3>🔍 Search Issues</h3>
                <p><strong>Issue:</strong> No search results or slow queries</p>
                <div class="code-block"># Test search connectivity
mcp query sharepoint "test search connection"

# Check search service health
mcp status sharepoint --search-service</div>
            </div>
        </div>
    </div>
</div>