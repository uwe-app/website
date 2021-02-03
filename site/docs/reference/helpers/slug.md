+++
description = "Create a slug from a name"
+++

{{import "header"}}

Generate a friendly *slug* from a value.

## Arguments

* `String` The value to convert to a slug.

## Example

```handlebars
\{{slug "Title With Spaces"}}
```

Renders as:

```
{{slug "Title With Spaces"}}
```

This is particularly useful when building links to documents created using [[docs/guides/collections]].

{{import "footer"}}
