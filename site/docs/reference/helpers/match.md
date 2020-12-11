+++
description = "Conditional rendering"
+++

{{import "header"}}

Use the `match` helper to render when a page matches a path; this is useful to highlight the current page in navigation menus.

## Arguments

* `String` The target path to match against.
* `String` The string to output when a match is found.

## Parameters

* `exact` Render only when the location match is exact (default: `false`).

## Example

When the render output is passed as the second argument it is used:

```handlebars
{{{{raw~}}}}
<a {{match "/docs/" "class='selected'"}}>Documentation</a>
{{{{~/raw}}}}
```

Or alternatively use the block syntax:

```handlebars
{{{{raw~}}}}
{{#match "/docs/"}}
<!-- This content is only rendered when the path starts with /docs/ -->
{{/match}}
{{{{~/raw}}}}
```

By default *matching is not exact* so that navigating to child directories would also be considered a match on a parent navigation item.

Use the hash parameter `exact` to match exactly:

```handlebars
{{{{~raw}}}}
<a {{match "/docs/" "class='selected'" exact=true}}>Documentation</a>
{{{{~/raw}}}}
```

{{import "footer"}}
