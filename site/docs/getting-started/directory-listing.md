+++
description = "Directory index listings"
+++

{{import "header"}}

As you start to design the structure for your website it is useful to quickly create a list of links for the pages in a folder.

The `listing` partial is part of the [std::listing][] plugin so you should add it to the dependencies in your site settings:

```toml
[dependencies]
"std::listing" = { version = "~1" }
```

It will render links to all the pages in the current folder *except the index page* so is ideal for `index.md` files.

Let's say you want a folder for documentation, create the `docs/index.md` file and add this content:

```markdown
+++
description = "Documentation"
+++

# \{{title}}

\{{> listing}}
```

Which will generate an unordered list of links to the pages in the `docs` folder. The list is given a `class` of `listing` you can pass an alternative class name if you like:

```handlebars
\{{> listing class="index-list"}}
```

If you also want to include page descriptions as a paragraph below each link use the `with-description` parameter:

```handlebars
\{{> listing with-description=true}}
```

By default all files will be included in a directory listing but sometimes certain files such as error pages should be ignored, to omit a page from a directory listing disable the listing flag. For example, we do this for the `404.md` files:

```markdown
+++
listing = false
+++
```

So that when a listing is generated for the root of the website the error page is not included.

{{import "footer"}}

[std::listing]: https://github.com/uwe-app/plugins/blob/main/std/listing
