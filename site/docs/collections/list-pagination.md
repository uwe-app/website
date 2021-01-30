+++
description = "Create pages from results"
+++

{{import "header"}}

Large collections can require paginating for navigation so we built an easy way to paginate result lists.

To see complete [example site settings][entities-site-settings] check out the [entities example][entities-example] which is a collection of all the HTML entities with pagination enabled.

Enabling pagination for a query result behaves like [[docs/collections/page-generators]] by creating a *synthetic page* for each *page chunk* in the result list.

Created pages are numbered starting from index `1` and pagination templates are automatically given a `paginate` object so they can render navigation controls.

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

At this point we are generating pages listing upto 100 items on each page but now we should enable navigation controls for the generated pages.

The `std::paginate` plugin provides a partial that will render navigation controls from the `paginate` data. Ensure we have the dependency:

```toml
[dependencies."std::paginate"]
version = "^1"
apply = { styles = ["**"] }
```

Then in the `index.md` template render the pagination navigation by calling the partial:

```handlebars
\{{> paginate~}}
```

## Paginate Data

If you want to design your own partial for navigating pages this is the shape of the `paginate` object exposed to pagination templates.

* `current`: Index of the current page (zero-based)
* `first`: The index into the collection for the first item on this page (zero-based)
* `last`: The index into the collection for the last item on this page (zero-based)
* `length`: Total number of items in the collection
* `links`: List of links for each page
* `name`: Name for the current page (one-based)
* `next`: Link information for the next page when available
* `prev`: Link information for the previous page when available
* `size`: Number of items on this page, normally the page size but may be less
* `total`: Total number of pages

The `prev`, `next` and items in the `links` list have these properties:

* `name`: Name for the page (one-based)
* `href`: Path that should be passed to the [[docs/reference/helpers/link|link helper]]

Here is a sample JSON document for page 2 of 3:

```json
{
  "current": 1,
  "first": 2,
  "last": 3,
  "length": 5,
  "links": [
    {
      "href": "/posts/1/",
      "name": "1"
    },
    {
      "href": "/posts/2/",
      "name": "2"
    },
    {
      "href": "/posts/3/",
      "name": "3"
    }
  ],
  "name": "2",
  "next": {
    "href": "/posts/3/",
    "name": "3"
  },
  "prev": {
    "href": "/posts/1/",
    "name": "1"
  },
  "size": 2,
  "total": 3
}
```

{{import "footer"}}

[entities-site-settings]: https://github.com/uwe-app/examples/blob/main/collections/entities/site.toml
[entities-example]: https://github.com/uwe-app/examples/tree/main/collections/entities

