+++
description = "Map profile names to NODE_ENV"
+++

{{import "header"}}

The `[node]` table can be used to map [[docs/other/profiles|profile names]] to the `NODE_ENV` variable set when running [[docs/other/hooks]].

The default mappings are `debug` to `development`, `release` to `production` and  `dist` to `production`.

You can overwrite the defaults or define your own mappings, for example:

```toml
[node]
debug = "dev"
release = "prod"
dist = "prod"
stage = "stage"
```

{{import "footer"}}