+++
description = "Create pages from results"
+++

{{import "header"}}

Large collections can require paginating for navigation so we built an easy way to paginate result lists.

To see complete [example site settings][entities-site-settings] check out the [entities example][entities-example] which is a collection of all the HTML entities with pagination enabled.

Enabling pagination for a query result behaves like [[docs/collections/page-generators]] by creating a *synthetic page* for each *page chunk* in the result list.

Created pages are numbered starting from index `1` and pagination templates are automatically given a `paginate` object so they can render navigation.

Let's look first at how to enable pagination for a query:

```toml
[pages."index.md".query]
name = "entity"
index = "all"
include-docs = true
page = { size = 100 }
```

By adding the page size definition:

```toml
page = { size = 100 }
```

The result list will be split into chunks of at most `100` items and each chunk should be rendered as a page using the `index.md` file as the template.

## Redirect

When we enable pagination the `index.md` file will not be rendered directly, instead it has multiple locations organized by page number so we must *redirect to the location of the first page*:

```toml
[redirects]
"/" = "/1/"
```

## Navigation

At this point we are generating pages `/1/` until `/22/` listing upto 100 HTML entities on each page but now we should enable navigation for the generated pages.

The `std::paginate` plugin provides a partial that will render page navigation from the `paginate` data. Ensure we have the dependency:

```toml
[dependencies."std::paginate"]
version = "^1"
apply = { styles = ["**"] }
```

Then in the `index.md` template render the pagination navigation by calling the partial:

```handlebars
\{{> paginate~}}
```

## Paginate Object

If you want to design your own partial for navigating pages this is the shape of the `paginate` object exposed to pagination templates:

```json
{
  "current": 0,
  "first": 0,
  "last": 4,
  "length": 6,
  "links": [
    {
      "href": "/posts/1/",
      "index": 0,
      "name": "1",
      "preserve": false
    },
    {
      "href": "/posts/2/",
      "index": 1,
      "name": "2",
      "preserve": true
    }
  ],
  "name": "1",
  "next": {
    "href": "/posts/2/",
    "index": 1,
    "name": "2",
    "preserve": true
  },
  "size": 5,
  "total": 2
}
```

{{import "footer"}}

[entities-site-settings]: https://github.com/uwe-app/examples/blob/main/collections/entities/site.toml
[entities-example]: https://github.com/uwe-app/examples/tree/main/collections/entities

