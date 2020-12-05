+++
description = "Group related projects"
+++

{{import "header"}}

Workspaces allow us to group related projects into a single space; they are particularly useful if you have various related websites published to sub-domains.

To configure a workspace declare the workspace members in `site.toml`; each member should be a directory containing a project or another workspace.

```toml
[workspace]
members = [
  "brochure",
  "documentation"
]
```

You should not configure any other [settings]({{ link "/docs/settings/" }}) here as they will be ignored.

When live reload is enabled for a workspace it will serve the last workspace member.

{{> back}}
