+++
description = "Run scripts before a build"
+++

{{> components}}

Hooks allow us to run commands before or after a build which means you can easily integrate with your favourite CSS pre-processor, Javascript bundler or perform custom optimizations.

Commands are executed with the current working directory set to the project folder.

Hooks are [settings]({{ link "/docs/settings/" }}) in `site.toml` named using the `hooks.run` notation, so the simplest hook would be:

```toml
[[hooks.run]]
path = "./compile-css"
```

When a command path begins with a period (`.`) it is resolved relative to the project folder.

Arguments can be passed using the `args` field:

```toml
[[hooks.run]]
path = "./compile-css"
args = ["param1", "param2"]
```

To indicate ownership of files relative to `site` use the `files` field in combination with the `watch` flag and your hook will be executed when those files are changed:

```toml
[[hooks.run]]
path = "./compile-css"
files = [ "assets/css/style.css" ]
watch = true
```

When live reload is enabled changes to the files will trigger your the hook.

Once your script is working you might want to use the `stdout` and `stderr` flags to suppress program output:

```toml
[[hooks.run]]
path = "./compile-css"
stdout = false
```

By default hooks are run before a build, if you need to run a hook afterwards use the `after` flag:

```toml
[[hooks.run]]
path = "node"
args = ["optimize.js"]
after = true
```

This is particularly useful if you need custom optimizations for the build files.

### Environment

Your scripts are passed these environment variables:

* `BUILD_SOURCE` The project source directory, eg: `site`.
* `BUILD_TARGET` The target build directory, eg: `build/debug`.
* `BUILD_PROJECT` The project root directory containing `site.toml`.
* `BUILD_HOOK` The directory where the hook is defined; either the project or a plugin.
* `NODE_ENV` The current environment.

All paths passed to the hook are canonical absolute paths and the `BUILD_HOOK` directory is set as the current working directory for the command.

The `NODE_ENV` variable is set to `development` for debug builds and `production` for release builds; you can change these settings if you need to:

```toml
[node]
debug = "devel"
release = "prod"
```

### Notes

The execution order of hooks is not guaranteed.

{{> back}}
