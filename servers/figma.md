---
title: Figma Dev Mode MCP Server
description: Official Figma MCP server for design-to-code workflow integration
status: beta
---

<div class="hero">
    <div class="container">
        <div class="hero-badge">🎨 Figma Dev Mode MCP Server <span class="evaluation-badge">Official Beta</span></div>
        <h1>Official Design-to-Code Integration</h1>
        <p>Figma's official Model Context Protocol server enables AI-powered code generation from design frames, providing seamless design-to-development workflows for enterprise teams.</p>
    </div>
</div>

<div class="section">
    <div class="container">
        <div class="section-title">
            <h2>Official Figma Dev Mode MCP Features</h2>
            <p>AI-powered design-to-code capabilities from Figma's official MCP server</p>
        </div>
        
        <div class="card-grid">
            <div class="card">
                <h3>🎯 AI Code Generation</h3>
                <ul style="margin-left: 1.5rem; color: var(--gray-600);">
                    <li>Generate code directly from selected Figma frames</li>
                    <li>Support for multiple programming languages</li>
                    <li>Context-aware component generation</li>
                    <li>Design system consistency enforcement</li>
                </ul>
            </div>
            
            <div class="card">
                <h3>🔗 Design Context Extraction</h3>
                <ul style="margin-left: 1.5rem; color: var(--gray-600);">
                    <li>Access design variables and tokens</li>
                    <li>Extract component specifications</li>
                    <li>Layout and spacing calculations</li>
                    <li>Typography and color information</li>
                </ul>
            </div>
            
            <div class="card">
                <h3>⚡ Real-time Integration</h3>
                <ul style="margin-left: 1.5rem; color: var(--gray-600);">
                    <li>Live connection to Figma desktop app</li>
                    <li>Instant access to selected frames</li>
                    <li>Automatic design updates sync</li>
                    <li>Compatible with major AI coding assistants</li>
                </ul>
            </div>
            
            <div class="card">
                <h3>🏢 Enterprise Ready</h3>
                <ul style="margin-left: 1.5rem; color: var(--gray-600);">
                    <li>Works with Professional/Organization/Enterprise plans</li>
                    <li>Secure local server (no external data transfer)</li>
                    <li>Dev Mode seat requirements</li>
                    <li>Team and project access controls</li>
                </ul>
            </div>
        </div>
    </div>
</div>

<div class="section section-alt">
    <div class="container">
        <div class="section-title">
            <h2>Official Setup Guide</h2>
            <p>Follow these steps to enable Figma's official Dev Mode MCP Server</p>
        </div>
        
        <div class="card">
            <h3>Prerequisites</h3>
            <p>Before setting up the Dev Mode MCP Server, ensure you have:</p>
            
            <ul style="margin-left: 1.5rem; color: var(--gray-600);">
                <li><strong>Figma Plan:</strong> Professional, Organization, or Enterprise plan</li>
                <li><strong>Seat Type:</strong> Dev or Full seat (not Viewer-only)</li>
                <li><strong>Desktop App:</strong> Latest version of Figma desktop application</li>
                <li><strong>Compatible Editor:</strong> VS Code, Cursor, Windsurf, or Claude Code</li>
            </ul>
            
            <p><strong>🚨 Important:</strong> The Dev Mode MCP Server is currently in open beta. Some functions may not yet be available.</p>
        </div>
        
        <div class="card">
            <h3>Step 1: Enable MCP Server in Figma Desktop</h3>
            <p>Activate the MCP server directly in your Figma desktop application:</p>
            
            <ol style="margin-left: 1.5rem; color: var(--gray-600);">
                <li>Open Figma desktop app (ensure you have the latest version)</li>
                <li>Go to <strong>Figma menu → Preferences</strong> (or <strong>File → Preferences</strong> on Windows)</li>
                <li>Navigate to the <strong>Features</strong> section</li>
                <li>Find <strong>"Enable MCP Server"</strong> and toggle it ON</li>
                <li>The server will start automatically at <code>http://127.0.0.1:3845/sse</code></li>
            </ol>
            
            <div class="code-block">
                <pre><code class="language-bash"># Verify the server is running
curl http://127.0.0.1:3845/sse

# Should return server status information</code></pre>
            </div>
        </div>
        
        <div class="card">
            <h3>Step 2: Configure Your AI Coding Assistant</h3>
            <p>Set up your MCP client to connect to Figma's server:</p>
            
            <h4>For Claude Code:</h4>
            <div class="code-block">
                <pre><code class="language-json">{
  "mcpServers": {
    "figma": {
      "command": "node",
      "args": ["-e", "require('http').createServer().listen(3845)"],
      "env": {
        "FIGMA_MCP_SERVER_URL": "http://127.0.0.1:3845/sse"
      }
    }
  }
}</code></pre>
            </div>
            
            <h4>For VS Code with Cursor:</h4>
            <div class="code-block">
                <pre><code class="language-json">{
  "mcp.servers": {
    "figma": {
      "url": "http://127.0.0.1:3845/sse",
      "name": "Figma Dev Mode"
    }
  }
}</code></pre>
            </div>
        </div>
        
        <div class="card">
            <h3>Step 3: Verify Connection</h3>
            <p>Test that your AI assistant can communicate with Figma:</p>
            
            <ol style="margin-left: 1.5rem; color: var(--gray-600);">
                <li>Open a design file in Figma desktop</li>
                <li>Select a frame or component</li>
                <li>In your AI coding assistant, ask: "Generate code for the selected Figma frame"</li>
                <li>The assistant should access the design context and generate appropriate code</li>
            </ol>
            
            <div class="code-block">
                <pre><code class="language-bash"># Example AI prompt
"Generate React code for the currently selected button component in Figma"

# Expected result: 
# - AI accesses the selected Figma frame
# - Extracts design properties (colors, spacing, typography)
# - Generates corresponding React component code</code></pre>
            </div>
        </div>
    </div>
</div>

<div class="section">
    <div class="container">
        <div class="section-title">
            <h2>Usage Examples</h2>
            <p>Generate code from Figma designs using AI-powered workflows</p>
        </div>
        
        <div class="card">
            <h3>Selection-Based Workflow (Recommended)</h3>
            <p>Generate code by selecting frames directly in Figma:</p>
            
            <ol style="margin-left: 1.5rem; color: var(--gray-600);">
                <li>Open your design file in Figma desktop</li>
                <li>Select the frame or component you want to convert to code</li>
                <li>In your AI coding assistant, use natural language prompts</li>
                <li>The AI will access the selected design context automatically</li>
            </ol>
            
            <p><strong>Example prompts you can use:</strong></p>
            <ul style="margin-left: 1.5rem; color: var(--gray-600);">
                <li>"Generate React code for this selected button component"</li>
                <li>"Create CSS styles for the selected card design"</li>
                <li>"Convert this form layout to HTML and Tailwind CSS"</li>
                <li>"Generate TypeScript interfaces for this data visualization"</li>
                <li>"Create a Vue component from this navigation design"</li>
                <li>"Extract design tokens from the selected component"</li>
            </ul>
        </div>
        
        <div class="card">
            <h3>Link-Based Workflow</h3>
            <p>Share specific Figma frames or layers using URLs:</p>
            
            <ol style="margin-left: 1.5rem; color: var(--gray-600);">
                <li>Right-click on any frame or layer in Figma</li>
                <li>Select "Copy link" from the context menu</li>
                <li>Paste the link in your AI assistant with a code generation request</li>
            </ol>
            
            <div class="code-block">
                <pre><code class="language-bash"># Example with Figma link
"Generate React code for this component: 
https://www.figma.com/file/abc123/Design-System?node-id=1%3A2

Include responsive design and accessibility features."</code></pre>
            </div>
        </div>
        
        <div class="card">
            <h3>Advanced Code Generation</h3>
            <p>Leverage design context for sophisticated code output:</p>
            
            <div class="code-block">
                <pre><code class="language-javascript">// Example: AI-generated React component with design context
"Create a production-ready React component for the selected card design, including:
- TypeScript interfaces
- Styled-components with design tokens
- Responsive breakpoints
- Accessibility features
- Storybook documentation"

// Result: Fully-featured component with Figma design context
const Card = ({ title, description, imageUrl }: CardProps) => {
  return (
    &lt;StyledCard&gt;
      &lt;CardImage src={imageUrl} alt={title} /&gt;
      &lt;CardContent&gt;
        &lt;CardTitle&gt;{title}&lt;/CardTitle&gt;
        &lt;CardDescription&gt;{description}&lt;/CardDescription&gt;
      &lt;/CardContent&gt;
    &lt;/StyledCard&gt;
  );
};</code></pre>
            </div>
        </div>
    </div>
</div>

<div class="section section-alt">
    <div class="container">
        <div class="section-title">
            <h2>🎯 Beta Status & Official Resources</h2>
            <p>Important information about Figma's official Dev Mode MCP Server beta</p>
        </div>
        
        <div class="card-grid">
            <div class="card">
                <h3>📋 Beta Program Details</h3>
                <p>The Figma Dev Mode MCP Server is currently in <strong>open beta</strong>, which means:</p>
                <ul style="margin-left: 1.5rem; color: var(--gray-600);">
                    <li><strong>Free Access:</strong> Available to all qualifying Figma users during beta</li>
                    <li><strong>Active Development:</strong> New features and improvements being added regularly</li>
                    <li><strong>Community Feedback:</strong> Your usage helps shape the final product</li>
                    <li><strong>Stability Notice:</strong> Some functions may not yet be available or fully stable</li>
                </ul>
                
                <div class="code-block">
                    <pre><code class="language-bash"># Check if beta features are enabled
# Look for "Enable MCP Server" in Figma → Preferences → Features</code></pre>
                </div>
            </div>
            
            <div class="card">
                <h3>📖 Official Documentation</h3>
                <p>Access the most up-to-date information from Figma's official resources:</p>
                <ul style="margin-left: 1.5rem; color: var(--gray-600);">
                    <li><a href="https://help.figma.com/hc/en-us/articles/32132100833559-Guide-to-the-Dev-Mode-MCP-Server" target="_blank" rel="noopener">Figma's Official MCP Server Guide</a></li>
                    <li><a href="https://help.figma.com/hc/en-us/sections/14506534865047-Dev-Mode" target="_blank" rel="noopener">Figma Dev Mode Documentation</a></li>
                    <li><a href="https://www.figma.com/developers" target="_blank" rel="noopener">Figma Developers Platform</a></li>
                    <li><a href="https://forum.figma.com/" target="_blank" rel="noopener">Figma Community Forum</a></li>
                </ul>
                
                <p><strong>💡 Pro Tip:</strong> Always refer to Figma's official documentation for the most current setup instructions and feature updates.</p>
            </div>
            
            <div class="card">
                <h3>🚀 Enterprise Readiness</h3>
                <p>What to expect as the beta progresses toward enterprise deployment:</p>
                <ul style="margin-left: 1.5rem; color: var(--gray-600);">
                    <li><strong>Enhanced Security:</strong> Additional enterprise authentication options</li>
                    <li><strong>Advanced Permissions:</strong> Fine-grained access controls for teams</li>
                    <li><strong>Audit Capabilities:</strong> Comprehensive logging for compliance</li>
                    <li><strong>SLA Support:</strong> Enterprise-grade reliability guarantees</li>
                </ul>
                
                <div style="background: rgba(59, 130, 246, 0.1); border: 1px solid rgba(59, 130, 246, 0.3); border-radius: 8px; padding: 1rem; margin-top: 1rem;">
                    <p style="margin: 0; color: var(--primary-dark); font-weight: 500;">
                        <strong>📢 Stay Updated:</strong> Monitor Figma's official channels for beta-to-production timeline announcements and enterprise feature releases.
                    </p>
                </div>
            </div>
        </div>
    </div>
</div>