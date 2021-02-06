+++
description = "Modify the test runner commands"
+++

{{import "header"}}

The `[test]` table controls the commands used for test runners; currently only a `[test.integration]` table is available however later we may add support for running unit tests.

The `[test.integration]` table supports these fields:

* `command` Command name for the integration test runner (optional, default `npx`)
* `args` List of base arguments to pass to the test runner command (optional, default `["cypress", "run"]`)
* `opts` File used for default options (optional, default `test/cypress.opts`)
* `env` Map of environment variables to set (optional)

{{#> note type="warn"}}
Do not set the `CYPRESS_BASE_URL` environment variable as it is automatically set to the URL of the test server.
{{/note}}

## Example

Set an environment variable for every test runner invocation:

```toml
[test.integration.env]
"EXTERNAL_API" = "https://staging.example.com/api/"
```

Then it can be accessed in your test specs:

```js
cy.request(Cypress.env('EXTERNAL_API'))
```

See [cypress environment variables][] for more information.

{{import "footer"}}

[cypress environment variables]: https://docs.cypress.io/guides/guides/environment-variables.html
