---
title: Internal API MCP Server
description: Custom server for enterprise API ecosystem integration
---

<div class="hero">
    <div class="container">
        <div class="hero-badge">🔗 Internal API MCP Server</div>
        <h1>Enterprise API Integration</h1>
        <p>Custom MCP server for connecting to internal APIs, microservices, and enterprise application ecosystems.</p>
    </div>
</div>

<div class="section">
    <div class="container">
        <div class="section-title">
            <h2>API Integration Features</h2>
            <p>Comprehensive enterprise API connectivity and management</p>
        </div>
        
        <div class="card-grid">
            <div class="card">
                <h3>🔌 API Connectivity</h3>
                <ul style="margin-left: 1.5rem; color: var(--gray-600);">
                    <li>REST and GraphQL API integration</li>
                    <li>Authentication handling (OAuth, API keys)</li>
                    <li>Rate limiting and retry mechanisms</li>
                    <li>Response caching and optimization</li>
                </ul>
            </div>
            
            <div class="card">
                <h3>📋 API Discovery</h3>
                <ul style="margin-left: 1.5rem; color: var(--gray-600);">
                    <li>OpenAPI/Swagger specification parsing</li>
                    <li>Endpoint documentation and examples</li>
                    <li>API versioning and compatibility</li>
                    <li>Service mesh integration</li>
                </ul>
            </div>
            
            <div class="card">
                <h3>🛡️ Security & Governance</h3>
                <ul style="margin-left: 1.5rem; color: var(--gray-600);">
                    <li>Enterprise authentication integration</li>
                    <li>API gateway compatibility</li>
                    <li>Request/response logging</li>
                    <li>Compliance and audit trails</li>
                </ul>
            </div>
        </div>
    </div>
</div>

<div class="section section-alt">
    <div class="container">
        <div class="section-title">
            <h2>Step-by-Step Setup</h2>
            <p>Follow these steps to connect to your internal APIs</p>
        </div>
        
        <div class="card">
            <h3>Step 1: Install the Internal API MCP Server</h3>
            <p>Install the Internal API MCP server on your development machine:</p>
            
            <div class="code-block">
                <pre><code class="language-bash"># Install the Internal API MCP server
npm install -g @mcp/internal-api-server

# Verify installation
mcp --version</code></pre>
            </div>
        </div>
        
        <div class="card">
            <h3>Step 2: Get API Access Credentials (Ask Your DevOps Team)</h3>
            <p>Contact your DevOps team or check your company's API portal for:</p>
            
            <ul style="margin-left: 1.5rem; color: var(--gray-600);">
                <li><strong>API Base URLs</strong> (e.g., https://api.company.com)</li>
                <li><strong>OAuth2 Client ID and Secret</strong> (for authenticated APIs)</li>
                <li><strong>API Keys</strong> (for services using API key authentication)</li>
                <li><strong>Service Discovery Endpoint</strong> (if using service mesh)</li>
                <li><strong>API Documentation URLs</strong> (OpenAPI/Swagger specs)</li>
            </ul>
        </div>
        
        <div class="card">
            <h3>Step 3: Configure Your API Connections</h3>
            <p>Set up connections to your internal APIs:</p>
            
            <h4>For OAuth2-protected APIs:</h4>
            <div class="code-block">
                <pre><code class="language-bash"># Configure OAuth2 API endpoint
mcp config internal-api add \
  --name "user-service" \
  --url https://api.company.com/users \
  --auth-type oauth2 \
  --client-id "your-client-id" \
  --client-secret "your-client-secret" \
  --scope "read:users"</code></pre>
            </div>

            <h4>For API Key-protected services:</h4>
            <div class="code-block">
                <pre><code class="language-bash"># Configure API key endpoint
mcp config internal-api add \
  --name "payment-service" \
  --url https://api.company.com/payments \
  --auth-type apikey \
  --api-key "your-api-key-here" \
  --header-name "X-API-Key"</code></pre>
            </div>

            <h4>For public internal APIs:</h4>
            <div class="code-block">
                <pre><code class="language-bash"># Configure public endpoint
mcp config internal-api add \
  --name "health-check" \
  --url https://api.company.com/health \
  --auth-type none</code></pre>
            </div>
        </div>
        
        <div class="card">
            <h3>Step 4: Test Your API Connections</h3>
            <p>Verify that your API connections are working:</p>
            
            <div class="code-block">
                <pre><code class="language-bash"># Test all configured APIs
mcp test internal-api

# Test specific API endpoint
mcp test internal-api --endpoint user-service

# If successful, you should see:
# ✅ user-service: Connected successfully
# ✅ payment-service: Connected successfully
# ✅ health-check: Connected successfully</code></pre>
            </div>
        </div>
        
        <div class="card">
            <h3>Step 5: Import API Documentation (Optional)</h3>
            <p>If your APIs have OpenAPI/Swagger documentation, import them for better integration:</p>
            
            <div class="code-block">
                <pre><code class="language-bash"># Import OpenAPI specification
mcp config internal-api import-openapi \
  --name "user-service" \
  --spec-url https://api.company.com/users/swagger.json

# Import from local file
mcp config internal-api import-openapi \
  --name "payment-service" \
  --spec-file ./api-specs/payment-api.yml</code></pre>
            </div>
        </div>
    </div>
</div>

<div class="section">
    <div class="container">
        <div class="section-title">
            <h2>Usage Examples</h2>
            <p>Access your internal APIs through Copilot and MCP integration</p>
        </div>
        
        <div class="card">
            <h3>Method 1: Ask GitHub Copilot (Recommended)</h3>
            <p>In your IDE with GitHub Copilot, you can ask natural language questions:</p>
            
            <p><strong>Example questions you can ask Copilot:</strong></p>
            <ul style="margin-left: 1.5rem; color: var(--gray-600);">
                <li>"Get user details for employee ID 12345 from the user service"</li>
                <li>"What are the available payment methods from the payment API?"</li>
                <li>"Check the health status of all internal services"</li>
                <li>"Find all APIs that handle customer data"</li>
                <li>"Show me the schema for the user profile endpoint"</li>
                <li>"What authentication tokens do I need for the inventory API?"</li>
            </ul>
            
            <p>Copilot will automatically use your MCP API connections to answer these questions!</p>
        </div>
        
        <div class="card">
            <h3>Method 2: Direct MCP Commands</h3>
            <p>You can also query your APIs directly from your terminal:</p>
            
            <h4>Query user information:</h4>
            <div class="code-block">
                <pre><code class="language-bash">mcp query internal-api "get user details for employee ID 12345"</code></pre>
            </div>

            <h4>Search across multiple APIs:</h4>
            <div class="code-block">
                <pre><code class="language-bash">mcp query internal-api "find all APIs related to payment processing"</code></pre>
            </div>

            <h4>Get API health status:</h4>
            <div class="code-block">
                <pre><code class="language-bash">mcp query internal-api "show health status for all registered APIs"</code></pre>
            </div>

            <h4>List available endpoints:</h4>
            <div class="code-block">
                <pre><code class="language-bash">mcp query internal-api "list all available endpoints for user-service"</code></pre>
            </div>
        </div>
    </div>
</div>