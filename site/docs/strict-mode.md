+++
description = "What is strict mode and how to disable it"
+++

{{> components}}

Templates are parsed with strict mode enabled so it is an error if a variable does not exist.

If you define page specific data that does not exist as a global variable and then reference it in a layout that is used by all pages you may generate an error.

You can either define the variable as global with a default value in `data.toml` or you can disable strict mode in the [settings]({{ link "/docs/settings/" }}).

{{> back}}
