---
layout: default
title: Internal API MCP Server
description: Connect to internal APIs and OpenAPI/Swagger documentation
---

<!-- Page Header -->
<div class="page-header">
  <div class="page-header-container">
    <h1 class="page-title">Internal API MCP Server</h1>
    <p class="page-description">
      Integrate GitHub Copilot with your internal APIs and OpenAPI/Swagger documentation for seamless API exploration and integration.
    </p>
  </div>
</div>

<!-- Documentation Content -->
<div class="doc-content">

  <div style="display: inline-flex; align-items: center; gap: 8px; background: #fed7af; color: #ea580c; padding: 8px 16px; border-radius: 20px; font-size: 14px; font-weight: 600; margin-bottom: 32px;">
    <svg width="16" height="16" viewBox="0 0 24 24" fill="currentColor">
      <path d="M7.5,4A5.5,5.5 0 0,0 2,9.5C2,10 2.09,10.5 2.22,11H6.3L7.57,7.63C7.87,6.83 8.6,6.3 9.5,6.3C10.4,6.3 11.13,6.83 11.43,7.63L12.5,10.5L14.07,7.63C14.37,6.83 15.1,6.3 16,6.3C16.9,6.3 17.63,6.83 17.93,7.63L19.2,11H21.78C21.91,10.5 22,10 22,9.5A5.5,5.5 0 0,0 16.5,4C14.64,4 13,4.92 12,6.34C11,4.92 9.36,4 7.5,4V4M7.5,18A5.5,5.5 0 0,0 13,12.5C13,12 12.91,11.5 12.78,11H8.7L7.43,14.37C7.13,15.17 6.4,15.7 5.5,15.7C4.6,15.7 3.87,15.17 3.57,14.37L2.5,11.5L0.93,14.37C0.63,15.17 0.1,15.7 0,15.7C0,15.7 0,15.7 0,15.7C0,15.7 0,15.7 0,15.7L2.22,11H2.22C2.09,11.5 2,12 2,12.5A5.5,5.5 0 0,0 7.5,18V18Z"/>
    </svg>
    OpenAPI/Swagger Integrations
  </div>

  ## Configuration

  <div style="background: var(--bg-dark); color: #e5e7eb; border-radius: 12px; padding: 24px; margin: 24px 0;">
    <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 16px;">
      <span style="font-size: 12px; font-weight: 600; text-transform: uppercase; color: #9ca3af;">API Configuration</span>
      <button onclick="copyToClipboard('{\n  \"mcpServers\": {\n    \"internal-api\": {\n      \"command\": \"node\",\n      \"args\": [\n        \"node_modules/@modelcontextprotocol/server-openapi/dist/index.js\"\n      ],\n      \"env\": {\n        \"OPENAPI_URL\": \"https://api.company.com/swagger.json\",\n        \"API_BASE_URL\": \"https://api.company.com\",\n        \"API_KEY\": \"your-api-key\"\n      }\n    }\n  }\n}')" style="background: var(--primary-color); color: white; border: none; padding: 4px 12px; border-radius: 4px; font-size: 12px; cursor: pointer;">Copy</button>
    </div>
    <pre style="margin: 0; background: none; border: none; padding: 0;"><code>{
  "mcpServers": {
    "internal-api": {
      "command": "node",
      "args": [
        "node_modules/@modelcontextprotocol/server-openapi/dist/index.js"
      ],
      "env": {
        "OPENAPI_URL": "https://api.company.com/swagger.json",
        "API_BASE_URL": "https://api.company.com",
        "API_KEY": "your-api-key"
      }
    }
  }
}</code></pre>
  </div>

  ## Usage Examples

  <div style="display: grid; gap: 16px; margin: 32px 0;">
    <div style="padding: 20px; background: white; border-left: 4px solid #ea580c; border-radius: 12px;">
      <h4 style="margin: 0 0 8px 0; color: var(--text-primary); font-weight: 600;">API Exploration</h4>
      <ul style="margin: 0; padding-left: 20px; color: var(--text-secondary);">
        <li>"Show me all available endpoints in the user API"</li>
        <li>"What's the schema for the payment request object?"</li>
        <li>"Generate a client for the authentication service"</li>
      </ul>
    </div>
  </div>

  <div style="background: #e8f5e8; border-left: 4px solid var(--accent-color); padding: 16px 20px; border-radius: 8px; margin: 24px 0;">
    <strong>✅ API Integration:</strong> Seamlessly explore and integrate with internal APIs using OpenAPI specifications.
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