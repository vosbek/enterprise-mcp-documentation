# Internal GitHub MCP Server

The Internal GitHub MCP Server provides access to your private GitHub Enterprise instance at `github.internet.net`.

## Prerequisites

- GitHub Personal Access Token (classic)
- Access to github.internet.net
- Network connectivity through corporate proxy

## Installation

```bash
npm install @modelcontextprotocol/server-github
```

## Configuration

### Basic Setup

Add to your `mcp-config.json`:

```json
{
  "mcpServers": {
    "github-internal": {
      "command": "node",
      "args": [
        "node_modules/@modelcontextprotocol/server-github/dist/index.js"
      ],
      "env": {
        "GITHUB_TOKEN": "your-github-token",
        "GITHUB_API_URL": "https://github.internet.net/api/v3",
        "GITHUB_WEB_URL": "https://github.internet.net"
      }
    }
  }
}
```

### Multiple Organizations

For access to multiple organizations:

```json
{
  "mcpServers": {
    "github-engineering": {
      "command": "node",
      "args": [
        "node_modules/@modelcontextprotocol/server-github/dist/index.js"
      ],
      "env": {
        "GITHUB_TOKEN": "engineering-token",
        "GITHUB_API_URL": "https://github.internet.net/api/v3",
        "GITHUB_ORG": "engineering"
      }
    },
    "github-platform": {
      "command": "node",
      "args": [
        "node_modules/@modelcontextprotocol/server-github/dist/index.js"
      ],
      "env": {
        "GITHUB_TOKEN": "platform-token",
        "GITHUB_API_URL": "https://github.internet.net/api/v3",
        "GITHUB_ORG": "platform"
      }
    }
  }
}
```

## Personal Access Token Setup

### Creating a Token

1. Navigate to `https://github.internet.net/settings/tokens`
2. Click "Generate new token" → "Generate new token (classic)"
3. Configure token settings:

**Token Name**: `MCP-VSCode-Access`

**Expiration**: Set according to corporate policy (typically 90 days)

**Scopes** (select these):
- `repo` - Full repository access
- `read:org` - Organization read access
- `read:user` - User profile read access
- `read:project` - Project read access

### Security Best Practices

Store the token securely:

```bash
# Windows (PowerShell)
$env:GITHUB_TOKEN = "ghp_your_token_here"

# Ubuntu
export GITHUB_TOKEN="ghp_your_token_here"
```

Never commit tokens to repositories or configuration files.

## Usage Examples

Once configured, you can ask GitHub Copilot:

### Repository Information
- "What repositories are in the engineering organization?"
- "Show me the README for the user-service repository"
- "What are the open issues in the payment-gateway project?"

### Code Search
- "Find all TypeScript files that import the Logger class"
- "Show me recent commits to the authentication module"
- "What pull requests are currently open for review?"

### Project Management
- "List all issues assigned to me"
- "What are the high-priority bugs in the mobile app?"
- "Show me the project board for the Q3 release"

## Advanced Configuration

### Repository Filtering

Limit access to specific repositories:

```json
{
  "env": {
    "GITHUB_REPOSITORIES": "user-service,payment-gateway,mobile-app"
  }
}
```

### Rate Limiting

Configure API rate limiting:

```json
{
  "env": {
    "GITHUB_RATE_LIMIT": "5000",
    "GITHUB_RATE_LIMIT_PER_HOUR": "5000"
  }
}
```

### Proxy Configuration

For corporate proxy settings:

```json
{
  "env": {
    "HTTPS_PROXY": "http://proxy.company.com:8080",
    "HTTP_PROXY": "http://proxy.company.com:8080",
    "NO_PROXY": "localhost,127.0.0.1,github.internet.net"
  }
}
```

## Enterprise Features

### SAML SSO Integration

If your organization uses SAML SSO:

```json
{
  "env": {
    "GITHUB_SSO_ENABLED": "true",
    "GITHUB_SSO_TOKEN_REFRESH": "true"
  }
}
```

### Audit Logging

Enable audit logging for compliance:

```json
{
  "env": {
    "GITHUB_AUDIT_LOG": "true",
    "GITHUB_LOG_LEVEL": "info"
  }
}
```

## Troubleshooting

### Common Issues

**401 Unauthorized**
- Verify token permissions
- Check token expiration
- Confirm organizational access

**403 Forbidden**
- Check repository access permissions
- Verify organizational membership
- Review token scopes

**Rate Limiting**
- Monitor API usage
- Implement caching strategies
- Consider multiple tokens for high-volume users

### Debug Mode

Enable debug logging:

```json
{
  "env": {
    "DEBUG": "mcp:github:*",
    "LOG_LEVEL": "debug"
  }
}
```

## Compliance Notes

- All API calls are logged for audit purposes
- Token usage is monitored and reported
- Access follows existing GitHub Enterprise permissions
- No data is stored locally beyond session cache