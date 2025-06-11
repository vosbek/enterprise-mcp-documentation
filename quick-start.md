---
layout: default
title: Quick Start Guide
description: Get up and running with Enterprise MCP servers in 15 minutes
---

<!-- Page Header -->
<div class="page-header">
  <div class="page-header-container">
    <h1 class="page-title">Quick Start Guide</h1>
    <p class="page-description">
      Get your enterprise MCP servers up and running with GitHub Copilot in VSCode. This guide walks you through the essential setup for database, GitHub, and Jira integration.
    </p>
  </div>
</div>

<!-- Documentation Content -->
<div class="doc-content">
  
  <div class="badge badge-primary">
    <svg width="16" height="16" viewBox="0 0 24 24" fill="currentColor">
      <path d="M12,2A10,10 0 0,1 22,12A10,10 0 0,1 12,22A10,10 0 0,1 2,12A10,10 0 0,1 12,2M13,7H11V11H13V7M13,15H11V17H13V15Z"/>
    </svg>
    15 Minutes Setup Time
  </div>

  ## Prerequisites

  ### Required Software
  - **VSCode** (latest version)
  - **Node.js 18+** (available through corporate software center)
  - **Git** (for cloning repositories)
  - **GitHub Copilot** extension (already installed)

  ### Required Access
  - VPN connection to corporate network
  - Valid service accounts for internal systems
  - Read-only database roles (where applicable)

  ---

  ## Step 1: Install MCP CLI

  <div class="code-block">
    <div class="code-header">
      <span class="code-title">Terminal</span>
      <button class="copy-button" onclick="copyToClipboard('npm install -g @modelcontextprotocol/cli')">Copy</button>
    </div>
    <code>npm install -g @modelcontextprotocol/cli</code>
  </div>

  ---

  ## Step 2: Create Configuration Directory

  ### Windows
  <div class="code-block">
    <div class="code-header">
      <span class="code-title">PowerShell</span>
      <button class="copy-button" onclick="copyToClipboard('mkdir %USERPROFILE%\\\\.mcp\\ncd %USERPROFILE%\\\\.mcp')">Copy</button>
    </div>
    <pre><code>mkdir %USERPROFILE%\.mcp
cd %USERPROFILE%\.mcp</code></pre>
  </div>

  ### Ubuntu
  <div class="code-block">
    <div class="code-header">
      <span class="code-title">Bash</span>
      <button class="copy-button" onclick="copyToClipboard('mkdir ~/.mcp\\ncd ~/.mcp')">Copy</button>
    </div>
    <pre><code>mkdir ~/.mcp
cd ~/.mcp</code></pre>
  </div>

  ---

  ## Step 3: Install Core MCP Servers

  <div class="code-block">
    <div class="code-header">
      <span class="code-title">Essential Servers</span>
      <button class="copy-button" onclick="copyToClipboard('npm install @modelcontextprotocol/server-database @modelcontextprotocol/server-filesystem @modelcontextprotocol/server-github')">Copy</button>
    </div>
    <pre><code># Database MCP Server
npm install @modelcontextprotocol/server-database

# File System MCP Server  
npm install @modelcontextprotocol/server-filesystem

# GitHub MCP Server
npm install @modelcontextprotocol/server-github</code></pre>
  </div>

  ---

  ## Step 4: Create Configuration File

  Create `mcp-config.json` in your `.mcp` directory:

  <div class="code-block">
    <div class="code-header">
      <span class="code-title">mcp-config.json</span>
      <button class="copy-button" onclick="copyToClipboard('{\"mcpServers\":{\"filesystem\":{\"command\":\"node\",\"args\":[\"node_modules/@modelcontextprotocol/server-filesystem/dist/index.js\",\"--root\",\"C:\\\\Development\"]},\"github-internal\":{\"command\":\"node\",\"args\":[\"node_modules/@modelcontextprotocol/server-github/dist/index.js\"],\"env\":{\"GITHUB_TOKEN\":\"your-github-token\",\"GITHUB_API_URL\":\"https://github.internet.net/api/v3\"}}}}')">Copy</button>
    </div>
    <pre><code>{
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
    <strong>⚠️ Security Note:</strong> Replace <code>your-github-token</code> with your actual GitHub Personal Access Token. Store sensitive credentials in environment variables for production use.
  </div>

  ---

  ## Step 5: Configure VSCode

  Add to your VSCode `settings.json`:

  <div class="code-block">
    <div class="code-header">
      <span class="code-title">settings.json</span>
      <button class="copy-button" onclick="copyToClipboard('{\"mcp.servers\":{\"configPath\":\"~/.mcp/mcp-config.json\"}}')">Copy</button>
    </div>
    <pre><code>{
  "mcp.servers": {
    "configPath": "~/.mcp/mcp-config.json"
  }
}</code></pre>
  </div>

  ### VSCode Setup Steps:
  1. **Open Settings:** Press `Ctrl+,` (Windows) or `Cmd+,` (Mac)
  2. **Switch to JSON:** Click the "Open Settings (JSON)" icon in the top right
  3. **Add Configuration:** Add the MCP settings to your JSON file

  ---

  ## Step 6: Test Your Setup

  <div style="display: grid; gap: 20px; margin: 32px 0;">
    <div style="display: flex; gap: 16px; align-items: flex-start;">
      <div style="width: 32px; height: 32px; background: var(--primary-color); color: white; border-radius: 50%; display: flex; align-items: center; justify-content: center; font-weight: 600; font-size: 14px; flex-shrink: 0;">1</div>
      <div>
        <h4 style="margin: 0 0 4px 0; font-size: 16px; font-weight: 600;">Restart VSCode</h4>
        <p style="margin: 0; color: var(--text-secondary); line-height: 1.4;">Close and reopen VSCode to load the new MCP configuration.</p>
      </div>
    </div>
    
    <div style="display: flex; gap: 16px; align-items: flex-start;">
      <div style="width: 32px; height: 32px; background: var(--primary-color); color: white; border-radius: 50%; display: flex; align-items: center; justify-content: center; font-weight: 600; font-size: 14px; flex-shrink: 0;">2</div>
      <div>
        <h4 style="margin: 0 0 4px 0; font-size: 16px; font-weight: 600;">Open a Project</h4>
        <p style="margin: 0; color: var(--text-secondary); line-height: 1.4;">Open an existing project or create a new one in your configured directory.</p>
      </div>
    </div>
    
    <div style="display: flex; gap: 16px; align-items: flex-start;">
      <div style="width: 32px; height: 32px; background: var(--primary-color); color: white; border-radius: 50%; display: flex; align-items: center; justify-content: center; font-weight: 600; font-size: 14px; flex-shrink: 0;">3</div>
      <div>
        <h4 style="margin: 0 0 4px 0; font-size: 16px; font-weight: 600;">Test GitHub Copilot with MCP</h4>
        <p style="margin: 0; color: var(--text-secondary); line-height: 1.4;">Try asking GitHub Copilot: <em>"What files are in my project?"</em></p>
      </div>
    </div>
    
    <div style="display: flex; gap: 16px; align-items: flex-start;">
      <div style="width: 32px; height: 32px; background: var(--primary-color); color: white; border-radius: 50%; display: flex; align-items: center; justify-content: center; font-weight: 600; font-size: 14px; flex-shrink: 0;">4</div>
      <div>
        <h4 style="margin: 0 0 4px 0; font-size: 16px; font-weight: 600;">Verify Enhanced Context</h4>
        <p style="margin: 0; color: var(--text-secondary); line-height: 1.4;">Copilot should now have access to your file system and provide contextual responses.</p>
      </div>
    </div>
  </div>

  ---

  ## Success Indicators

  <div class="alert alert-success">
    <div style="width: 24px; height: 24px; border-radius: 50%; background: var(--accent-color); color: white; display: flex; align-items: center; justify-content: center; font-weight: 600; font-size: 14px;">✓</div>
    <div>GitHub Copilot responds with file information</div>
  </div>
  
  <div class="alert alert-success">
    <div style="width: 24px; height: 24px; border-radius: 50%; background: var(--accent-color); color: white; display: flex; align-items: center; justify-content: center; font-weight: 600; font-size: 14px;">✓</div>
    <div>No MCP server error messages in VSCode</div>
  </div>
  
  <div class="alert alert-success">
    <div style="width: 24px; height: 24px; border-radius: 50%; background: var(--accent-color); color: white; display: flex; align-items: center; justify-content: center; font-weight: 600; font-size: 14px;">✓</div>
    <div>Enhanced contextual code suggestions</div>
  </div>

  ---

  ## Next Steps

  <div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(250px, 1fr)); gap: 20px; margin: 40px 0;">
    <a href="servers/database.html" class="server-card">
      <div class="server-card-header">
        <div class="server-icon database">
          <svg width="24" height="24" viewBox="0 0 24 24" fill="currentColor">
            <path d="M12,3C7.58,3 4,4.79 4,7C4,9.21 7.58,11 12,11C16.42,11 20,9.21 20,7C20,4.79 16.42,3 12,3M4,9V12C4,14.21 7.58,16 12,16C16.42,16 20,14.21 20,12V9C20,11.21 16.42,13 12,13C7.58,13 4,11.21 4,9M4,14V17C4,19.21 7.58,21 12,21C16.42,21 20,19.21 20,17V14C20,16.21 16.42,18 12,18C7.58,18 4,16.21 4,14Z"/>
          </svg>
        </div>
        <h3 class="server-title">Configure Database MCP</h3>
      </div>
      <p class="server-description">Connect to Oracle, Snowflake, and PostgreSQL</p>
    </a>
    
    <a href="servers/jira.html" class="server-card">
      <div class="server-card-header">
        <div class="server-icon jira">
          <svg width="24" height="24" viewBox="0 0 24 24" fill="currentColor">
            <path d="M11.53,2C11.53,2.95 11.53,3.89 11.53,4.84C11.53,8.32 8.32,11.53 4.84,11.53C3.89,11.53 2.95,11.53 2,11.53L11.53,2M12.47,2L22,11.53C21.05,11.53 20.11,11.53 19.16,11.53C15.68,11.53 12.47,8.32 12.47,4.84C12.47,3.89 12.47,2.95 12.47,2M2,12.47C2.95,12.47 3.89,12.47 4.84,12.47C8.32,12.47 11.53,15.68 11.53,19.16C11.53,20.11 11.53,21.05 11.53,22L2,12.47M12.47,22C12.47,21.05 12.47,20.11 12.47,19.16C12.47,15.68 15.68,12.47 19.16,12.47C20.11,12.47 21.05,12.47 22,12.47L12.47,22Z"/>
          </svg>
        </div>
        <h3 class="server-title">Set up Jira Integration</h3>
      </div>
      <p class="server-description">Access project management and issue tracking</p>
    </a>
  </div>

  <div style="text-align: center; margin: 40px 0;">
    <a href="servers/" class="btn btn-primary">
      View All 9 MCP Servers
      <svg width="16" height="16" viewBox="0 0 24 24" fill="currentColor">
        <path d="M4,11V13H16L10.5,18.5L11.92,19.92L19.84,12L11.92,4.08L10.5,5.5L16,11H4Z"/>
      </svg>
    </a>
  </div>

</div>

<script>
function copyToClipboard(text) {
  navigator.clipboard.writeText(text).then(function() {
    console.log('Copied to clipboard');
  }, function(err) {
    console.error('Could not copy text: ', err);
  });
}
</script>