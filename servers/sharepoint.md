# SharePoint MCP Server

The SharePoint MCP Server provides access to internal SharePoint sites for document search and knowledge base integration.

## Prerequisites

- SharePoint Online/On-Premises access
- Service account with read permissions
- Microsoft Graph API or SharePoint REST API access

## Installation

```bash
npm install @modelcontextprotocol/server-sharepoint
```

## Configuration

### SharePoint Online

Add to your `mcp-config.json`:

```json
{
  "mcpServers": {
    "sharepoint-internal": {
      "command": "node",
      "args": [
        "node_modules/@modelcontextprotocol/server-sharepoint/dist/index.js"
      ],
      "env": {
        "SHAREPOINT_SITE_URL": "https://company.sharepoint.com/sites/engineering",
        "SHAREPOINT_CLIENT_ID": "your-app-id",
        "SHAREPOINT_CLIENT_SECRET": "your-client-secret",
        "SHAREPOINT_TENANT_ID": "your-tenant-id"
      }
    }
  }
}
```

### Multiple Sites

```json
{
  "mcpServers": {
    "sharepoint-docs": {
      "command": "node",
      "args": [
        "node_modules/@modelcontextprotocol/server-sharepoint/dist/index.js"
      ],
      "env": {
        "SHAREPOINT_SITES": "https://company.sharepoint.com/sites/engineering,https://company.sharepoint.com/sites/product",
        "SHAREPOINT_CLIENT_ID": "your-app-id",
        "SHAREPOINT_CLIENT_SECRET": "your-client-secret"
      }
    }
  }
}
```

## Usage Examples

- "Find documentation about API authentication"
- "Search for architectural decision records"
- "Show me the latest security guidelines"
- "What are the coding standards for React?"