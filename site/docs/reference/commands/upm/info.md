+++
title = "info"
description = "Show plugin information"
+++

{{import "header"}}

The `info` command prints information about a plugin.

```text
upm info std::core
```

If a specific version is given it must exist in the plugin registry:

```text
upm info std::core@4.1.12
```

## Usage

```text
{{include ../../../../includes/help/upm/info.txt~}}
```

{{> back}}
