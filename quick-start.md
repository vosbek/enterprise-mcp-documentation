---
layout: default
title: Quick Start Guide
description: Get up and running with Enterprise MCP servers in 15 minutes
---

<div class="page-header">
  <div class="container">
    <div class="page-header-content">
      <div class="page-badge">
        <span class="badge-text">15 Minutes Setup</span>
      </div>
      <h1 class="page-title">Quick Start Guide</h1>
      <p class="page-description">
        Get your enterprise MCP servers up and running with GitHub Copilot in VSCode. This guide walks you through the essential setup for database, GitHub, and Jira integration.
      </p>
    </div>
  </div>
</div>

<div class="content-section">
  <div class="container">
    <div class="content-grid">
      
      <!-- Prerequisites Card -->
      <div class="step-card">
        <div class="step-number">1</div>
        <div class="step-content">
          <h2 class="step-title">Prerequisites</h2>
          
          <div class="checklist">
            <div class="checklist-section">
              <h3>Required Software</h3>
              <div class="checklist-items">
                <label class="checklist-item">
                  <input type="checkbox" class="checklist-checkbox">
                  <span class="checklist-text"><strong>VSCode</strong> (latest version)</span>
                </label>
                <label class="checklist-item">
                  <input type="checkbox" class="checklist-checkbox">
                  <span class="checklist-text"><strong>Node.js 18+</strong> (from corporate software center)</span>
                </label>
                <label class="checklist-item">
                  <input type="checkbox" class="checklist-checkbox">
                  <span class="checklist-text"><strong>Git</strong> (for cloning repositories)</span>
                </label>
                <label class="checklist-item">
                  <input type="checkbox" class="checklist-checkbox">
                  <span class="checklist-text"><strong>GitHub Copilot</strong> extension (already installed)</span>
                </label>
              </div>
            </div>
            
            <div class="checklist-section">
              <h3>Required Access</h3>
              <div class="checklist-items">
                <label class="checklist-item">
                  <input type="checkbox" class="checklist-checkbox">
                  <span class="checklist-text">VPN connection to corporate network</span>
                </label>
                <label class="checklist-item">
                  <input type="checkbox" class="checklist-checkbox">
                  <span class="checklist-text">Valid service accounts for internal systems</span>
                </label>
                <label class="checklist-item">
                  <input type="checkbox" class="checklist-checkbox">
                  <span class="checklist-text">Read-only database roles (where applicable)</span>
                </label>
              </div>
            </div>
          </div>
        </div>
      </div>

      <!-- Installation Card -->
      <div class="step-card">
        <div class="step-number">2</div>
        <div class="step-content">
          <h2 class="step-title">Installation</h2>
          
          <div class="install-steps">
            <div class="install-step">
              <h3>Install MCP CLI</h3>
              <div class="code-block">
                <div class="code-header">
                  <span class="code-title">PowerShell / Terminal</span>
                  <button class="copy-button" data-copy="npm install -g @modelcontextprotocol/cli">Copy</button>
                </div>
                <pre><code>npm install -g @modelcontextprotocol/cli</code></pre>
              </div>
            </div>

            <div class="install-step">
              <h3>Create Configuration Directory</h3>
              <div class="code-block">
                <div class="code-header">
                  <span class="code-title">Windows</span>
                  <button class="copy-button" data-copy="mkdir %USERPROFILE%\.mcp && cd %USERPROFILE%\.mcp">Copy</button>
                </div>
                <pre><code>mkdir %USERPROFILE%\.mcp
cd %USERPROFILE%\.mcp</code></pre>
              </div>
              <div class="code-block">
                <div class="code-header">
                  <span class="code-title">Ubuntu</span>
                  <button class="copy-button" data-copy="mkdir ~/.mcp && cd ~/.mcp">Copy</button>
                </div>
                <pre><code>mkdir ~/.mcp
cd ~/.mcp</code></pre>
              </div>
            </div>

            <div class="install-step">
              <h3>Install Core MCP Servers</h3>
              <div class="code-block">
                <div class="code-header">
                  <span class="code-title">Essential Servers</span>
                  <button class="copy-button" data-copy="npm install @modelcontextprotocol/server-database @modelcontextprotocol/server-filesystem @modelcontextprotocol/server-github">Copy</button>
                </div>
                <pre><code># Database MCP Server
npm install @modelcontextprotocol/server-database

# File System MCP Server  
npm install @modelcontextprotocol/server-filesystem

# GitHub MCP Server
npm install @modelcontextprotocol/server-github</code></pre>
              </div>
            </div>
          </div>
        </div>
      </div>

      <!-- Configuration Card -->
      <div class="step-card">
        <div class="step-number">3</div>
        <div class="step-content">
          <h2 class="step-title">Configuration</h2>
          
          <div class="config-section">
            <h3>Create Base Configuration</h3>
            <p class="config-description">Create <code>mcp-config.json</code> in your <code>.mcp</code> directory:</p>
            
            <div class="code-block">
              <div class="code-header">
                <span class="code-title">mcp-config.json</span>
                <button class="copy-button" data-copy='{"mcpServers":{"filesystem":{"command":"node","args":["node_modules/@modelcontextprotocol/server-filesystem/dist/index.js","--root","C:\\Development"]},"github-internal":{"command":"node","args":["node_modules/@modelcontextprotocol/server-github/dist/index.js"],"env":{"GITHUB_TOKEN":"your-github-token","GITHUB_API_URL":"https://github.internet.net/api/v3"}}}}'>Copy</button>
              </div>
              <pre><code class="language-json">{
  "mcpServers": {
    "filesystem": {
      "command": "node",
      "args": [
        "node_modules/@modelcontextprotocol/server-filesystem/dist/index.js",
        "--root",
        "C:\\Development"
      ]
    },
    "github-internal": {
      "command": "node", 
      "args": [
        "node_modules/@modelcontextprotocol/server-github/dist/index.js"
      ],
      "env": {
        "GITHUB_TOKEN": "your-github-token",
        "GITHUB_API_URL": "https://github.internet.net/api/v3"
      }
    }
  }
}</code></pre>
            </div>

            <div class="alert alert-warning">
              <strong>Security Note:</strong> Replace <code>your-github-token</code> with your actual GitHub Personal Access Token. Store sensitive credentials in environment variables for production use.
            </div>
          </div>
        </div>
      </div>

      <!-- VSCode Setup Card -->
      <div class="step-card">
        <div class="step-number">4</div>
        <div class="step-content">
          <h2 class="step-title">VSCode Configuration</h2>
          
          <div class="vscode-setup">
            <h3>Update VSCode Settings</h3>
            <p>Add to your VSCode <code>settings.json</code>:</p>
            
            <div class="code-block">
              <div class="code-header">
                <span class="code-title">settings.json</span>
                <button class="copy-button" data-copy='{"mcp.servers":{"configPath":"~/.mcp/mcp-config.json"}}'>Copy</button>
              </div>
              <pre><code class="language-json">{
  "mcp.servers": {
    "configPath": "~/.mcp/mcp-config.json"
  }
}</code></pre>
            </div>

            <div class="setup-steps">
              <div class="setup-step">
                <div class="step-icon">📁</div>
                <div class="step-text">
                  <strong>Open Settings:</strong> Press <kbd>Ctrl+,</kbd> (Windows) or <kbd>Cmd+,</kbd> (Mac)
                </div>
              </div>
              <div class="setup-step">
                <div class="step-icon">⚙️</div>
                <div class="step-text">
                  <strong>Switch to JSON:</strong> Click the "Open Settings (JSON)" icon in the top right
                </div>
              </div>
              <div class="setup-step">
                <div class="step-icon">✨</div>
                <div class="step-text">
                  <strong>Add Configuration:</strong> Add the MCP settings to your JSON file
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>

      <!-- Testing Card -->
      <div class="step-card">
        <div class="step-number">5</div>
        <div class="step-content">
          <h2 class="step-title">Test Your Setup</h2>
          
          <div class="test-section">
            <div class="test-steps">
              <div class="test-step">
                <div class="test-number">1</div>
                <div class="test-content">
                  <h4>Restart VSCode</h4>
                  <p>Close and reopen VSCode to load the new MCP configuration.</p>
                </div>
              </div>
              
              <div class="test-step">
                <div class="test-number">2</div>
                <div class="test-content">
                  <h4>Open a Project</h4>
                  <p>Open an existing project or create a new one in your configured directory.</p>
                </div>
              </div>
              
              <div class="test-step">
                <div class="test-number">3</div>
                <div class="test-content">
                  <h4>Test GitHub Copilot with MCP</h4>
                  <p>Try asking GitHub Copilot: <em>"What files are in my project?"</em></p>
                </div>
              </div>
              
              <div class="test-step">
                <div class="test-number">4</div>
                <div class="test-content">
                  <h4>Verify Enhanced Context</h4>
                  <p>Copilot should now have access to your file system and can provide more contextual responses.</p>
                </div>
              </div>
            </div>

            <div class="success-indicators">
              <h3>Success Indicators</h3>
              <div class="indicators-grid">
                <div class="indicator">
                  <div class="indicator-icon success">✓</div>
                  <div class="indicator-text">GitHub Copilot responds with file information</div>
                </div>
                <div class="indicator">
                  <div class="indicator-icon success">✓</div>
                  <div class="indicator-text">No MCP server error messages in VSCode</div>
                </div>
                <div class="indicator">
                  <div class="indicator-icon success">✓</div>
                  <div class="indicator-text">Enhanced contextual code suggestions</div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>

      <!-- Next Steps Card -->
      <div class="step-card next-steps">
        <div class="step-content">
          <h2 class="step-title">🚀 Next Steps</h2>
          
          <div class="next-steps-grid">
            <a href="/servers/database.html" class="next-step-card">
              <div class="next-step-icon database">
                <svg width="24" height="24" viewBox="0 0 24 24" fill="currentColor">
                  <path d="M12,3C7.58,3 4,4.79 4,7C4,9.21 7.58,11 12,11C16.42,11 20,9.21 20,7C20,4.79 16.42,3 12,3M4,9V12C4,14.21 7.58,16 12,16C16.42,16 20,14.21 20,12V9C20,11.21 16.42,13 12,13C7.58,13 4,11.21 4,9M4,14V17C4,19.21 7.58,21 12,21C16.42,21 20,19.21 20,17V14C20,16.21 16.42,18 12,18C7.58,18 4,16.21 4,14Z"/>
                </svg>
              </div>
              <div class="next-step-content">
                <h3>Configure Database MCP</h3>
                <p>Connect to Oracle, Snowflake, and PostgreSQL databases</p>
              </div>
            </a>
            
            <a href="/servers/jira.html" class="next-step-card">
              <div class="next-step-icon jira">
                <svg width="24" height="24" viewBox="0 0 24 24" fill="currentColor">
                  <path d="M11.53,2C11.53,2.95 11.53,3.89 11.53,4.84C11.53,8.32 8.32,11.53 4.84,11.53C3.89,11.53 2.95,11.53 2,11.53L11.53,2M12.47,2L22,11.53C21.05,11.53 20.11,11.53 19.16,11.53C15.68,11.53 12.47,8.32 12.47,4.84C12.47,3.89 12.47,2.95 12.47,2M2,12.47C2.95,12.47 3.89,12.47 4.84,12.47C8.32,12.47 11.53,15.68 11.53,19.16C11.53,20.11 11.53,21.05 11.53,22L2,12.47M12.47,22C12.47,21.05 12.47,20.11 12.47,19.16C12.47,15.68 15.68,12.47 19.16,12.47C20.11,12.47 21.05,12.47 22,12.47L12.47,22Z"/>
                </svg>
              </div>
              <div class="next-step-content">
                <h3>Set up Jira Integration</h3>
                <p>Access project management and issue tracking</p>
              </div>
            </a>
            
            <a href="/best-practices.html" class="next-step-card">
              <div class="next-step-icon best-practices">
                <svg width="24" height="24" viewBox="0 0 24 24" fill="currentColor">
                  <path d="M12,1L3,5V11C3,16.55 6.84,21.74 12,23C17.16,21.74 21,16.55 21,11V5L12,1M12,7C13.4,7 14.8,8.6 14.8,10V11.5C15.4,11.5 16,12.4 16,13V16C16,17.4 15.4,18 14.8,18H9.2C8.6,18 8,17.4 8,16V13C8,12.4 8.6,11.5 9.2,11.5V10C9.2,8.6 10.6,7 12,7M12,8.2C11.2,8.2 10.5,8.7 10.5,10V11.5H13.5V10C13.5,8.7 12.8,8.2 12,8.2Z"/>
                </svg>
              </div>
              <div class="next-step-content">
                <h3>Review Best Practices</h3>
                <p>Enterprise security and performance guidelines</p>
              </div>
            </a>
            
            <a href="/servers/" class="next-step-card">
              <div class="next-step-icon servers">
                <svg width="24" height="24" viewBox="0 0 24 24" fill="currentColor">
                  <path d="M4,1H20A1,1 0 0,1 21,2V6A1,1 0 0,1 20,7H4A1,1 0 0,1 3,6V2A1,1 0 0,1 4,1M4,9H20A1,1 0 0,1 21,10V14A1,1 0 0,1 20,15H4A1,1 0 0,1 3,14V10A1,1 0 0,1 4,9M4,17H20A1,1 0 0,1 21,18V22A1,1 0 0,1 20,23H4A1,1 0 0,1 3,22V18A1,1 0 0,1 4,17M5,2V6H19V2H5M5,10V14H19V10H5M5,18V22H19V18H5Z"/>
                </svg>
              </div>
              <div class="next-step-content">
                <h3>Explore All Servers</h3>
                <p>SharePoint, ServiceNow, Figma, and more integrations</p>
              </div>
            </a>
          </div>
        </div>
      </div>

    </div>
  </div>
</div>

<script>
// Copy button functionality
document.addEventListener('DOMContentLoaded', function() {
  const copyButtons = document.querySelectorAll('.copy-button');
  
  copyButtons.forEach(button => {
    button.addEventListener('click', function() {
      const textToCopy = this.getAttribute('data-copy');
      navigator.clipboard.writeText(textToCopy).then(() => {
        const originalText = this.textContent;
        this.textContent = 'Copied!';
        this.classList.add('copied');
        
        setTimeout(() => {
          this.textContent = originalText;
          this.classList.remove('copied');
        }, 2000);
      });
    });
  });
});
</script>