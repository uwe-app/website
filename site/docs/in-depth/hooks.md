+++
description = "Run commands before or after a build"
+++

{{import "header"}}

Hooks allow us to run commands before or after a build which means you can easily integrate with your favourite CSS pre-processor, Javascript bundler or perform custom tasks.

Hook command execution requires that the `--exec` capability is granted on the command line, for example:

```text
uwe dev --exec
```

Commands are executed with the current working directory set to the project folder.

Hooks are [[docs/guides/getting-started/site-settings]] named using the `hooks.run` notation, so the simplest hook would be:

```toml
\[[hooks.run]]
path = "echo"
```

Arguments can be passed using the `args` field:

```toml
\[[hooks.run]]
path = "echo"
args = ["Hello", ", world!"]
```

{{#> note label="info"}}
When a command `path` begins with a period (eg: `./build.sh`) it is resolved relative to the project folder which is useful if you have executable programs inside the project.
{{/note}}

## Environment

Hooks are passed the following environment variables; paths are canonical absolute paths.

* `BUILD_SOURCE` The project source directory, eg: `site`.
* `BUILD_TARGET` The target build directory, eg: `build/debug`.
* `BUILD_PROJECT` The project root directory containing `site.toml`.
* `BUILD_FILE` The file that triggered the hook to be executed when watching files.
* `NODE_ENV` The current environment.

{{#> note label="info"}}
The `BUILD_FILE` variable will only be set when live reload is watching files and a matched file has changed.
{{/note}}

## Watch

To indicate ownership of files relative to `site` use the `files` glob patterns in combination with the `watch` flag and your hook will be executed when matched files change. File glob patterns are resolved relative to the `site` directory.

For example, when live reload is enabled changes to CSS files in `site/src` will trigger the hook:

```toml
\[[hooks.run]]
path = "npm"
args = ["run", "build"]
files = [ "src/*.css" ]
watch = true
```

## After

By default hooks are run before a build, if you need to run a hook afterwards use the `after` flag:

```toml
\[[hooks.run]]
path = "node"
args = ["optimize.js"]
after = true
```

This is particularly useful if you need custom optimizations for the build files.

## Output

Once your script is working you might want to use the `stdout` and `stderr` flags to suppress program output:

```toml
\[[hooks.run]]
path = "./compile-css"
stdout = false
```

## Node Environment

The `NODE_ENV` variable is set to `development` for debug builds and `production` for release builds; you can change these settings if you need to:

```toml
[node]
debug = "devel"
release = "prod"
```

## Notes

The execution order of hooks is not guaranteed.

{{import "footer"}}
