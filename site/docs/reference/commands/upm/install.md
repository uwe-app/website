+++
title = "install"
description = "Install a plugin"
+++

{{import "header"}}

The `install` command is a utility for plugin authors; project dependencies are resolved automatically at build time so there is no need to *manually install dependencies for a project*.

Plugins are installed into a directory specific to the current release version; for example if you are using `uwe@1.0.0` the installation directory for plugins would be:

```
$HOME/.uwe/releases/1.0.0/plugins
```

Plugins can be installed from the registry, a local folder, an archive or a github repository; when a plugin is installed from an archive it **must** have been created using the [[docs/reference/commands/upm/pack]] command.

Install a plugin from the registry:

```text
upm i std::core
```

Install a specific plugin version from the registry:

```text
upm i std::core@4.1.12
```

## Usage

```text
{{include ../../../../includes/help/upm/install.txt~}}
```

{{> back}}
