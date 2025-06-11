---
layout: default
title: Quick Start Guide
description: Get up and running with Enterprise MCP servers in 15 minutes - Complete setup for database, GitHub, and Jira integration
---

<!-- Page Header -->
<div style="background: linear-gradient(135deg, #1e3a8a 0%, #3b82f6 50%, #06b6d4 100%); color: white; padding: 80px 0; position: relative; overflow: hidden;">
  <div style="position: absolute; top: 0; left: 0; right: 0; bottom: 0; background: radial-gradient(circle at 30% 20%, rgba(255,255,255,0.15) 0%, transparent 50%), radial-gradient(circle at 70% 80%, rgba(255,255,255,0.08) 0%, transparent 50%);"></div>
  
  <div style="max-width: 1200px; margin: 0 auto; padding: 0 40px; position: relative; z-index: 2;">
    <div style="max-width: 700px;">
      <div style="display: inline-flex; align-items: center; gap: 8px; background: rgba(255, 255, 255, 0.15); backdrop-filter: blur(10px); border: 1px solid rgba(255, 255, 255, 0.2); border-radius: 24px; padding: 8px 16px; font-size: 14px; font-weight: 600; margin-bottom: 32px;">
        <svg width="16" height="16" viewBox="0 0 24 24" fill="currentColor">
          <path d="M12 2C13.1 2 14 2.9 14 4C14 5.1 13.1 6 12 6C10.9 6 10 5.1 10 4C10 2.9 10.9 2 12 2ZM21 9V7L15 1L13.5 2.5L16.17 5.17L10.58 10.76C10.22 10.42 9.78 10.17 9.28 10.04L5.5 11.5L6.5 13.5L9.42 12.45C9.57 12.64 9.75 12.81 9.94 12.94L11 18H13L11.72 12.68L15.83 8.57L19 11.74V14H21V9Z"/>
        </svg>
        15-Minute Setup Guide
      </div>
      
      <h1 style="font-size: 56px; font-weight: 900; line-height: 1.1; margin-bottom: 24px; letter-spacing: -0.03em;">
        Get Started in <span style="background: linear-gradient(135deg, #fbbf24, #f59e0b); -webkit-background-clip: text; -webkit-text-fill-color: transparent; background-clip: text;">15 Minutes</span>
      </h1>
      
      <p style="font-size: 22px; opacity: 0.95; margin-bottom: 40px; line-height: 1.6; font-weight: 400;">
        Transform your development workflow with enterprise MCP servers. This step-by-step guide covers essential setup for database, GitHub, and file system integration.
      </p>
      
      <div style="display: flex; align-items: center; gap: 24px; flex-wrap: wrap;">
        <div style="display: flex; align-items: center; gap: 8px; font-size: 16px; font-weight: 500;">
          <svg width="20" height="20" viewBox="0 0 24 24" fill="#10b981">
            <path d="M12,1L3,5V11C3,16.55 6.84,21.74 12,23C17.16,21.74 21,16.55 21,11V5L12,1Z"/>
          </svg>
          <span style="opacity: 0.9;">Enterprise secure</span>
        </div>
        <div style="display: flex; align-items: center; gap: 8px; font-size: 16px; font-weight: 500;">
          <svg width="20" height="20" viewBox="0 0 24 24" fill="#10b981">
            <path d="M12,2A10,10 0 0,1 22,12A10,10 0 0,1 12,22A10,10 0 0,1 2,12A10,10 0 0,1 12,2M11,7V13H13V7H11M11,15V17H13V15H11Z"/>
          </svg>
          <span style="opacity: 0.9;">Zero disruption</span>
        </div>
        <div style="display: flex; align-items: center; gap: 8px; font-size: 16px; font-weight: 500;">
          <svg width="20" height="20" viewBox="0 0 24 24" fill="#10b981">
            <path d="M9,20.42L2.79,14.21L5.62,11.38L9,14.77L18.88,4.88L21.71,7.71L9,20.42Z"/>
          </svg>
          <span style="opacity: 0.9;">Instant results</span>
        </div>
      </div>
    </div>
  </div>
</div>

<!-- Prerequisites Section -->
<div style="padding: 80px 0; background: #fafbfc;">
  <div style="max-width: 1000px; margin: 0 auto; padding: 0 40px;">
    <div style="text-align: center; margin-bottom: 64px;">
      <h2 style="font-size: 40px; font-weight: 800; color: #111827; margin-bottom: 16px; letter-spacing: -0.02em;">
        Prerequisites Check
      </h2>
      <p style="font-size: 18px; color: #6b7280; max-width: 600px; margin: 0 auto; line-height: 1.6;">
        Ensure you have the required software and permissions before starting the setup process.
      </p>
    </div>

    <div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(280px, 1fr)); gap: 32px;">
      <div style="background: white; border: 2px solid #e5e7eb; border-radius: 16px; padding: 32px; position: relative;">
        <div style="position: absolute; top: 0; left: 0; right: 0; height: 4px; background: linear-gradient(90deg, #1e3a8a, #3b82f6);"></div>
        <div style="display: flex; align-items: center; gap: 16px; margin-bottom: 20px;">
          <div style="width: 56px; height: 56px; border-radius: 12px; display: flex; align-items: center; justify-content: center; color: white; background: linear-gradient(135deg, #1e3a8a, #3b82f6); font-size: 24px;">
            💻
          </div>
          <h3 style="margin: 0; font-size: 20px; font-weight: 700; color: #111827;">Required Software</h3>
        </div>
        <ul style="list-style: none; padding: 0; margin: 0; color: #6b7280; line-height: 1.6;">
          <li style="display: flex; align-items: center; gap: 8px; margin-bottom: 8px;">
            <svg width="16" height="16" viewBox="0 0 24 24" fill="#10b981">
              <path d="M9,20.42L2.79,14.21L5.62,11.38L9,14.77L18.88,4.88L21.71,7.71L9,20.42Z"/>
            </svg>
            VSCode (latest version)
          </li>
          <li style="display: flex; align-items: center; gap: 8px; margin-bottom: 8px;">
            <svg width="16" height="16" viewBox="0 0 24 24" fill="#10b981">
              <path d="M9,20.42L2.79,14.21L5.62,11.38L9,14.77L18.88,4.88L21.71,7.71L9,20.42Z"/>
            </svg>
            Node.js 18+ (corporate software center)
          </li>
          <li style="display: flex; align-items: center; gap: 8px; margin-bottom: 8px;">
            <svg width="16" height="16" viewBox="0 0 24 24" fill="#10b981">
              <path d="M9,20.42L2.79,14.21L5.62,11.38L9,14.77L18.88,4.88L21.71,7.71L9,20.42Z"/>
            </svg>
            GitHub Copilot extension
          </li>
          <li style="display: flex; align-items: center; gap: 8px;">
            <svg width="16" height="16" viewBox="0 0 24 24" fill="#10b981">
              <path d="M9,20.42L2.79,14.21L5.62,11.38L9,14.77L18.88,4.88L21.71,7.71L9,20.42Z"/>
            </svg>
            Git for repository cloning
          </li>
        </ul>
      </div>

      <div style="background: white; border: 2px solid #e5e7eb; border-radius: 16px; padding: 32px; position: relative;">
        <div style="position: absolute; top: 0; left: 0; right: 0; height: 4px; background: linear-gradient(90deg, #059669, #10b981);"></div>
        <div style="display: flex; align-items: center; gap: 16px; margin-bottom: 20px;">
          <div style="width: 56px; height: 56px; border-radius: 12px; display: flex; align-items: center; justify-content: center; color: white; background: linear-gradient(135deg, #059669, #10b981); font-size: 24px;">
            🔐
          </div>
          <h3 style="margin: 0; font-size: 20px; font-weight: 700; color: #111827;">Required Access</h3>
        </div>
        <ul style="list-style: none; padding: 0; margin: 0; color: #6b7280; line-height: 1.6;">
          <li style="display: flex; align-items: center; gap: 8px; margin-bottom: 8px;">
            <svg width="16" height="16" viewBox="0 0 24 24" fill="#10b981">
              <path d="M9,20.42L2.79,14.21L5.62,11.38L9,14.77L18.88,4.88L21.71,7.71L9,20.42Z"/>
            </svg>
            Corporate VPN connection
          </li>
          <li style="display: flex; align-items: center; gap: 8px; margin-bottom: 8px;">
            <svg width="16" height="16" viewBox="0 0 24 24" fill="#10b981">
              <path d="M9,20.42L2.79,14.21L5.62,11.38L9,14.77L18.88,4.88L21.71,7.71L9,20.42Z"/>
            </svg>
            Service account credentials
          </li>
          <li style="display: flex; align-items: center; gap: 8px; margin-bottom: 8px;">
            <svg width="16" height="16" viewBox="0 0 24 24" fill="#10b981">
              <path d="M9,20.42L2.79,14.21L5.62,11.38L9,14.77L18.88,4.88L21.71,7.71L9,20.42Z"/>
            </svg>
            Read-only database permissions
          </li>
          <li style="display: flex; align-items: center; gap: 8px;">
            <svg width="16" height="16" viewBox="0 0 24 24" fill="#10b981">
              <path d="M9,20.42L2.79,14.21L5.62,11.38L9,14.77L18.88,4.88L21.71,7.71L9,20.42Z"/>
            </svg>
            GitHub Personal Access Token
          </li>
        </ul>
      </div>
    </div>
  </div>
</div>

<!-- Setup Steps -->
<div style="padding: 80px 0; background: white;">
  <div style="max-width: 1000px; margin: 0 auto; padding: 0 40px;">
    <div style="text-align: center; margin-bottom: 64px;">
      <h2 style="font-size: 40px; font-weight: 800; color: #111827; margin-bottom: 16px; letter-spacing: -0.02em;">
        Installation Steps
      </h2>
      <p style="font-size: 18px; color: #6b7280; max-width: 600px; margin: 0 auto; line-height: 1.6;">
        Follow these step-by-step instructions to get your MCP servers running in minutes.
      </p>
    </div>

    <!-- Step Cards -->
    <div style="display: grid; gap: 32px;">
      
      <!-- Step 1 -->
      <div style="background: white; border: 2px solid #e5e7eb; border-radius: 20px; padding: 40px; position: relative; box-shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.1);">
        <div style="position: absolute; top: 0; left: 0; right: 0; height: 6px; background: linear-gradient(90deg, #1e3a8a, #3b82f6);"></div>
        <div style="display: flex; align-items: center; gap: 20px; margin-bottom: 32px;">
          <div style="width: 64px; height: 64px; background: linear-gradient(135deg, #1e3a8a, #3b82f6); border-radius: 16px; display: flex; align-items: center; justify-content: center; color: white; font-size: 28px; font-weight: 800;">1</div>
          <div>
            <h3 style="margin: 0 0 8px 0; font-size: 28px; font-weight: 800; color: #111827;">Install MCP CLI</h3>
            <p style="margin: 0; color: #6b7280; font-size: 16px;">Install the Model Context Protocol command-line interface globally</p>
          </div>
        </div>
        
        <div style="background: #1f2937; color: #e5e7eb; border-radius: 16px; padding: 24px; position: relative;">
          <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 16px;">
            <span style="font-size: 12px; font-weight: 600; text-transform: uppercase; color: #9ca3af; letter-spacing: 0.5px;">Terminal Command</span>
            <button onclick="copyToClipboard('npm install -g @modelcontextprotocol/cli')" style="background: #1e3a8a; color: white; border: none; padding: 8px 16px; border-radius: 8px; font-size: 12px; font-weight: 600; cursor: pointer; transition: all 0.2s ease;" onmouseover="this.style.background='#1e40af'" onmouseout="this.style.background='#1e3a8a'">Copy Command</button>
          </div>
          <code style="background: none; color: inherit; padding: 0; font-size: 16px; font-family: 'SF Mono', Monaco, Consolas, monospace;">npm install -g @modelcontextprotocol/cli</code>
        </div>
      </div>

      <!-- Step 2 -->
      <div style="background: white; border: 2px solid #e5e7eb; border-radius: 20px; padding: 40px; position: relative; box-shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.1);">
        <div style="position: absolute; top: 0; left: 0; right: 0; height: 6px; background: linear-gradient(90deg, #059669, #10b981);"></div>
        <div style="display: flex; align-items: center; gap: 20px; margin-bottom: 32px;">
          <div style="width: 64px; height: 64px; background: linear-gradient(135deg, #059669, #10b981); border-radius: 16px; display: flex; align-items: center; justify-content: center; color: white; font-size: 28px; font-weight: 800;">2</div>
          <div>
            <h3 style="margin: 0 0 8px 0; font-size: 28px; font-weight: 800; color: #111827;">Create Configuration Directory</h3>
            <p style="margin: 0; color: #6b7280; font-size: 16px;">Set up the directory structure for MCP server configurations</p>
          </div>
        </div>
        
        <div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(280px, 1fr)); gap: 24px;">
          <div>
            <h4 style="margin: 0 0 16px 0; font-size: 18px; font-weight: 700; color: #111827; display: flex; align-items: center; gap: 8px;">
              <svg width="20" height="20" viewBox="0 0 24 24" fill="#3b82f6">
                <path d="M20,5H4A2,2 0 0,0 2,7V17A2,2 0 0,0 4,19H20A2,2 0 0,0 22,17V7A2,2 0 0,0 20,5M20,9H15L13,7H4V7H20V9Z"/>
              </svg>
              Windows (PowerShell)
            </h4>
            <div style="background: #1f2937; color: #e5e7eb; border-radius: 12px; padding: 20px; position: relative;">
              <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 12px;">
                <span style="font-size: 11px; font-weight: 600; text-transform: uppercase; color: #9ca3af;">PowerShell</span>
                <button onclick="copyToClipboard('mkdir %USERPROFILE%\\.mcp\\ncd %USERPROFILE%\\.mcp')" style="background: #059669; color: white; border: none; padding: 6px 12px; border-radius: 6px; font-size: 11px; font-weight: 600; cursor: pointer;">Copy</button>
              </div>
              <pre style="margin: 0; background: none; border: none; padding: 0; font-size: 14px;"><code>mkdir %USERPROFILE%\.mcp
cd %USERPROFILE%\.mcp</code></pre>
            </div>
          </div>
          
          <div>
            <h4 style="margin: 0 0 16px 0; font-size: 18px; font-weight: 700; color: #111827; display: flex; align-items: center; gap: 8px;">
              <svg width="20" height="20" viewBox="0 0 24 24" fill="#059669">
                <path d="M12,2A2,2 0 0,1 14,4C14,4.74 13.6,5.39 13,5.73V7H14A7,7 0 0,1 21,14H22A1,1 0 0,1 23,15V18A1,1 0 0,1 22,19H21V20A2,2 0 0,1 19,22H5A2,2 0 0,1 3,20V19H2A1,1 0 0,1 1,18V15A1,1 0 0,1 2,14H3A7,7 0 0,1 10,7H11V5.73C10.4,5.39 10,4.74 10,4A2,2 0 0,1 12,2Z"/>
              </svg>
              Ubuntu/Linux (Bash)
            </h4>
            <div style="background: #1f2937; color: #e5e7eb; border-radius: 12px; padding: 20px; position: relative;">
              <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 12px;">
                <span style="font-size: 11px; font-weight: 600; text-transform: uppercase; color: #9ca3af;">Bash</span>
                <button onclick="copyToClipboard('mkdir ~/.mcp\\ncd ~/.mcp')" style="background: #059669; color: white; border: none; padding: 6px 12px; border-radius: 6px; font-size: 11px; font-weight: 600; cursor: pointer;">Copy</button>
              </div>
              <pre style="margin: 0; background: none; border: none; padding: 0; font-size: 14px;"><code>mkdir ~/.mcp
cd ~/.mcp</code></pre>
            </div>
          </div>
        </div>
      </div>

      <!-- Step 3 -->
      <div style="background: white; border: 2px solid #e5e7eb; border-radius: 20px; padding: 40px; position: relative; box-shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.1);">
        <div style="position: absolute; top: 0; left: 0; right: 0; height: 6px; background: linear-gradient(90deg, #7c3aed, #a855f7);"></div>
        <div style="display: flex; align-items: center; gap: 20px; margin-bottom: 32px;">
          <div style="width: 64px; height: 64px; background: linear-gradient(135deg, #7c3aed, #a855f7); border-radius: 16px; display: flex; align-items: center; justify-content: center; color: white; font-size: 28px; font-weight: 800;">3</div>
          <div>
            <h3 style="margin: 0 0 8px 0; font-size: 28px; font-weight: 800; color: #111827;">Install Essential MCP Servers</h3>
            <p style="margin: 0; color: #6b7280; font-size: 16px;">Install the core servers for file system, GitHub, and database access</p>
          </div>
        </div>
        
        <div style="background: #1f2937; color: #e5e7eb; border-radius: 16px; padding: 24px; position: relative;">
          <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 16px;">
            <span style="font-size: 12px; font-weight: 600; text-transform: uppercase; color: #9ca3af; letter-spacing: 0.5px;">Essential MCP Servers</span>
            <button onclick="copyToClipboard('npm install @modelcontextprotocol/server-database @modelcontextprotocol/server-filesystem @modelcontextprotocol/server-github')" style="background: #7c3aed; color: white; border: none; padding: 8px 16px; border-radius: 8px; font-size: 12px; font-weight: 600; cursor: pointer; transition: all 0.2s ease;" onmouseover="this.style.background='#8b5cf6'" onmouseout="this.style.background='#7c3aed'">Copy All</button>
          </div>
          <pre style="margin: 0; background: none; border: none; padding: 0; font-size: 14px; line-height: 1.6;"><code># Database MCP Server
npm install @modelcontextprotocol/server-database

# File System MCP Server  
npm install @modelcontextprotocol/server-filesystem

# GitHub MCP Server
npm install @modelcontextprotocol/server-github</code></pre>
        </div>
      </div>

      <!-- Step 4 -->
      <div style="background: white; border: 2px solid #e5e7eb; border-radius: 20px; padding: 40px; position: relative; box-shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.1);">
        <div style="position: absolute; top: 0; left: 0; right: 0; height: 6px; background: linear-gradient(90deg, #dc2626, #f59e0b);"></div>
        <div style="display: flex; align-items: center; gap: 20px; margin-bottom: 32px;">
          <div style="width: 64px; height: 64px; background: linear-gradient(135deg, #dc2626, #f59e0b); border-radius: 16px; display: flex; align-items: center; justify-content: center; color: white; font-size: 28px; font-weight: 800;">4</div>
          <div>
            <h3 style="margin: 0 0 8px 0; font-size: 28px; font-weight: 800; color: #111827;">Create Configuration File</h3>
            <p style="margin: 0; color: #6b7280; font-size: 16px;">Set up the main configuration file for your MCP servers</p>
          </div>
        </div>
        
        <p style="margin: 0 0 20px 0; color: #6b7280; font-size: 16px;">Create <code style="background: #f3f4f6; padding: 4px 8px; border-radius: 6px; font-family: monospace;">mcp-config.json</code> in your <code style="background: #f3f4f6; padding: 4px 8px; border-radius: 6px; font-family: monospace;">.mcp</code> directory:</p>
        
        <div style="background: #1f2937; color: #e5e7eb; border-radius: 16px; padding: 24px; position: relative;">
          <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 16px;">
            <span style="font-size: 12px; font-weight: 600; text-transform: uppercase; color: #9ca3af; letter-spacing: 0.5px;">mcp-config.json</span>
            <button onclick="copyToClipboard('{\"mcpServers\":{\"filesystem\":{\"command\":\"node\",\"args\":[\"node_modules/@modelcontextprotocol/server-filesystem/dist/index.js\",\"--root\",\"C:\\\\Development\"]},\"github-internal\":{\"command\":\"node\",\"args\":[\"node_modules/@modelcontextprotocol/server-github/dist/index.js\"],\"env\":{\"GITHUB_TOKEN\":\"your-github-token\",\"GITHUB_API_URL\":\"https://github.internet.net/api/v3\"}}}}')" style="background: #dc2626; color: white; border: none; padding: 8px 16px; border-radius: 8px; font-size: 12px; font-weight: 600; cursor: pointer; transition: all 0.2s ease;" onmouseover="this.style.background='#ef4444'" onmouseout="this.style.background='#dc2626'">Copy Config</button>
          </div>
          <pre style="margin: 0; background: none; border: none; padding: 0; font-size: 14px; line-height: 1.6;"><code>{
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
        
        <div style="background: linear-gradient(135deg, #fef3c7, #fed7aa); border: 1px solid #f59e0b; border-radius: 12px; padding: 20px; margin: 24px 0; display: flex; align-items: flex-start; gap: 12px;">
          <svg width="24" height="24" viewBox="0 0 24 24" fill="#d97706" style="flex-shrink: 0; margin-top: 2px;">
            <path d="M12,2L13.09,8.26L22,9L13.09,9.74L12,16L10.91,9.74L2,9L10.91,8.26L12,2Z"/>
          </svg>
          <div>
            <strong style="color: #92400e; font-weight: 700;">🔑 Security Best Practice:</strong>
            <p style="margin: 8px 0 0 0; color: #92400e; line-height: 1.5;">Replace <code style="background: rgba(146, 64, 14, 0.1); padding: 2px 6px; border-radius: 4px;">your-github-token</code> with your actual GitHub Personal Access Token. Store sensitive credentials in environment variables for production use.</p>
          </div>
        </div>
      </div>

      <!-- Step 5 -->
      <div style="background: white; border: 2px solid #e5e7eb; border-radius: 20px; padding: 40px; position: relative; box-shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.1);">
        <div style="position: absolute; top: 0; left: 0; right: 0; height: 6px; background: linear-gradient(90deg, #2563eb, #3b82f6);"></div>
        <div style="display: flex; align-items: center; gap: 20px; margin-bottom: 32px;">
          <div style="width: 64px; height: 64px; background: linear-gradient(135deg, #2563eb, #3b82f6); border-radius: 16px; display: flex; align-items: center; justify-content: center; color: white; font-size: 28px; font-weight: 800;">5</div>
          <div>
            <h3 style="margin: 0 0 8px 0; font-size: 28px; font-weight: 800; color: #111827;">Configure VSCode</h3>
            <p style="margin: 0; color: #6b7280; font-size: 16px;">Link your MCP configuration to VSCode settings</p>
          </div>
        </div>
        
        <p style="margin: 0 0 20px 0; color: #6b7280; font-size: 16px;">Add this configuration to your VSCode <code style="background: #f3f4f6; padding: 4px 8px; border-radius: 6px; font-family: monospace;">settings.json</code>:</p>
        
        <div style="background: #1f2937; color: #e5e7eb; border-radius: 16px; padding: 24px; position: relative;">
          <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 16px;">
            <span style="font-size: 12px; font-weight: 600; text-transform: uppercase; color: #9ca3af; letter-spacing: 0.5px;">VSCode settings.json</span>
            <button onclick="copyToClipboard('{\"mcp.servers\":{\"configPath\":\"~/.mcp/mcp-config.json\"}}')" style="background: #2563eb; color: white; border: none; padding: 8px 16px; border-radius: 8px; font-size: 12px; font-weight: 600; cursor: pointer; transition: all 0.2s ease;" onmouseover="this.style.background='#3b82f6'" onmouseout="this.style.background='#2563eb'">Copy Settings</button>
          </div>
          <pre style="margin: 0; background: none; border: none; padding: 0; font-size: 14px;"><code>{
  "mcp.servers": {
    "configPath": "~/.mcp/mcp-config.json"
  }
}</code></pre>
        </div>
        
        <div style="margin: 24px 0;">
          <h4 style="margin: 0 0 16px 0; font-size: 18px; font-weight: 700; color: #111827;">VSCode Setup Steps:</h4>
          <div style="display: grid; gap: 12px;">
            <div style="display: flex; align-items: center; gap: 12px; padding: 12px 0;">
              <div style="width: 28px; height: 28px; background: #2563eb; color: white; border-radius: 50%; display: flex; align-items: center; justify-content: center; font-weight: 600; font-size: 14px; flex-shrink: 0;">1</div>
              <span style="color: #374151; font-weight: 500;">Open Settings: Press <kbd style="background: #f3f4f6; padding: 2px 6px; border-radius: 4px; font-family: monospace; font-size: 12px;">Ctrl+,</kbd> (Windows) or <kbd style="background: #f3f4f6; padding: 2px 6px; border-radius: 4px; font-family: monospace; font-size: 12px;">Cmd+,</kbd> (Mac)</span>
            </div>
            <div style="display: flex; align-items: center; gap: 12px; padding: 12px 0;">
              <div style="width: 28px; height: 28px; background: #2563eb; color: white; border-radius: 50%; display: flex; align-items: center; justify-content: center; font-weight: 600; font-size: 14px; flex-shrink: 0;">2</div>
              <span style="color: #374151; font-weight: 500;">Switch to JSON: Click the "Open Settings (JSON)" icon in the top right</span>
            </div>
            <div style="display: flex; align-items: center; gap: 12px; padding: 12px 0;">
              <div style="width: 28px; height: 28px; background: #2563eb; color: white; border-radius: 50%; display: flex; align-items: center; justify-content: center; font-weight: 600; font-size: 14px; flex-shrink: 0;">3</div>
              <span style="color: #374151; font-weight: 500;">Add Configuration: Paste the MCP settings into your JSON file</span>
            </div>
          </div>
        </div>
      </div>

      <!-- Step 6 -->
      <div style="background: white; border: 2px solid #e5e7eb; border-radius: 20px; padding: 40px; position: relative; box-shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.1);">
        <div style="position: absolute; top: 0; left: 0; right: 0; height: 6px; background: linear-gradient(90deg, #10b981, #34d399);"></div>
        <div style="display: flex; align-items: center; gap: 20px; margin-bottom: 32px;">
          <div style="width: 64px; height: 64px; background: linear-gradient(135deg, #10b981, #34d399); border-radius: 16px; display: flex; align-items: center; justify-content: center; color: white; font-size: 28px; font-weight: 800;">6</div>
          <div>
            <h3 style="margin: 0 0 8px 0; font-size: 28px; font-weight: 800; color: #111827;">Test Your Setup</h3>
            <p style="margin: 0; color: #6b7280; font-size: 16px;">Verify everything is working correctly with GitHub Copilot</p>
          </div>
        </div>
        
        <div style="display: grid; gap: 20px;">
          <div style="display: flex; gap: 16px; align-items: flex-start; padding: 16px; background: #f9fafb; border-radius: 12px;">
            <div style="width: 36px; height: 36px; background: #10b981; color: white; border-radius: 50%; display: flex; align-items: center; justify-content: center; font-weight: 700; font-size: 16px; flex-shrink: 0;">1</div>
            <div>
              <h4 style="margin: 0 0 8px 0; font-size: 18px; font-weight: 700; color: #111827;">Restart VSCode</h4>
              <p style="margin: 0; color: #6b7280; line-height: 1.5;">Close and reopen VSCode to load the new MCP configuration and initialize the servers.</p>
            </div>
          </div>
          
          <div style="display: flex; gap: 16px; align-items: flex-start; padding: 16px; background: #f9fafb; border-radius: 12px;">
            <div style="width: 36px; height: 36px; background: #10b981; color: white; border-radius: 50%; display: flex; align-items: center; justify-content: center; font-weight: 700; font-size: 16px; flex-shrink: 0;">2</div>
            <div>
              <h4 style="margin: 0 0 8px 0; font-size: 18px; font-weight: 700; color: #111827;">Open a Project</h4>
              <p style="margin: 0; color: #6b7280; line-height: 1.5;">Open an existing project or create a new one in your configured directory to test file system access.</p>
            </div>
          </div>
          
          <div style="display: flex; gap: 16px; align-items: flex-start; padding: 16px; background: #f9fafb; border-radius: 12px;">
            <div style="width: 36px; height: 36px; background: #10b981; color: white; border-radius: 50%; display: flex; align-items: center; justify-content: center; font-weight: 700; font-size: 16px; flex-shrink: 0;">3</div>
            <div>
              <h4 style="margin: 0 0 8px 0; font-size: 18px; font-weight: 700; color: #111827;">Test GitHub Copilot with MCP</h4>
              <p style="margin: 0; color: #6b7280; line-height: 1.5;">Try asking GitHub Copilot: <em style="background: #e5e7eb; padding: 2px 6px; border-radius: 4px; font-style: normal;">"What files are in my project?"</em></p>
            </div>
          </div>
          
          <div style="display: flex; gap: 16px; align-items: flex-start; padding: 16px; background: #f9fafb; border-radius: 12px;">
            <div style="width: 36px; height: 36px; background: #10b981; color: white; border-radius: 50%; display: flex; align-items: center; justify-content: center; font-weight: 700; font-size: 16px; flex-shrink: 0;">4</div>
            <div>
              <h4 style="margin: 0 0 8px 0; font-size: 18px; font-weight: 700; color: #111827;">Verify Enhanced Context</h4>
              <p style="margin: 0; color: #6b7280; line-height: 1.5;">Copilot should now have access to your file system and provide contextual, project-aware responses.</p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

<!-- Success Validation -->
<div style="padding: 80px 0; background: #f0fdf4;">
  <div style="max-width: 1000px; margin: 0 auto; padding: 0 40px;">
    <div style="text-align: center; margin-bottom: 48px;">
      <h2 style="font-size: 40px; font-weight: 800; color: #111827; margin-bottom: 16px; letter-spacing: -0.02em;">
        ✅ Success Indicators
      </h2>
      <p style="font-size: 18px; color: #6b7280; max-width: 600px; margin: 0 auto; line-height: 1.6;">
        Look for these signs that your MCP servers are working correctly with GitHub Copilot.
      </p>
    </div>

    <div style="display: grid; gap: 16px; max-width: 700px; margin: 0 auto;">
      <div style="display: flex; align-items: center; gap: 16px; padding: 20px; background: white; border: 2px solid #10b981; border-radius: 16px;">
        <div style="width: 48px; height: 48px; border-radius: 50%; background: #10b981; color: white; display: flex; align-items: center; justify-content: center; font-weight: 700; font-size: 24px; flex-shrink: 0;">✓</div>
        <div style="color: #065f46; font-weight: 600; font-size: 18px;">GitHub Copilot responds with specific file information from your project</div>
      </div>
      
      <div style="display: flex; align-items: center; gap: 16px; padding: 20px; background: white; border: 2px solid #10b981; border-radius: 16px;">
        <div style="width: 48px; height: 48px; border-radius: 50%; background: #10b981; color: white; display: flex; align-items: center; justify-content: center; font-weight: 700; font-size: 24px; flex-shrink: 0;">✓</div>
        <div style="color: #065f46; font-weight: 600; font-size: 18px;">No MCP server error messages appear in VSCode terminal or output</div>
      </div>
      
      <div style="display: flex; align-items: center; gap: 16px; padding: 20px; background: white; border: 2px solid #10b981; border-radius: 16px;">
        <div style="width: 48px; height: 48px; border-radius: 50%; background: #10b981; color: white; display: flex; align-items: center; justify-content: center; font-weight: 700; font-size: 24px; flex-shrink: 0;">✓</div>
        <div style="color: #065f46; font-weight: 600; font-size: 18px;">Enhanced contextual code suggestions based on your enterprise data</div>
      </div>
    </div>
  </div>
</div>

<!-- Next Steps -->
<div style="padding: 80px 0; background: white;">
  <div style="max-width: 1000px; margin: 0 auto; padding: 0 40px;">
    <div style="text-align: center; margin-bottom: 64px;">
      <h2 style="font-size: 40px; font-weight: 800; color: #111827; margin-bottom: 16px; letter-spacing: -0.02em;">
        What's Next?
      </h2>
      <p style="font-size: 18px; color: #6b7280; max-width: 600px; margin: 0 auto; line-height: 1.6;">
        Expand your setup with additional enterprise integrations and advanced configurations.
      </p>
    </div>

    <div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(300px, 1fr)); gap: 32px; margin-bottom: 64px;">
      <a href="/servers/database" style="display: block; background: white; border: 2px solid #e5e7eb; border-radius: 16px; padding: 32px; text-decoration: none; color: inherit; transition: all 0.3s ease; position: relative; overflow: hidden;" onmouseover="this.style.transform='translateY(-4px)'; this.style.borderColor='#3b82f6'; this.style.boxShadow='0 20px 25px -5px rgba(0, 0, 0, 0.1)'" onmouseout="this.style.transform='translateY(0)'; this.style.borderColor='#e5e7eb'; this.style.boxShadow='none'">
        <div style="position: absolute; top: 0; left: 0; right: 0; height: 4px; background: linear-gradient(90deg, #1e3a8a, #3b82f6);"></div>
        <div style="display: flex; align-items: center; gap: 16px; margin-bottom: 20px;">
          <div style="width: 56px; height: 56px; border-radius: 12px; display: flex; align-items: center; justify-content: center; color: white; background: linear-gradient(135deg, #1e3a8a, #3b82f6); font-size: 24px;">
            🗄️
          </div>
          <h3 style="margin: 0; font-size: 24px; font-weight: 700; color: #111827;">Configure Database MCP</h3>
        </div>
        <p style="margin: 0; color: #6b7280; line-height: 1.6; font-size: 16px;">Connect to Oracle, Snowflake, PostgreSQL, and AWS RDS with enterprise security configurations.</p>
      </a>

      <a href="/servers/jira" style="display: block; background: white; border: 2px solid #e5e7eb; border-radius: 16px; padding: 32px; text-decoration: none; color: inherit; transition: all 0.3s ease; position: relative; overflow: hidden;" onmouseover="this.style.transform='translateY(-4px)'; this.style.borderColor='#3b82f6'; this.style.boxShadow='0 20px 25px -5px rgba(0, 0, 0, 0.1)'" onmouseout="this.style.transform='translateY(0)'; this.style.borderColor='#e5e7eb'; this.style.boxShadow='none'">
        <div style="position: absolute; top: 0; left: 0; right: 0; height: 4px; background: linear-gradient(90deg, #2563eb, #3b82f6);"></div>
        <div style="display: flex; align-items: center; gap: 16px; margin-bottom: 20px;">
          <div style="width: 56px; height: 56px; border-radius: 12px; display: flex; align-items: center; justify-content: center; color: white; background: linear-gradient(135deg, #2563eb, #3b82f6); font-size: 24px;">
            📋
          </div>
          <h3 style="margin: 0; font-size: 24px; font-weight: 700; color: #111827;">Set up Jira Integration</h3>
        </div>
        <p style="margin: 0; color: #6b7280; line-height: 1.6; font-size: 16px;">Access project management, issue tracking, and sprint planning with context-aware automation.</p>
      </a>
    </div>

    <div style="text-align: center;">
      <a href="/servers/" style="display: inline-flex; align-items: center; gap: 12px; padding: 18px 36px; background: #1e3a8a; color: white; text-decoration: none; border-radius: 16px; font-weight: 700; font-size: 20px; transition: all 0.3s ease; box-shadow: 0 10px 15px -3px rgba(0, 0, 0, 0.1);" onmouseover="this.style.background='#1e40af'; this.style.transform='translateY(-2px)'; this.style.boxShadow='0 20px 25px -5px rgba(0, 0, 0, 0.1)'" onmouseout="this.style.background='#1e3a8a'; this.style.transform='translateY(0)'; this.style.boxShadow='0 10px 15px -3px rgba(0, 0, 0, 0.1)'">
        Explore All 9 MCP Servers
        <svg width="20" height="20" viewBox="0 0 24 24" fill="currentColor">
          <path d="M4,11V13H16L10.5,18.5L11.92,19.92L19.84,12L11.92,4.08L10.5,5.5L16,11H4Z"/>
        </svg>
      </a>
    </div>
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