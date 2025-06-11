---
title: File System MCP Server
description: Local development environment file system access
---

<div class="hero">
    <div class="container">
        <div class="hero-badge">📁 File System MCP Server</div>
        <h1>Development Environment Access</h1>
        <p>Secure file system integration for local development environments with enterprise security controls and project workspace management.</p>
    </div>
</div>

<div class="section">
    <div class="container">
        <div class="section-title">
            <h2>File System Capabilities</h2>
            <p>Controlled access to development workspace and project files</p>
        </div>
        
        <div class="card-grid">
            <div class="card">
                <h3>📂 Workspace Management</h3>
                <ul style="margin-left: 1.5rem; color: var(--gray-600);">
                    <li>Project workspace discovery and navigation</li>
                    <li>File and directory structure analysis</li>
                    <li>Code repository integration</li>
                    <li>Development environment setup</li>
                </ul>
            </div>
            
            <div class="card">
                <h3>🔍 File Operations</h3>
                <ul style="margin-left: 1.5rem; color: var(--gray-600);">
                    <li>Read-only file content access</li>
                    <li>File search and pattern matching</li>
                    <li>Metadata and permission analysis</li>
                    <li>Version control status checking</li>
                </ul>
            </div>
            
            <div class="card">
                <h3>🛡️ Security Controls</h3>
                <ul style="margin-left: 1.5rem; color: var(--gray-600);">
                    <li>Restricted directory access</li>
                    <li>File type and extension filtering</li>
                    <li>Sensitive data detection</li>
                    <li>Access logging and monitoring</li>
                </ul>
            </div>
        </div>
    </div>
</div>

<div class="section section-alt">
    <div class="container">
        <div class="section-title">
            <h2>Step-by-Step Setup</h2>
            <p>Follow these steps to set up secure file system access</p>
        </div>
        
        <div class="card">
            <h3>Step 1: Install the File System MCP Server</h3>
            <p>Install the File System MCP server on your development machine:</p>
            
            <div class="code-block">
                <pre><code class="language-bash"># Install the File System MCP server
npm install -g @mcp/filesystem-server

# Verify installation
mcp --version</code></pre>
            </div>
        </div>
        
        <div class="card">
            <h3>Step 2: Identify Your Development Workspace</h3>
            <p>Determine which directories you need access to:</p>
            
            <ul style="margin-left: 1.5rem; color: var(--gray-600);">
                <li><strong>Primary workspace</strong> (e.g., /home/username/projects or ~/Development)</li>
                <li><strong>Company tools directory</strong> (e.g., /opt/company/tools)</li>
                <li><strong>Configuration directories</strong> (e.g., ~/.config for development configs)</li>
                <li><strong>Any other project-related directories</strong></li>
            </ul>
            
            <p><strong>Note:</strong> For security, only specify directories you actually need for development work.</p>
        </div>
        
        <div class="card">
            <h3>Step 3: Configure Allowed Directories</h3>
            <p>Set up the file system access with proper security restrictions:</p>
            
            <div class="code-block">
                <pre><code class="language-bash"># Set your workspace paths (adjust to your actual paths)
export WORKSPACE_DIR="$HOME/projects"
export TOOLS_DIR="/opt/company/tools"
export CONFIG_DIR="$HOME/.config/development"

# Configure the MCP server with read-only access
mcp config filesystem \
  --workspace $WORKSPACE_DIR \
  --allowed-paths "$WORKSPACE_DIR,$TOOLS_DIR,$CONFIG_DIR" \
  --readonly-mode true \
  --exclude-patterns "*.log,*.tmp,.env,node_modules"</code></pre>
            </div>
        </div>
        
        <div class="card">
            <h3>Step 4: Test File System Access</h3>
            <p>Verify that the file system integration is working correctly:</p>
            
            <div class="code-block">
                <pre><code class="language-bash"># Test workspace access
mcp test filesystem --workspace-check

# Verify permissions
mcp auth verify filesystem

# If successful, you should see:
# ✅ File system access configured
# ✅ Workspace directory accessible
# ✅ Security restrictions applied</code></pre>
            </div>
        </div>
        
        <div class="card">
            <h3>Step 5: Configure Security Exclusions</h3>
            <p>Set up patterns to exclude sensitive files and directories:</p>
            
            <div class="code-block">
                <pre><code class="language-bash"># Add security exclusions
mcp config filesystem exclude-add \
  --patterns ".env,.env.*,*.key,*.pem,*.p12" \
  --reason "Exclude sensitive credential files"

# Exclude build and temporary directories
mcp config filesystem exclude-add \
  --patterns "node_modules,target,build,dist,.git" \
  --reason "Exclude build artifacts and version control"

# Exclude log and cache files
mcp config filesystem exclude-add \
  --patterns "*.log,*.cache,.DS_Store,Thumbs.db" \
  --reason "Exclude system and log files"</code></pre>
            </div>
        </div>
    </div>
</div>

<div class="section">
    <div class="container">
        <div class="section-title">
            <h2>Usage Examples</h2>
            <p>Access your development files through Copilot and MCP integration</p>
        </div>
        
        <div class="card">
            <h3>Method 1: Ask GitHub Copilot (Recommended)</h3>
            <p>In your IDE with GitHub Copilot, you can ask natural language questions:</p>
            
            <p><strong>Example questions you can ask Copilot:</strong></p>
            <ul style="margin-left: 1.5rem; color: var(--gray-600);">
                <li>"Show me the project structure for my current workspace"</li>
                <li>"Find all configuration files in this project"</li>
                <li>"Search for TODO comments in my source files"</li>
                <li>"What are the main entry points in this codebase?"</li>
                <li>"Find all files that import the authentication module"</li>
                <li>"Show me the package.json or requirements files in my projects"</li>
            </ul>
            
            <p>Copilot will automatically search your allowed directories and provide file information!</p>
        </div>
        
        <div class="card">
            <h3>Method 2: Direct MCP Commands</h3>
            <p>You can also query your file system directly from your terminal:</p>
            
            <h4>Navigate project structure:</h4>
            <div class="code-block">
                <pre><code class="language-bash">mcp query filesystem "show project structure for current workspace"</code></pre>
            </div>

            <h4>Find configuration files:</h4>
            <div class="code-block">
                <pre><code class="language-bash">mcp query filesystem "find all configuration files in project"</code></pre>
            </div>

            <h4>Search for code patterns:</h4>
            <div class="code-block">
                <pre><code class="language-bash">mcp query filesystem "search for 'TODO' comments in source files"</code></pre>
            </div>

            <h4>Find specific file types:</h4>
            <div class="code-block">
                <pre><code class="language-bash">mcp query filesystem "list all Python files in the src directory"</code></pre>
            </div>
        </div>
    </div>
</div>