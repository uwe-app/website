+++
description = "Attribute content to authors"
+++

{{import "header"}}

To attribute content to author(s) first define some authors in the site settings:

```toml
[authors.tmpfs]
name = "Muji"
url = "https://tmpfs.org"
```

Afterwards authors can be referenced by their alias which in this example is `tmpfs`, see [[docs/reference/settings/authors]] for the complete list of fields.

## Global Authors

If you want to assign authors to all pages you can use the global page data in the site settings:

```toml
[authors.tmpfs]
name = "Muji"
url = "https://tmpfs.org"

[page]
authors = ["tmpfs"]
```

## Page Authors

To assign author(s) to pages refer to them in the front matter:

```markdown
+++
authors = ["tmpfs"]
+++
```

## Template Data

Pages can access the entire authors list and also those attributed for the current page via `authors`:

```json
{{json authors pretty=true}}
```

{{import "footer"}}
