---
layout: default
title: SharePoint MCP Server
description: Connect to SharePoint for document management and knowledge base access
---

<!-- Page Header -->
<div class="page-header">
  <div class="page-header-container">
    <h1 class="page-title">SharePoint MCP Server</h1>
    <p class="page-description">
      Integrate GitHub Copilot with SharePoint for seamless access to documents, knowledge bases, and collaborative content.
    </p>
  </div>
</div>

<!-- Documentation Content -->
<div class="doc-content">

  <div style="display: inline-flex; align-items: center; gap: 8px; background: #fecaca; color: #991b1b; padding: 8px 16px; border-radius: 20px; font-size: 14px; font-weight: 600; margin-bottom: 32px;">
    <svg width="16" height="16" viewBox="0 0 24 24" fill="currentColor">
      <path d="M18.5,9C19.5,9 20.5,9.4 21.2,10.1C21.9,10.8 22.3,11.8 22.3,12.8C22.3,13.8 21.9,14.8 21.2,15.5C20.5,16.2 19.5,16.6 18.5,16.6H18V18H16V16.6H6.5C5.5,16.6 4.5,16.2 3.8,15.5C3.1,14.8 2.7,13.8 2.7,12.8C2.7,11.8 3.1,10.8 3.8,10.1C4.5,9.4 5.5,9 6.5,9H7V6H9V9H16V6H18V9H18.5M6.5,10.5C6,10.5 5.6,10.7 5.3,11C5,11.3 4.8,11.7 4.8,12.2C4.8,12.7 5,13.1 5.3,13.4C5.6,13.7 6,13.9 6.5,13.9H18.5C19,13.9 19.4,13.7 19.7,13.4C20,13.1 20.2,12.7 20.2,12.2C20.2,11.7 20,11.3 19.7,11C19.4,10.7 19,10.5 18.5,10.5H6.5Z"/>
    </svg>
    Document & Knowledge Management
  </div>

  ## Configuration

  <div style="background: var(--bg-dark); color: #e5e7eb; border-radius: 12px; padding: 24px; margin: 24px 0;">
    <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 16px;">
      <span style="font-size: 12px; font-weight: 600; text-transform: uppercase; color: #9ca3af;">SharePoint Configuration</span>
      <button onclick="copyToClipboard('{\n  \"mcpServers\": {\n    \"sharepoint\": {\n      \"command\": \"node\",\n      \"args\": [\n        \"node_modules/@modelcontextprotocol/server-sharepoint/dist/index.js\"\n      ],\n      \"env\": {\n        \"SHAREPOINT_URL\": \"https://company.sharepoint.com\",\n        \"SHAREPOINT_CLIENT_ID\": \"your-client-id\",\n        \"SHAREPOINT_CLIENT_SECRET\": \"your-client-secret\"\n      }\n    }\n  }\n}')" style="background: var(--primary-color); color: white; border: none; padding: 4px 12px; border-radius: 4px; font-size: 12px; cursor: pointer;">Copy</button>
    </div>
    <pre style="margin: 0; background: none; border: none; padding: 0;"><code>{
  "mcpServers": {
    "sharepoint": {
      "command": "node",
      "args": [
        "node_modules/@modelcontextprotocol/server-sharepoint/dist/index.js"
      ],
      "env": {
        "SHAREPOINT_URL": "https://company.sharepoint.com",
        "SHAREPOINT_CLIENT_ID": "your-client-id",
        "SHAREPOINT_CLIENT_SECRET": "your-client-secret"
      }
    }
  }
}</code></pre>
  </div>

  ## Usage Examples

  <div style="display: grid; gap: 16px; margin: 32px 0;">
    <div style="padding: 20px; background: white; border-left: 4px solid #dc2626; border-radius: 12px;">
      <h4 style="margin: 0 0 8px 0; color: var(--text-primary); font-weight: 600;">Document Search</h4>
      <ul style="margin: 0; padding-left: 20px; color: var(--text-secondary);">
        <li>"Find all documents about API design guidelines"</li>
        <li>"Show me the latest project requirements document"</li>
        <li>"What are the current coding standards?"</li>
      </ul>
    </div>
  </div>

  <div style="background: #e8f5e8; border-left: 4px solid var(--accent-color); padding: 16px 20px; border-radius: 8px; margin: 24px 0;">
    <strong>✅ Enterprise Integration:</strong> Respects SharePoint permissions and organizational security policies.
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