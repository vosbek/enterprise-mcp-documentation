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
            <h2>Step-by-Step Setup</h2>
            <p>Follow these steps to connect to your Figma team</p>
        </div>
        
        <div class="card">
            <h3>Step 1: Install the Figma MCP Server</h3>
            <p>Install the Figma MCP server on your development machine:</p>
            
```bash
# Install the Figma MCP server
npm install -g @mcp/figma-server

# Verify installation
mcp --version
```
        </div>
        
        <div class="card">
            <h3>Step 2: Create a Figma Personal Access Token</h3>
            <p>You need a personal access token to connect to Figma:</p>
            
            <ol style="margin-left: 1.5rem; color: var(--gray-600);">
                <li>Go to <a href="https://www.figma.com" target="_blank">Figma.com</a> and sign in</li>
                <li>Click your profile picture in the top-right corner</li>
                <li>Go to "Settings"</li>
                <li>Scroll down to "Personal access tokens" section</li>
                <li>Click "Create new token"</li>
                <li>Give it a descriptive name like "MCP Integration"</li>
                <li>Copy the token (starts with figd_...)</li>
            </ol>
            
            <p><strong>Important:</strong> Store this token securely - it won't be shown again!</p>
        </div>
        
        <div class="card">
            <h3>Step 3: Get Your Team and Project Information</h3>
            <p>Ask your design team lead or check Figma for:</p>
            
            <ul style="margin-left: 1.5rem; color: var(--gray-600);">
                <li><strong>Team ID</strong> (found in your Figma team URL)</li>
                <li><strong>Project names</strong> you need access to (e.g., "Design System", "Mobile App")</li>
                <li><strong>File IDs</strong> for specific files (optional, for focused access)</li>
            </ul>
            
            <p><em>Tip: You can find the Team ID in your browser URL when viewing your team page: https://www.figma.com/files/team/TEAM_ID/YourTeamName</em></p>
        </div>
        
        <div class="card">
            <h3>Step 4: Configure Your Figma Connection</h3>
            <p>Set up the connection using your token and team information:</p>
            
```bash
# Set your credentials (replace with actual values)
export FIGMA_ACCESS_TOKEN="figd_your_token_here"
export FIGMA_TEAM_ID="your-team-id-here"
export FIGMA_PROJECTS="Design System,Mobile App,Web Platform"

# Configure the MCP server
mcp config figma \
  --token $FIGMA_ACCESS_TOKEN \
  --team-id $FIGMA_TEAM_ID \
  --projects $FIGMA_PROJECTS \
  --readonly
```
        </div>
        
        <div class="card">
            <h3>Step 5: Test Your Connection</h3>
            <p>Verify everything is working:</p>
            
```bash
# Test the connection
mcp test figma

# Verify team access
mcp auth verify figma

# If successful, you should see:
# ✅ Figma connection successful
# ✅ Team access verified
# ✅ Project permissions confirmed
```
        </div>
    </div>
</div>

<div class="section">
    <div class="container">
        <div class="section-title">
            <h2>Usage Examples</h2>
            <p>Access Figma designs through Copilot and MCP integration</p>
        </div>
        
        <div class="card">
            <h3>Method 1: Ask GitHub Copilot (Recommended)</h3>
            <p>In your IDE with GitHub Copilot, you can ask natural language questions:</p>
            
            <p><strong>Example questions you can ask Copilot:</strong></p>
            <ul style="margin-left: 1.5rem; color: var(--gray-600);">
                <li>"Find button components in our design system"</li>
                <li>"Show me the latest designs for the mobile app login screen"</li>
                <li>"What are the brand colors defined in our design system?"</li>
                <li>"Find all navigation patterns across our projects"</li>
                <li>"Show me the typography styles used in the web platform"</li>
                <li>"What design files were updated this week?"</li>
            </ul>
            
            <p>Copilot will automatically search your Figma projects and provide design information!</p>
        </div>
        
        <div class="card">
            <h3>Method 2: Direct MCP Commands</h3>
            <p>You can also query Figma directly from your terminal:</p>
            
            <h4>Find design components:</h4>
```bash
mcp query figma "find button components in design system"
```

            <h4>List project files:</h4>
```bash
mcp query figma "list all files in Mobile App project"
```

            <h4>Search for design patterns:</h4>
```bash
mcp query figma "search for navigation patterns across projects"
```

            <h4>Get design specifications:</h4>
```bash
mcp query figma "show design specs for login screen component"
```
        </div>
    </div>
</div>