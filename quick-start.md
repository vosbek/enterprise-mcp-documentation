---
title: Quick Start Guide
description: Get started with MCP servers in your enterprise development environment
---

<div class="hero">
    <div class="container">
        <h1>Quick Start Guide</h1>
        <p>Set up Model Context Protocol servers in your enterprise environment with GitHub Copilot integration.</p>
    </div>
</div>

<div class="section">
    <div class="container">
        <div class="section-title">
            <h2>Prerequisites</h2>
            <p>Ensure your development environment meets these requirements</p>
        </div>
        
        <div class="card">
            <h3>Development Environment</h3>
            <ul style="margin-left: 1.5rem; color: var(--gray-600);">
                <li><strong>IDE:</strong> VSCode, IntelliJ IDEA, or Eclipse</li>
                <li><strong>GitHub Copilot:</strong> Active subscription with Agent Mode enabled</li>
                <li><strong>Node.js:</strong> Version 18+ for MCP CLI tools</li>
                <li><strong>Enterprise Access:</strong> VPN connection and corporate authentication</li>
            </ul>
        </div>
    </div>
</div>

<div class="section section-alt">
    <div class="container">
        <div class="section-title">
            <h2>Installation Steps</h2>
            <p>Follow these steps to set up MCP servers in your enterprise environment</p>
        </div>
        
        <div class="card-grid">
            <div class="card">
                <h3>Step 1: Install MCP CLI</h3>
                <p>Install the Model Context Protocol command-line interface globally on your development machine.</p>
                <div class="code-block">npm install -g @modelcontextprotocol/cli</div>
                <p style="font-size: 0.875rem; color: var(--gray-500); margin-top: 0.5rem;">
                    Verify installation: <code>mcp --version</code>
                </p>
            </div>
            
            <div class="card">
                <h3>Step 2: Configure Enterprise Authentication</h3>
                <p>Set up authentication tokens and certificates for your enterprise systems.</p>
                <div class="code-block">mcp auth configure --enterprise
mcp auth add-token github $GITHUB_TOKEN
mcp auth add-cert oracle $ORACLE_CERT</div>
            </div>
            
            <div class="card">
                <h3>Step 3: Install Core MCP Servers</h3>
                <p>Install essential MCP servers for your enterprise environment.</p>
                <div class="code-block">mcp install database github sharepoint
mcp install backstage internal-api filesystem</div>
            </div>
            
            <div class="card">
                <h3>Step 4: Configure Database Connections</h3>
                <p>Set up read-only database connections with proper security configurations.</p>
                <div class="code-block">mcp config database \
  --type oracle \
  --host db.company.com \
  --readonly \
  --ssl-cert $SSL_CERT</div>
            </div>
            
            <div class="card">
                <h3>Step 5: Enable GitHub Integration</h3>
                <p>Connect to your enterprise GitHub instance with appropriate permissions.</p>
                <div class="code-block">mcp config github \
  --url github.company.com \
  --token $GITHUB_TOKEN \
  --readonly</div>
            </div>
            
            <div class="card">
                <h3>Step 6: Start MCP Services</h3>
                <p>Launch all configured MCP servers and verify connectivity.</p>
                <div class="code-block">mcp start --all
mcp health-check</div>
            </div>
        </div>
    </div>
</div>

<div class="section">
    <div class="container">
        <div class="section-title">
            <h2>IDE Configuration</h2>
            <p>Configure your development environment to use MCP servers</p>
        </div>
        
        <div class="card-grid">
            <div class="card">
                <h3>VSCode Setup</h3>
                <p>Install the MCP extension and configure GitHub Copilot integration.</p>
                <div class="code-block"># Install MCP extension
code --install-extension modelcontextprotocol.mcp

# Configure settings.json
{
  "mcp.servers": {
    "database": "http://localhost:8001",
    "github": "http://localhost:8002"
  },
  "github.copilot.advanced": {
    "mcp.enabled": true
  }
}</div>
            </div>
            
            <div class="card">
                <h3>IntelliJ IDEA Setup</h3>
                <p>Configure the MCP plugin for IntelliJ-based IDEs.</p>
                <div class="code-block"># Install MCP plugin
# File > Settings > Plugins > Search "MCP"

# Configure in settings:
# Tools > MCP Configuration
# Add server endpoints and authentication</div>
            </div>
            
            <div class="card">
                <h3>Eclipse Setup</h3>
                <p>Set up MCP integration in Eclipse IDE.</p>
                <div class="code-block"># Install from Eclipse Marketplace
# Help > Eclipse Marketplace > Search "MCP"

# Configure in preferences:
# Window > Preferences > MCP
# Add server configurations</div>
            </div>
        </div>
    </div>
</div>

<div class="section section-alt">
    <div class="container">
        <div class="section-title">
            <h2>Verification & Testing</h2>
            <p>Ensure your MCP setup is working correctly</p>
        </div>
        
        <div class="card">
            <h3>Test MCP Integration</h3>
            <p>Run these commands to verify your MCP servers are working properly:</p>
            <div class="code-block"># Check server status
mcp status --all

# Test database connectivity
mcp query database "SELECT 1 FROM dual"

# Test GitHub integration
mcp query github "repositories owned by me"

# Test Copilot integration
# In your IDE, ask GitHub Copilot:
# "What databases are available in our environment?"</div>
        </div>
    </div>
</div>

<div class="section">
    <div class="container">
        <div class="section-title">
            <h2>Next Steps</h2>
            <p>Continue your MCP journey with advanced configurations</p>
        </div>
        
        <div class="card-grid">
            <div class="card">
                <h3>📋 Configure Additional Servers</h3>
                <p>Set up Jira, Figma, and ServiceNow MCP servers for your specific workflow needs.</p>
                <a href="{{ '/servers' | relative_url }}" class="btn btn-primary" style="margin-top: 1rem;">View All Servers</a>
            </div>
            
            <div class="card">
                <h3>🔒 Review Security Best Practices</h3>
                <p>Learn about enterprise security patterns, authentication, and compliance considerations.</p>
                <a href="{{ '/best-practices' | relative_url }}" class="btn btn-primary" style="margin-top: 1rem;">Security Guide</a>
            </div>
            
            <div class="card">
                <h3>🛠️ Troubleshoot Issues</h3>
                <p>Common problems and solutions for enterprise MCP deployments.</p>
                <a href="{{ '/troubleshooting' | relative_url }}" class="btn btn-primary" style="margin-top: 1rem;">Troubleshooting</a>
            </div>
        </div>
    </div>
</div>