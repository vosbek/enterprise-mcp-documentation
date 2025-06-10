---
layout: default
title: Figma MCP Server
description: Connect to Figma for design collaboration and prototype access
---

<!-- Page Header -->
<div class="page-header">
  <div class="page-header-container">
    <h1 class="page-title">Figma MCP Server</h1>
    <p class="page-description">
      Integrate GitHub Copilot with Figma for seamless access to design files, prototypes, and design system documentation.
    </p>
  </div>
</div>

<!-- Documentation Content -->
<div class="doc-content">

  <div style="display: inline-flex; align-items: center; gap: 8px; background: #f3e8ff; color: #7c3aed; padding: 8px 16px; border-radius: 20px; font-size: 14px; font-weight: 600; margin-bottom: 32px;">
    <svg width="16" height="16" viewBox="0 0 24 24" fill="currentColor">
      <path d="M12,12M8,12A4,4 0 0,1 12,8A4,4 0 0,1 16,12A4,4 0 0,1 12,16A4,4 0 0,1 8,12Z"/>
    </svg>
    Design Collaboration Platform
  </div>

  ## Configuration

  <div style="background: var(--bg-dark); color: #e5e7eb; border-radius: 12px; padding: 24px; margin: 24px 0;">
    <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 16px;">
      <span style="font-size: 12px; font-weight: 600; text-transform: uppercase; color: #9ca3af;">Figma Configuration</span>
      <button onclick="copyToClipboard('{\n  \"mcpServers\": {\n    \"figma\": {\n      \"command\": \"node\",\n      \"args\": [\n        \"node_modules/@modelcontextprotocol/server-figma/dist/index.js\"\n      ],\n      \"env\": {\n        \"FIGMA_TOKEN\": \"your-figma-token\",\n        \"FIGMA_TEAM_ID\": \"your-team-id\"\n      }\n    }\n  }\n}')" style="background: var(--primary-color); color: white; border: none; padding: 4px 12px; border-radius: 4px; font-size: 12px; cursor: pointer;">Copy</button>
    </div>
    <pre style="margin: 0; background: none; border: none; padding: 0;"><code>{
  "mcpServers": {
    "figma": {
      "command": "node",
      "args": [
        "node_modules/@modelcontextprotocol/server-figma/dist/index.js"
      ],
      "env": {
        "FIGMA_TOKEN": "your-figma-token",
        "FIGMA_TEAM_ID": "your-team-id"
      }
    }
  }
}</code></pre>
  </div>

  ## Usage Examples

  <div style="display: grid; gap: 16px; margin: 32px 0;">
    <div style="padding: 20px; background: white; border-left: 4px solid #7c3aed; border-radius: 12px;">
      <h4 style="margin: 0 0 8px 0; color: var(--text-primary); font-weight: 600;">Design System Access</h4>
      <ul style="margin: 0; padding-left: 20px; color: var(--text-secondary);">
        <li>"Show me the latest button component designs"</li>
        <li>"What are the current brand colors and typography?"</li>
        <li>"Find the mobile app wireframes for user registration"</li>
      </ul>
    </div>
  </div>

  <div style="background: #e8f5e8; border-left: 4px solid var(--accent-color); padding: 16px 20px; border-radius: 8px; margin: 24px 0;">
    <strong>✅ Design Integration:</strong> Access design specifications, prototypes, and design system components directly from your development environment.
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