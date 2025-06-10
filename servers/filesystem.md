# File System MCP Server

The File System MCP Server provides access to local development files and directories.

## Prerequisites

- Local file system access
- Appropriate file permissions
- Development directory structure

## Installation

```bash
npm install @modelcontextprotocol/server-filesystem
```

## Configuration

### Basic Setup

Add to your `mcp-config.json`:

```json
{
  "mcpServers": {
    "filesystem": {
      "command": "node",
      "args": [
        "node_modules/@modelcontextprotocol/server-filesystem/dist/index.js",
        "--root",
        "C:\\Development"
      ]
    }
  }
}
```

### Multiple Directories

```json
{
  "mcpServers": {
    "filesystem-projects": {
      "command": "node",
      "args": [
        "node_modules/@modelcontextprotocol/server-filesystem/dist/index.js",
        "--root",
        "C:\\Development\\Projects"
      ]
    },
    "filesystem-tools": {
      "command": "node",
      "args": [
        "node_modules/@modelcontextprotocol/server-filesystem/dist/index.js",
        "--root",
        "C:\\Development\\Tools"
      ]
    }
  }
}
```

## Security Configuration

### Read-Only Mode

```json
{
  "mcpServers": {
    "filesystem": {
      "command": "node",
      "args": [
        "node_modules/@modelcontextprotocol/server-filesystem/dist/index.js",
        "--root",
        "C:\\Development",
        "--readonly"
      ]
    }
  }
}
```

### File Type Filtering

```json
{
  "env": {
    "ALLOWED_EXTENSIONS": ".js,.ts,.py,.java,.sql,.md,.json,.yaml",
    "EXCLUDED_PATTERNS": "node_modules,*.log,*.tmp,.git"
  }
}
```

## Usage Examples

- "What files are in my current project?"
- "Show me the contents of the config directory"
- "Find all TypeScript files that import React"
- "What's in the package.json file?"
- "List all markdown files in the docs folder"