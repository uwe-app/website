+++
description = "Create a page template"
+++

{{> components}}

Once we have a [configuration]({{ link "/docs/data-sources/configuration/" }}) and some documents for our generator we can create a template and assign the index to the template.

Create the `site/quotes/item.html` template to render each quote; it can reference the data using the `document` on the `value` for the index:

```html
\{{#with value}}
  <blockquote>\{{document.quote}}</blockquote>
  <cite>\{{document.author}}</cite>
\{{/with}}
```

And then in `site/page.toml` we can assign the index and use the `each` flag to iterate each item in the index:

```toml
["quotes/item"]
title = "Quote"
query = {name = "quotes", index = "all", each = true, include_docs = true}
```

Which indicates that we should iterate each item in the `all` index of the `quotes` generator and pass each document to the template we just created.

Next: [Index Template]({{ link "/docs/data-sources/index-template/" }})

{{> back}}
