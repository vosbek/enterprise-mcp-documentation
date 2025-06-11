---
title: GitHub MCP Server
description: Enterprise GitHub integration for repository browsing and issue tracking
---

<div class="hero">
    <div class="container">
        <div class="hero-badge">📱 GitHub MCP Server</div>
        <h1>Enterprise GitHub Integration</h1>
        <p>Seamless integration with GitHub Enterprise for repository browsing, issue tracking, and code analysis with AI-powered insights.</p>
    </div>
</div>

<div class="section">
    <div class="container">
        <div class="section-title">
            <h2>GitHub Enterprise Features</h2>
            <p>Comprehensive GitHub integration for enterprise development teams</p>
        </div>
        
        <div class="card-grid">
            <div class="card">
                <h3>📂 Repository Management</h3>
                <ul style="margin-left: 1.5rem; color: var(--gray-600);">
                    <li>Browse repositories and file structures</li>
                    <li>Search across codebases and commits</li>
                    <li>Access repository metadata and statistics</li>
                    <li>View branch and tag information</li>
                </ul>
            </div>
            
            <div class="card">
                <h3>🐛 Issue Tracking</h3>
                <ul style="margin-left: 1.5rem; color: var(--gray-600);">
                    <li>Query issues and pull requests</li>
                    <li>Access issue comments and discussions</li>
                    <li>Track issue status and assignments</li>
                    <li>View project boards and milestones</li>
                </ul>
            </div>
            
            <div class="card">
                <h3>👥 Team Collaboration</h3>
                <ul style="margin-left: 1.5rem; color: var(--gray-600);">
                    <li>View team members and permissions</li>
                    <li>Access organization information</li>
                    <li>Review code review comments</li>
                    <li>Track contributor statistics</li>
                </ul>
            </div>
            
            <div class="card">
                <h3>📊 Analytics & Insights</h3>
                <ul style="margin-left: 1.5rem; color: var(--gray-600);">
                    <li>Repository activity and trends</li>
                    <li>Code quality metrics</li>
                    <li>Deployment and release tracking</li>
                    <li>Security vulnerability reports</li>
                </ul>
            </div>
        </div>
    </div>
</div>

<div class="section section-alt">
    <div class="container">
        <div class="section-title">
            <h2>Configuration</h2>
            <p>Set up GitHub Enterprise integration with proper authentication</p>
        </div>
        
        <div class="card">
            <h3>Installation & Setup</h3>
            <div class="code-block"># Install GitHub MCP server
mcp install github

# Configure GitHub Enterprise connection
mcp config github \
  --url https://github.company.com \
  --token $GITHUB_TOKEN \
  --organization company-org \
  --readonly

# Test connection
mcp test github --connection
mcp auth verify github</div>
        </div>
        
        <div class="card">
            <h3>Authentication Setup</h3>
            <div class="code-block"># Create GitHub Personal Access Token
# 1. Go to GitHub Settings > Developer settings > Personal access tokens
# 2. Generate new token with required scopes:
#    - repo (for repository access)
#    - read:org (for organization data)
#    - read:user (for user information)
#    - read:project (for project boards)

# Set environment variables
export GITHUB_TOKEN="ghp_xxxxxxxxxxxxxxxxxxxx"
export GITHUB_ENTERPRISE_URL="https://github.company.com"
export GITHUB_ORG="company-org"

# Configure MCP server
mcp config github \
  --token $GITHUB_TOKEN \
  --base-url $GITHUB_ENTERPRISE_URL \
  --org $GITHUB_ORG</div>
        </div>
    </div>
</div>

<div class="section">
    <div class="container">
        <div class="section-title">
            <h2>Usage Examples</h2>
            <p>Leverage GitHub data through Copilot and MCP integration</p>
        </div>
        
        <div class="card">
            <h3>GitHub Copilot Integration</h3>
            <p>Ask GitHub Copilot questions about your repositories and development workflow:</p>
            <div class="code-block"># Example questions for Copilot:
"What are the most recent pull requests in the main repository?"
"Show me open issues assigned to my team"
"What repositories have been most active this month?"
"Find code examples of authentication implementation"
"List all repositories using Node.js in our organization"
"What are the security vulnerabilities in our codebase?"</div>
        </div>
        
        <div class="card">
            <h3>Direct MCP Queries</h3>
            <div class="code-block"># Query repository information
mcp query github "repositories in organization company-org"

# Find specific issues
mcp query github "open issues labeled 'bug' in repository 'main-app'"

# Search for code patterns
mcp query github "search code 'function authenticate' in organization"

# Get pull request details
mcp query github "pull requests merged last week in repository 'api-service'"</div>
        </div>
        
        <div class="card">
            <h3>Advanced Queries</h3>
            <div class="code-block"># Repository analytics
mcp query github "
  repository statistics for 'main-app' including:
  - commit frequency by author
  - pull request merge time
  - issue resolution time
  - code review participation
"

# Security and compliance
mcp query github "
  security scan results for repositories with:
  - dependency vulnerabilities
  - secret scanning alerts  
  - code scanning findings
  - branch protection status
"</div>
        </div>
    </div>
</div>

<div class="section section-alt">
    <div class="container">
        <div class="section-title">
            <h2>Enterprise Integration Patterns</h2>
            <p>Best practices for GitHub Enterprise MCP integration</p>
        </div>
        
        <div class="card-grid">
            <div class="card">
                <h3>🔐 Security Configuration</h3>
                <ul style="margin-left: 1.5rem; color: var(--gray-600);">
                    <li>Use service accounts with minimal permissions</li>
                    <li>Implement token rotation policies</li>
                    <li>Enable audit logging for all API calls</li>
                    <li>Configure IP allowlisting for API access</li>
                </ul>
            </div>
            
            <div class="card">
                <h3>⚡ Performance Optimization</h3>
                <ul style="margin-left: 1.5rem; color: var(--gray-600);">
                    <li>Implement intelligent caching strategies</li>
                    <li>Use GraphQL API for efficient queries</li>
                    <li>Configure rate limit handling</li>
                    <li>Optimize for large organization data</li>
                </ul>
            </div>
            
            <div class="card">
                <h3>📊 Monitoring & Alerts</h3>
                <ul style="margin-left: 1.5rem; color: var(--gray-600);">
                    <li>Track API rate limit usage</li>
                    <li>Monitor authentication failures</li>
                    <li>Alert on repository access patterns</li>
                    <li>Generate compliance reports</li>
                </ul>
            </div>
        </div>
    </div>
</div>

<div class="section">
    <div class="container">
        <div class="section-title">
            <h2>Troubleshooting</h2>
            <p>Common issues and solutions for GitHub MCP integration</p>
        </div>
        
        <div class="card-grid">
            <div class="card">
                <h3>🔑 Authentication Issues</h3>
                <p><strong>Problem:</strong> 401 Unauthorized errors</p>
                <div class="code-block"># Verify token validity
curl -H "Authorization: token $GITHUB_TOKEN" \
  https://github.company.com/api/v3/user

# Check token scopes
mcp auth scope github --token $GITHUB_TOKEN</div>
            </div>
            
            <div class="card">
                <h3>🚦 Rate Limiting</h3>
                <p><strong>Problem:</strong> API rate limits exceeded</p>
                <div class="code-block"># Check current rate limits
mcp status github --rate-limits

# Configure rate limit handling
mcp config github --rate-limit-strategy exponential-backoff</div>
            </div>
        </div>
    </div>
</div>