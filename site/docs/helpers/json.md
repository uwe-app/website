+++
description = "Debug your template data"
+++

{{> components}}

A useful helper to pretty print data as JSON.

```handlebars
\{{json}}
```

```json
{{json}}
```

If a parameter is passed it prints only the given variable:

```handlebars
\{{json context}}
```

```json
{{json context}}
```

When you are in an iterator (using `each`) the keyword `this` will print the current context.

To create compact JSON output without indentation pass a boolean for the second parameter:

```handlebars
\{{json this true}}
```

{{> back}}
