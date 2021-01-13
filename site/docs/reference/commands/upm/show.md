+++
title = "show"
description = "Show plugin information"
+++

{{import "header"}}

The `show` command prints information about a plugin.

```text
upm show std::core
```

If a specific version is given it must exist in the plugin registry:

```text
upm show std::core@4.1.12
```

## Usage

```text
{{include ../../../../includes/help/upm/show.txt~}}
```

{{> back}}
