+++
description = "Manage your links in a catalog"
+++

{{import "header"}}

A link catalog lets you manage your Markdown links in a single location which makes it easier to update links and prevents duplication.

To use a link catalog add this table to your `site.toml` settings:

```
[link]
catalog = "links.md"
```

Then create the `site/links.md` file to contain your links, for example:

```markdown
[uwe]: https://uwe.app
```

Now you can reference those links in any Markdown document as you would normally:

```markdown
Check out the [uwe][] project!
```

<!-- NOTE: make this a note -->

To prevent creating a page for `links.md` you should add an ignore pattern `/links.md` to an `.ignore` file.

{{import "footer"}}
