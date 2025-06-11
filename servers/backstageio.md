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
            <h2>Step-by-Step Setup</h2>
            <p>Follow these steps to connect to your Backstage.io instance</p>
        </div>
        
        <div class="card">
            <h3>Step 1: Install the Backstage MCP Server</h3>
            <p>Install the Backstage MCP server on your development machine:</p>
            
            <div class="code-block">
                <pre><code class="language-bash"># Install the Backstage MCP server
npm install -g @mcp/backstage-server

# Verify installation
mcp --version</code></pre>
            </div>
        </div>
        
        <div class="card">
            <h3>Step 2: Get Backstage Access Token (Ask Your Platform Team)</h3>
            <p>Contact your platform engineering team for Backstage access. You'll need:</p>
            
            <ul style="margin-left: 1.5rem; color: var(--gray-600);">
                <li><strong>Backstage Instance URL</strong> (e.g., https://backstage.company.com)</li>
                <li><strong>API Token</strong> (for authentication with the Backstage API)</li>
                <li><strong>Namespace/Organization</strong> (your company's namespace in Backstage)</li>
                <li><strong>Entity filters</strong> (optional, to limit access to specific services/components)</li>
            </ul>
            
            <p><strong>Tell your platform team you need:</strong></p>
            <ul style="margin-left: 1.5rem; color: var(--gray-600);">
                <li>Read access to the service catalog</li>
                <li>Access to API documentation and specifications</li>
                <li>Permission to view service dependencies and relationships</li>
                <li>Access to software templates (if needed)</li>
            </ul>
        </div>
        
        <div class="card">
            <h3>Step 3: Configure Backstage Connection</h3>
            <p>Set up the connection using your credentials:</p>
            
            <div class="code-block">
                <pre><code class="language-bash"># Set your credentials (replace with actual values from platform team)
export BACKSTAGE_URL="https://backstage.company.com"
export BACKSTAGE_TOKEN="your-backstage-token-here"
export BACKSTAGE_NAMESPACE="company"

# Configure the MCP server
mcp config backstage \
  --url $BACKSTAGE_URL \
  --token $BACKSTAGE_TOKEN \
  --namespace $BACKSTAGE_NAMESPACE \
  --readonly</code></pre>
            </div>
        </div>
        
        <div class="card">
            <h3>Step 4: Test Your Connection</h3>
            <p>Verify everything is working:</p>
            
            <div class="code-block">
                <pre><code class="language-bash"># Test the connection
mcp test backstage

# Verify catalog access
mcp auth verify backstage

# If successful, you should see:
# ✅ Backstage connection successful
# ✅ Service catalog access verified
# ✅ API permissions confirmed</code></pre>
            </div>
        </div>
        
        <div class="card">
            <h3>Step 5: Configure Service Filters (Optional)</h3>
            <p>If you want to focus on specific services or components:</p>
            
            <div class="code-block">
                <pre><code class="language-bash"># Filter by specific service types
mcp config backstage filters add \
  --kind "Component" \
  --type "service,website,library"

# Filter by ownership
mcp config backstage filters add \
  --owner "team-backend,team-frontend"

# Filter by lifecycle stage
mcp config backstage filters add \
  --lifecycle "production,experimental"</code></pre>
            </div>
        </div>
    </div>
</div>

<div class="section">
    <div class="container">
        <div class="section-title">
            <h2>Usage Examples</h2>
            <p>Access Backstage service catalog through Copilot and MCP integration</p>
        </div>
        
        <div class="card">
            <h3>Method 1: Ask GitHub Copilot (Recommended)</h3>
            <p>In your IDE with GitHub Copilot, you can ask natural language questions:</p>
            
            <p><strong>Example questions you can ask Copilot:</strong></p>
            <ul style="margin-left: 1.5rem; color: var(--gray-600);">
                <li>"List all microservices in production from our service catalog"</li>
                <li>"Find API documentation for the authentication service"</li>
                <li>"Show me the dependencies for the payment service"</li>
                <li>"What services are owned by the backend team?"</li>
                <li>"Find all services that depend on the user database"</li>
                <li>"Show me the latest software templates available"</li>
            </ul>
            
            <p>Copilot will automatically query your Backstage catalog and provide service information!</p>
        </div>
        
        <div class="card">
            <h3>Method 2: Direct MCP Commands</h3>
            <p>You can also query Backstage directly from your terminal:</p>
            
            <h4>Query service catalog:</h4>
            <div class="code-block">
                <pre><code class="language-bash">mcp query backstage "list all microservices in production"</code></pre>
            </div>

            <h4>Find service documentation:</h4>
            <div class="code-block">
                <pre><code class="language-bash">mcp query backstage "find API documentation for authentication service"</code></pre>
            </div>

            <h4>Get service dependencies:</h4>
            <div class="code-block">
                <pre><code class="language-bash">mcp query backstage "show dependencies for payment-service"</code></pre>
            </div>

            <h4>Search by owner:</h4>
            <div class="code-block">
                <pre><code class="language-bash">mcp query backstage "list all services owned by team-backend"</code></pre>
            </div>
        </div>
    </div>
</div>