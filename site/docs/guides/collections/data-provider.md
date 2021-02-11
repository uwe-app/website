+++
description = "Load collections data"
+++

{{import "header"}}

To use a collection first we need to load some data using a *data provider*.

## Pages

This example shows how to load collections data from pages:

```toml
[db.load.posts]
provider = "pages"
type = "toml"
from = "posts"
excludes = ["index.*"]
```

{{#>alert}}
This collection has an identifier of `posts` (the name after `db.load`) which we will need later to reference the collection.
{{/alert}}

The first part of this definition is the `provider` which uses a value of `pages` to indicate that the data for this collection should come from our pages. The `type` field is used to indicate the format of the data to load; currently `toml`, `json` and `csv` are supported values; however, for a `provider` with a value of `pages` this should always be `toml`.

The `from` field indicates that we are only interested in pages inside the `posts` folder for this collection - we are loading data *from* that location. The `from` path is resolved relative to the main `site` folder and must be a relative path.

Finally, we want to exclude some files from the collection so we add a glob pattern to the `excludes` array to ignore some files within the `posts` folder. Glob patterns are matched on a relative path within the `from` folder; the pattern above matches the file `site/posts/index.md` because we only want to include the blog articles in the collection not the index page.

## Files

We can also load collections from JSON or TOML files; the convention is to put these files in `collections` within the `site` folder:

```toml
[db.load.quotes]
type = "json"
provider = "files"
from = "collections/quotes"
```

Which creates a collection called `quotes` that loads all JSON files in the `site/collections/quotes` folder.

When loading data sources from a folder file names are important as they become the `id` for each item in the collection which means traversing nested folders is not supported.

{{#>alert type="warn"}}
JSON data providers only support the `object` type; if you need to use another type wrap it in an `object` with a property.
{{/alert}}

## Document

If a data source is a single document and you want to expand it out to a collection use a `document` provider.

```toml
[db.load.colors]
provider = "document"
type = "json"
from = "collections/colors/names.json"
```

{{#>alert}}
The document value must be an iterable type; either an `array` or `object`.
{{/alert}}

For arrays the item identitier is the index in the array and for objects the property key is the item identifier.

See the [document example][document-example] for a complete project using this technique.

{{import "footer"}}

[document-example]: https://github.com/uwe-app/examples/tree/main/collections/document
