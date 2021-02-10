+++
description = "Run external commands"
+++

{{import "header"}}

The `\[[hooks]]` list is used to define command hooks; see [[docs/in-depth/hooks]] for more detail.

If a command begins with a period (`.`) it is resolved relative to the project directory.

* `command` Path to the command to execute (required)
* `args` List of string arguments to pass to the command (optional)
* `after` Run the hook after compiler execution (optional, default `false`)
* `profiles` Execute only for the given [[docs/in-depth/build-profiles]] (optional)
* `files` List of file glob patterns that this hook owns (optional)
* `watch` Trigger this hook when one of the matched `files` changes (optional, default `false`)
* `stdout` Print command stdout (default `true`)
* `stderr` Print command stderr (default `true`)

{{#> note}}
Hooks are only executed when the `--exec` option is passed.
{{/note}}

{{import "footer"}}
