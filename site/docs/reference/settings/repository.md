+++
description = "Repository information"
+++

{{import "header"}}

The `[repository]` table sets information about a corresponding git repository which can be used to build [[docs/content/edit-on-github]] links.

* `url` Absolute URL for the repository (required)
* `edit-path` Relative path used to build an *edit* link (optional)

## Example

```toml
[repository]
url = "https://github.com/uwe-app/website/"
edit-path = "edit/main/"
```

{{#> note}}
Use a trailing slash for the `url` and omit a leading slash from the `edit-path` so they are joined correctly.
{{/note}}

{{import "footer"}}

