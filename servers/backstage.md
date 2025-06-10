# Backstage.io MCP Server

The Backstage.io MCP Server provides access to your internal service catalog and developer portal.

## Prerequisites

- Access to internal Backstage instance
- API token or service account
- Catalog read permissions

## Installation

```bash
npm install @modelcontextprotocol/server-backstage
```

## Configuration

### Basic Setup

Add to your `mcp-config.json`:

```json
{
  "mcpServers": {
    "backstage-catalog": {
      "command": "node",
      "args": [
        "node_modules/@modelcontextprotocol/server-backstage/dist/index.js"
      ],
      "env": {
        "BACKSTAGE_URL": "https://backstage.company.com",
        "BACKSTAGE_TOKEN": "your-api-token"
      }
    }
  }
}
```

## Usage Examples

- "What services does the payments team own?"
- "Show me the API documentation for user-service"
- "What are the dependencies of the mobile backend?"
- "Find services that use PostgreSQL database"
- "What's the on-call rotation for the platform team?"