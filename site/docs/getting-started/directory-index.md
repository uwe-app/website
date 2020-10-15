+++
description = "Directory index listings"
+++

{{> crumbtrail}}

# {{title}}

As you start to design the structure for your website it is useful to quickly create a list of links for the pages in a folder.

The `listing` partial is part of the [std::core][] plugin and will render links to all the pages in the current folder *except the current page* so is ideal for `index.md` files.

Let's say you want a folder for documentation, create the `docs/index.md` file and add this content:

```markdown
+++
description = "Documentation"
+++

## \{{title}}

\{{> listing}}
```

Which will generate an unordered list of links to the pages in the `docs` folder including the page descriptions when available. The list is given a `class` of `listing` you can pass an alternative class name if you like:

```handlebars
\{{> listing class="index-list"}}
```

[std::core]: https://github.com/uwe-app/plugins/blob/master/std/core
