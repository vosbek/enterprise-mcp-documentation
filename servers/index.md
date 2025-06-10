# MCP Server Installation Guides

This section provides detailed installation and configuration guides for each enterprise MCP server.

## Database Servers

- [Database MCP Server](database.md) - Oracle, Snowflake, Postgres, and AWS RDS
- [Read-Only Configuration](database.md#read-only-setup) - Enterprise security best practices

## Internal Tools

- [Internal GitHub MCP](github.md) - Access to github.internet.net
- [SharePoint MCP](sharepoint.md) - Document and knowledge base access
- [Backstage.io MCP](backstage.md) - Service catalog integration

## Project Management

- [Jira MCP](jira.md) - Issue tracking and project management
- [ServiceNow MCP](servicenow.md) - IT service management

## Design & Documentation

- [Figma MCP](figma.md) - Design file access and collaboration

## Custom Integrations

- [Internal API MCP](internal-api.md) - Custom server for internal APIs
- [File System MCP](filesystem.md) - Local development environment access

## Installation Priority

For new developers, we recommend installing servers in this order:

1. **File System MCP** - Essential for local development
2. **Internal GitHub MCP** - Core development workflow
3. **Database MCP** - Data access and queries
4. **Jira MCP** - Project tracking
5. **SharePoint MCP** - Documentation access
6. **Additional servers** - Based on team needs

## Common Configuration

All servers share these common configuration patterns:

### Authentication
- Use existing corporate credentials
- Service accounts for automated access
- Certificate-based authentication where available

### Network Configuration
- Corporate proxy settings automatically applied
- VPN connectivity required
- Internal DNS resolution

### Security
- Read-only access by default
- Audit logging enabled
- Compliance with enterprise security policies

---

Select a server from the list above to view detailed installation instructions.