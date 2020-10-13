+++
description = "Create a slug from a name"
+++

{{> crumbtrail}}

## {{title}}

Generate a friendly *slug* from a value:

```handlebars
\{{slug "Title With Spaces"}}
```

Will output:

```
{{slug "Title With Spaces"}}
```

This is particularly useful when building links to documents created using [data sources]({{ link "/docs/data-sources/" }}).

{{> back}}
