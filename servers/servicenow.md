# ServiceNow MCP Server

The ServiceNow MCP Server provides access to internal ServiceNow instance for IT service management integration.

## Prerequisites

- ServiceNow instance access
- Service account with read permissions
- API access credentials

## Installation

```bash
npm install @modelcontextprotocol/server-servicenow
```

## Configuration

### Basic Setup

Add to your `mcp-config.json`:

```json
{
  "mcpServers": {
    "servicenow-internal": {
      "command": "node",
      "args": [
        "node_modules/@modelcontextprotocol/server-servicenow/dist/index.js"
      ],
      "env": {
        "SERVICENOW_INSTANCE": "company.service-now.com",
        "SERVICENOW_USERNAME": "svc-mcp-readonly",
        "SERVICENOW_PASSWORD": "your-password"
      }
    }
  }
}
```

## Usage Examples

- "Show me open incidents assigned to our team"
- "What are the current P1 outages?"
- "List change requests for this week"
- "Find knowledge articles about database issues"