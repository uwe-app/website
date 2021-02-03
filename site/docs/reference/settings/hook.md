+++
description = "Run external commands"
+++

{{import "header"}}

The `[hook.run]` table is used to define command hooks; see [[docs/guides/other/hooks]] for more detail.

* `path` Path to the command to execute (required)
* `args` List of string arguments to pass to the command (optional)
* `after` Run the hook after compiler execution (optional, default `false`)
* `profiles` Execute only for the given build [[docs/guides/other/profiles]] (optional)
* `files` List of file glob patterns that this hook owns (optional)
* `watch` Trigger this hook when one of the matched `files` changes (optional, default `false`)
* `stdout` Print command stdout (default `true`)
* `stderr` Print command stderr (default `true`)

{{#> note}}
Hooks are only executed when the `--exec` option is passed.
{{/note}}

{{import "footer"}}
