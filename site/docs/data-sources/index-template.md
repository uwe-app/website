+++
description = "Create an index for generated pages"
+++

{{> crumbtrail}}

By now we should have a [configuration]({{ link "/docs/data-sources/configuration/" }}) and a [page template]({{ link "/docs/data-sources/page-template/" }}); next let's add an index for the generated pages.

To create an index first we create a template file and put it in `site/quotes/index.html`. This example file will print the JSON for each document in the list:

```handlebars
{{{{raw}}}}{{#each documents}}
{{#with value}}
<pre>{{json this}}</pre>
{{/with}}
{{/each}}{{{{/raw}}}}
```

Then we configure the file to receive the generated index in `data.toml`:

```toml
["quotes/"]
query = {name = "quotes", index = "all", include_docs = true}
```

This exposes the default `all` index of the `quotes` generator as the `documents` parameter to the template. Each entry in the array has an `id`, `key` and a `value` containing the document(s).

If `include_docs` is not specified then the `value` is **not available**.

Next: [Runtime Documents]({{ link "/docs/data-sources/runtime-documents/" }})

{{> back}}
