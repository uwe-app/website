+++
description = "Pass custom test runner options"
+++

{{import "header"}}

In the [[docs/tutorials/adding-integration-tests]] tutorial we showed how to scaffold and run integration tests.

To test with a different browser, switch configuration files or for other advanced use cases it is important to know how to pass custom options to the test runner.

## Default Options

To change the default test runner options update the values in `test/cypress.opts` which sets the default options passed to [cypress][]; each line is passed as an option to the test runner.

## Command Line Options

For more complex use cases pass options on the command line after `--`; here is an example that switches to the Firefox browser for testing:

```
uwe test . -- \
  --config-file test/cypress.json \
  -b firefox \
  --headless \
  --reporter-options \
  --no-color
```

{{#> note}}
When passing custom options using `--` the default options from `test/cypress.opts` are not used so you must pass the path to the configuration file.
{{/note}}

For fine-grained control of the command name, arguments and environment variables see the [[docs/reference/settings/test|test settings]].

{{import "footer"}}

[cypress]: https://www.cypress.io/
