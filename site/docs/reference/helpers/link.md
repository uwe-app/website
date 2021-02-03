+++
description = "Create valid, relative links"
+++

{{import "header"}}

The link helper generates links relative to the current page. You pass it an absolute path and it will return a URL relative to the current page with the correct amount of `../` references; it also does the important job of checking links exist at compile time!

Prefer using wiki-style [[docs/guides/getting-started/links]] wherever possible.

{{#> note label="info"}}
If you pass a relative path starting with a period or use the `http:` or `https:` schemes it will not be modified.

If the current page has set `absolute` then this helper will render an absolute path.
{{/note}}

{{#> note label="warn" type="warn"}}
Relative paths are not verified so should be avoided.
{{/note}}

## Arguments

* `String` Path to the resource to link to.

## Example

Link to a page:

```handlebars
[Contact](\{{link "contact"}})
```

Renders as:

```markdown
[Contact]({{link "contact/"}})
```

Link to a resource:

```handlebars
<img src="\{{link "assets/svg/menu.svg"}}">
```

Renders as:

```html
<img src="{{link "assets/svg/menu.svg"}}">
```

{{import "footer"}}
