+++
description = "Inspect template data"
+++

{{> crumbtrail}}

## Debugging

It is often useful to know the shape of the data passed to your templates; to print the data inline into a page use:

```html
<pre>\{{json this}}</pre>
```

If you want to output to a terminal window use the `log` helper:

```handlebars
\{{log (json this)}}
```

Narrow it down if you need to, for example:

```html
<pre>\{{json scripts}}</pre>
```

Will output:

```json
{{json scripts}}
```
