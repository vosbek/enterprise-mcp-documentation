# Jira MCP Server

The Jira MCP Server provides access to your internal Jira instance for issue tracking and project management integration.

## Prerequisites

- Jira API token or service account
- Access to internal Jira instance
- Network connectivity through corporate proxy

## Installation

```bash
npm install @modelcontextprotocol/server-jira
```

## Configuration

### Basic Setup

Add to your `mcp-config.json`:

```json
{
  "mcpServers": {
    "jira-internal": {
      "command": "node",
      "args": [
        "node_modules/@modelcontextprotocol/server-jira/dist/index.js"
      ],
      "env": {
        "JIRA_URL": "https://jira.company.com",
        "JIRA_USERNAME": "your-service-account",
        "JIRA_API_TOKEN": "your-api-token"
      }
    }
  }
}
```

### Multiple Projects

For project-specific configurations:

```json
{
  "mcpServers": {
    "jira-engineering": {
      "command": "node",
      "args": [
        "node_modules/@modelcontextprotocol/server-jira/dist/index.js"
      ],
      "env": {
        "JIRA_URL": "https://jira.company.com",
        "JIRA_USERNAME": "engineering-service",
        "JIRA_API_TOKEN": "engineering-token",
        "JIRA_PROJECT_KEYS": "ENG,PLAT,INFRA"
      }
    },
    "jira-product": {
      "command": "node",
      "args": [
        "node_modules/@modelcontextprotocol/server-jira/dist/index.js"
      ],
      "env": {
        "JIRA_URL": "https://jira.company.com",
        "JIRA_USERNAME": "product-service",
        "JIRA_API_TOKEN": "product-token",
        "JIRA_PROJECT_KEYS": "PROD,UX,MOBILE"
      }
    }
  }
}
```

## API Token Setup

### Creating an API Token

1. Navigate to your Jira profile: `https://jira.company.com/secure/ViewProfile.jspa`
2. Click "Personal Access Tokens" or "API Tokens"
3. Click "Create API Token"
4. Configure token settings:

**Token Name**: `MCP-VSCode-Integration`
**Expiration**: According to corporate policy (typically 90 days)
**Permissions**: Read access to projects you need

### Service Account (Recommended)

For enterprise deployments, use a dedicated service account:

```json
{
  "env": {
    "JIRA_USERNAME": "svc-mcp-readonly",
    "JIRA_API_TOKEN": "service-account-token"
  }
}
```

## Usage Examples

Once configured, you can ask GitHub Copilot:

### Issue Management
- "What are my assigned Jira tickets?"
- "Show me all high-priority bugs in the mobile project"
- "List open stories in the current sprint"
- "What's the status of ticket ENG-1234?"

### Project Information
- "What projects am I working on?"
- "Show me the current sprint for the platform team"
- "What are the upcoming milestones?"

### Reporting
- "How many tickets did I close this week?"
- "What's the bug count for the Q3 release?"
- "Show me blocked tickets in my projects"

## Advanced Configuration

### Custom JQL Queries

Configure predefined JQL queries:

```json
{
  "env": {
    "JIRA_CUSTOM_QUERIES": "my-issues:assignee=currentUser() AND status!=Done;team-bugs:project=ENG AND type=Bug AND status=Open"
  }
}
```

### Field Filtering

Limit which fields are returned:

```json
{
  "env": {
    "JIRA_FIELDS": "summary,status,priority,assignee,created,updated",
    "JIRA_EXPAND": "changelog"
  }
}
```

### Rate Limiting

Configure API rate limiting:

```json
{
  "env": {
    "JIRA_RATE_LIMIT": "100",
    "JIRA_RATE_LIMIT_WINDOW": "60"
  }
}
```

## Enterprise Features

### SSO Integration

For SAML/SSO environments:

```json
{
  "env": {
    "JIRA_SSO_ENABLED": "true",
    "JIRA_AUTH_TYPE": "bearer"
  }
}
```

### Proxy Configuration

For corporate proxy settings:

```json
{
  "env": {
    "HTTPS_PROXY": "http://proxy.company.com:8080",
    "HTTP_PROXY": "http://proxy.company.com:8080"
  }
}
```

### Custom Fields

Map custom fields to standard names:

```json
{
  "env": {
    "JIRA_CUSTOM_FIELD_MAPPING": "story-points:customfield_10001;epic-link:customfield_10002"
  }
}
```

## Security Best Practices

### Token Storage

Store tokens securely:

```bash
# Windows (PowerShell)
$env:JIRA_API_TOKEN = "your-token-here"

# Ubuntu
export JIRA_API_TOKEN="your-token-here"
```

### Read-Only Access

Ensure service accounts have minimal permissions:
- Read access to projects
- No create, edit, or delete permissions
- Limited to specific project keys

### Audit Logging

Enable audit logging:

```json
{
  "env": {
    "JIRA_AUDIT_LOG": "true",
    "JIRA_LOG_LEVEL": "info"
  }
}
```

## Troubleshooting

### Common Issues

**401 Unauthorized**
- Verify API token is valid
- Check username/token combination
- Ensure token hasn't expired

**403 Forbidden**
- Verify project permissions
- Check service account access
- Review Jira security settings

**Connection Timeout**
- Verify VPN connectivity
- Check proxy configuration
- Test Jira URL accessibility

### Debug Mode

Enable debug logging:

```json
{
  "env": {
    "DEBUG": "mcp:jira:*",
    "LOG_LEVEL": "debug"
  }
}
```

### Performance Optimization

For large Jira instances:

```json
{
  "env": {
    "JIRA_PAGE_SIZE": "50",
    "JIRA_CACHE_TTL": "300",
    "JIRA_MAX_RESULTS": "1000"
  }
}
```

## Integration Patterns

### Sprint Planning
Use with GitHub MCP to correlate tickets with code changes:
- "Show me commits related to ticket ENG-1234"
- "What code files are mentioned in current sprint tickets?"

### Release Management
- "List all tickets in version 2.1.0"
- "What bugs are blocking the release?"
- "Show me test coverage for tickets in current fix version"

## Compliance Notes

- All API calls logged for audit purposes
- Read-only access enforced at token level
- No modification capabilities through MCP
- Follows existing Jira permission model
- Complies with enterprise data governance