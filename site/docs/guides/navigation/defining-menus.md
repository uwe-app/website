+++
description = "Define navigation menus"
+++

{{import "header"}}

We saw in [[docs/cookbook/directory-listing]] that it is easy to create a list of links to the pages in a folder but often we need more control over the navigation items and presentation; this is particularly useful when we need to control the *order of menu items*.

Menu definitions go in the [[docs/guides/getting-started/site-settings]] and are named so that we can reference them later when they should be rendered; they can be a folder (similar to a directory listing) or a list of page paths.

## Directory

Using a `directory` definition is convenient when order of the menu items is not important and you just want to link to the pages in a folder:

```toml
[menu.docs]
directory = "/docs/"
```

## Pages

When order is important list the page paths explicitly:

```toml
[menu.navigation]
pages = [
  "/docs/guides/navigation/defining-menus/",
  "/docs/guides/navigation/rendering-menus/",
]
```

## Variants

These menus will render using links but sometimes we want to also include a paragraph with the description for each page; for example in the index page for a folder it is good practice to show more detail about the page.

Use the `variants` setting to create alternative versions of each menu that will include a description for each page like this:

```toml
[menu]
variants = [{ description = true, suffix = "-idx" }]
```

Which will create additional menu definitions that include the description for each page; if your menu is called `docs` you can refer to the variant as `docs-idx`.

{{import "footer"}}
