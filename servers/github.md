---
layout: default
title: GitHub MCP Server
description: Connect to internal GitHub Enterprise for repository access, code search, and project management
---

<!-- Page Header -->
<div class="page-header">
  <div class="page-header-container">
    <h1 class="page-title">GitHub MCP Server</h1>
    <p class="page-description">
      Connect GitHub Copilot to your internal GitHub Enterprise instance for seamless access to repositories, issues, pull requests, and project management.
    </p>
  </div>
</div>

<!-- Documentation Content -->
<div class="doc-content">

  <div style="display: inline-flex; align-items: center; gap: 8px; background: #f3f4f6; color: #374151; padding: 8px 16px; border-radius: 20px; font-size: 14px; font-weight: 600; margin-bottom: 32px;">
    <svg width="16" height="16" viewBox="0 0 24 24" fill="currentColor">
      <path d="M12,2A10,10 0 0,0 2,12C2,16.42 4.87,20.17 8.84,21.5C9.34,21.58 9.5,21.27 9.5,21C9.5,20.77 9.5,20.14 9.5,19.31C6.73,19.91 6.14,17.97 6.14,17.97C5.68,16.81 5.03,16.5 5.03,16.5C4.12,15.88 5.1,15.9 5.1,15.9C6.1,15.97 6.63,16.93 6.63,16.93C7.5,18.45 8.97,18 9.54,17.76C9.63,17.11 9.89,16.67 10.17,16.42C7.95,16.17 5.62,15.31 5.62,11.5C5.62,10.39 6,9.5 6.65,8.79C6.55,8.54 6.2,7.5 6.75,6.15C6.75,6.15 7.59,5.88 9.5,7.17C10.29,6.95 11.15,6.84 12,6.84C12.85,6.84 13.71,6.95 14.5,7.17C16.41,5.88 17.25,6.15 17.25,6.15C17.8,7.5 17.45,8.54 17.35,8.79C18,9.5 18.38,10.39 18.38,11.5C18.38,15.32 16.04,16.16 13.81,16.41C14.17,16.72 14.5,17.33 14.5,18.26C14.5,19.6 14.5,20.68 14.5,21C14.5,21.27 14.66,21.59 15.17,21.5C19.14,20.16 22,16.42 22,12A10,10 0 0,0 12,2Z"/>
    </svg>
    Internal GitHub Enterprise Integration
  </div>

  ## Prerequisites

  Before setting up the GitHub MCP Server, ensure you have:

  - **GitHub Personal Access Token** (classic) with appropriate scopes
  - **Access to github.internet.net** through corporate network
  - **Network connectivity** through corporate proxy if required
  - **Repository permissions** for the projects you want to access

  ---

  ## Installation

  <div style="background: var(--bg-dark); color: #e5e7eb; border-radius: 12px; padding: 24px; margin: 24px 0;">
    <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 16px;">
      <span style="font-size: 12px; font-weight: 600; text-transform: uppercase; color: #9ca3af;">Terminal</span>
      <button onclick="copyToClipboard('npm install @modelcontextprotocol/server-github')" style="background: var(--primary-color); color: white; border: none; padding: 4px 12px; border-radius: 4px; font-size: 12px; cursor: pointer;">Copy</button>
    </div>
    <code style="background: none; color: inherit; padding: 0;">npm install @modelcontextprotocol/server-github</code>
  </div>

  ---

  ## Configuration

  ### Basic Single Organization Setup

  <div style="background: var(--bg-dark); color: #e5e7eb; border-radius: 12px; padding: 24px; margin: 24px 0;">
    <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 16px;">
      <span style="font-size: 12px; font-weight: 600; text-transform: uppercase; color: #9ca3af;">Basic Configuration</span>
      <button onclick="copyToClipboard('{\\n  \\\"mcpServers\\\": {\\n    \\\"github-internal\\\": {\\n      \\\"command\\\": \\\"node\\\",\\n      \\\"args\\\": [\\n        \\\"node_modules/@modelcontextprotocol/server-github/dist/index.js\\\"\\n      ],\\n      \\\"env\\\": {\\n        \\\"GITHUB_TOKEN\\\": \\\"your-github-token\\\",\\n        \\\"GITHUB_API_URL\\\": \\\"https://github.internet.net/api/v3\\\",\\n        \\\"GITHUB_WEB_URL\\\": \\\"https://github.internet.net\\\"\\n      }\\n    }\\n  }\\n}')" style="background: var(--primary-color); color: white; border: none; padding: 4px 12px; border-radius: 4px; font-size: 12px; cursor: pointer;">Copy</button>
    </div>
    <pre style="margin: 0; background: none; border: none; padding: 0;"><code>{
  "mcpServers": {
    "github-internal": {
      "command": "node",
      "args": [
        "node_modules/@modelcontextprotocol/server-github/dist/index.js"
      ],
      "env": {
        "GITHUB_TOKEN": "your-github-token",
        "GITHUB_API_URL": "https://github.internet.net/api/v3",
        "GITHUB_WEB_URL": "https://github.internet.net"
      }
    }
  }
}</code></pre>
  </div>

  ### Multi-Organization Configuration

  For teams working across multiple GitHub organizations:

  <div style="background: var(--bg-dark); color: #e5e7eb; border-radius: 12px; padding: 24px; margin: 24px 0;">
    <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 16px;">
      <span style="font-size: 12px; font-weight: 600; text-transform: uppercase; color: #9ca3af;">Multi-Organization Setup</span>
      <button onclick="copyToClipboard('Multi-org config copied!')" style="background: var(--primary-color); color: white; border: none; padding: 4px 12px; border-radius: 4px; font-size: 12px; cursor: pointer;">Copy</button>
    </div>
    <pre style="margin: 0; background: none; border: none; padding: 0;"><code>{
  "mcpServers": {
    "github-engineering": {
      "command": "node",
      "args": [
        "node_modules/@modelcontextprotocol/server-github/dist/index.js"
      ],
      "env": {
        "GITHUB_TOKEN": "engineering-token",
        "GITHUB_API_URL": "https://github.internet.net/api/v3",
        "GITHUB_ORG": "engineering"
      }
    },
    "github-platform": {
      "command": "node",
      "args": [
        "node_modules/@modelcontextprotocol/server-github/dist/index.js"
      ],
      "env": {
        "GITHUB_TOKEN": "platform-token",
        "GITHUB_API_URL": "https://github.internet.net/api/v3",
        "GITHUB_ORG": "platform"
      }
    }
  }
}</code></pre>
  </div>

  ---

  ## Personal Access Token Setup

  <div style="background: #fef3c7; border-left: 4px solid #f59e0b; padding: 16px 20px; border-radius: 8px; margin: 24px 0;">
    <strong>🔑 Security Important:</strong> Use Personal Access Tokens (classic) with minimal required scopes. Never share tokens or commit them to repositories.
  </div>

  ### Creating Your Token

  <div style="display: grid; gap: 20px; margin: 32px 0;">
    <div style="display: flex; gap: 16px; align-items: flex-start;">
      <div style="width: 32px; height: 32px; background: var(--primary-color); color: white; border-radius: 50%; display: flex; align-items: center; justify-content: center; font-weight: 600; font-size: 14px; flex-shrink: 0;">1</div>
      <div>
        <h4 style="margin: 0 0 4px 0; font-size: 16px; font-weight: 600;">Navigate to Token Settings</h4>
        <p style="margin: 0; color: var(--text-secondary); line-height: 1.4;">Go to <code>https://github.internet.net/settings/tokens</code></p>
      </div>
    </div>
    
    <div style="display: flex; gap: 16px; align-items: flex-start;">
      <div style="width: 32px; height: 32px; background: var(--primary-color); color: white; border-radius: 50%; display: flex; align-items: center; justify-content: center; font-weight: 600; font-size: 14px; flex-shrink: 0;">2</div>
      <div>
        <h4 style="margin: 0 0 4px 0; font-size: 16px; font-weight: 600;">Generate New Token</h4>
        <p style="margin: 0; color: var(--text-secondary); line-height: 1.4;">Click "Generate new token" → "Generate new token (classic)"</p>
      </div>
    </div>
    
    <div style="display: flex; gap: 16px; align-items: flex-start;">
      <div style="width: 32px; height: 32px; background: var(--primary-color); color: white; border-radius: 50%; display: flex; align-items: center; justify-content: center; font-weight: 600; font-size: 14px; flex-shrink: 0;">3</div>
      <div>
        <h4 style="margin: 0 0 4px 0; font-size: 16px; font-weight: 600;">Configure Token Settings</h4>
        <p style="margin: 0; color: var(--text-secondary); line-height: 1.4;">Set name, expiration, and scopes as detailed below</p>
      </div>
    </div>
  </div>

  ### Required Token Configuration

  <div style="display: grid; gap: 20px; margin: 32px 0;">
    <div style="padding: 20px; background: white; border: 1px solid var(--border-color); border-radius: 12px;">
      <h4 style="margin: 0 0 12px 0; color: var(--text-primary);">Token Name</h4>
      <div style="background: #f3f4f6; padding: 12px; border-radius: 6px; font-family: monospace; font-weight: 500;">MCP-VSCode-Access</div>
    </div>

    <div style="padding: 20px; background: white; border: 1px solid var(--border-color); border-radius: 12px;">
      <h4 style="margin: 0 0 12px 0; color: var(--text-primary);">Expiration</h4>
      <div style="background: #f3f4f6; padding: 12px; border-radius: 6px;">Set according to corporate policy (typically 90 days)</div>
    </div>

    <div style="padding: 20px; background: white; border: 1px solid var(--border-color); border-radius: 12px;">
      <h4 style="margin: 0 0 12px 0; color: var(--text-primary);">Required Scopes</h4>
      <div style="display: grid; gap: 8px;">
        <label style="display: flex; align-items: center; gap: 12px; color: var(--text-secondary); cursor: pointer;">
          <input type="checkbox" checked disabled style="width: 16px; height: 16px;">
          <span><strong>repo</strong> - Full repository access</span>
        </label>
        <label style="display: flex; align-items: center; gap: 12px; color: var(--text-secondary); cursor: pointer;">
          <input type="checkbox" checked disabled style="width: 16px; height: 16px;">
          <span><strong>read:org</strong> - Organization read access</span>
        </label>
        <label style="display: flex; align-items: center; gap: 12px; color: var(--text-secondary); cursor: pointer;">
          <input type="checkbox" checked disabled style="width: 16px; height: 16px;">
          <span><strong>read:user</strong> - User profile read access</span>
        </label>
        <label style="display: flex; align-items: center; gap: 12px; color: var(--text-secondary); cursor: pointer;">
          <input type="checkbox" checked disabled style="width: 16px; height: 16px;">
          <span><strong>read:project</strong> - Project read access</span>
        </label>
      </div>
    </div>
  </div>

  ### Secure Token Storage

  <div style="background: var(--bg-dark); color: #e5e7eb; border-radius: 12px; padding: 24px; margin: 24px 0;">
    <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 16px;">
      <span style="font-size: 12px; font-weight: 600; text-transform: uppercase; color: #9ca3af;">Environment Variables</span>
      <button onclick="copyToClipboard('# Windows PowerShell\\n$env:GITHUB_TOKEN = \\\"ghp_your_token_here\\\"\\n\\n# Linux/Ubuntu\\nexport GITHUB_TOKEN=\\\"ghp_your_token_here\\\"')" style="background: var(--primary-color); color: white; border: none; padding: 4px 12px; border-radius: 4px; font-size: 12px; cursor: pointer;">Copy</button>
    </div>
    <pre style="margin: 0; background: none; border: none; padding: 0;"><code># Windows (PowerShell)
$env:GITHUB_TOKEN = "ghp_your_token_here"

# Linux/Ubuntu
export GITHUB_TOKEN="ghp_your_token_here"</code></pre>
  </div>

  ---

  ## Usage Examples

  Once configured, you can ask GitHub Copilot questions like:

  <div style="display: grid; gap: 16px; margin: 32px 0;">
    <div style="padding: 20px; background: linear-gradient(135deg, #f8fafc 0%, #e2e8f0 100%); border-left: 4px solid var(--primary-color); border-radius: 12px;">
      <h4 style="margin: 0 0 8px 0; color: var(--text-primary); font-weight: 600;">Repository Information</h4>
      <ul style="margin: 0; padding-left: 20px; color: var(--text-secondary);">
        <li>"What repositories are in the engineering organization?"</li>
        <li>"Show me the README for the user-service repository"</li>
        <li>"What are the open issues in the payment-gateway project?"</li>
      </ul>
    </div>

    <div style="padding: 20px; background: linear-gradient(135deg, #f0fdf4 0%, #dcfce7 100%); border-left: 4px solid #10b981; border-radius: 12px;">
      <h4 style="margin: 0 0 8px 0; color: var(--text-primary); font-weight: 600;">Code Search & Analysis</h4>
      <ul style="margin: 0; padding-left: 20px; color: var(--text-secondary);">
        <li>"Find all TypeScript files that import the Logger class"</li>
        <li>"Show me recent commits to the authentication module"</li>
        <li>"What pull requests are currently open for review?"</li>
      </ul>
    </div>

    <div style="padding: 20px; background: linear-gradient(135deg, #fefbff 0%, #f3e8ff 100%); border-left: 4px solid #7c3aed; border-radius: 12px;">
      <h4 style="margin: 0 0 8px 0; color: var(--text-primary); font-weight: 600;">Project Management</h4>
      <ul style="margin: 0; padding-left: 20px; color: var(--text-secondary);">
        <li>"List all issues assigned to me"</li>
        <li>"What are the high-priority bugs in the mobile app?"</li>
        <li>"Show me the project board for the Q3 release"</li>
      </ul>
    </div>
  </div>

  ---

  ## Advanced Configuration

  ### Repository Filtering

  Limit access to specific repositories for security and performance:

  <div style="background: var(--bg-dark); color: #e5e7eb; border-radius: 12px; padding: 24px; margin: 24px 0;">
    <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 16px;">
      <span style="font-size: 12px; font-weight: 600; text-transform: uppercase; color: #9ca3af;">Repository Filter</span>
      <button onclick="copyToClipboard('{\\n  \\\"env\\\": {\\n    \\\"GITHUB_REPOSITORIES\\\": \\\"user-service,payment-gateway,mobile-app\\\"\\n  }\\n}')" style="background: var(--primary-color); color: white; border: none; padding: 4px 12px; border-radius: 4px; font-size: 12px; cursor: pointer;">Copy</button>
    </div>
    <pre style="margin: 0; background: none; border: none; padding: 0;"><code>{
  "env": {
    "GITHUB_REPOSITORIES": "user-service,payment-gateway,mobile-app"
  }
}</code></pre>
  </div>

  ### Performance Optimization

  <div style="background: var(--bg-dark); color: #e5e7eb; border-radius: 12px; padding: 24px; margin: 24px 0;">
    <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 16px;">
      <span style="font-size: 12px; font-weight: 600; text-transform: uppercase; color: #9ca3af;">Rate Limiting & Caching</span>
      <button onclick="copyToClipboard('{\\n  \\\"env\\\": {\\n    \\\"GITHUB_RATE_LIMIT\\\": \\\"5000\\\",\\n    \\\"GITHUB_RATE_LIMIT_PER_HOUR\\\": \\\"5000\\\",\\n    \\\"CACHE_TTL\\\": \\\"300\\\"\\n  }\\n}')" style="background: var(--primary-color); color: white; border: none; padding: 4px 12px; border-radius: 4px; font-size: 12px; cursor: pointer;">Copy</button>
    </div>
    <pre style="margin: 0; background: none; border: none; padding: 0;"><code>{
  "env": {
    "GITHUB_RATE_LIMIT": "5000",
    "GITHUB_RATE_LIMIT_PER_HOUR": "5000",
    "CACHE_TTL": "300"
  }
}</code></pre>
  </div>

  ### Corporate Proxy Configuration

  <div style="background: var(--bg-dark); color: #e5e7eb; border-radius: 12px; padding: 24px; margin: 24px 0;">
    <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 16px;">
      <span style="font-size: 12px; font-weight: 600; text-transform: uppercase; color: #9ca3af;">Proxy Settings</span>
      <button onclick="copyToClipboard('{\\n  \\\"env\\\": {\\n    \\\"HTTPS_PROXY\\\": \\\"http://proxy.company.com:8080\\\",\\n    \\\"HTTP_PROXY\\\": \\\"http://proxy.company.com:8080\\\",\\n    \\\"NO_PROXY\\\": \\\"localhost,127.0.0.1,github.internet.net\\\"\\n  }\\n}')" style="background: var(--primary-color); color: white; border: none; padding: 4px 12px; border-radius: 4px; font-size: 12px; cursor: pointer;">Copy</button>
    </div>
    <pre style="margin: 0; background: none; border: none; padding: 0;"><code>{
  "env": {
    "HTTPS_PROXY": "http://proxy.company.com:8080",
    "HTTP_PROXY": "http://proxy.company.com:8080",
    "NO_PROXY": "localhost,127.0.0.1,github.internet.net"
  }
}</code></pre>
  </div>

  ---

  ## Enterprise Features

  ### SAML SSO Integration

  <div style="background: #f0f9ff; border: 1px solid #0369a1; border-radius: 12px; padding: 24px; margin: 24px 0;">
    <h4 style="margin: 0 0 12px 0; color: #0369a1; font-weight: 600;">Single Sign-On Configuration</h4>
    <p style="margin: 0 0 16px 0; color: #1e40af;">If your organization uses SAML SSO, enable these settings:</p>
    <div style="background: var(--bg-dark); color: #e5e7eb; padding: 16px; border-radius: 8px; font-family: monospace; font-size: 14px;">
      "GITHUB_SSO_ENABLED": "true",<br>
      "GITHUB_SSO_TOKEN_REFRESH": "true"
    </div>
  </div>

  ### Audit Logging

  <div style="background: #f8f9fa; border-radius: 12px; padding: 24px; margin: 24px 0;">
    <h4 style="margin: 0 0 12px 0; color: var(--text-primary); font-weight: 600;">Compliance & Monitoring</h4>
    <p style="margin: 0 0 16px 0; color: var(--text-secondary);">Enable comprehensive logging for enterprise compliance:</p>
    <div style="background: var(--bg-dark); color: #e5e7eb; padding: 16px; border-radius: 8px; font-family: monospace; font-size: 14px;">
      "GITHUB_AUDIT_LOG": "true",<br>
      "GITHUB_LOG_LEVEL": "info"
    </div>
  </div>

  ---

  ## Troubleshooting

  ### Common Issues

  <div style="display: grid; gap: 20px; margin: 32px 0;">
    <details style="padding: 20px; background: white; border: 1px solid var(--border-color); border-radius: 12px;" open>
      <summary style="font-weight: 600; cursor: pointer; color: var(--text-primary);">401 Unauthorized</summary>
      <div style="margin-top: 12px; color: var(--text-secondary);">
        <ul style="margin: 0; padding-left: 20px;">
          <li>Verify token permissions and scopes</li>
          <li>Check if token has expired</li>
          <li>Confirm organizational access rights</li>
        </ul>
      </div>
    </details>
    
    <details style="padding: 20px; background: white; border: 1px solid var(--border-color); border-radius: 12px;">
      <summary style="font-weight: 600; cursor: pointer; color: var(--text-primary);">403 Forbidden</summary>
      <div style="margin-top: 12px; color: var(--text-secondary);">
        <ul style="margin: 0; padding-left: 20px;">
          <li>Check repository access permissions</li>
          <li>Verify organizational membership</li>
          <li>Review token scopes (repo, read:org)</li>
        </ul>
      </div>
    </details>
    
    <details style="padding: 20px; background: white; border: 1px solid var(--border-color); border-radius: 12px;">
      <summary style="font-weight: 600; cursor: pointer; color: var(--text-primary);">Rate Limiting (429)</summary>
      <div style="margin-top: 12px; color: var(--text-secondary);">
        <ul style="margin: 0; padding-left: 20px;">
          <li>Monitor API usage and implement caching</li>
          <li>Consider multiple tokens for high-volume teams</li>
          <li>Reduce concurrent request settings</li>
        </ul>
      </div>
    </details>
  </div>

  ### Debug Mode

  <div style="background: var(--bg-dark); color: #e5e7eb; border-radius: 12px; padding: 24px; margin: 24px 0;">
    <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 16px;">
      <span style="font-size: 12px; font-weight: 600; text-transform: uppercase; color: #9ca3af;">Debug Configuration</span>
      <button onclick="copyToClipboard('{\\n  \\\"env\\\": {\\n    \\\"DEBUG\\\": \\\"mcp:github:*\\\",\\n    \\\"LOG_LEVEL\\\": \\\"debug\\\"\\n  }\\n}')" style="background: var(--primary-color); color: white; border: none; padding: 4px 12px; border-radius: 4px; font-size: 12px; cursor: pointer;">Copy</button>
    </div>
    <pre style="margin: 0; background: none; border: none; padding: 0;"><code>{
  "env": {
    "DEBUG": "mcp:github:*",
    "LOG_LEVEL": "debug"
  }
}</code></pre>
  </div>

  <div style="background: #e8f5e8; border-left: 4px solid var(--accent-color); padding: 16px 20px; border-radius: 8px; margin: 24px 0;">
    <strong>✅ Compliance Notes:</strong> All API calls are logged for audit purposes. Token usage is monitored and reported. Access follows existing GitHub Enterprise permissions with no local data storage beyond session cache.
  </div>

  <div style="text-align: center; margin: 48px 0;">
    <a href="database.html" style="display: inline-flex; align-items: center; gap: 8px; padding: 14px 28px; background: var(--primary-color); color: white; text-decoration: none; border-radius: 12px; font-weight: 600; transition: all 0.3s ease; margin-right: 16px;">
      <svg width="16" height="16" viewBox="0 0 24 24" fill="currentColor">
        <path d="M20,11V13H8L13.5,18.5L12.08,19.92L4.16,12L12.08,4.08L13.5,5.5L8,11H20Z"/>
      </svg>
      Database MCP
    </a>
    <a href="jira.html" style="display: inline-flex; align-items: center; gap: 8px; padding: 14px 28px; background: white; color: var(--primary-color); border: 2px solid var(--border-color); text-decoration: none; border-radius: 12px; font-weight: 600; transition: all 0.3s ease;">
      Next: Jira MCP
      <svg width="16" height="16" viewBox="0 0 24 24" fill="currentColor">
        <path d="M4,11V13H16L10.5,18.5L11.92,19.92L19.84,12L11.92,4.08L10.5,5.5L16,11H4Z"/>
      </svg>
    </a>
  </div>

</div>

<script>
function copyToClipboard(text) {
  navigator.clipboard.writeText(text).then(function() {
    console.log('Copied to clipboard:', text);
  }, function(err) {
    console.error('Could not copy text: ', err);
  });
}
</script>
