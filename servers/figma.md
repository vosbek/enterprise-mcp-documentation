---
title: Figma MCP Server
description: Design collaboration platform integration for enterprise teams
---

<div class="hero">
    <div class="container">
        <div class="hero-badge">🎨 Figma MCP Server</div>
        <h1>Design Collaboration Integration</h1>
        <p>Enterprise Figma integration for design system management, asset discovery, and design-development collaboration workflows.</p>
    </div>
</div>

<div class="section">
    <div class="container">
        <div class="section-title">
            <h2>Figma Enterprise Features</h2>
            <p>Comprehensive design collaboration and asset management</p>
        </div>
        
        <div class="card-grid">
            <div class="card">
                <h3>🎨 Design Assets</h3>
                <ul style="margin-left: 1.5rem; color: var(--gray-600);">
                    <li>Browse design files and prototypes</li>
                    <li>Access design system components</li>
                    <li>Export assets and specifications</li>
                    <li>Version history and change tracking</li>
                </ul>
            </div>
            
            <div class="card">
                <h3>👥 Team Collaboration</h3>
                <ul style="margin-left: 1.5rem; color: var(--gray-600);">
                    <li>Project and team organization</li>
                    <li>Comment and feedback tracking</li>
                    <li>Design review workflows</li>
                    <li>Sharing and permission management</li>
                </ul>
            </div>
            
            <div class="card">
                <h3>🔧 Developer Handoff</h3>
                <ul style="margin-left: 1.5rem; color: var(--gray-600);">
                    <li>Design specifications and measurements</li>
                    <li>CSS and code generation</li>
                    <li>Design token integration</li>
                    <li>Asset optimization and export</li>
                </ul>
            </div>
        </div>
    </div>
</div>

<div class="section section-alt">
    <div class="container">
        <div class="section-title">
            <h2>Configuration</h2>
            <p>Set up Figma integration with team access controls</p>
        </div>
        
        <div class="card">
            <h3>Installation & Setup</h3>
            <div class="code-block"># Install Figma MCP server
mcp install figma

# Configure Figma connection
mcp config figma \
  --token $FIGMA_ACCESS_TOKEN \
  --team-id $FIGMA_TEAM_ID \
  --projects "Design System,Mobile App,Web Platform"

# Test connection
mcp test figma --connection</div>
        </div>
        
        <div class="card">
            <h3>Usage Examples</h3>
            <div class="code-block"># Find design components
mcp query figma "find button components in design system"

# Get project files
mcp query figma "list all files in Mobile App project"

# Search for design patterns
mcp query figma "search for navigation patterns across projects"</div>
        </div>
    </div>
</div>