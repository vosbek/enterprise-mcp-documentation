# MCP Server Setup for Enterprise MCP Documentation

This repository now includes an MCP server configuration to connect GitHub Copilot directly to this documentation repository.

## Quick Setup

### 1. Install Required MCP Servers

```bash
npm install -g @modelcontextprotocol/server-github @modelcontextprotocol/server-filesystem
```

### 2. Set GitHub Token Environment Variable

```bash
# Add to your shell profile (.bashrc, .zshrc, etc.)
export GITHUB_TOKEN="your_personal_access_token_here"
```

### 3. Configure VSCode

Add this to your VSCode `settings.json`:

```json
{
  "mcp.servers": {
    "configPath": "path/to/enterprise-mcp-documentation-main/mcp-server-config.json"
  }
}
```

## What This Enables

With this MCP server configuration, GitHub Copilot can now:

- **Read Repository Content**: Access all markdown files, documentation, and code examples
- **Understand Context**: Provide answers about MCP server setup based on this repository's content
- **Generate Examples**: Create configuration examples based on the patterns in this repo
- **Browse File Structure**: Navigate and understand the documentation organization

## Repository Structure Access

The MCP server provides access to:

- `/servers/` - Individual MCP server documentation
- `/quick-start.md` - Setup instructions
- `/best-practices.md` - Enterprise implementation guidelines
- `/troubleshooting.md` - Common issues and solutions
- `/_layouts/` - Site templates and styling
- `/assets/` - CSS and other assets

## Security

- **Read-only access**: The configuration only allows reading repository content
- **Local execution**: All MCP servers run locally on your machine
- **Token isolation**: GitHub token is stored as an environment variable
- **No external data**: No repository data is sent to external services

## Testing Your Setup

1. Restart VSCode after configuration
2. Open a file in this repository
3. Ask GitHub Copilot: "What MCP servers are documented in this repository?"
4. Copilot should respond with information from the repository content

## Troubleshooting

If the MCP server doesn't work:

1. Check that the GitHub token is set: `echo $GITHUB_TOKEN`
2. Verify MCP servers are installed: `npm list -g @modelcontextprotocol/server-github`
3. Check VSCode settings path points to the correct `mcp-server-config.json`
4. Look for error messages in VSCode's Output panel (MCP section)