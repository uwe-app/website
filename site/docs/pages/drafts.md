+++
description = "Mark work in progress as drafts"
+++

{{import "header"}}

Drafts let us work on pages but exclude them from release builds.

To mark a page as a draft set the `draft` flag in the page front matter:

```markdown
+++
draft = true
+++
```

If you are creating a release and want to include drafts then you can use the `--include-drafts` option:

```text
uwe --release --include-drafts
```

{{import "footer"}}
