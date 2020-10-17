+++
description = "Attribute content to authors"
+++

{{> crumbtrail}}

# {{title}}

To attribute content to author(s) first define some authors in the site settings:

```toml
[authors.tmpfs]
name = "Muji"
url = "https://tmpfs.org"
```

Afterwards authors can be referenced by identifier which in this example is `tmpfs`.

Each author entry supports these fields:

* `name`: The author name.
* `url`: Link to a website for the author.
* `avatar`: Link to an image for the author.

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

{{#> note type="warn" label="warn"}}
Page authors override global authors.
{{/note}}

## Template Data

Pages can access the entire authors list and also those attributed for the current page via `authors`:

```json
{{json authors}}
```

{{> next-page menu="content-idx"}}

