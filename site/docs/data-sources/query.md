+++
description = "Fetch data from an index"
+++

{{import "header"}}

Queries extract data from the generator indices and expose them to page templates. To define a query set the `query` field for a page in `data.toml`; it may be a single object or array of objects when you need multiple queries for a page.

At a minimum you should specify the generator `name` and the `index` for a page:

```toml
query = {name = "quotes", index = "all"}
```

Which will expose the data using the default parameter `documents`. The returned data has an `id` and a `key`:

```json
{
  "documents" : [{
    "id": "document-identifier",
    "key": "document-identifier"
  }]
}
```

### Parameter

If you want to change the name of the parameter exposed to your template use the `parameter` option:

```toml
query = {name = "quotes", index = "all", parameter = "ids"}
```

### Include Docs

Use the `include_docs` flag to also included the documents referenced by the index:

```toml
query = {name = "quotes", index = "all", include_docs = true}
```

Now the returned data has a `value` field containing the `document` and it's `id`:

```json
{
  "documents" : [{
    "id": "document-identifier",
    "key": "document-identifier",
    "value": {
      "document": {},
      "id": "document-identifier"
    }
  }]
}
```

If you are wondering why there is so much duplication the answer is because we are operating on the `all` index. When we use a custom index to operate on the document fields we might use a query like:

```toml
query = {name = "quotes", index = "tags", include_docs = true}
```

Which might yield a result like this:

```json
{
  "documents" : [{
    "id": "life",
    "key": "Life",
    "value": {
      "document": {
        "tags": ["Life", "Embrace"]
      },
      "id": "embrace-life"
    }
  }]
}
```

### Each

The `each` flag asks for a page to be generated for every document in the query result:

```toml
query = {name = "quotes", index = "all", each = true, include_docs = true}
```

The page template is passed a `value` which contains the underlying `document` and it's `id`. You can change the `value` field to another name using the `parameter` option if you want something more relevant to the template.

### Keys

The `keys` flag returns a list of the keys for an index:

```toml
query = {name = "quotes", index = "tags", keys = true}
```

Yields:

```json
[
  "Tag 1",
  "Tag 2"
]
```

Using `include_docs` in combination with `keys` will have no effect.

### Values

The `values` flag will return the list of document identifiers referenced for each key:

```toml
query = {name = "quotes", index = "tags", values = true}
```

```json
[
  [
    "doc-id-1",
    "doc-id-2"
  ],
  [
    "doc-id-1",
    "doc-id-3",
    "doc-id-4"
  ]
]
```

Using `include_docs` in combination with `values` will have no effect.

### Flat

The `flat` flag is a special case and should be used with care.

By default indices group documents into a list of document identifiers as a key can reference multiple documents and this is normally what you want. For example, if you are creating an index by tag you want to group documents by tag name.

But if you know that a key never references multiple documents and each `value` is only a single document then you might want to pass the `flat` option.

When `flat` is given and the *value for an index only contains a single document* then the `value` will be an object and not an array.

The `all` index is always returned with a flat structure as we know there is only one document for each key.

This spares lots of repetitive array index access (`value.[0]`) for single document results.

{{> back}}
