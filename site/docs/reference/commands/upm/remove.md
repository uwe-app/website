+++
title = "remove"
description = "Remove an installed plugin"
+++

{{import "header"}}

The `remove` command is a utility for plugin authors that removes plugins from the installation directory; see [[docs/reference/commands/upm/add]] for information about the plugin installation location.

Remove all installed versions of a plugin:

```text
upm rm std::core
```

Or use a version range to remove matched versions:

```text
upm rm std::core@^4
```

## Usage

```text
{{include ../../../../includes/help/upm/remove.txt~}}
```

{{> back}}
