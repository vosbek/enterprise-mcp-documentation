---
layout: default
title: Backstage.io MCP Server
description: Connect to Backstage.io for service catalog and developer portal access
---

<!-- Page Header -->
<div class="page-header">
  <div class="page-header-container">
    <h1 class="page-title">Backstage.io MCP Server</h1>
    <p class="page-description">
      Integrate GitHub Copilot with Backstage.io for service catalog access, developer portal information, and infrastructure insights.
    </p>
  </div>
</div>

<!-- Documentation Content -->
<div class="doc-content">

  <div style="display: inline-flex; align-items: center; gap: 8px; background: #e0f2fe; color: #0891b2; padding: 8px 16px; border-radius: 20px; font-size: 14px; font-weight: 600; margin-bottom: 32px;">
    <svg width="16" height="16" viewBox="0 0 24 24" fill="currentColor">
      <path d="M4,1H20A1,1 0 0,1 21,2V6A1,1 0 0,1 20,7H4A1,1 0 0,1 3,6V2A1,1 0 0,1 4,1M4,9H20A1,1 0 0,1 21,10V14A1,1 0 0,1 20,15H4A1,1 0 0,1 3,14V10A1,1 0 0,1 4,9M4,17H20A1,1 0 0,1 21,18V22A1,1 0 0,1 20,23H4A1,1 0 0,1 3,22V18A1,1 0 0,1 4,17Z"/>
    </svg>
    Service Catalog & Developer Portal
  </div>

  ## Configuration

  <div style="background: var(--bg-dark); color: #e5e7eb; border-radius: 12px; padding: 24px; margin: 24px 0;">
    <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 16px;">
      <span style="font-size: 12px; font-weight: 600; text-transform: uppercase; color: #9ca3af;">Backstage Configuration</span>
      <button onclick="copyToClipboard('{\n  \"mcpServers\": {\n    \"backstage\": {\n      \"command\": \"node\",\n      \"args\": [\n        \"node_modules/@modelcontextprotocol/server-backstage/dist/index.js\"\n      ],\n      \"env\": {\n        \"BACKSTAGE_URL\": \"https://backstage.company.com\",\n        \"BACKSTAGE_TOKEN\": \"your-backstage-token\"\n      }\n    }\n  }\n}')" style="background: var(--primary-color); color: white; border: none; padding: 4px 12px; border-radius: 4px; font-size: 12px; cursor: pointer;">Copy</button>
    </div>
    <pre style="margin: 0; background: none; border: none; padding: 0;"><code>{
  "mcpServers": {
    "backstage": {
      "command": "node",
      "args": [
        "node_modules/@modelcontextprotocol/server-backstage/dist/index.js"
      ],
      "env": {
        "BACKSTAGE_URL": "https://backstage.company.com",
        "BACKSTAGE_TOKEN": "your-backstage-token"
      }
    }
  }
}</code></pre>
  </div>

  ## Usage Examples

  <div style="display: grid; gap: 16px; margin: 32px 0;">
    <div style="padding: 20px; background: white; border-left: 4px solid #0891b2; border-radius: 12px;">
      <h4 style="margin: 0 0 8px 0; color: var(--text-primary); font-weight: 600;">Service Discovery</h4>
      <ul style="margin: 0; padding-left: 20px; color: var(--text-secondary);">
        <li>"Show me all microservices in our catalog"</li>
        <li>"What's the health status of the payment service?"</li>
        <li>"Find the API documentation for user authentication"</li>
      </ul>
    </div>
  </div>

  <div style="background: #e8f5e8; border-left: 4px solid var(--accent-color); padding: 16px 20px; border-radius: 8px; margin: 24px 0;">
    <strong>✅ Developer Portal:</strong> Access service catalogs, documentation, and infrastructure information through your development workflow.
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