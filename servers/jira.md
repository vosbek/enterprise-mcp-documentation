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
            <h2>Configuration</h2>
            <p>Set up Jira integration with enterprise authentication</p>
        </div>
        
        <div class="card">
            <h3>Installation & Setup</h3>
            <div class="code-block"># Install Jira MCP server
mcp install jira

# Configure Jira connection
mcp config jira \
  --url https://company.atlassian.net \
  --username $JIRA_USERNAME \
  --api-token $JIRA_API_TOKEN \
  --project-keys "PROJ,DEV,TEST"

# Test connection
mcp test jira --connection</div>
        </div>
        
        <div class="card">
            <h3>Usage Examples</h3>
            <div class="code-block"># Query open issues
mcp query jira "show all open bugs assigned to my team"

# Find project status
mcp query jira "get sprint progress for project PROJ"

# Search by JQL
mcp query jira "project = PROJ AND status = 'In Progress'"</div>
        </div>
    </div>
</div>