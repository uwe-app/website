+++
description = "Query a collection index"
+++

{{import "header"}}

Now that we have defined a [[docs/collections/data-provider]] and [[docs/collections/map-indices|mapped some indices]] for our collection we can assign queries to pages which will make collections data available to our page templates.

In the following example we find the last two blog posts and make the result available to the `index.md` page:

```toml
[pages."index.md".query]
name = "posts"
index = "all"
include-docs = true
sort = "created"
desc = true
limit = 2
```

The query must specify the collection `name` and the identifier for the `index`; the `include-docs` flag will include the underlying documents in the query result.

Using the `desc` flag with a `limit` we can get only the most recent posts in our collection of blog articles.

To see the shape of the query `result` in a page template use a [[docs/getting-started/debugging]] technique like logging the variable:

```handlebars
\{{log (json result pretty=true)}}
```

The query result will be assigned as the `result` variable to the page template but if you want to use a different name for the variable set the `parameter`:

```toml
parameter = "recent_posts"
```

{{#>note}}
To see this query in action create and run a test project:

```text
uwe new query-test blog
cd query-test && uwe dev
```

The results of the query are shown under the *Recent Posts* heading.
{{/note}}

{{import "footer"}}
