---
title: Backstage.io MCP Server
description: Service catalog integration for enterprise development platforms
---

<div class="hero">
    <div class="container">
        <div class="hero-badge">🏗️ Backstage.io MCP Server</div>
        <h1>Service Catalog Integration</h1>
        <p>Connect to Backstage.io service catalog for comprehensive service discovery, documentation, and platform engineering insights.</p>
    </div>
</div>

<div class="section">
    <div class="container">
        <div class="section-title">
            <h2>Backstage.io Capabilities</h2>
            <p>Enterprise platform engineering and service catalog features</p>
        </div>
        
        <div class="card-grid">
            <div class="card">
                <h3>🏗️ Service Catalog</h3>
                <ul style="margin-left: 1.5rem; color: var(--gray-600);">
                    <li>Browse and search service registry</li>
                    <li>Access service documentation and APIs</li>
                    <li>View service dependencies and relationships</li>
                    <li>Track service ownership and contacts</li>
                </ul>
            </div>
            
            <div class="card">
                <h3>📊 Platform Insights</h3>
                <ul style="margin-left: 1.5rem; color: var(--gray-600);">
                    <li>Service health and monitoring data</li>
                    <li>Deployment and release information</li>
                    <li>Infrastructure and resource utilization</li>
                    <li>Platform adoption metrics</li>
                </ul>
            </div>
            
            <div class="card">
                <h3>🔧 Developer Tools</h3>
                <ul style="margin-left: 1.5rem; color: var(--gray-600);">
                    <li>Software templates and scaffolding</li>
                    <li>CI/CD pipeline information</li>
                    <li>Tech stack and tool recommendations</li>
                    <li>Development environment setup</li>
                </ul>
            </div>
        </div>
    </div>
</div>

<div class="section section-alt">
    <div class="container">
        <div class="section-title">
            <h2>Configuration</h2>
            <p>Set up Backstage.io integration with enterprise authentication</p>
        </div>
        
        <div class="card">
            <h3>Installation & Setup</h3>
            <div class="code-block"># Install Backstage MCP server
mcp install backstage

# Configure Backstage connection
mcp config backstage \
  --url https://backstage.company.com \
  --token $BACKSTAGE_TOKEN \
  --namespace company

# Test connection
mcp test backstage --connection</div>
        </div>
        
        <div class="card">
            <h3>Usage Examples</h3>
            <div class="code-block"># Query service catalog
mcp query backstage "list all microservices in production"

# Find service documentation
mcp query backstage "find API documentation for authentication service"

# Get service dependencies
mcp query backstage "show dependencies for payment-service"</div>
        </div>
    </div>
</div>