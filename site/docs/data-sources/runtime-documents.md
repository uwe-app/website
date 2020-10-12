+++
description = "Using data documents at runtime"
+++

{{> components}}

To progressively enhance a website you may want runtime access to the JSON documents defined for a generator.

This is achieved by rendering JSON files as templates which gives them full access to all the generator indices and is much more versatile than just copying over the generator documents.

### Settings

First, we should update the [site settings]({{ link "/docs/settings/" }}) to render `json` files as templates; in the `site.toml` settings add the configuration:

```toml
[extension]
render = ["md", "html", "json"]
map = {md = "html"}
markdown = ["md"]
```

Now our files with a `json` extension in the `site` directory will be rendered as templates.

### Template

Create the file `site/quotes/item.json` to be the document template:

```handlebars
\{{#with value}}\{{json document true}}\{{/with}}
```

> Notice that we pass a second boolean parameter to the `json` helper for compact output.

To expose the data to the template we add a query to `site/page.toml`:

```toml
["quotes/item.json"]
clean = false
standalone = true
query = {name = "quotes", index = "all", each = true, include_docs = true}
```

Let's unpack this a little. First we disable `clean` locations so that our files will be placed in `quotes` such that we end up with an output destination like `quotes/empty-your-mind.json`; then we enable the `standalone` flag so no layout is applied to the template.

The `query` is configured to iterate all documents (`each`) in the `all` index of the `quotes` generator and include the documents referenced by the index (`include_docs`).

A build using this configuration copies all the files in the `generator/quotes/documents` directory to the build output directory `build/debug/quotes` and converts the JSON to a compact format.

### Index File

To access these documents efficiently in our client-side Javascript we might like an index of all the documents created; to do this we can create the file `site/quotes/index.json`:

```handlebars
\{{json documents true}}
```

And configure it in `site/page.toml` to pass the index keys:

```toml
["quotes/index.json"]
clean = false
standalone = true
query = {name = "quotes", index = "all", keys = "name"}
```

Which yields the file `quotes/index.json` with an array of the key names; for example:

```json
[ "empty-your-mind" ]
```

Now you can write the Javascript to leverage `fetch()` to enhance your site!

{{> back}}
