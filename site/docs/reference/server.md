+++
description = "Settings for web server configuration files"
+++

{{import "header"}}

When a web server is started using the `--config` option of the `server` command these options are available at the top-level of the TOML file.

* `listen` IP address to bind to (default `0.0.0.0`)
* `port` Port for the HTTP server (default `8888`)
* `redirect-insecure` Redirect HTTP to HTTPS (optional, default `true`)

{{#>alert}}
The `redirect-secure` option only applies when a SSL server is configured.
{{/alert}}

## SSL

To configure an SSL server use the `\[[ssl]]` table:

* `cert` Path to the SSL certificate file (required)
* `key` Path to the SSL key file (required)
* `port` Port for the SSL server (required)

The SSL certificate should include *Subject Alternative Names* for each virtual host name or use a wildcard for subdomains, eg: `*.example.com`.

## Hosts

Virtual hosts defined in a `\[[host]]` table support these fields:

* `name` Name of the virtual host (required)
* `directory` Path to the directory for static files (required)
* `log` Log server requests (optional, default `false`)
* `require-index` Require an `index.html` file in `directory` (optional, default `true`)
* `disable-cache` Send headers to clients to disable caching (optional, default `false`)
* `deny-iframe` Add a header to prevent the embedding in iframes (optional, default `true`)

{{#>alert}}
If `directory` is a relative path it is resolved using the parent folder of the configuration file.
{{/alert}}
