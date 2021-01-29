+++
description = "Generate synthetic pages"
+++

{{import "header"}}

Page generators are a powerful aspect of collections that let us generate *synthetic pages* for each item in a result list.

Instead of passing the query result to a page template when we add the `each` keyword a query becomes a page generator that *iterates the results* and *generates a page* for each item in the result.

To understand how this works first let's look at a basic query:

```toml
[pages."index.md".query]
name = "quotes"
index = "all"
include-docs = true
```

Which states *get all the documents* in the *quotes collection* and assign them to the `result` variable in the `index.md` page template.

When we add the `each` flag:

```toml
[pages."quotes/item.md".query]
name = "quotes"
index = "all"
include-docs = true
each = true
```

Then we are saying for each item in the query result *create a page* in the `quotes` folder using the `quotes/item.md` page template to *render each page*.

In this case the `result` is **not an array** but a single entry in the result list. The `result` assigned to the page template will have a `key` which can be used to build links to the synthetic pages and a `value` corresponding to the actual document data because we used `include-docs`.

{{import "footer"}}
