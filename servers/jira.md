---
layout: default
title: Jira MCP Server
description: Connect to Jira for issue tracking, project management, and sprint planning
---

<!-- Page Header -->
<div class="page-header">
  <div class="page-header-container">
    <h1 class="page-title">Jira MCP Server</h1>
    <p class="page-description">
      Integrate GitHub Copilot with Jira for seamless access to issues, projects, sprints, and team workflows for enhanced development productivity.
    </p>
  </div>
</div>

<!-- Documentation Content -->
<div class="doc-content">

  <div style="display: inline-flex; align-items: center; gap: 8px; background: #dbeafe; color: #1e40af; padding: 8px 16px; border-radius: 20px; font-size: 14px; font-weight: 600; margin-bottom: 32px;">
    <svg width="16" height="16" viewBox="0 0 24 24" fill="currentColor">
      <path d="M11.53,2C11.53,2.95 11.53,3.89 11.53,4.84C11.53,8.32 8.32,11.53 4.84,11.53C3.89,11.53 2.95,11.53 2,11.53L11.53,2M12.47,2L22,11.53C21.05,11.53 20.11,11.53 19.16,11.53C15.68,11.53 12.47,8.32 12.47,4.84C12.47,3.89 12.47,2.95 12.47,2M2,12.47C2.95,12.47 3.89,12.47 4.84,12.47C8.32,12.47 11.53,15.68 11.53,19.16C11.53,20.11 11.53,21.05 11.53,22L2,12.47M12.47,22C12.47,21.05 12.47,20.11 12.47,19.16C12.47,15.68 15.68,12.47 19.16,12.47C20.11,12.47 21.05,12.47 22,12.47L12.47,22Z"/>
    </svg>
    Project Management & Issue Tracking
  </div>

  ## Prerequisites

  - **Jira API Token** with appropriate permissions
  - **Access to Jira instance** (jira.company.com)
  - **Project permissions** for the projects you want to query
  - **Network connectivity** through corporate proxy if required

  ---

  ## Installation

  <div style="background: var(--bg-dark); color: #e5e7eb; border-radius: 12px; padding: 24px; margin: 24px 0;">
    <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 16px;">
      <span style="font-size: 12px; font-weight: 600; text-transform: uppercase; color: #9ca3af;">Terminal</span>
      <button onclick="copyToClipboard('npm install @modelcontextprotocol/server-jira')" style="background: var(--primary-color); color: white; border: none; padding: 4px 12px; border-radius: 4px; font-size: 12px; cursor: pointer;">Copy</button>
    </div>
    <code style="background: none; color: inherit; padding: 0;">npm install @modelcontextprotocol/server-jira</code>
  </div>

  ---

  ## Configuration

  ### Basic Setup

  <div style="background: var(--bg-dark); color: #e5e7eb; border-radius: 12px; padding: 24px; margin: 24px 0;">
    <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 16px;">
      <span style="font-size: 12px; font-weight: 600; text-transform: uppercase; color: #9ca3af;">Basic Configuration</span>
      <button onclick="copyToClipboard('{\\n  \\\"mcpServers\\\": {\\n    \\\"jira\\\": {\\n      \\\"command\\\": \\\"node\\\",\\n      \\\"args\\\": [\\n        \\\"node_modules/@modelcontextprotocol/server-jira/dist/index.js\\\"\\n      ],\\n      \\\"env\\\": {\\n        \\\"JIRA_URL\\\": \\\"https://jira.company.com\\\",\\n        \\\"JIRA_USERNAME\\\": \\\"your-email@company.com\\\",\\n        \\\"JIRA_API_TOKEN\\\": \\\"your-api-token\\\"\\n      }\\n    }\\n  }\\n}')" style="background: var(--primary-color); color: white; border: none; padding: 4px 12px; border-radius: 4px; font-size: 12px; cursor: pointer;">Copy</button>
    </div>
    <pre style="margin: 0; background: none; border: none; padding: 0;"><code>{
  "mcpServers": {
    "jira": {
      "command": "node",
      "args": [
        "node_modules/@modelcontextprotocol/server-jira/dist/index.js"
      ],
      "env": {
        "JIRA_URL": "https://jira.company.com",
        "JIRA_USERNAME": "your-email@company.com",
        "JIRA_API_TOKEN": "your-api-token"
      }
    }
  }
}</code></pre>
  </div>

  ### Multi-Project Configuration

  <div style="background: var(--bg-dark); color: #e5e7eb; border-radius: 12px; padding: 24px; margin: 24px 0;">
    <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 16px;">
      <span style="font-size: 12px; font-weight: 600; text-transform: uppercase; color: #9ca3af;">Project-Specific Access</span>
      <button onclick="copyToClipboard('Multi-project config copied!')" style="background: var(--primary-color); color: white; border: none; padding: 4px 12px; border-radius: 4px; font-size: 12px; cursor: pointer;">Copy</button>
    </div>
    <pre style="margin: 0; background: none; border: none; padding: 0;"><code>{
  "env": {
    "JIRA_PROJECTS": "PROJ,MOBILE,BACKEND",
    "JIRA_MAX_RESULTS": "50",
    "JIRA_CACHE_TTL": "300"
  }
}</code></pre>
  </div>

  ---

  ## API Token Setup

  <div style="background: #fef3c7; border-left: 4px solid #f59e0b; padding: 16px 20px; border-radius: 8px; margin: 24px 0;">
    <strong>🔑 Security Important:</strong> Use API tokens instead of passwords. API tokens can be restricted to specific permissions and are easier to rotate.
  </div>

  ### Creating Your API Token

  <div style="display: grid; gap: 20px; margin: 32px 0;">
    <div style="display: flex; gap: 16px; align-items: flex-start;">
      <div style="width: 32px; height: 32px; background: var(--primary-color); color: white; border-radius: 50%; display: flex; align-items: center; justify-content: center; font-weight: 600; font-size: 14px; flex-shrink: 0;">1</div>
      <div>
        <h4 style="margin: 0 0 4px 0; font-size: 16px; font-weight: 600;">Navigate to API Tokens</h4>
        <p style="margin: 0; color: var(--text-secondary); line-height: 1.4;">Go to your Jira profile → Security → API tokens</p>
      </div>
    </div>
    
    <div style="display: flex; gap: 16px; align-items: flex-start;">
      <div style="width: 32px; height: 32px; background: var(--primary-color); color: white; border-radius: 50%; display: flex; align-items: center; justify-content: center; font-weight: 600; font-size: 14px; flex-shrink: 0;">2</div>
      <div>
        <h4 style="margin: 0 0 4px 0; font-size: 16px; font-weight: 600;">Create API Token</h4>
        <p style="margin: 0; color: var(--text-secondary); line-height: 1.4;">Click "Create API token" and provide a descriptive label</p>
      </div>
    </div>
    
    <div style="display: flex; gap: 16px; align-items: flex-start;">
      <div style="width: 32px; height: 32px; background: var(--primary-color); color: white; border-radius: 50%; display: flex; align-items: center; justify-content: center; font-weight: 600; font-size: 14px; flex-shrink: 0;">3</div>
      <div>
        <h4 style="margin: 0 0 4px 0; font-size: 16px; font-weight: 600;">Store Securely</h4>
        <p style="margin: 0; color: var(--text-secondary); line-height: 1.4;">Copy the token immediately and store in environment variables</p>
      </div>
    </div>
  </div>

  ---

  ## Usage Examples

  <div style="display: grid; gap: 16px; margin: 32px 0;">
    <div style="padding: 20px; background: linear-gradient(135deg, #f8fafc 0%, #e2e8f0 100%); border-left: 4px solid #2563eb; border-radius: 12px;">
      <h4 style="margin: 0 0 8px 0; color: var(--text-primary); font-weight: 600;">Issue Management</h4>
      <ul style="margin: 0; padding-left: 20px; color: var(--text-secondary);">
        <li>"Show me all open issues assigned to me"</li>
        <li>"What are the high-priority bugs in project MOBILE?"</li>
        <li>"List all issues in the current sprint"</li>
      </ul>
    </div>

    <div style="padding: 20px; background: linear-gradient(135deg, #f0fdf4 0%, #dcfce7 100%); border-left: 4px solid #10b981; border-radius: 12px;">
      <h4 style="margin: 0 0 8px 0; color: var(--text-primary); font-weight: 600;">Project Insights</h4>
      <ul style="margin: 0; padding-left: 20px; color: var(--text-secondary);">
        <li>"How many story points are completed this sprint?"</li>
        <li>"What's the burndown status for project BACKEND?"</li>
        <li>"Show me the project roadmap and upcoming milestones"</li>
      </ul>
    </div>

    <div style="padding: 20px; background: linear-gradient(135deg, #fefbff 0%, #f3e8ff 100%); border-left: 4px solid #7c3aed; border-radius: 12px;">
      <h4 style="margin: 0 0 8px 0; color: var(--text-primary); font-weight: 600;">Team Coordination</h4>
      <ul style="margin: 0; padding-left: 20px; color: var(--text-secondary);">
        <li>"What issues are blocked and need attention?"</li>
        <li>"Show me the team's workload distribution"</li>
        <li>"Which issues are ready for testing?"</li>
      </ul>
    </div>
  </div>

  <div style="background: #e8f5e8; border-left: 4px solid var(--accent-color); padding: 16px 20px; border-radius: 8px; margin: 24px 0;">
    <strong>✅ Enterprise Ready:</strong> Integrates with existing Jira permissions and workflows. All queries respect project access controls and user permissions.
  </div>

  <div style="text-align: center; margin: 48px 0;">
    <a href="github.html" style="display: inline-flex; align-items: center; gap: 8px; padding: 14px 28px; background: var(--primary-color); color: white; text-decoration: none; border-radius: 12px; font-weight: 600; transition: all 0.3s ease; margin-right: 16px;">
      <svg width="16" height="16" viewBox="0 0 24 24" fill="currentColor">
        <path d="M20,11V13H8L13.5,18.5L12.08,19.92L4.16,12L12.08,4.08L13.5,5.5L8,11H20Z"/>
      </svg>
      GitHub MCP
    </a>
    <a href="sharepoint.html" style="display: inline-flex; align-items: center; gap: 8px; padding: 14px 28px; background: white; color: var(--primary-color); border: 2px solid var(--border-color); text-decoration: none; border-radius: 12px; font-weight: 600; transition: all 0.3s ease;">
      Next: SharePoint MCP
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
