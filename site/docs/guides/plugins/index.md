+++
description = "Introduction to the plugin system"
+++

{{import "header"}}

Plugins let us share styles, scripts, assets and other files between projects; developers can use the plugin manager `upm` to lint and package plugins.

See the [plugins repository][plugins] for the source to all the plugins in the registry.

{{menu "plugins-idx"}}

{{#>alert label="info"}}
Currently publishing plugins is not a public feature as we refine the plugin system. Once plugins are considered stable we will consider how best to support publishing plugins to the plugin registry.

If you are working in a team and need to share plugins the workaround for now is to use `git` [[docs/guides/plugins/dependencies]].
{{/alert}}

[plugins]: https://github.com/uwe-app/plugins
