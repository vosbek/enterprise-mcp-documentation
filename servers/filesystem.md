---
layout: default
title: File System MCP Server
description: Connect to local file system for development file access
---

<!-- Page Header -->
<div class="page-header">
  <div class="page-header-container">
    <h1 class="page-title">File System MCP Server</h1>
    <p class="page-description">
      Integrate GitHub Copilot with your local file system for seamless access to project files, configurations, and development resources.
    </p>
  </div>
</div>

<!-- Documentation Content -->
<div class="doc-content">

  <div style="display: inline-flex; align-items: center; gap: 8px; background: #fef3c7; color: #92400e; padding: 8px 16px; border-radius: 20px; font-size: 14px; font-weight: 600; margin-bottom: 32px;">
    <svg width="16" height="16" viewBox="0 0 24 24" fill="currentColor">
      <path d="M10,4H4C2.89,4 2,4.89 2,6V18A2,2 0 0,0 4,20H20A2,2 0 0,0 22,18V8C22,6.89 21.1,6 20,6H12L10,4Z"/>
    </svg>
    Local Development Files
  </div>

  ## Configuration

  <div style="background: var(--bg-dark); color: #e5e7eb; border-radius: 12px; padding: 24px; margin: 24px 0;">
    <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 16px;">
      <span style="font-size: 12px; font-weight: 600; text-transform: uppercase; color: #9ca3af;">File System Configuration</span>
      <button onclick="copyToClipboard('{\n  \"mcpServers\": {\n    \"filesystem\": {\n      \"command\": \"node\",\n      \"args\": [\n        \"node_modules/@modelcontextprotocol/server-filesystem/dist/index.js\",\n        \"--root\",\n        \"C:\\\\Development\"\n      ]\n    }\n  }\n}')" style="background: var(--primary-color); color: white; border: none; padding: 4px 12px; border-radius: 4px; font-size: 12px; cursor: pointer;">Copy</button>
    </div>
    <pre style="margin: 0; background: none; border: none; padding: 0;"><code>{
  "mcpServers": {
    "filesystem": {
      "command": "node",
      "args": [
        "node_modules/@modelcontextprotocol/server-filesystem/dist/index.js",
        "--root",
        "C:\\Development"
      ]
    }
  }
}</code></pre>
  </div>

  ## Usage Examples

  <div style="display: grid; gap: 16px; margin: 32px 0;">
    <div style="padding: 20px; background: white; border-left: 4px solid #65a30d; border-radius: 12px;">
      <h4 style="margin: 0 0 8px 0; color: var(--text-primary); font-weight: 600;">File Operations</h4>
      <ul style="margin: 0; padding-left: 20px; color: var(--text-secondary);">
        <li>"What files are in my current project?"</li>
        <li>"Show me the package.json configuration"</li>
        <li>"Find all TypeScript files with 'User' in the name"</li>
      </ul>
    </div>
  </div>

  <div style="background: #e8f5e8; border-left: 4px solid var(--accent-color); padding: 16px 20px; border-radius: 8px; margin: 24px 0;">
    <strong>✅ Secure Access:</strong> File access is restricted to configured directories for security.
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