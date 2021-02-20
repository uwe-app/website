+++
description = "Settings for web server configuration files"
+++

{{import "header"}}

When a web server is started using the `--config` option of the `server` command these options are available at the top-level of the TOML file.

* `listen` IP address to bind to (default `0.0.0.0`)
* `port` Port for the HTTP server (default `8888`)

## Hosts

Virtual hosts defined using the `\[[host]]` list support these fields:

* `name` Name of the virtual host (required)
* `directory` Path to the directory for static files (required)
* `log` Log server requests (optional, default `false`)
* `require-index` Require an `index.html` file in `directory` (optional, default `true`)
* `disable-cache` Send headers to clients to disable caching (optional, default `false`)
* `deny-iframe` Add a header to prevent the embedding in iframes (optional, default `true`)

{{#>alert}}
If `directory` is a relative path it is resolved using the parent folder of the configuration file.
{{/alert}}
