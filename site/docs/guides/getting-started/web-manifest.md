+++
description = "Progressive web application manifest"
+++

{{import "header"}}

If you are creating a progressive web application (PWA) you can add the `app.webmanifest` file to your `site` directory and the manifest will be linked from the generated pages.

If you prefer to use a different file name set the `manifest` in your  [[docs/guides/getting-started/site-settings]]:

```toml
manifest = "app.json"
```

Web app manifest files are resolved relative to the `site` folder.

{{import "footer"}}
