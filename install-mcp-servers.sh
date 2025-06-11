#!/bin/bash

# Enterprise MCP Documentation - MCP Server Installation Script
# This script installs the required MCP servers for this documentation repository

set -e

echo "🚀 Installing MCP Servers for Enterprise MCP Documentation..."
echo ""

# Check if npm is available
if ! command -v npm &> /dev/null; then
    echo "❌ npm is not installed. Please install Node.js and npm first."
    exit 1
fi

# Install required MCP servers globally
echo "📦 Installing GitHub MCP Server..."
npm install -g @modelcontextprotocol/server-github

echo "📦 Installing Filesystem MCP Server..."
npm install -g @modelcontextprotocol/server-filesystem

echo ""
echo "✅ MCP Servers installed successfully!"
echo ""
echo "Next steps:"
echo "1. Set your GitHub token: export GITHUB_TOKEN='your_token_here'"
echo "2. Configure VSCode settings.json to point to mcp-server-config.json"
echo "3. Restart VSCode"
echo "4. Test by asking GitHub Copilot about this repository"
echo ""
echo "📖 See setup-mcp-server.md for detailed instructions."