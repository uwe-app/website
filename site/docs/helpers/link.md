+++
description = "Create valid, relative links"
+++

{{import "header"}}

The link helper generates links relative to the current page. You pass it an absolute path and it will return a URL relative to the current page with the correct amount of `../` references; it also does the important job of checking links exist at compile time!

```handlebars
[Contact](\{{link "/contact/"}})
```

Yields:

```markdown
[Contact]({{link "/contact/"}})
```

If you pass a relative path without a leading slash or use the `http:` or `https:` schemes it will not be modified.

## Absolute

Sometimes, for example when rendering error pages, it is better to use absolute paths. Use the `abs` parameter for an absolute path:

```handlebars
\{{link "/contact/" abs=true}})
```

{{import "footer"}}

