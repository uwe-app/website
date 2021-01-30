+++
description = "Custom date formats"
+++

{{import "header"}}

The `[date.formats]` table allows adding custom date formats:

```toml
[date.formats]
timestamp = "%s"
```

You can then reference the custom format using `date-formats.timestamp`, see the [[docs/reference/helpers/date|date helper]] for examples and the [list of format specifiers](https://docs.rs/chrono/latest/chrono/format/strftime/index.html#specifiers) for more information on the formatting options available.


You can overwrite the built-in formats if necessary, for example:

```toml
[date.formats]
date-short = "%d/%m/%y"
```

{{import "footer"}}
