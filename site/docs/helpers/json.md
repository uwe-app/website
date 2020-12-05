+++
description = "Debug your page data"
+++

{{import "header"}}

The `json` helper is used to convert a value to a JSON string; it is useful for debugging page data but can also be used to create JSON documents that can be loaded at runtime using Javascript.

## Arguments

* `Any` The data to convert to a JSON string.

## Parameters

* `pretty` Pretty formatting of the string.

## Example

Pass a parameter of the data to print and optionally the `pretty` hash parameter:

```handlebars
\{{json authors pretty=true}}
```

Which renders to:

```json
{{json authors pretty=true}}
```

Assuming the statement is at the top scope of a template you can print the entire page data using:

```handlebars
\{{json this pretty=true}}
```

When iterating using the `each` helper the `this` keyword will print the current scope:

```handlebars
{{{{raw~}}}}
{{#each authors.all}}
{{json this pretty=true}}
{{/each}}
{{{{~/raw}}}}
```

Which renders to:

```json
{{#each authors.all}}
{{~json this pretty=true}}
{{~/each}}
```

{{import "footer"}}
