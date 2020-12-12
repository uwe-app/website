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
[UWE]: https://uwe.app
```

Now you can reference those links in any Markdown document as you would normally:

```markdown
Check out the [UWE][] app!
```

{{#> note label="info"}}
To prevent creating a page for `links.md` you should add the ignore pattern `/links.md` to an `.ignore` file in the `site` directory.
{{/note}}

{{import "footer"}}
