# Quick Start Guide

## Prerequisites

### Required Software
- **VSCode** (latest version)
- **Node.js** 18+ (available through corporate software center)
- **Git** (for cloning repositories)
- **GitHub Copilot** extension (already installed)

### Required Access
- VPN connection to corporate network
- Valid service accounts for internal systems
- Read-only database roles (where applicable)

## Installation Overview

### Step 1: Install MCP CLI

```bash
# Windows (PowerShell)
npm install -g @modelcontextprotocol/cli

# Ubuntu
sudo npm install -g @modelcontextprotocol/cli
```

### Step 2: Create MCP Configuration Directory

```bash
# Windows
mkdir %USERPROFILE%\.mcp
cd %USERPROFILE%\.mcp

# Ubuntu
mkdir ~/.mcp
cd ~/.mcp
```

### Step 3: Install Core Enterprise MCP Servers

```bash
# Database MCP Server
npm install @modelcontextprotocol/server-database

# File System MCP Server
npm install @modelcontextprotocol/server-filesystem

# GitHub MCP Server
npm install @modelcontextprotocol/server-github
```

### Step 4: Create Base Configuration

Create `mcp-config.json` in your `.mcp` directory:

```json
{
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
}
```

### Step 5: Configure VSCode

Add to your VSCode `settings.json`:

```json
{
  "mcp.servers": {
    "configPath": "~/.mcp/mcp-config.json"
  }
}
```

### Step 6: Test Your Setup

1. Restart VSCode
2. Open a project
3. Try asking GitHub Copilot: "What files are in my project?"
4. Verify MCP context is being used

## Next Steps

- [Configure Database MCP](servers/database.md) for Oracle, Snowflake, and Postgres
- [Set up SharePoint MCP](servers/sharepoint.md) for document access
- [Install Jira MCP](servers/jira.md) for project management integration
- Review [Best Practices](best-practices.md) for enterprise usage

## Verification Checklist

- [ ] MCP CLI installed and accessible
- [ ] Core MCP servers installed
- [ ] Configuration file created
- [ ] VSCode settings updated
- [ ] GitHub Copilot responding with enhanced context
- [ ] Corporate network access confirmed

## Common Issues

**MCP servers not starting**: Check Node.js version and npm permissions
**Authentication failures**: Verify service account credentials
**Network connectivity**: Confirm VPN connection and proxy settings

For detailed troubleshooting, see the [Troubleshooting Guide](troubleshooting.md).