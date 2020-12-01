+++
description = "Inspect page data"
+++

{{> crumbtrail}}

# {{title}}

It is often useful to know the shape of the data passed to your page templates; to print the data inline use the [json helper]({{ link "/docs/helpers/json/" }}):

```html
<pre>\{{json this}}</pre>
```

If you want to output to a terminal window use the `log` helper:

```handlebars
\{{log (json this)}}
```

Narrow it down if you need to, for example:

```html
<pre>\{{json scripts pretty=true}}</pre>
```

Will output:

```json
{{json scripts pretty=true}}
```

{{> next-page menu="getting-started-idx"}}
