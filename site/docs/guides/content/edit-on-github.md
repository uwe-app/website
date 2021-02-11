+++
description = "Link to Github editor"
+++

{{import "header"}}

To create a link to edit pages using Github first define the repository `url` and `edit-path` in your site settings:

```toml
[repository]
url = "https://github.com/uwe-app/website/"
edit-path = "edit/<branch-name>/"
```

{{#>alert label="info"}}
Replace `<branch-name>` with your preferred branch name, eg: `main`.
{{/alert}}

Then add a dependency on the [std::link][] plugin and enable the `github` feature:

```toml
[dependencies]
"std::link" = { version = "~1", features = ["github"] }
```

Afterwards you can use the `github-edit` partial wherever you want to show the *Edit on Github* link:

```handlebars
\{{> github-edit label="Edit on Github" title="Edit on Github"}}
```

{{import "footer"}}

[std::link]: https://github.com/uwe-app/plugins/tree/main/std/link
