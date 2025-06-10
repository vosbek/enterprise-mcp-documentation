# Troubleshooting Guide

## Common Issues and Solutions

### MCP Server Won't Start

**Symptoms**
- MCP server process fails to start
- VSCode shows "MCP server disconnected"
- No response from MCP commands

**Solutions**

1. **Check Node.js Version**
```bash
node --version  # Should be 18.0.0 or higher
npm --version   # Should be 8.0.0 or higher
```

2. **Verify Installation**
```bash
cd ~/.mcp
npm list --depth=0
```

3. **Check Configuration Syntax**
```bash
# Validate JSON syntax
cat mcp-config.json | jq .
```

4. **Test Server Manually**
```bash
cd ~/.mcp
node node_modules/@modelcontextprotocol/server-filesystem/dist/index.js --help
```

### Authentication Failures

**Database Authentication**

**Symptoms**
- "Login failed" or "Access denied" errors
- Connection timeout to database
- Invalid credentials messages

**Solutions**

1. **Verify Credentials**
```bash
# Test database connection manually
sqlplus username/password@hostname:port/service  # Oracle
psql -h hostname -p port -U username -d database  # PostgreSQL
```

2. **Check Service Account Permissions**
```sql
-- Oracle: Check user privileges
SELECT * FROM user_sys_privs;
SELECT * FROM user_tab_privs;

-- PostgreSQL: Check role memberships
\du username
```

3. **Network Connectivity**
```bash
# Test connectivity
telnet database-host 1521  # Oracle
telnet database-host 5432  # PostgreSQL
```

**GitHub Authentication**

**Symptoms**
- 401 Unauthorized responses
- "Bad credentials" errors
- Rate limiting issues

**Solutions**

1. **Verify Token Permissions**
- Navigate to `https://github.internet.net/settings/tokens`
- Check token expiration and scopes
- Ensure `repo` and `read:org` permissions

2. **Test Token Manually**
```bash
curl -H "Authorization: token YOUR_TOKEN" https://github.internet.net/api/v3/user
```

3. **Check Organizational Access**
- Verify SSO requirements
- Confirm organizational membership
- Review repository access permissions

### Network Connectivity Issues

**Proxy Configuration**

**Symptoms**
- Connection timeouts to internal services
- "ECONNREFUSED" or "ENOTFOUND" errors
- SSL/TLS handshake failures

**Solutions**

1. **Configure Corporate Proxy**
```bash
# Windows (PowerShell)
$env:HTTPS_PROXY = "http://proxy.company.com:8080"
$env:HTTP_PROXY = "http://proxy.company.com:8080"

# Ubuntu
export HTTPS_PROXY="http://proxy.company.com:8080"
export HTTP_PROXY="http://proxy.company.com:8080"
```

2. **Test Proxy Configuration**
```bash
curl -v --proxy http://proxy.company.com:8080 https://github.internet.net
```

3. **Certificate Issues**
```bash
# Update certificate store
# Windows: Update through Windows Update
# Ubuntu: 
sudo apt-get update && sudo apt-get install ca-certificates
```

**VPN Connectivity**

**Symptoms**
- Cannot reach internal services
- DNS resolution failures
- Intermittent connectivity

**Solutions**

1. **Verify VPN Status**
- Check VPN client connection
- Test internal DNS resolution
- Verify routing table

2. **DNS Testing**
```bash
nslookup github.internet.net
nslookup oracle-prod.internal.company.com
```

### Performance Issues

**Slow Response Times**

**Symptoms**
- GitHub Copilot takes long to respond
- Database queries timeout
- API calls are slow

**Solutions**

1. **Optimize Connection Pooling**
```json
{
  "env": {
    "DB_POOL_MIN": "1",
    "DB_POOL_MAX": "3",
    "DB_POOL_IDLE_TIMEOUT": "30000"
  }
}
```

2. **Enable Caching**
```json
{
  "env": {
    "CACHE_ENABLED": "true",
    "CACHE_TTL": "300"
  }
}
```

3. **Reduce Query Scope**
```json
{
  "env": {
    "DB_MAX_ROWS": "100",
    "API_PAGE_SIZE": "20"
  }
}
```

**Memory Issues**

**Symptoms**
- High memory usage
- Out of memory errors
- System slowdown

**Solutions**

1. **Limit Concurrent Connections**
```json
{
  "env": {
    "MAX_CONCURRENT_REQUESTS": "3",
    "REQUEST_TIMEOUT": "30000"
  }
}
```

2. **Monitor Resource Usage**
```bash
# Windows
tasklist /fi "imagename eq node.exe"

# Ubuntu
ps aux | grep node
top -p $(pgrep node)
```

### Configuration Issues

**Invalid JSON Configuration**

**Symptoms**
- "Unexpected token" errors
- Configuration not loading
- Server startup failures

**Solutions**

1. **Validate JSON Syntax**
```bash
# Use online JSON validator or:
python -m json.tool mcp-config.json
```

2. **Common JSON Errors**
```json
// WRONG: Trailing comma
{
  "mcpServers": {
    "database": { ... },  // <- Remove this comma
  }
}

// CORRECT:
{
  "mcpServers": {
    "database": { ... }
  }
}
```

**Environment Variable Issues**

**Symptoms**
- Variables not recognized
- Empty or undefined values
- Inconsistent behavior between restarts

**Solutions**

1. **Persistent Environment Variables**
```bash
# Windows: Add to system environment variables
# Ubuntu: Add to ~/.bashrc
echo 'export DB_PASSWORD="your-password"' >> ~/.bashrc
source ~/.bashrc
```

2. **Verify Variable Loading**
```bash
echo $DB_PASSWORD  # Should show your password
env | grep MCP     # Show all MCP-related variables
```

## Debug Mode

### Enable Debug Logging

Add debug configuration to your MCP servers:

```json
{
  "mcpServers": {
    "database": {
      "command": "node",
      "args": [...],
      "env": {
        "DEBUG": "mcp:*",
        "LOG_LEVEL": "debug"
      }
    }
  }
}
```

### Log Analysis

**Log Locations**
- Windows: `%USERPROFILE%\.mcp\logs\`
- Ubuntu: `~/.mcp/logs/`

**Log Level Meanings**
- `ERROR`: Critical failures requiring immediate attention
- `WARN`: Issues that may affect functionality
- `INFO`: General operational information
- `DEBUG`: Detailed diagnostic information

## System Requirements

### Minimum Requirements
- **CPU**: 2 cores
- **RAM**: 4GB available
- **Disk**: 1GB free space
- **Network**: Stable internet connection
- **OS**: Windows 10+ or Ubuntu 20.04+

### Recommended Requirements
- **CPU**: 4+ cores
- **RAM**: 8GB+ available
- **Disk**: 5GB+ free space (for caching)
- **Network**: High-speed connection with low latency

## Getting Help

### Internal Support

1. **Documentation Review**
   - Check this troubleshooting guide
   - Review server-specific documentation
   - Consult best practices guide

2. **Team Resources**
   - Ask your local MCP champion
   - Check team Slack channels
   - Review internal wikis

3. **IT Service Desk**
   - Submit ticket for infrastructure issues
   - Request service account access
   - Report security concerns

### External Resources

1. **MCP Community**
   - Official MCP documentation
   - GitHub issues and discussions
   - Community forums

2. **Vendor Support**
   - Contact database vendors for connection issues
   - Reach out to Atlassian for Jira problems
   - Microsoft support for SharePoint issues

### Escalation Matrix

| Issue Type | First Contact | Escalation | Timeline |
|------------|---------------|------------|----------|
| Configuration | Team Lead | IT Service Desk | 2 hours |
| Authentication | IT Service Desk | Security Team | 4 hours |
| Performance | Local Champion | Infrastructure Team | 1 day |
| Security | Security Team | CISO Office | Immediate |

## Preventive Measures

### Regular Maintenance

**Weekly Tasks**
- Check token expiration dates
- Review error logs
- Monitor performance metrics
- Verify backup configurations

**Monthly Tasks**
- Update MCP server dependencies
- Review and rotate credentials
- Conduct security scans
- Update documentation

**Quarterly Tasks**
- Complete access reviews
- Perform disaster recovery tests
- Update security configurations
- Review and update procedures

### Monitoring Setup

**Health Checks**
Implement automated health monitoring:

```bash
#!/bin/bash
# Simple health check script
for server in database github jira; do
  if ! pgrep -f "server-$server" > /dev/null; then
    echo "WARNING: $server MCP server not running"
  fi
done
```

**Performance Monitoring**
Track key metrics:
- Response times
- Memory usage
- Connection counts
- Error rates

## Emergency Procedures

### Complete MCP Failure

1. **Immediate Actions**
   - Verify VSCode and GitHub Copilot still function without MCP
   - Document error messages and timestamps
   - Check system resources (CPU, memory, disk)

2. **Recovery Steps**
   - Restart all MCP servers
   - Clear cache directories
   - Reset configuration to known good state
   - Test with minimal configuration

3. **Fallback Options**
   - Continue development without MCP context
   - Use web interfaces for data access
   - Manual database/API queries as needed

### Security Incident

1. **Immediate Response**
   - Stop all MCP servers
   - Revoke compromised credentials
   - Contact security team
   - Document incident details

2. **Investigation**
   - Preserve log files
   - Review access patterns
   - Check for unauthorized access
   - Coordinate with security team

3. **Recovery**
   - Generate new credentials
   - Update configurations
   - Implement additional security measures
   - Conduct post-incident review

---

*For additional support, contact the Enterprise Development Tools team or submit a ticket to the IT Service Desk.*