---
title: Jira MCP Server
description: Enterprise project management and issue tracking integration
---

<div class="hero">
    <div class="container">
        <div class="hero-badge">📋 Jira MCP Server</div>
        <h1>Project Management Integration</h1>
        <p>Comprehensive Jira integration for issue tracking, project management, and agile development workflows in enterprise environments.</p>
    </div>
</div>

<div class="section">
    <div class="container">
        <div class="section-title">
            <h2>Jira Integration Features</h2>
            <p>Complete project management and issue tracking capabilities</p>
        </div>
        
        <div class="card-grid">
            <div class="card">
                <h3>🎯 Issue Management</h3>
                <ul style="margin-left: 1.5rem; color: var(--gray-600);">
                    <li>Search and filter issues across projects</li>
                    <li>Access issue details, comments, and history</li>
                    <li>Track issue status and workflow transitions</li>
                    <li>View assignments and priority levels</li>
                </ul>
            </div>
            
            <div class="card">
                <h3>📊 Project Analytics</h3>
                <ul style="margin-left: 1.5rem; color: var(--gray-600);">
                    <li>Sprint planning and progress tracking</li>
                    <li>Burndown charts and velocity metrics</li>
                    <li>Team workload and capacity analysis</li>
                    <li>Release planning and timeline tracking</li>
                </ul>
            </div>
            
            <div class="card">
                <h3>🔄 Workflow Integration</h3>
                <ul style="margin-left: 1.5rem; color: var(--gray-600);">
                    <li>Custom field and workflow support</li>
                    <li>Board and epic management</li>
                    <li>Component and version tracking</li>
                    <li>Integration with development tools</li>
                </ul>
            </div>
        </div>
    </div>
</div>

<div class="section section-alt">
    <div class="container">
        <div class="section-title">
            <h2>Step-by-Step Setup</h2>
            <p>Follow these steps to connect to your Jira instance</p>
        </div>
        
        <div class="card">
            <h3>Step 1: Install the Jira MCP Server</h3>
            <p>Install the Jira MCP server on your development machine:</p>
            
            <div class="code-block">
                <pre><code class="language-bash"># Install the Jira MCP server
npm install -g @mcp/jira-server

# Verify installation
mcp --version</code></pre>
            </div>
        </div>
        
        <div class="card">
            <h3>Step 2: Create a Jira API Token</h3>
            <p>You need an API token to access your Jira instance:</p>
            
            <ol style="margin-left: 1.5rem; color: var(--gray-600);">
                <li>Go to your Jira instance (e.g., https://company.atlassian.net)</li>
                <li>Click your profile picture in the top-right corner</li>
                <li>Go to "Account settings" or "Manage account"</li>
                <li>Click "Security" in the left sidebar</li>
                <li>Click "Create and manage API tokens"</li>
                <li>Click "Create API token"</li>
                <li>Give it a name like "MCP Jira Integration"</li>
                <li>Copy the token (it starts with something like ATATT...)</li>
            </ol>
            
            <p><strong>Note:</strong> Save this token securely - you won't be able to see it again!</p>
        </div>
        
        <div class="card">
            <h3>Step 3: Get Your Project Information</h3>
            <p>Ask your project manager or team lead for:</p>
            
            <ul style="margin-left: 1.5rem; color: var(--gray-600);">
                <li><strong>Jira URL</strong> (e.g., https://company.atlassian.net)</li>
                <li><strong>Project Keys</strong> you need access to (e.g., PROJ, DEV, TEST)</li>
                <li><strong>Your Jira username/email</strong> (usually your company email)</li>
            </ul>
        </div>
        
        <div class="card">
            <h3>Step 4: Configure Your Jira Connection</h3>
            <p>Set up the connection using your credentials:</p>
            
            <div class="code-block">
                <pre><code class="language-bash"># Set your credentials (replace with actual values)
export JIRA_URL="https://company.atlassian.net"
export JIRA_USERNAME="your-email@company.com"
export JIRA_API_TOKEN="your-api-token-here"
export JIRA_PROJECTS="PROJ,DEV,TEST"

# Configure the MCP server
mcp config jira \
  --url $JIRA_URL \
  --username $JIRA_USERNAME \
  --api-token $JIRA_API_TOKEN \
  --project-keys $JIRA_PROJECTS \
  --readonly</code></pre>
            </div>
        </div>
        
        <div class="card">
            <h3>Step 5: Test Your Connection</h3>
            <p>Verify everything is working:</p>
            
            <div class="code-block">
                <pre><code class="language-bash"># Test the connection
mcp test jira

# Verify authentication
mcp auth verify jira

# If successful, you should see:
# ✅ Jira connection successful
# ✅ Project access verified
# ✅ API permissions confirmed</code></pre>
            </div>
        </div>
    </div>
</div>

<div class="section">
    <div class="container">
        <div class="section-title">
            <h2>Usage Examples</h2>
            <p>Access Jira data through Copilot and MCP integration</p>
        </div>
        
        <div class="card">
            <h3>Method 1: Ask GitHub Copilot (Recommended)</h3>
            <p>In your IDE with GitHub Copilot, you can ask natural language questions:</p>
            
            <p><strong>Example questions you can ask Copilot:</strong></p>
            <ul style="margin-left: 1.5rem; color: var(--gray-600);">
                <li>"Show me all open bugs assigned to my team"</li>
                <li>"What's the progress of our current sprint?"</li>
                <li>"Find all high-priority issues in the PROJ project"</li>
                <li>"What issues were completed last week?"</li>
                <li>"Show me all tickets I'm assigned to"</li>
                <li>"What are the most common types of bugs we're seeing?"</li>
            </ul>
            
            <p>Copilot will automatically query your Jira instance and provide answers!</p>
        </div>
        
        <div class="card">
            <h3>Method 2: Direct MCP Commands</h3>
            <p>You can also query Jira directly from your terminal:</p>
            
            <h4>Query open issues:</h4>
            <div class="code-block">
                <pre><code class="language-bash">mcp query jira "show all open bugs assigned to my team"</code></pre>
            </div>

            <h4>Find project status:</h4>
            <div class="code-block">
                <pre><code class="language-bash">mcp query jira "get sprint progress for project PROJ"</code></pre>
            </div>

            <h4>Search using JQL (Jira Query Language):</h4>
            <div class="code-block">
                <pre><code class="language-bash">mcp query jira "project = PROJ AND status = 'In Progress'"</code></pre>
            </div>

            <h4>Get issue details:</h4>
            <div class="code-block">
                <pre><code class="language-bash">mcp query jira "show details for issue PROJ-123"</code></pre>
            </div>
        </div>
    </div>
</div>