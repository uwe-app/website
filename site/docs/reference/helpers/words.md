+++
description = "Word count and reading time"
+++

{{import "header"}}

The `words` helper can be used to count the approximate number of words on a page and display an estimated reading time.

This helper must be enabled using the `words` transform, see [[docs/guides/content/reading-time]] for more information.

## Parameters

* `time`: Print estimated reading time (default `false`).
* `avg`: Average number of words per minute (default: `250`).

{{#> note label="info"}}
The lower bound for `avg` is 100 words per minute.
{{/note}}

## Example

Print the number of words on the page:

```handlebars
\{{words}}
```

Print the estimated reading time in minutes:

```handlebars
\{{words time=true}}
```

{{import "footer"}}
