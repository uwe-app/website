+++
description = "Inspect page data"
+++

{{import "header"}}

It is often useful to know the shape of the data passed to your page templates; to print the data inline use the [[docs/helpers/json|json helper]].

```html
<pre>\{{json this pretty=true}}</pre>
```

If you want to output to a terminal window use the `log` helper:

```handlebars
\{{log (json this pretty=true)}}
```

Narrow it down if you need to, for example:

```html
<pre>\{{json authors pretty=true}}</pre>
```

Will output:

```json
{{json authors pretty=true}}
```

{{import "footer"}}
