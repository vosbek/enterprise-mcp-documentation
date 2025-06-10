# Enterprise MCP Server Documentation

This repository contains comprehensive documentation for implementing Model Context Protocol (MCP) servers in our Fortune 50 enterprise environment.

## 📖 Documentation Site

Visit our complete documentation: **[Enterprise MCP Documentation](https://vosbek.github.io/enterprise-mcp-documentation/)**

## 🚀 Quick Links

- [🏁 Quick Start Guide](https://vosbek.github.io/enterprise-mcp-documentation/quick-start)
- [🛠️ Server Installation Guides](https://vosbek.github.io/enterprise-mcp-documentation/servers/)
- [📋 Best Practices](https://vosbek.github.io/enterprise-mcp-documentation/best-practices)
- [🔧 Troubleshooting](https://vosbek.github.io/enterprise-mcp-documentation/troubleshooting)

## 🎯 What This Documentation Covers

### Supported MCP Servers
- **Database MCP** - Oracle, Snowflake, PostgreSQL, AWS RDS (read-only)
- **Internal GitHub MCP** - Private GitHub Enterprise integration
- **Jira MCP** - Project management and issue tracking
- **SharePoint MCP** - Document and knowledge base access
- **ServiceNow MCP** - IT service management
- **Figma MCP** - Design file access and collaboration
- **Backstage.io MCP** - Service catalog integration
- **Internal API MCP** - Custom API integrations with OpenAPI specs
- **File System MCP** - Local development environment access

### Enterprise Focus
- **Security First**: All servers run locally with existing corporate authentication
- **Compliance Ready**: Read-only access, audit logging, data governance
- **Network Aware**: Corporate proxy, VPN, and internal DNS support
- **Scalable**: Designed for 20,000+ developer organization

## 🏢 Enterprise Environment

- **Primary OS**: Windows 10/11
- **Secondary OS**: Ubuntu 20.04+ (AWS Workspace)
- **Integration**: VSCode + GitHub Copilot
- **Network**: Corporate proxy, internal GitHub instance
- **Data Sources**: Internal-only, no external connections

## 📁 Repository Structure

```
├── index.md                 # Homepage
├── quick-start.md           # 15-minute setup guide
├── best-practices.md        # Enterprise best practices
├── troubleshooting.md       # Comprehensive troubleshooting
└── servers/                 # Individual server guides
    ├── index.md            # Server overview
    ├── database.md         # Database MCP setup
    ├── github.md           # GitHub Enterprise MCP
    ├── jira.md             # Jira integration
    ├── sharepoint.md       # SharePoint access
    ├── servicenow.md       # ServiceNow integration
    ├── figma.md            # Figma design access
    ├── backstage.md        # Service catalog
    ├── internal-api.md     # Internal API integration
    └── filesystem.md       # Local file access
```

## 🛠️ Development

This documentation uses Jekyll and GitHub Pages for hosting.

### Local Development

```bash
# Clone the repository
git clone https://github.com/vosbek/enterprise-mcp-documentation.git
cd enterprise-mcp-documentation

# Install dependencies (requires Ruby)
bundle install

# Run locally
bundle exec jekyll serve

# Visit http://localhost:4000
```

### Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Test locally
5. Submit a pull request

## 🔒 Security & Compliance

- All examples use placeholder credentials
- Read-only database access enforced
- Corporate network requirements documented
- Audit logging procedures included
- Compliance with enterprise data governance

## 📞 Support

- **Internal Support**: IT Service Desk
- **Documentation Issues**: Submit GitHub issue
- **Security Concerns**: Contact Security Team
- **Feature Requests**: Submit GitHub issue with `enhancement` label

## 📜 License

This documentation is maintained by the Enterprise Development Tools team and is proprietary to our organization.

---

*Last updated: June 2025*