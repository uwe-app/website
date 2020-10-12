+++
description = "Get data for parent pages"
+++

{{> components}}

Get the data for a parent directory:

```handlebars
{{{{raw}}}}
{{#parent}}
{{json}}
{{/parent}}{{{{/raw}}}}
```

Which for this page shows us:

```json
{{#parent}}{{json}}{{/parent}}
```

{{> back}}
