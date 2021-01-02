+++
description = "Live reload"
+++

{{import "header"}}

In [[docs/getting-started/build-project]] we used the `uwe dev` command to launch a server with live reload enabled.

Live reload has an *experimental* feature that will sync the browser location to the *last edited page* called `follow-edits`, to enable this feature update the [[docs/getting-started/site-settings]]:

```toml
[livereload]
follow-edits = true
```

Now when you edit a file the browser will navigate to the corresponding page; for example, if you edit `site/contact.md` the browser will navigate to `/contact/`.

If you want to set the initial page when launching the browser use the `--launch` option; for example, to launch the `docs` page:

```text
uwe dev --launch=docs/
```

{{import "footer"}}
