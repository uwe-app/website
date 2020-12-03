+++
description = "Debug your page data"
+++

{{> crumbtrail}}

# {{title}}

A useful helper to pretty print data as JSON.

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
