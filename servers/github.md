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
            <h2>Step-by-Step Setup</h2>
            <p>Follow these steps to connect to your GitHub Enterprise</p>
        </div>
        
        <div class="card">
            <h3>Step 1: Install the GitHub MCP Server</h3>
            <p>Install the GitHub MCP server on your development machine:</p>
            
            <div class="code-block">
                <pre><code class="language-bash"># Install the GitHub MCP server
npm install -g @mcp/github-server

# Verify installation
mcp --version</code></pre>
            </div>
        </div>
        
        <div class="card">
            <h3>Step 2: Create a GitHub Personal Access Token</h3>
            <p>You need a token to access your company's GitHub:</p>
            
            <ol style="margin-left: 1.5rem; color: var(--gray-600);">
                <li>Go to your GitHub Enterprise (e.g., https://github.company.com)</li>
                <li>Click your profile picture → Settings</li>
                <li>In the left sidebar, click "Developer settings"</li>
                <li>Click "Personal access tokens" → "Tokens (classic)"</li>
                <li>Click "Generate new token (classic)"</li>
                <li>Select these scopes:
                    <ul>
                        <li>✅ <code>repo</code> (for repository access)</li>
                        <li>✅ <code>read:org</code> (for organization data)</li>
                        <li>✅ <code>read:user</code> (for user information)</li>
                        <li>✅ <code>read:project</code> (for project boards)</li>
                    </ul>
                </li>
                <li>Click "Generate token" and copy the token (starts with ghp_)</li>
            </ol>
        </div>
        
        <div class="card">
            <h3>Step 3: Configure Your GitHub Connection</h3>
            <p>Set up the connection using your token:</p>
            
            <div class="code-block">
                <pre><code class="language-bash"># Replace these with your actual values
export GITHUB_TOKEN="ghp_your_actual_token_here"
export GITHUB_URL="https://github.company.com"
export GITHUB_ORG="your-company-org"

# Configure the MCP server
mcp config github \
  --token $GITHUB_TOKEN \
  --url $GITHUB_URL \
  --organization $GITHUB_ORG \
  --readonly</code></pre>
            </div>
        </div>
        
        <div class="card">
            <h3>Step 4: Test Your Connection</h3>
            <p>Verify everything is working:</p>
            
            <div class="code-block">
                <pre><code class="language-bash"># Test the connection
mcp test github

# Verify authentication
mcp auth verify github

# If successful, you should see:
# ✅ GitHub connection successful
# ✅ Organization access verified</code></pre>
            </div>
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
            <h3>Method 1: Ask GitHub Copilot (Recommended)</h3>
            <p>In your IDE with GitHub Copilot, you can ask natural language questions:</p>
            
            <p><strong>Example questions you can ask Copilot:</strong></p>
            <ul style="margin-left: 1.5rem; color: var(--gray-600);">
                <li>"What are the most recent pull requests in the main repository?"</li>
                <li>"Show me open issues assigned to my team"</li>
                <li>"What repositories have been most active this month?"</li>
                <li>"Find code examples of authentication implementation"</li>
                <li>"List all repositories using Node.js in our organization"</li>
                <li>"What are the security vulnerabilities in our codebase?"</li>
            </ul>
            
            <p>Copilot will automatically search your GitHub repositories and provide answers!</p>
        </div>
        
        <div class="card">
            <h3>Method 2: Direct MCP Commands</h3>
            <p>You can also query GitHub directly from your terminal:</p>
            
            <h4>List repositories:</h4>
            <div class="code-block">
                <pre><code class="language-bash">mcp query github "repositories in organization company-org"</code></pre>
            </div>

            <h4>Find specific issues:</h4>
            <div class="code-block">
                <pre><code class="language-bash">mcp query github "open issues labeled 'bug' in repository 'main-app'"</code></pre>
            </div>

            <h4>Search for code patterns:</h4>
            <div class="code-block">
                <pre><code class="language-bash">mcp query github "search code 'function authenticate' in organization"</code></pre>
            </div>

            <h4>Get pull request details:</h4>
            <div class="code-block">
                <pre><code class="language-bash">mcp query github "pull requests merged last week in repository 'api-service'"</code></pre>
            </div>
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