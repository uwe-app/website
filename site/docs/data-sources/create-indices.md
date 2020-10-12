+++
description = "How to define custom indices"
+++

{{> crumbtrail}}

To create an index for all documents use the `identity` flag:

```toml
[index.all]
identity = true
```

Defining custom indices is simple; just give the index a name:

```toml
[index.author]
```

As a convenience the `key` to index on is derived from the index name but you can assign a key:

```toml
[index.author]
key = "author.name"
```

Notice you may use dot-delimited paths to target nested fields.

When multiple documents match you can collect them into a list of documents using the `group` flag:

```toml
[index.tags]
group = true
```

The document field referenced by an index key must be a string or array of strings. If a document does not have the referenced key it is **not included in the generated index**.

{{> back}}
