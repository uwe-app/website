+++
description = "Debug your page data"
+++

{{> crumbtrail}}

# {{title}}

A useful helper to pretty print data as JSON.

```handlebars
\{{json}}
```

```json
{{json}}
```

If a parameter is passed it prints only the given variable:

```handlebars
\{{json authors}}
```

```json
{{json authors}}
```

When you are in an iterator (using `each`) the keyword `this` will print the current context.

To create compact JSON output without indentation pass a boolean for the second parameter:

```handlebars
\{{json this true}}
```

{{> back}}
