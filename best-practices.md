---
layout: default
title: Best Practices
description: Security, performance, and enterprise implementation best practices for MCP servers
---

<!-- Page Header -->
<div class="page-header">
  <div class="page-header-container">
    <h1 class="page-title">Best Practices</h1>
    <p class="page-description">
      Security, performance, and enterprise implementation best practices for MCP servers in large-scale development environments.
    </p>
  </div>
</div>

<!-- Documentation Content -->
<div class="doc-content">

  <div style="display: inline-flex; align-items: center; gap: 8px; background: #f0f9ff; color: #0369a1; padding: 8px 16px; border-radius: 20px; font-size: 14px; font-weight: 600; margin-bottom: 32px;">
    <svg width="16" height="16" viewBox="0 0 24 24" fill="currentColor">
      <path d="M12,1L3,5V11C3,16.55 6.84,21.74 12,23C17.16,21.74 21,16.55 21,11V5L12,1M12,7C13.4,7 14.8,8.6 14.8,10.5V11.5C14.8,12.4 14.1,13.2 13.2,13.2H10.8C9.9,13.2 9.2,12.4 9.2,11.5V10.5C9.2,8.6 10.6,7 12,7M12,8.2C11.2,8.2 10.5,8.7 10.5,9.5V10.8H13.5V9.5C13.5,8.7 12.8,8.2 12,8.2Z"/>
    </svg>
    Enterprise Security & Performance Guide
  </div>

  ## Security Best Practices

  ### Credential Management

  <div style="background: #fef3c7; border-left: 4px solid #f59e0b; padding: 16px 20px; border-radius: 8px; margin: 24px 0;">
    <strong>🔑 Critical Security Rule:</strong> Never store credentials in configuration files. Always use environment variables or secure credential management systems.
  </div>

  **Environment Variable Setup**

  <div style="background: var(--bg-dark); color: #e5e7eb; border-radius: 12px; padding: 24px; margin: 24px 0;">
    <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 16px;">
      <span style="font-size: 12px; font-weight: 600; text-transform: uppercase; color: #9ca3af;">Windows PowerShell</span>
      <button onclick="copyToClipboard('$env:DB_PASSWORD = \\"secure-password\\"\\n$env:GITHUB_TOKEN = \\"ghp_token\\"\\n$env:JIRA_API_TOKEN = \\"token\\"")" style="background: var(--primary-color); color: white; border: none; padding: 4px 12px; border-radius: 4px; font-size: 12px; cursor: pointer;">Copy</button>
    </div>
    <pre style="margin: 0; background: none; border: none; padding: 0;"><code># Windows (PowerShell)
$env:DB_PASSWORD = "secure-password"
$env:GITHUB_TOKEN = "ghp_token"
$env:JIRA_API_TOKEN = "token"</code></pre>
  </div>

  <div style="background: var(--bg-dark); color: #e5e7eb; border-radius: 12px; padding: 24px; margin: 24px 0;">
    <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 16px;">
      <span style="font-size: 12px; font-weight: 600; text-transform: uppercase; color: #9ca3af;">Linux/Ubuntu</span>
      <button onclick="copyToClipboard('export DB_PASSWORD=\\"secure-password\\"\\nexport GITHUB_TOKEN=\\"ghp_token\\"\\nexport JIRA_API_TOKEN=\\"token\\"")" style="background: var(--primary-color); color: white; border: none; padding: 4px 12px; border-radius: 4px; font-size: 12px; cursor: pointer;">Copy</button>
    </div>
    <pre style="margin: 0; background: none; border: none; padding: 0;"><code># Linux/Ubuntu
export DB_PASSWORD="secure-password"
export GITHUB_TOKEN="ghp_token"
export JIRA_API_TOKEN="token"</code></pre>
  </div>

  ### Service Account Configuration

  <div style="display: grid; gap: 20px; margin: 32px 0;">
    <div style="padding: 24px; background: white; border: 1px solid var(--border-color); border-radius: 12px; box-shadow: 0 2px 4px rgba(0,0,0,0.05);">
      <div style="display: flex; align-items: center; gap: 12px; margin-bottom: 12px;">
        <div style="width: 40px; height: 40px; background: linear-gradient(135deg, #667eea 0%, #764ba2 100%); border-radius: 8px; display: flex; align-items: center; justify-content: center; color: white;">
          <svg width="20" height="20" viewBox="0 0 24 24" fill="currentColor">
            <path d="M12,3C7.58,3 4,4.79 4,7C4,9.21 7.58,11 12,11C16.42,11 20,9.21 20,7C20,4.79 16.42,3 12,3M4,9V12C4,14.21 7.58,16 12,16C16.42,16 20,14.21 20,12V9C20,11.21 16.42,13 12,13C7.58,13 4,11.21 4,9M4,14V17C4,19.21 7.58,21 12,21C16.42,21 20,19.21 20,17V14C20,16.21 16.42,18 12,18C7.58,18 4,16.21 4,14Z"/>
          </svg>
        </div>
        <div>
          <h4 style="margin: 0; font-size: 18px; font-weight: 600; color: var(--text-primary);">Database Access</h4>
          <p style="margin: 0; color: var(--text-secondary); font-size: 14px;">Read-only roles only</p>
        </div>
      </div>
      <p style="margin: 0; color: var(--text-secondary); line-height: 1.5;">Create dedicated service accounts with minimal read-only permissions for database connections.</p>
    </div>

    <div style="padding: 24px; background: white; border: 1px solid var(--border-color); border-radius: 12px; box-shadow: 0 2px 4px rgba(0,0,0,0.05);">
      <div style="display: flex; align-items: center; gap: 12px; margin-bottom: 12px;">
        <div style="width: 40px; height: 40px; background: linear-gradient(135deg, #1f2937, #4b5563); border-radius: 8px; display: flex; align-items: center; justify-content: center; color: white;">
          <svg width="20" height="20" viewBox="0 0 24 24" fill="currentColor">
            <path d="M12,2A10,10 0 0,0 2,12C2,16.42 4.87,20.17 8.84,21.5C9.34,21.58 9.5,21.27 9.5,21C9.5,20.77 9.5,20.14 9.5,19.31C6.73,19.91 6.14,17.97 6.14,17.97C5.68,16.81 5.03,16.5 5.03,16.5C4.12,15.88 5.1,15.9 5.1,15.9C6.1,15.97 6.63,16.93 6.63,16.93C7.5,18.45 8.97,18 9.54,17.76C9.63,17.11 9.89,16.67 10.17,16.42C7.95,16.17 5.62,15.31 5.62,11.5C5.62,10.39 6,9.5 6.65,8.79C6.55,8.54 6.2,7.5 6.75,6.15C6.75,6.15 7.59,5.88 9.5,7.17C10.29,6.95 11.15,6.84 12,6.84C12.85,6.84 13.71,6.95 14.5,7.17C16.41,5.88 17.25,6.15 17.25,6.15C17.8,7.5 17.45,8.54 17.35,8.79C18,9.5 18.38,10.39 18.38,11.5C18.38,15.32 16.04,16.16 13.81,16.41C14.17,16.72 14.5,17.33 14.5,18.26C14.5,19.6 14.5,20.68 14.5,21C14.5,21.27 14.66,21.59 15.17,21.5C19.14,20.16 22,16.42 22,12A10,10 0 0,0 12,2Z"/>
          </svg>
        </div>
        <div>
          <h4 style="margin: 0; font-size: 18px; font-weight: 600; color: var(--text-primary);">GitHub Access</h4>
          <p style="margin: 0; color: var(--text-secondary); font-size: 14px;">Limited repository scope</p>
        </div>
      </div>
      <p style="margin: 0; color: var(--text-secondary); line-height: 1.5;">Use Personal Access Tokens with specific repository access and appropriate scopes.</p>
    </div>

    <div style="padding: 24px; background: white; border: 1px solid var(--border-color); border-radius: 12px; box-shadow: 0 2px 4px rgba(0,0,0,0.05);">
      <div style="display: flex; align-items: center; gap: 12px; margin-bottom: 12px;">
        <div style="width: 40px; height: 40px; background: linear-gradient(135deg, #2563eb, #3b82f6); border-radius: 8px; display: flex; align-items: center; justify-content: center; color: white;">
          <svg width="20" height="20" viewBox="0 0 24 24" fill="currentColor">
            <path d="M11.53,2C11.53,2.95 11.53,3.89 11.53,4.84C11.53,8.32 8.32,11.53 4.84,11.53C3.89,11.53 2.95,11.53 2,11.53L11.53,2M12.47,2L22,11.53C21.05,11.53 20.11,11.53 19.16,11.53C15.68,11.53 12.47,8.32 12.47,4.84C12.47,3.89 12.47,2.95 12.47,2M2,12.47C2.95,12.47 3.89,12.47 4.84,12.47C8.32,12.47 11.53,15.68 11.53,19.16C11.53,20.11 11.53,21.05 11.53,22L2,12.47M12.47,22C12.47,21.05 12.47,20.11 12.47,19.16C12.47,15.68 15.68,12.47 19.16,12.47C20.11,12.47 21.05,12.47 22,12.47L12.47,22Z"/>
          </svg>
        </div>
        <div>
          <h4 style="margin: 0; font-size: 18px; font-weight: 600; color: var(--text-primary);">Jira Integration</h4>
          <p style="margin: 0; color: var(--text-secondary); font-size: 14px;">Project-specific permissions</p>
        </div>
      </div>
      <p style="margin: 0; color: var(--text-secondary); line-height: 1.5;">Configure API tokens with project-specific read access and appropriate permission levels.</p>
    </div>
  </div>

  ---

  ## Performance Optimization

  ### Resource Management

  <div style="background: var(--bg-dark); color: #e5e7eb; border-radius: 12px; padding: 24px; margin: 24px 0;">
    <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 16px;">
      <span style="font-size: 12px; font-weight: 600; text-transform: uppercase; color: #9ca3af;">Optimal Configuration</span>
      <button onclick="copyToClipboard('{\\n  \\\"env\\\": {\\n    \\\"DB_POOL_MIN\\\": \\\"1\\\",\\n    \\\"DB_POOL_MAX\\\": \\\"5\\\",\\n    \\\"API_CONCURRENT_REQUESTS\\\": \\\"3\\\",\\n    \\\"CONNECTION_TIMEOUT\\\": \\\"30000\\\"\\n  }\\n}')" style="background: var(--primary-color); color: white; border: none; padding: 4px 12px; border-radius: 4px; font-size: 12px; cursor: pointer;">Copy</button>
    </div>
    <pre style="margin: 0; background: none; border: none; padding: 0;"><code>{
  "env": {
    "DB_POOL_MIN": "1",
    "DB_POOL_MAX": "5",
    "API_CONCURRENT_REQUESTS": "3",
    "CONNECTION_TIMEOUT": "30000"
  }
}</code></pre>
  </div>

  ### Team-Specific Configurations

  <div style="display: grid; gap: 24px; margin: 32px 0;">
    <div style="padding: 24px; background: linear-gradient(135deg, #f8fafc 0%, #e2e8f0 100%); border-radius: 16px; border: 1px solid var(--border-color);">
      <h4 style="margin: 0 0 16px 0; color: var(--text-primary); font-size: 18px; font-weight: 700;">Engineering Team</h4>
      <div style="display: flex; flex-wrap: wrap; gap: 12px;">
        <span style="background: #dbeafe; color: #1e40af; padding: 6px 12px; border-radius: 20px; font-size: 13px; font-weight: 500;">Database MCP</span>
        <span style="background: #f3f4f6; color: #374151; padding: 6px 12px; border-radius: 20px; font-size: 13px; font-weight: 500;">GitHub MCP</span>
        <span style="background: #dbeafe; color: #1e40af; padding: 6px 12px; border-radius: 20px; font-size: 13px; font-weight: 500;">Jira MCP</span>
        <span style="background: #fef3c7; color: #92400e; padding: 6px 12px; border-radius: 20px; font-size: 13px; font-weight: 500;">File System</span>
      </div>
    </div>

    <div style="padding: 24px; background: linear-gradient(135deg, #f0fdf4 0%, #dcfce7 100%); border-radius: 16px; border: 1px solid var(--border-color);">
      <h4 style="margin: 0 0 16px 0; color: var(--text-primary); font-size: 18px; font-weight: 700;">Product Team</h4>
      <div style="display: flex; flex-wrap: wrap; gap: 12px;">
        <span style="background: #dbeafe; color: #1e40af; padding: 6px 12px; border-radius: 20px; font-size: 13px; font-weight: 500;">Jira MCP</span>
        <span style="background: #fecaca; color: #991b1b; padding: 6px 12px; border-radius: 20px; font-size: 13px; font-weight: 500;">SharePoint</span>
        <span style="background: #e879f9; color: #7c3aed; padding: 6px 12px; border-radius: 20px; font-size: 13px; font-weight: 500;">Figma</span>
      </div>
    </div>
  </div>

  ---

  ## Monitoring & Compliance

  ### Health Check Implementation

  <div style="background: var(--bg-dark); color: #e5e7eb; border-radius: 12px; padding: 24px; margin: 24px 0;">
    <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 16px;">
      <span style="font-size: 12px; font-weight: 600; text-transform: uppercase; color: #9ca3af;">Health Check Script</span>
      <button onclick="copyToClipboard('#!/bin/bash\\necho \\\"Checking MCP Server Status...\\\"\\ncurl -f http://localhost:3001/health || echo \\\"❌ MCP server down\\\"\\necho \\\"✅ Health check complete\\\"')" style="background: var(--primary-color); color: white; border: none; padding: 4px 12px; border-radius: 4px; font-size: 12px; cursor: pointer;">Copy</button>
    </div>
    <pre style="margin: 0; background: none; border: none; padding: 0;"><code>#!/bin/bash
echo "Checking MCP Server Status..."
curl -f http://localhost:3001/health || echo "❌ MCP server down"
echo "✅ Health check complete"</code></pre>
  </div>

  ### Key Performance Metrics

  <div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(250px, 1fr)); gap: 20px; margin: 32px 0;">
    <div style="text-align: center; padding: 24px; background: white; border: 1px solid var(--border-color); border-radius: 12px;">
      <div style="font-size: 32px; font-weight: 800; color: var(--primary-color); margin-bottom: 8px;">< 100ms</div>
      <div style="font-size: 14px; font-weight: 600; color: var(--text-secondary); text-transform: uppercase; letter-spacing: 0.05em;">Response Time</div>
    </div>
    
    <div style="text-align: center; padding: 24px; background: white; border: 1px solid var(--border-color); border-radius: 12px;">
      <div style="font-size: 32px; font-weight: 800; color: var(--accent-color); margin-bottom: 8px;">99.5%</div>
      <div style="font-size: 14px; font-weight: 600; color: var(--text-secondary); text-transform: uppercase; letter-spacing: 0.05em;">Uptime Target</div>
    </div>
    
    <div style="text-align: center; padding: 24px; background: white; border: 1px solid var(--border-color); border-radius: 12px;">
      <div style="font-size: 32px; font-weight: 800; color: var(--warning-color); margin-bottom: 8px;">< 5%</div>
      <div style="font-size: 14px; font-weight: 600; color: var(--text-secondary); text-transform: uppercase; letter-spacing: 0.05em;">Error Rate</div>
    </div>
  </div>

  <div style="background: #e8f5e8; border-left: 4px solid var(--accent-color); padding: 16px 20px; border-radius: 8px; margin: 24px 0;">
    <strong>✅ Enterprise Compliance:</strong> All configurations meet enterprise security standards including audit logging, data governance, and access controls.
  </div>

  <div style="text-align: center; margin: 48px 0;">
    <a href="quick-start.html" style="display: inline-flex; align-items: center; gap: 8px; padding: 14px 28px; background: var(--primary-color); color: white; text-decoration: none; border-radius: 12px; font-weight: 600; transition: all 0.3s ease; margin-right: 16px;">
      <svg width="16" height="16" viewBox="0 0 24 24" fill="currentColor">
        <path d="M20,11V13H8L13.5,18.5L12.08,19.92L4.16,12L12.08,4.08L13.5,5.5L8,11H20Z"/>
      </svg>
      Back to Quick Start
    </a>
    <a href="troubleshooting.html" style="display: inline-flex; align-items: center; gap: 8px; padding: 14px 28px; background: white; color: var(--primary-color); border: 2px solid var(--border-color); text-decoration: none; border-radius: 12px; font-weight: 600; transition: all 0.3s ease;">
      Troubleshooting Guide
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
