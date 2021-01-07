+++
title = "lint"
description = "Lint a plugin"
+++

{{import "header"}}

Lint a plugin:

```text
upm lint ../../plugins/std/core
```

To check the plugin data is well-formed and any templates compile correctly.

When plugins are packaged the bundled `plugin.toml` is computed; to inspect the computed plugin data use the `-i` flag:

```text
upm lint ../../plugins/std/core -i
```

## Usage

```text
{{include ../../../../includes/help/upm/lint.txt~}}
```

{{> back}}
