+++
description = "Upgrade to a new release"
+++

{{import "header"}}

List versions to see if a newer release is available:

```text
uvm ls
```

If a new release is available you can upgrade by running the `update` command:

```
uvm update
```

If you want to restrict the upgrade to a specific version range:

```
uvm update ^1
```

Which can be enforced using the `UVM_INSTALL_VERSION_RANGE` environment variable:

```
export UVM_INSTALL_VERSION_RANGE="^1"
```

Afterwards running `uvm update` without any options will restrict upgrades to `>= 1.0.0` and `< 2.0.0`.

The version manager program (`uvm`) is considered stable and is not included when upgrading to a new release; if you need to upgrade the version manager use the `--self` option:

```text
uvm update --self
```

We try our best to ensure you never need to downgrade by planning for backwards compatibility but we do make mistakes so if you need it the `use` command will install and select a specific version:

```text
uvm use 0.30.0
```

Rather than relying on the *default* release version a better approach is to use [[docs/installation/project-versioning]] which we discuss next.

{{#>note}}
See the [[docs/reference/commands/uvm|version manager]] command reference for more information.
{{/note}}

{{import "footer"}}
