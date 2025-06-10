---
layout: default
title: Troubleshooting Guide
description: Common issues, solutions, and debugging techniques for MCP server implementations
---

<!-- Page Header -->
<div class="page-header">
  <div class="page-header-container">
    <h1 class="page-title">Troubleshooting Guide</h1>
    <p class="page-description">
      Comprehensive troubleshooting guide for MCP server issues, debugging techniques, and solutions for common problems in enterprise environments.
    </p>
  </div>
</div>

<!-- Documentation Content -->
<div class="doc-content">

  <div style="display: inline-flex; align-items: center; gap: 8px; background: #fef3c7; color: #92400e; padding: 8px 16px; border-radius: 20px; font-size: 14px; font-weight: 600; margin-bottom: 32px;">
    <svg width="16" height="16" viewBox="0 0 24 24" fill="currentColor">
      <path d="M18 10a8 8 0 11-16 0 8 8 0 0116 0zm-7 4a1 1 0 11-2 0 1 1 0 012 0zm-1-9a1 1 0 00-1 1v4a1 1 0 102 0V6a1 1 0 00-1-1z"/>
    </svg>
    Diagnostic & Resolution Guide
  </div>

  ## Quick Diagnostic Checklist

  <div style="background: #f0f9ff; border: 1px solid #0369a1; border-radius: 12px; padding: 24px; margin: 24px 0;">
    <h4 style="margin: 0 0 16px 0; color: #0369a1; font-weight: 600;">Before You Start Troubleshooting</h4>
    <div style="display: grid; gap: 12px;">
      <label style="display: flex; align-items: center; gap: 12px; color: #1e40af; cursor: pointer;">
        <input type="checkbox" style="width: 18px; height: 18px;">
        <span>VPN connection is active and stable</span>
      </label>
      <label style="display: flex; align-items: center; gap: 12px; color: #1e40af; cursor: pointer;">
        <input type="checkbox" style="width: 18px; height: 18px;">
        <span>VSCode is running with latest extensions</span>
      </label>
      <label style="display: flex; align-items: center; gap: 12px; color: #1e40af; cursor: pointer;">
        <input type="checkbox" style="width: 18px; height: 18px;">
        <span>GitHub Copilot extension is enabled</span>
      </label>
      <label style="display: flex; align-items: center; gap: 12px; color: #1e40af; cursor: pointer;">
        <input type="checkbox" style="width: 18px; height: 18px;">
        <span>Environment variables are properly set</span>
      </label>
    </div>
  </div>

  ## Common Issues & Solutions

  ### Connection Problems

  <div style="display: grid; gap: 20px; margin: 32px 0;">
    <details style="padding: 24px; background: white; border: 1px solid var(--border-color); border-radius: 12px; box-shadow: 0 2px 4px rgba(0,0,0,0.05);" open>
      <summary style="font-weight: 600; cursor: pointer; color: var(--text-primary); font-size: 18px; margin-bottom: 16px;">
        🔗 Database Connection Timeout
      </summary>
      <div style="color: var(--text-secondary); line-height: 1.6;">
        <p style="margin-bottom: 16px;"><strong>Symptoms:</strong> Connection timeouts, "unable to connect" errors, long response times</p>
        
        <h5 style="margin: 16px 0 8px 0; color: var(--text-primary);">Solutions:</h5>
        <div style="background: #f8f9fa; padding: 16px; border-radius: 8px; margin: 12px 0;">
          <p style="margin: 0 0 8px 0; font-weight: 500;">1. Verify VPN Connection</p>
          <div style="background: var(--bg-dark); color: #e5e7eb; padding: 12px; border-radius: 6px; font-family: monospace; font-size: 14px;">
            <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 8px;">
              <span style="font-size: 10px; text-transform: uppercase; color: #9ca3af;">Test Command</span>
              <button onclick="copyToClipboard('ping database-server.internal.company.com')" style="background: var(--primary-color); color: white; border: none; padding: 2px 8px; border-radius: 3px; font-size: 10px; cursor: pointer;">Copy</button>
            </div>
            ping database-server.internal.company.com
          </div>
        </div>

        <div style="background: #f8f9fa; padding: 16px; border-radius: 8px; margin: 12px 0;">
          <p style="margin: 0 0 8px 0; font-weight: 500;">2. Check Firewall Rules</p>
          <p style="margin: 0; font-size: 14px;">Ensure ports 1521 (Oracle), 5432 (PostgreSQL), 443 (Snowflake) are accessible</p>
        </div>

        <div style="background: #f8f9fa; padding: 16px; border-radius: 8px; margin: 12px 0;">
          <p style="margin: 0 0 8px 0; font-weight: 500;">3. Verify Service Account Status</p>
          <p style="margin: 0; font-size: 14px;">Check if the service account is active and not locked</p>
        </div>
      </div>
    </details>

    <details style="padding: 24px; background: white; border: 1px solid var(--border-color); border-radius: 12px; box-shadow: 0 2px 4px rgba(0,0,0,0.05);">
      <summary style="font-weight: 600; cursor: pointer; color: var(--text-primary); font-size: 18px; margin-bottom: 16px;">
        🔐 Authentication Failures
      </summary>
      <div style="color: var(--text-secondary); line-height: 1.6;">
        <p style="margin-bottom: 16px;"><strong>Symptoms:</strong> 401 Unauthorized, "invalid credentials", authentication errors</p>
        
        <div style="background: #fef3c7; border-left: 4px solid #f59e0b; padding: 16px; border-radius: 8px; margin: 16px 0;">
          <strong style="color: #92400e;">⚠️ Most Common Cause:</strong> Expired or incorrect credentials
        </div>

        <h5 style="margin: 16px 0 8px 0; color: var(--text-primary);">Step-by-Step Resolution:</h5>
        
        <div style="display: grid; gap: 16px; margin: 16px 0;">
          <div style="display: flex; gap: 16px; align-items: flex-start;">
            <div style="width: 32px; height: 32px; background: var(--primary-color); color: white; border-radius: 50%; display: flex; align-items: center; justify-content: center; font-weight: 600; font-size: 14px; flex-shrink: 0;">1</div>
            <div>
              <h6 style="margin: 0 0 4px 0; font-size: 16px; font-weight: 600;">Verify Environment Variables</h6>
              <div style="background: var(--bg-dark); color: #e5e7eb; padding: 12px; border-radius: 6px; font-family: monospace; font-size: 14px; margin-top: 8px;">
                <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 8px;">
                  <span style="font-size: 10px; text-transform: uppercase; color: #9ca3af;">Check Variables</span>
                  <button onclick="copyToClipboard('echo $GITHUB_TOKEN\\necho $DB_PASSWORD')" style="background: var(--primary-color); color: white; border: none; padding: 2px 8px; border-radius: 3px; font-size: 10px; cursor: pointer;">Copy</button>
                </div>
                echo $GITHUB_TOKEN<br>echo $DB_PASSWORD
              </div>
            </div>
          </div>
          
          <div style="display: flex; gap: 16px; align-items: flex-start;">
            <div style="width: 32px; height: 32px; background: var(--primary-color); color: white; border-radius: 50%; display: flex; align-items: center; justify-content: center; font-weight: 600; font-size: 14px; flex-shrink: 0;">2</div>
            <div>
              <h6 style="margin: 0 0 4px 0; font-size: 16px; font-weight: 600;">Test Credentials Manually</h6>
              <p style="margin: 0; color: var(--text-secondary); line-height: 1.4;">Try logging into the service directly to verify credentials work</p>
            </div>
          </div>
          
          <div style="display: flex; gap: 16px; align-items: flex-start;">
            <div style="width: 32px; height: 32px; background: var(--primary-color); color: white; border-radius: 50%; display: flex; align-items: center; justify-content: center; font-weight: 600; font-size: 14px; flex-shrink: 0;">3</div>
            <div>
              <h6 style="margin: 0 0 4px 0; font-size: 16px; font-weight: 600;">Check Token Expiration</h6>
              <p style="margin: 0; color: var(--text-secondary); line-height: 1.4;">GitHub tokens expire, Jira tokens may be revoked, database passwords may be changed</p>
            </div>
          </div>
        </div>
      </div>
    </details>

    <details style="padding: 24px; background: white; border: 1px solid var(--border-color); border-radius: 12px; box-shadow: 0 2px 4px rgba(0,0,0,0.05);">
      <summary style="font-weight: 600; cursor: pointer; color: var(--text-primary); font-size: 18px; margin-bottom: 16px;">
        ⚡ Performance Issues
      </summary>
      <div style="color: var(--text-secondary); line-height: 1.6;">
        <p style="margin-bottom: 16px;"><strong>Symptoms:</strong> Slow responses, timeouts, high CPU usage, memory leaks</p>
        
        <div style="display: grid; gap: 16px; margin: 16px 0;">
          <div style="background: #f0fdf4; border: 1px solid #10b981; border-radius: 8px; padding: 16px;">
            <h6 style="margin: 0 0 8px 0; color: #047857; font-weight: 600;">Connection Pool Optimization</h6>
            <div style="background: var(--bg-dark); color: #e5e7eb; padding: 12px; border-radius: 6px; font-family: monospace; font-size: 14px; margin-top: 8px;">
              <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 8px;">
                <span style="font-size: 10px; text-transform: uppercase; color: #9ca3af;">Optimal Settings</span>
                <button onclick="copyToClipboard('{\\n  \\\"DB_POOL_MIN\\\": \\\"1\\\",\\n  \\\"DB_POOL_MAX\\\": \\\"3\\\",\\n  \\\"DB_POOL_IDLE_TIMEOUT\\\": \\\"30000\\\"\\n}')" style="background: var(--primary-color); color: white; border: none; padding: 2px 8px; border-radius: 3px; font-size: 10px; cursor: pointer;">Copy</button>
              </div>
              {<br>  "DB_POOL_MIN": "1",<br>  "DB_POOL_MAX": "3",<br>  "DB_POOL_IDLE_TIMEOUT": "30000"<br>}
            </div>
          </div>

          <div style="background: #fef3c7; border: 1px solid #f59e0b; border-radius: 8px; padding: 16px;">
            <h6 style="margin: 0 0 8px 0; color: #92400e; font-weight: 600;">Rate Limiting Issues</h6>
            <p style="margin: 0; color: #92400e; font-size: 14px;">If hitting API rate limits, reduce concurrent requests or implement intelligent caching</p>
          </div>
        </div>
      </div>
    </details>

    <details style="padding: 24px; background: white; border: 1px solid var(--border-color); border-radius: 12px; box-shadow: 0 2px 4px rgba(0,0,0,0.05);">
      <summary style="font-weight: 600; cursor: pointer; color: var(--text-primary); font-size: 18px; margin-bottom: 16px;">
        🔧 Configuration Problems
      </summary>
      <div style="color: var(--text-secondary); line-height: 1.6;">
        <p style="margin-bottom: 16px;"><strong>Symptoms:</strong> MCP servers not starting, JSON syntax errors, invalid paths</p>
        
        <h5 style="margin: 16px 0 8px 0; color: var(--text-primary);">Configuration Validation</h5>
        
        <div style="background: var(--bg-dark); color: #e5e7eb; border-radius: 12px; padding: 24px; margin: 16px 0;">
          <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 16px;">
            <span style="font-size: 12px; font-weight: 600; text-transform: uppercase; color: #9ca3af;">JSON Validation Script</span>
            <button onclick="copyToClipboard('#!/bin/bash\\necho \\\"Validating MCP configuration...\\\"\\npython -m json.tool ~/.mcp/mcp-config.json > /dev/null && echo \\\"✅ Valid JSON\\\" || echo \\\"❌ Invalid JSON\\\"')" style="background: var(--primary-color); color: white; border: none; padding: 4px 12px; border-radius: 4px; font-size: 12px; cursor: pointer;">Copy</button>
          </div>
          <pre style="margin: 0; background: none; border: none; padding: 0;"><code>#!/bin/bash
echo "Validating MCP configuration..."
python -m json.tool ~/.mcp/mcp-config.json > /dev/null && echo "✅ Valid JSON" || echo "❌ Invalid JSON"</code></pre>
        </div>

        <div style="background: #f8f9fa; border-radius: 8px; padding: 16px; margin: 16px 0;">
          <h6 style="margin: 0 0 8px 0; color: var(--text-primary); font-weight: 600;">Common Configuration Mistakes:</h6>
          <ul style="margin: 0; padding-left: 20px; color: var(--text-secondary);">
            <li style="margin-bottom: 8px;">Missing quotes around environment variable values</li>
            <li style="margin-bottom: 8px;">Incorrect file paths (use forward slashes even on Windows)</li>
            <li style="margin-bottom: 8px;">Missing commas between JSON objects</li>
            <li>Incorrect node_modules path references</li>
          </ul>
        </div>
      </div>
    </details>
  </div>

  ---

  ## Debug Mode & Logging

  ### Enable Debug Logging

  <div style="background: var(--bg-dark); color: #e5e7eb; border-radius: 12px; padding: 24px; margin: 24px 0;">
    <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 16px;">
      <span style="font-size: 12px; font-weight: 600; text-transform: uppercase; color: #9ca3af;">Debug Configuration</span>
      <button onclick="copyToClipboard('{\\n  \\\"env\\\": {\\n    \\\"DEBUG\\\": \\\"mcp:*\\\",\\n    \\\"LOG_LEVEL\\\": \\\"debug\\\",\\n    \\\"VERBOSE_LOGGING\\\": \\\"true\\\"\\n  }\\n}')" style="background: var(--primary-color); color: white; border: none; padding: 4px 12px; border-radius: 4px; font-size: 12px; cursor: pointer;">Copy</button>
    </div>
    <pre style="margin: 0; background: none; border: none; padding: 0;"><code>{
  "env": {
    "DEBUG": "mcp:*",
    "LOG_LEVEL": "debug",
    "VERBOSE_LOGGING": "true"
  }
}</code></pre>
  </div>

  ### Log Analysis

  <div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(300px, 1fr)); gap: 20px; margin: 32px 0;">
    <div style="padding: 20px; background: white; border: 1px solid var(--border-color); border-radius: 12px;">
      <h4 style="margin: 0 0 12px 0; color: var(--text-primary);">Connection Logs</h4>
      <div style="background: #f3f4f6; padding: 8px 12px; border-radius: 6px; font-family: monospace; font-size: 12px; margin-bottom: 8px; color: #047857;">✅ Connected to database</div>
      <div style="background: #f3f4f6; padding: 8px 12px; border-radius: 6px; font-family: monospace; font-size: 12px; color: #dc2626;">❌ Connection timeout after 30s</div>
    </div>

    <div style="padding: 20px; background: white; border: 1px solid var(--border-color); border-radius: 12px;">
      <h4 style="margin: 0 0 12px 0; color: var(--text-primary);">Authentication Logs</h4>
      <div style="background: #f3f4f6; padding: 8px 12px; border-radius: 6px; font-family: monospace; font-size: 12px; margin-bottom: 8px; color: #047857;">✅ Token validated</div>
      <div style="background: #f3f4f6; padding: 8px 12px; border-radius: 6px; font-family: monospace; font-size: 12px; color: #dc2626;">❌ Invalid token format</div>
    </div>

    <div style="padding: 20px; background: white; border: 1px solid var(--border-color); border-radius: 12px;">
      <h4 style="margin: 0 0 12px 0; color: var(--text-primary);">API Response Logs</h4>
      <div style="background: #f3f4f6; padding: 8px 12px; border-radius: 6px; font-family: monospace; font-size: 12px; margin-bottom: 8px; color: #047857;">✅ GET /repos 200 (120ms)</div>
      <div style="background: #f3f4f6; padding: 8px 12px; border-radius: 6px; font-family: monospace; font-size: 12px; color: #dc2626;">❌ GET /repos 429 Rate limited</div>
    </div>
  </div>

  ---

  ## Advanced Troubleshooting

  ### Network Diagnostics

  <div style="background: var(--bg-dark); color: #e5e7eb; border-radius: 12px; padding: 24px; margin: 24px 0;">
    <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 16px;">
      <span style="font-size: 12px; font-weight: 600; text-transform: uppercase; color: #9ca3af;">Network Test Script</span>
      <button onclick="copyToClipboard('#!/bin/bash\\necho \\\"Testing network connectivity...\\\"\\nping -c 3 github.internet.net\\ntelnet database-server.company.com 1521\\nnslookup jira.company.com')" style="background: var(--primary-color); color: white; border: none; padding: 4px 12px; border-radius: 4px; font-size: 12px; cursor: pointer;">Copy</button>
    </div>
    <pre style="margin: 0; background: none; border: none; padding: 0;"><code>#!/bin/bash
echo "Testing network connectivity..."
ping -c 3 github.internet.net
telnet database-server.company.com 1521
nslookup jira.company.com</code></pre>
  </div>

  ### System Resource Monitoring

  <div style="display: grid; gap: 16px; margin: 32px 0;">
    <div style="background: #f0f9ff; border: 1px solid #0369a1; border-radius: 8px; padding: 16px;">
      <h6 style="margin: 0 0 8px 0; color: #0369a1; font-weight: 600;">Memory Usage</h6>
      <p style="margin: 0; color: #1e40af; font-size: 14px;">Monitor memory consumption, especially with database connections</p>
    </div>
    
    <div style="background: #fef3c7; border: 1px solid #f59e0b; border-radius: 8px; padding: 16px;">
      <h6 style="margin: 0 0 8px 0; color: #92400e; font-weight: 600;">CPU Performance</h6>
      <p style="margin: 0; color: #92400e; font-size: 14px;">High CPU usage may indicate inefficient queries or connection issues</p>
    </div>
  </div>

  ---

  ## Support Escalation

  ### Internal Support Tiers

  <div style="display: grid; gap: 20px; margin: 32px 0;">
    <div style="display: flex; gap: 16px; padding: 20px; background: white; border: 1px solid var(--border-color); border-radius: 12px;">
      <div style="width: 40px; height: 40px; background: #10b981; color: white; border-radius: 50%; display: flex; align-items: center; justify-content: center; font-weight: 600; flex-shrink: 0;">1</div>
      <div>
        <h4 style="margin: 0 0 8px 0; color: var(--text-primary);">Self-Service</h4>
        <p style="margin: 0; color: var(--text-secondary);">Check this documentation, restart services, verify configuration</p>
      </div>
    </div>

    <div style="display: flex; gap: 16px; padding: 20px; background: white; border: 1px solid var(--border-color); border-radius: 12px;">
      <div style="width: 40px; height: 40px; background: #0ea5e9; color: white; border-radius: 50%; display: flex; align-items: center; justify-content: center; font-weight: 600; flex-shrink: 0;">2</div>
      <div>
        <h4 style="margin: 0 0 8px 0; color: var(--text-primary);">Team Support</h4>
        <p style="margin: 0; color: var(--text-secondary);">Reach out to your local MCP champions or senior developers</p>
      </div>
    </div>

    <div style="display: flex; gap: 16px; padding: 20px; background: white; border: 1px solid var(--border-color); border-radius: 12px;">
      <div style="width: 40px; height: 40px; background: #f59e0b; color: white; border-radius: 50%; display: flex; align-items: center; justify-content: center; font-weight: 600; flex-shrink: 0;">3</div>
      <div>
        <h4 style="margin: 0 0 8px 0; color: var(--text-primary);">IT Support</h4>
        <p style="margin: 0; color: var(--text-secondary);">Submit service desk ticket for infrastructure or access issues</p>
      </div>
    </div>
  </div>

  ### Information to Include in Support Requests

  <div style="background: #f8f9fa; border-radius: 12px; padding: 24px; margin: 24px 0;">
    <h4 style="margin: 0 0 16px 0; color: var(--text-primary);">Support Ticket Checklist</h4>
    <div style="display: grid; gap: 8px;">
      <label style="display: flex; align-items: center; gap: 12px; color: var(--text-secondary); cursor: pointer;">
        <input type="checkbox" style="width: 16px; height: 16px;">
        <span>Detailed error messages and stack traces</span>
      </label>
      <label style="display: flex; align-items: center; gap: 12px; color: var(--text-secondary); cursor: pointer;">
        <input type="checkbox" style="width: 16px; height: 16px;">
        <span>MCP configuration file (with credentials redacted)</span>
      </label>
      <label style="display: flex; align-items: center; gap: 12px; color: var(--text-secondary); cursor: pointer;">
        <input type="checkbox" style="width: 16px; height: 16px;">
        <span>Steps to reproduce the issue</span>
      </label>
      <label style="display: flex; align-items: center; gap: 12px; color: var(--text-secondary); cursor: pointer;">
        <input type="checkbox" style="width: 16px; height: 16px;">
        <span>Environment details (OS, VSCode version, Node.js version)</span>
      </label>
      <label style="display: flex; align-items: center; gap: 12px; color: var(--text-secondary); cursor: pointer;">
        <input type="checkbox" style="width: 16px; height: 16px;">
        <span>Debug logs and timestamps</span>
      </label>
    </div>
  </div>

  <div style="background: #e8f5e8; border-left: 4px solid var(--accent-color); padding: 16px 20px; border-radius: 8px; margin: 24px 0;">
    <strong>✅ Remember:</strong> Most issues are resolved quickly with proper diagnostics. Follow the checklist and gather logs before escalating.
  </div>

  <div style="text-align: center; margin: 48px 0;">
    <a href="best-practices.html" style="display: inline-flex; align-items: center; gap: 8px; padding: 14px 28px; background: var(--primary-color); color: white; text-decoration: none; border-radius: 12px; font-weight: 600; transition: all 0.3s ease; margin-right: 16px;">
      <svg width="16" height="16" viewBox="0 0 24 24" fill="currentColor">
        <path d="M20,11V13H8L13.5,18.5L12.08,19.92L4.16,12L12.08,4.08L13.5,5.5L8,11H20Z"/>
      </svg>
      Best Practices
    </a>
    <a href="servers/" style="display: inline-flex; align-items: center; gap: 8px; padding: 14px 28px; background: white; color: var(--primary-color); border: 2px solid var(--border-color); text-decoration: none; border-radius: 12px; font-weight: 600; transition: all 0.3s ease;">
      View All Servers
      <svg width="16" height="16" viewBox="0 0 24 24" fill="currentColor">
        <path d="M4,11V13H16L10.5,18.5L11.92,19.92L19.84,12L11.92,4.08L10.5,5.5L16,11H4Z"/>
      </svg>
    </a>
  </div>

</div>

<script>
function copyToClipboard(text) {
  navigator.clipboard.writeText(text).then(function() {
    console.log('Copied to clipboard:', text);
  }, function(err) {
    console.error('Could not copy text: ', err);
  });
}
</script>
