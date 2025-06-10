---
layout: default
title: ServiceNow MCP Server
description: Connect to ServiceNow for IT service management and incident tracking
---

<!-- Page Header -->
<div class="page-header">
  <div class="page-header-container">
    <h1 class="page-title">ServiceNow MCP Server</h1>
    <p class="page-description">
      Integrate GitHub Copilot with ServiceNow for IT service management, incident tracking, and workflow automation.
    </p>
  </div>
</div>

<!-- Documentation Content -->
<div class="doc-content">

  <div style="display: inline-flex; align-items: center; gap: 8px; background: #dcfce7; color: #166534; padding: 8px 16px; border-radius: 20px; font-size: 14px; font-weight: 600; margin-bottom: 32px;">
    <svg width="16" height="16" viewBox="0 0 24 24" fill="currentColor">
      <path d="M12,2A10,10 0 0,1 22,12A10,10 0 0,1 12,22A10,10 0 0,1 2,12A10,10 0 0,1 12,2M11,7V13H13V7H11M11,15V17H13V15H11Z"/>
    </svg>
    IT Service Management
  </div>

  ## Configuration

  <div style="background: var(--bg-dark); color: #e5e7eb; border-radius: 12px; padding: 24px; margin: 24px 0;">
    <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 16px;">
      <span style="font-size: 12px; font-weight: 600; text-transform: uppercase; color: #9ca3af;">ServiceNow Configuration</span>
      <button onclick="copyToClipboard('{\n  \"mcpServers\": {\n    \"servicenow\": {\n      \"command\": \"node\",\n      \"args\": [\n        \"node_modules/@modelcontextprotocol/server-servicenow/dist/index.js\"\n      ],\n      \"env\": {\n        \"SERVICENOW_URL\": \"https://company.service-now.com\",\n        \"SERVICENOW_USERNAME\": \"your-username\",\n        \"SERVICENOW_PASSWORD\": \"your-password\"\n      }\n    }\n  }\n}')" style="background: var(--primary-color); color: white; border: none; padding: 4px 12px; border-radius: 4px; font-size: 12px; cursor: pointer;">Copy</button>
    </div>
    <pre style="margin: 0; background: none; border: none; padding: 0;"><code>{
  "mcpServers": {
    "servicenow": {
      "command": "node",
      "args": [
        "node_modules/@modelcontextprotocol/server-servicenow/dist/index.js"
      ],
      "env": {
        "SERVICENOW_URL": "https://company.service-now.com",
        "SERVICENOW_USERNAME": "your-username",
        "SERVICENOW_PASSWORD": "your-password"
      }
    }
  }
}</code></pre>
  </div>

  ## Usage Examples

  <div style="display: grid; gap: 16px; margin: 32px 0;">
    <div style="padding: 20px; background: white; border-left: 4px solid #059669; border-radius: 12px;">
      <h4 style="margin: 0 0 8px 0; color: var(--text-primary); font-weight: 600;">Incident Management</h4>
      <ul style="margin: 0; padding-left: 20px; color: var(--text-secondary);">
        <li>"Show me all open incidents assigned to my team"</li>
        <li>"What's the status of incident INC0012345?"</li>
        <li>"Create a new incident for the database connectivity issue"</li>
      </ul>
    </div>
  </div>

  <div style="background: #e8f5e8; border-left: 4px solid var(--accent-color); padding: 16px 20px; border-radius: 8px; margin: 24px 0;">
    <strong>✅ ITSM Integration:</strong> Seamlessly integrates with existing ServiceNow workflows and approval processes.
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