# Internal API MCP Server

The Internal API MCP Server provides access to your organization's internal APIs with OpenAPI/Swagger specifications.

## Prerequisites

- Access to internal API endpoints
- OpenAPI/Swagger specifications
- Service account credentials
- API authentication tokens

## Installation

```bash
npm install @modelcontextprotocol/server-openapi
```

## Configuration

### Single API Configuration

Add to your `mcp-config.json`:

```json
{
  "mcpServers": {
    "internal-api-users": {
      "command": "node",
      "args": [
        "node_modules/@modelcontextprotocol/server-openapi/dist/index.js"
      ],
      "env": {
        "OPENAPI_SPEC_URL": "https://api.company.com/users/v1/swagger.json",
        "API_BASE_URL": "https://api.company.com/users/v1",
        "API_KEY": "your-api-key",
        "AUTH_HEADER": "Authorization",
        "AUTH_PREFIX": "Bearer"
      }
    }
  }
}
```

### Multiple APIs Configuration

```json
{
  "mcpServers": {
    "internal-api-users": {
      "command": "node",
      "args": [
        "node_modules/@modelcontextprotocol/server-openapi/dist/index.js"
      ],
      "env": {
        "OPENAPI_SPEC_URL": "https://api.company.com/users/v1/swagger.json",
        "API_BASE_URL": "https://api.company.com/users/v1",
        "API_KEY": "users-api-key"
      }
    },
    "internal-api-payments": {
      "command": "node",
      "args": [
        "node_modules/@modelcontextprotocol/server-openapi/dist/index.js"
      ],
      "env": {
        "OPENAPI_SPEC_URL": "https://api.company.com/payments/v2/openapi.yaml",
        "API_BASE_URL": "https://api.company.com/payments/v2",
        "API_KEY": "payments-api-key"
      }
    }
  }
}
```

## Authentication Methods

### Bearer Token

```json
{
  "env": {
    "AUTH_TYPE": "bearer",
    "API_TOKEN": "your-bearer-token"
  }
}
```

### API Key

```json
{
  "env": {
    "AUTH_TYPE": "apikey",
    "API_KEY": "your-api-key",
    "API_KEY_HEADER": "X-API-Key"
  }
}
```

### OAuth 2.0

```json
{
  "env": {
    "AUTH_TYPE": "oauth2",
    "OAUTH_CLIENT_ID": "your-client-id",
    "OAUTH_CLIENT_SECRET": "your-client-secret",
    "OAUTH_TOKEN_URL": "https://auth.company.com/oauth/token"
  }
}
```

## Usage Examples

- "What endpoints are available in the users API?"
- "Show me the schema for the payment request object"
- "Generate a client call to create a new user"
- "What are the required fields for updating a policy?"
- "Show me example responses from the search endpoint"

## Local OpenAPI Specifications

For local API specifications:

```json
{
  "env": {
    "OPENAPI_SPEC_PATH": "C:\\Development\\api-specs\\users-api.yaml",
    "API_BASE_URL": "https://api.company.com/users/v1"
  }
}
```

## Rate Limiting and Caching

```json
{
  "env": {
    "RATE_LIMIT_REQUESTS": "100",
    "RATE_LIMIT_WINDOW": "60",
    "CACHE_RESPONSES": "true",
    "CACHE_TTL": "300"
  }
}
```

## Security Best Practices

- Store API keys in environment variables
- Use service accounts with minimal permissions
- Enable request logging for audit purposes
- Implement proper error handling
- Respect API rate limits

## Troubleshooting

- Verify OpenAPI specification is valid
- Check API endpoint accessibility
- Confirm authentication credentials
- Review network connectivity and proxy settings