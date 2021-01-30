+++
description = "Custom date formats"
+++

{{import "header"}}

The `[date.formats]` table allows adding custom date formats:

```toml
[date.formats]
timestamp = "%s"
```

You can then reference the custom format using `date-formats.timestamp`, see the [[docs/reference/helpers/date|date helper]] for examples.

Note that you can overwrite the built-in formats if you wish to, for example:

```toml
[date.formats]
date-short = "%d/%m/%y"
```

{{import "footer"}}
