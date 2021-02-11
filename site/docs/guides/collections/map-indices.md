+++
description = "Index the collection"
+++

{{import "header"}}

Once we have loaded some data in to the collection we must create some indices that we can use for our queries.

The simplest index is one that includes all documents. Following on from the previous example extracted from the [blog site settings][blog-site-settings] here is an index called `all` using the documents loaded from the `posts` data provider:

```toml
[db.load.posts.on.all]
key = "*"
```
{{#>alert}}
The wildcard character `*` is special and indicates that the index should include all documents.
{{/alert}}

Suppose we only wanted to include pages that have a `description` in our collection index we could specify the key:

```toml
[db.load.posts.on.descriptions]
key = "description"
```

It is possible to use dot-style property access for the `key` to address nested properties:

```toml
[db.load.posts.on.tags]
key = "taxonomies.tags"
```

Which includes only documents that have some tags defined.

{{import "footer"}}

[blog-site-settings]: https://github.com/uwe-app/blueprints/blob/main/blog/site.toml
