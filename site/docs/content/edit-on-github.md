+++
description = "Link to Github editor"
+++

{{> crumbtrail}}

# {{title}}

To create a link to edit pages using Github first define the repository `url` and `edit-path` in your site settings:

```toml
[repository]
url = "https://github.com/uwe-app/website/"
edit-path = "edit/<branch-name>/"
```

{{#> note label="info"}}
Replace `<branch-name>` with your preferred branch name, eg: `master`.
{{/note}}

Then add a dependency on the [std::link][] plugin and enable the `github` feature:

```toml
[dependencies]
"std::link" = { version = "~1", features = ["github"] }
```

Afterwards you can use the `github-edit` partial wherever you want to show the *Edit on Github* link:

```handlebars
\{{> github-edit}}
```

You can set the link `text` and pass a `tooltip` to set the title attribute:

```handlebars
\{{> github-edit text="Github editor" tooltip="Edit this page on Github"}}
```

{{import "footer"}}

\{{> next-page menu="content-idx"}}

[std::link]: https://github.com/uwe-app/plugins/tree/master/std/link
