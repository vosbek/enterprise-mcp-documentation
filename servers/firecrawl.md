---
title: Firecrawl MCP Server
description: Advanced web scraping and content extraction for enterprise data collection
status: under-evaluation
---

<div class="hero">
    <div class="container">
        <div class="hero-badge">🔥 Firecrawl MCP Server <span class="evaluation-badge">Under Evaluation</span></div>
        <h1>Enterprise Web Data Extraction</h1>
        <p>Advanced web scraping, content extraction, and data collection platform designed for enterprise-scale data harvesting with AI-powered content processing.</p>
    </div>
</div>

<div class="section">
    <div class="container">
        <div class="section-title">
            <h2>Firecrawl Capabilities</h2>
            <p>Comprehensive web scraping and content extraction for enterprise use</p>
        </div>
        
        <div class="card-grid">
            <div class="card">
                <h3>🌐 Web Scraping</h3>
                <ul style="margin-left: 1.5rem; color: var(--gray-600);">
                    <li>JavaScript-rendered page support</li>
                    <li>Dynamic content extraction</li>
                    <li>Multi-page crawling and sitemaps</li>
                    <li>Rate limiting and respectful crawling</li>
                </ul>
            </div>
            
            <div class="card">
                <h3>📄 Content Processing</h3>
                <ul style="margin-left: 1.5rem; color: var(--gray-600);">
                    <li>AI-powered content extraction</li>
                    <li>Markdown and structured data output</li>
                    <li>Image and media file handling</li>
                    <li>Automatic content cleaning and formatting</li>
                </ul>
            </div>
            
            <div class="card">
                <h3>🔍 Data Extraction</h3>
                <ul style="margin-left: 1.5rem; color: var(--gray-600);">
                    <li>Custom CSS selector targeting</li>
                    <li>Schema-based data extraction</li>
                    <li>Structured JSON output formats</li>
                    <li>Metadata and SEO data capture</li>
                </ul>
            </div>
            
            <div class="card">
                <h3>⚡ Enterprise Features</h3>
                <ul style="margin-left: 1.5rem; color: var(--gray-600);">
                    <li>High-volume concurrent processing</li>
                    <li>Proxy rotation and IP management</li>
                    <li>Anti-bot detection avoidance</li>
                    <li>Real-time monitoring and alerts</li>
                </ul>
            </div>
        </div>
    </div>
</div>

<div class="section section-alt">
    <div class="container">
        <div class="section-title">
            <h2>Step-by-Step Setup</h2>
            <p>Follow these steps to set up Firecrawl for enterprise web data collection</p>
        </div>
        
        <div class="card">
            <h3>Step 1: Install Firecrawl and MCP Server</h3>
            <p>Install Firecrawl and the MCP server on your development machine:</p>
            
            <div class="code-block">
                <pre><code class="language-bash"># Install Firecrawl CLI
npm install -g @mendable/firecrawl-js

# Install the Firecrawl MCP server
npm install -g @mcp/firecrawl-server

# Verify installation
firecrawl --version
mcp --version</code></pre>
            </div>
        </div>
        
        <div class="card">
            <h3>Step 2: Get Firecrawl API Access (Contact DevOps Team)</h3>
            <p>Contact your DevOps team to provision Firecrawl API access. You'll need:</p>
            
            <ul style="margin-left: 1.5rem; color: var(--gray-600);">
                <li><strong>Firecrawl API Key</strong> (from your enterprise Firecrawl account)</li>
                <li><strong>Base URL</strong> (e.g., https://api.firecrawl.dev or your self-hosted instance)</li>
                <li><strong>Rate limits</strong> and usage quotas for your team</li>
                <li><strong>Allowed domains</strong> list for scraping permissions</li>
            </ul>
            
            <p><strong>Tell your DevOps team you need:</strong></p>
            <ul style="margin-left: 1.5rem; color: var(--gray-600);">
                <li>Enterprise Firecrawl API subscription</li>
                <li>Appropriate rate limits for your use case</li>
                <li>Domain whitelist configuration</li>
                <li>Proxy setup for enterprise network access</li>
            </ul>
        </div>
        
        <div class="card">
            <h3>Step 3: Configure Firecrawl Connection</h3>
            <p>Set up the connection using your API credentials:</p>
            
            <div class="code-block">
                <pre><code class="language-bash"># Set your Firecrawl credentials (replace with actual values from DevOps)
export FIRECRAWL_API_KEY="fc-your-api-key-here"
export FIRECRAWL_BASE_URL="https://api.firecrawl.dev"
export FIRECRAWL_MAX_CONCURRENT="5"

# Configure the Firecrawl MCP server
mcp config firecrawl \
  --api-key $FIRECRAWL_API_KEY \
  --base-url $FIRECRAWL_BASE_URL \
  --max-concurrent $FIRECRAWL_MAX_CONCURRENT \
  --respect-robots-txt true \
  --default-wait-time 2000</code></pre>
            </div>
        </div>
        
        <div class="card">
            <h3>Step 4: Test Your Connection</h3>
            <p>Verify that Firecrawl is working correctly:</p>
            
            <div class="code-block">
                <pre><code class="language-bash"># Test the connection
mcp test firecrawl

# Test a simple scrape
firecrawl scrape "https://example.com" --format markdown

# If successful, you should see:
# ✅ Firecrawl connection successful
# ✅ API authentication verified
# ✅ Scraping permissions confirmed</code></pre>
            </div>
        </div>
        
        <div class="card">
            <h3>Step 5: Configure Scraping Policies (Optional)</h3>
            <p>Set up scraping rules and content extraction policies:</p>
            
            <div class="code-block">
                <pre><code class="language-bash"># Configure scraping policies
mcp config firecrawl policies \
  --respect-robots-txt true \
  --delay-between-requests 1000 \
  --max-pages-per-crawl 100 \
  --timeout 30000

# Set up content extraction rules
mcp config firecrawl extraction \
  --include-html false \
  --include-markdown true \
  --include-links true \
  --remove-tags "script,style,nav,footer"</code></pre>
            </div>
        </div>
    </div>
</div>

<div class="section">
    <div class="container">
        <div class="section-title">
            <h2>Usage Examples</h2>
            <p>Leverage Firecrawl for web data collection and content extraction</p>
        </div>
        
        <div class="card">
            <h3>Method 1: Ask GitHub Copilot (Recommended)</h3>
            <p>In your IDE with GitHub Copilot, you can ask natural language questions:</p>
            
            <p><strong>Example questions you can ask Copilot:</strong></p>
            <ul style="margin-left: 1.5rem; color: var(--gray-600);">
                <li>"Scrape the latest blog posts from our competitor's website"</li>
                <li>"Extract product information from this e-commerce page"</li>
                <li>"Get all the documentation from this API website"</li>
                <li>"Crawl this news site and extract article content"</li>
                <li>"Find all the pricing information from these SaaS websites"</li>
                <li>"Extract contact information from company directory pages"</li>
            </ul>
            
            <p>Copilot will automatically use Firecrawl to scrape and extract the requested content!</p>
        </div>
        
        <div class="card">
            <h3>Method 2: Direct MCP Commands</h3>
            <p>You can also use Firecrawl directly from your terminal:</p>
            
            <h4>Scrape a single page:</h4>
            <div class="code-block">
                <pre><code class="language-bash">mcp query firecrawl "scrape https://example.com/blog and extract the main content as markdown"</code></pre>
            </div>

            <h4>Crawl multiple pages:</h4>
            <div class="code-block">
                <pre><code class="language-bash">mcp query firecrawl "crawl https://docs.example.com starting from the documentation page"</code></pre>
            </div>

            <h4>Extract structured data:</h4>
            <div class="code-block">
                <pre><code class="language-bash">mcp query firecrawl "extract product names and prices from https://store.example.com/products"</code></pre>
            </div>

            <h4>Search and scrape results:</h4>
            <div class="code-block">
                <pre><code class="language-bash">mcp query firecrawl "search for 'API documentation' on site:example.com and scrape the results"</code></pre>
            </div>
        </div>
        
        <div class="card">
            <h3>Advanced Data Extraction</h3>
            <div class="code-block">
                <pre><code class="language-bash"># Scrape with custom selectors
mcp query firecrawl "
  scrape: 'https://news.example.com'
  extract: {
    title: 'h1.article-title',
    author: '.author-name',
    date: '.publish-date',
    content: '.article-content'
  }
  format: 'json'
"

# Batch scraping with rate limiting
mcp query firecrawl "
  scrape_batch: [
    'https://example.com/page1',
    'https://example.com/page2',
    'https://example.com/page3'
  ]
  delay: 2000
  format: 'markdown'
"

# Monitor website changes
mcp query firecrawl "
  monitor: 'https://example.com/pricing'
  check_interval: '24h'
  notify_changes: true
"</code></pre>
            </div>
        </div>
    </div>
</div>

<div class="section section-alt">
    <div class="container">
        <div class="section-title">
            <h2>Enterprise Use Cases</h2>
            <p>Common enterprise applications for web data extraction</p>
        </div>
        
        <div class="card-grid">
            <div class="card">
                <h3>📈 Market Intelligence</h3>
                <ul style="margin-left: 1.5rem; color: var(--gray-600);">
                    <li>Competitor pricing and product monitoring</li>
                    <li>Industry news and trend analysis</li>
                    <li>Market research data collection</li>
                    <li>Customer sentiment analysis from reviews</li>
                </ul>
            </div>
            
            <div class="card">
                <h3>📊 Business Intelligence</h3>
                <ul style="margin-left: 1.5rem; color: var(--gray-600);">
                    <li>Lead generation from business directories</li>
                    <li>Contact information extraction</li>
                    <li>Company information aggregation</li>
                    <li>Job posting and hiring trend analysis</li>
                </ul>
            </div>
            
            <div class="card">
                <h3>📚 Knowledge Management</h3>
                <ul style="margin-left: 1.5rem; color: var(--gray-600);">
                    <li>Documentation aggregation from multiple sources</li>
                    <li>Technical content extraction and indexing</li>
                    <li>Research paper and publication collection</li>
                    <li>Internal knowledge base enrichment</li>
                </ul>
            </div>
            
            <div class="card">
                <h3>🔍 Compliance & Monitoring</h3>
                <ul style="margin-left: 1.5rem; color: var(--gray-600);">
                    <li>Regulatory website monitoring</li>
                    <li>Terms of service and policy tracking</li>
                    <li>Brand mention and reputation monitoring</li>
                    <li>Compliance documentation collection</li>
                </ul>
            </div>
        </div>
    </div>
</div>

<div class="section">
    <div class="container">
        <div class="section-title">
            <h2>Security & Compliance</h2>
            <p>Enterprise-grade security features for web scraping</p>
        </div>
        
        <div class="card-grid">
            <div class="card">
                <h3>🔐 Data Security</h3>
                <ul style="margin-left: 1.5rem; color: var(--gray-600);">
                    <li>Encrypted data transmission and storage</li>
                    <li>Secure API key management</li>
                    <li>Data retention policy compliance</li>
                    <li>PII detection and redaction</li>
                </ul>
            </div>
            
            <div class="card">
                <h3>🌐 Network Security</h3>
                <ul style="margin-left: 1.5rem; color: var(--gray-600);">
                    <li>Proxy rotation and IP anonymization</li>
                    <li>VPN and enterprise network compatibility</li>
                    <li>Firewall and network policy compliance</li>
                    <li>Request origin masking and headers</li>
                </ul>
            </div>
            
            <div class="card">
                <h3>📋 Compliance</h3>
                <ul style="margin-left: 1.5rem; color: var(--gray-600);">
                    <li>GDPR and privacy regulation compliance</li>
                    <li>Robots.txt and website policy respect</li>
                    <li>Rate limiting and ethical scraping</li>
                    <li>Audit logging and compliance reporting</li>
                </ul>
            </div>
        </div>
    </div>
</div>

<div class="section section-alt">
    <div class="container">
        <div class="section-title">
            <h2>Evaluation Status</h2>
            <p>Current evaluation progress and next steps</p>
        </div>
        
        <div class="card-grid">
            <div class="card">
                <h3>✅ Completed Evaluation</h3>
                <ul style="margin-left: 1.5rem; color: var(--gray-600);">
                    <li>Performance testing with enterprise workloads</li>
                    <li>Legal and compliance review for web scraping</li>
                    <li>Security assessment and data handling review</li>
                    <li>Cost analysis for different usage tiers</li>
                </ul>
            </div>
            
            <div class="card">
                <h3>🔄 In Progress</h3>
                <ul style="margin-left: 1.5rem; color: var(--gray-600);">
                    <li>Enterprise proxy integration testing</li>
                    <li>Custom domain whitelist configuration</li>
                    <li>Rate limiting optimization for enterprise use</li>
                    <li>Data pipeline integration with existing systems</li>
                </ul>
            </div>
            
            <div class="card">
                <h3>📋 Next Steps</h3>
                <ul style="margin-left: 1.5rem; color: var(--gray-600);">
                    <li>Pilot deployment with business intelligence team</li>
                    <li>Integration with data warehouse and analytics tools</li>
                    <li>Training and documentation for end users</li>
                    <li>Production deployment and monitoring setup</li>
                </ul>
            </div>
        </div>
    </div>
</div>