# Figma MCP Server

The Figma MCP Server provides access to Figma design files and collaboration features.

## Prerequisites

- Figma account with team access
- Personal access token
- Team/project permissions

## Installation

```bash
npm install @modelcontextprotocol/server-figma
```

## Configuration

### Basic Setup

Add to your `mcp-config.json`:

```json
{
  "mcpServers": {
    "figma-design": {
      "command": "node",
      "args": [
        "node_modules/@modelcontextprotocol/server-figma/dist/index.js"
      ],
      "env": {
        "FIGMA_ACCESS_TOKEN": "your-figma-token",
        "FIGMA_TEAM_ID": "your-team-id"
      }
    }
  }
}
```

## Usage Examples

- "Show me the latest designs for the mobile app"
- "What components are available in our design system?"
- "Find designs related to user authentication"
- "What are the brand colors and typography specs?"