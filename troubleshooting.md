---
title: Troubleshooting
description: Common issues and solutions for enterprise MCP server deployments
---

<div class="hero">
    <div class="container">
        <h1>Troubleshooting Guide</h1>
        <p>Common issues and solutions for Model Context Protocol servers in enterprise environments.</p>
    </div>
</div>

<div class="section">
    <div class="container">
        <div class="section-title">
            <h2>Connection Issues</h2>
            <p>Resolve connectivity problems with enterprise systems</p>
        </div>
        
        <div class="card-grid">
            <div class="card">
                <h3>🔗 Database Connection Failures</h3>
                <p><strong>Symptoms:</strong> Cannot connect to Oracle, Snowflake, or Postgres databases</p>
                
                <h4>Common Causes & Solutions:</h4>
                <ul style="margin-left: 1.5rem; color: var(--gray-600);">
                    <li><strong>Network connectivity:</strong> Verify VPN connection and firewall rules</li>
                    <li><strong>SSL certificate issues:</strong> Check certificate validity and trust store</li>
                    <li><strong>Connection string format:</strong> Validate connection parameters</li>
                    <li><strong>Authentication failure:</strong> Verify credentials and database permissions</li>
                </ul>
                
                <div class="code-block"># Debug database connection
mcp debug database --connection-test
mcp logs database --level debug

# Test connectivity manually
telnet db.company.com 1521
openssl s_client -connect db.company.com:1521</div>
            </div>
            
            <div class="card">
                <h3>📱 GitHub API Issues</h3>
                <p><strong>Symptoms:</strong> Cannot access repositories or API rate limits exceeded</p>
                
                <h4>Common Causes & Solutions:</h4>
                <ul style="margin-left: 1.5rem; color: var(--gray-600);">
                    <li><strong>Token expiration:</strong> Rotate API tokens regularly</li>
                    <li><strong>Rate limiting:</strong> Implement request throttling and caching</li>
                    <li><strong>Permission scope:</strong> Verify token has required repository access</li>
                    <li><strong>Enterprise GitHub URL:</strong> Check correct GitHub Enterprise URL</li>
                </ul>
                
                <div class="code-block"># Verify GitHub token
curl -H "Authorization: token $GITHUB_TOKEN" \
  https://github.company.com/api/v3/user

# Check rate limits
mcp status github --rate-limits</div>
            </div>
            
            <div class="card">
                <h3>📄 SharePoint Authentication</h3>
                <p><strong>Symptoms:</strong> SharePoint MCP server returns 401/403 errors</p>
                
                <h4>Common Causes & Solutions:</h4>
                <ul style="margin-left: 1.5rem; color: var(--gray-600);">
                    <li><strong>App registration:</strong> Verify Azure AD app permissions</li>
                    <li><strong>Client secret expiration:</strong> Renew expired client secrets</li>
                    <li><strong>Site permissions:</strong> Ensure service account has site access</li>
                    <li><strong>Multi-factor authentication:</strong> Configure app-specific passwords</li>
                </ul>
                
                <div class="code-block"># Test SharePoint authentication
mcp auth test sharepoint
mcp config sharepoint --verify-permissions</div>
            </div>
        </div>
    </div>
</div>

<div class="section section-alt">
    <div class="container">
        <div class="section-title">
            <h2>Performance Issues</h2>
            <p>Diagnose and resolve performance bottlenecks</p>
        </div>
        
        <div class="card-grid">
            <div class="card">
                <h3>🐌 Slow Query Performance</h3>
                <p><strong>Symptoms:</strong> MCP queries taking longer than expected</p>
                
                <h4>Diagnostic Steps:</h4>
                <div class="code-block"># Enable query profiling
mcp config database --enable-profiling

# Monitor query performance
mcp metrics database --queries
mcp logs database --filter "slow_query"

# Check connection pool status
mcp status database --connection-pool</div>
                
                <h4>Optimization Strategies:</h4>
                <ul style="margin-left: 1.5rem; color: var(--gray-600);">
                    <li>Increase connection pool size</li>
                    <li>Enable query result caching</li>
                    <li>Optimize database indexes</li>
                    <li>Use read replicas for queries</li>
                </ul>
            </div>
            
            <div class="card">
                <h3>💾 Memory Usage</h3>
                <p><strong>Symptoms:</strong> High memory consumption or out-of-memory errors</p>
                
                <h4>Memory Monitoring:</h4>
                <div class="code-block"># Check memory usage
mcp metrics system --memory
ps aux | grep mcp

# Monitor heap usage (if applicable)
mcp debug --heap-dump
mcp config --max-memory 2048M</div>
                
                <h4>Memory Optimization:</h4>
                <ul style="margin-left: 1.5rem; color: var(--gray-600);">
                    <li>Reduce cache size limits</li>
                    <li>Implement streaming for large results</li>
                    <li>Tune garbage collection settings</li>
                    <li>Monitor for memory leaks</li>
                </ul>
            </div>
            
            <div class="card">
                <h3>🌐 Network Latency</h3>
                <p><strong>Symptoms:</strong> High response times due to network delays</p>
                
                <h4>Network Diagnostics:</h4>
                <div class="code-block"># Test network latency
ping db.company.com
traceroute github.company.com
mcp network-test --all-servers

# Check bandwidth utilization
iftop -i eth0
mcp metrics network --bandwidth</div>
                
                <h4>Latency Reduction:</h4>
                <ul style="margin-left: 1.5rem; color: var(--gray-600);">
                    <li>Deploy MCP servers closer to data sources</li>
                    <li>Use CDN for static content</li>
                    <li>Implement connection keep-alive</li>
                    <li>Optimize payload sizes</li>
                </ul>
            </div>
        </div>
    </div>
</div>

<div class="section">
    <div class="container">
        <div class="section-title">
            <h2>Configuration Problems</h2>
            <p>Fix common configuration and setup issues</p>
        </div>
        
        <div class="card-grid">
            <div class="card">
                <h3>⚙️ Invalid Configuration</h3>
                <p><strong>Symptoms:</strong> MCP servers fail to start or behave unexpectedly</p>
                
                <div class="code-block"># Validate configuration
mcp config validate --all
mcp config test --dry-run

# Check configuration syntax
yamllint mcp-config.yaml
jsonlint mcp-servers.json</div>
                
                <p>Common configuration errors:</p>
                <ul style="margin-left: 1.5rem; color: var(--gray-600);">
                    <li>YAML indentation issues</li>
                    <li>Missing required fields</li>
                    <li>Invalid connection strings</li>
                    <li>Incorrect file paths</li>
                </ul>
            </div>
            
            <div class="card">
                <h3>🔐 SSL/TLS Certificate Issues</h3>
                <p><strong>Symptoms:</strong> SSL handshake failures or certificate errors</p>
                
                <div class="code-block"># Check certificate validity
openssl x509 -in cert.pem -text -noout
mcp ssl-check --server database

# Verify certificate chain
openssl verify -CAfile ca-bundle.crt cert.pem

# Update certificate store
mcp certs update
mcp config ssl --ca-bundle /path/to/ca-bundle.crt</div>
            </div>
            
            <div class="card">
                <h3>🔑 Authentication Configuration</h3>
                <p><strong>Symptoms:</strong> Authentication failures or permission denied errors</p>
                
                <div class="code-block"># Test authentication
mcp auth verify --all-servers
mcp auth refresh --server github

# Check token permissions
mcp auth scope --token $GITHUB_TOKEN
mcp auth test --server sharepoint --verbose</div>
            </div>
        </div>
    </div>
</div>

<div class="section section-alt">
    <div class="container">
        <div class="section-title">
            <h2>IDE Integration Issues</h2>
            <p>Resolve problems with VSCode, IntelliJ, and Eclipse integration</p>
        </div>
        
        <div class="card-grid">
            <div class="card">
                <h3>💻 VSCode Extension Problems</h3>
                <p><strong>Symptoms:</strong> MCP extension not working or GitHub Copilot integration fails</p>
                
                <div class="code-block"># Check extension status
code --list-extensions | grep mcp
mcp vscode-status

# Reset extension settings
code --reset-extensions
mcp vscode-config --reset</div>
                
                <p>Common fixes:</p>
                <ul style="margin-left: 1.5rem; color: var(--gray-600);">
                    <li>Reload VSCode window</li>
                    <li>Update MCP extension</li>
                    <li>Check settings.json configuration</li>
                    <li>Verify server endpoints</li>
                </ul>
            </div>
            
            <div class="card">
                <h3>🔧 GitHub Copilot Integration</h3>
                <p><strong>Symptoms:</strong> Copilot not using MCP context or giving incorrect suggestions</p>
                
                <div class="code-block"># Verify Copilot-MCP connection
mcp copilot-status
mcp test-copilot-integration

# Check Copilot logs
code --enable-logging
tail -f ~/.vscode/logs/*/copilot.log</div>
                
                <p>Troubleshooting steps:</p>
                <ul style="margin-left: 1.5rem; color: var(--gray-600);">
                    <li>Restart Copilot service</li>
                    <li>Clear Copilot cache</li>
                    <li>Verify MCP server status</li>
                    <li>Check enterprise Copilot settings</li>
                </ul>
            </div>
            
            <div class="card">
                <h3>🛠️ IntelliJ/Eclipse Setup</h3>
                <p><strong>Symptoms:</strong> MCP plugin not loading or functioning properly</p>
                
                <div class="code-block"># IntelliJ debugging
mcp intellij-logs
mcp plugin-status --ide intellij

# Eclipse debugging  
mcp eclipse-workspace-check
mcp plugin-verify --ide eclipse</div>
                
                <p>Common solutions:</p>
                <ul style="margin-left: 1.5rem; color: var(--gray-600);">
                    <li>Restart IDE with fresh workspace</li>
                    <li>Update MCP plugin version</li>
                    <li>Check Java version compatibility</li>
                    <li>Verify plugin installation</li>
                </ul>
            </div>
        </div>
    </div>
</div>

<div class="section">
    <div class="container">
        <div class="section-title">
            <h2>Debugging & Logging</h2>
            <p>Comprehensive debugging techniques for MCP issues</p>
        </div>
        
        <div class="card">
            <h3>Enable Debug Logging</h3>
            <p>Configure detailed logging for troubleshooting:</p>
            <div class="code-block"># Enable debug mode
export MCP_DEBUG=true
export MCP_LOG_LEVEL=debug

# Start servers with verbose logging
mcp start --debug --log-file /var/log/mcp.log

# Tail logs in real-time
tail -f /var/log/mcp.log | grep ERROR
mcp logs --follow --filter "authentication"</div>
        </div>
        
        <div class="card">
            <h3>Health Checks & Monitoring</h3>
            <p>Regular health monitoring and alerting setup:</p>
            <div class="code-block"># Run comprehensive health check
mcp health-check --all --verbose

# Set up monitoring dashboard
mcp monitor --dashboard --port 8080

# Configure alerts
mcp alerts configure --email admin@company.com
mcp alerts add --name "server_down" --condition "status != healthy"</div>
        </div>
    </div>
</div>

<div class="section section-alt">
    <div class="container">
        <div class="section-title">
            <h2>Getting Help</h2>
            <p>Resources for additional support and assistance</p>
        </div>
        
        <div class="card-grid">
            <div class="card">
                <h3>📞 Internal Support</h3>
                <ul style="margin-left: 1.5rem; color: var(--gray-600);">
                    <li><strong>IT Help Desk:</strong> Submit tickets for infrastructure issues</li>
                    <li><strong>DevOps Team:</strong> Contact for deployment and configuration help</li>
                    <li><strong>Security Team:</strong> Consult for authentication and compliance questions</li>
                    <li><strong>Architecture Team:</strong> Discuss integration patterns and best practices</li>
                </ul>
            </div>
            
            <div class="card">
                <h3>📚 Documentation</h3>
                <ul style="margin-left: 1.5rem; color: var(--gray-600);">
                    <li><strong>Quick Start Guide:</strong> <a href="{{ '/quick-start' | relative_url }}">Step-by-step setup instructions</a></li>
                    <li><strong>Server Documentation:</strong> <a href="{{ '/servers' | relative_url }}">Individual server configuration guides</a></li>
                    <li><strong>Best Practices:</strong> <a href="{{ '/best-practices' | relative_url }}">Security and operational guidelines</a></li>
                    <li><strong>API Reference:</strong> Detailed API documentation and examples</li>
                </ul>
            </div>
            
            <div class="card">
                <h3>🤝 Community Resources</h3>
                <ul style="margin-left: 1.5rem; color: var(--gray-600);">
                    <li><strong>Internal Forums:</strong> Developer community discussions</li>
                    <li><strong>Slack Channels:</strong> Real-time chat support (#mcp-support)</li>
                    <li><strong>Office Hours:</strong> Weekly Q&A sessions with MCP experts</li>
                    <li><strong>Training Sessions:</strong> Regular workshops and webinars</li>
                </ul>
            </div>
        </div>
    </div>
</div>