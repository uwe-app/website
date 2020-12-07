+++
description = "Manage site authors"
+++

{{import "header"}}

Pages accept a list of `authors` which can contain objects with an author name and link like this:

```toml
authors = [{name = "Muji", link = "https://tmpfs.org"}]
```

But for the case where multiple people are contributing to a blog it can be tedious to keep repeating the author information.

To make multiple authors easier to manage they can be defined as in the settings and referenced by `byline`. First define the authors in the settings and set the default `byline`:

```toml
[page]
byline = ["tmpfs"]
description = "..."
keywords = "..."

[authors.tmpfs]
name = "Muji"
link = "https://tmpfs.org"
```

Now in the page front matter use `byline` to set the author information:

```toml
+++
title = "Blog Article"
byline = [ "tmpfs" ]
+++
```

{{> back}}
