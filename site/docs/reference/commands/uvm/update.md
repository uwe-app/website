+++
title = "update"
description = "Upgrade the platform tools"
+++

{{import "header"}}

Upgrade to the latest version of the platform tools:

```text
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

To update the version manager executables:

```text
uvm update --self
```

## Usage

```text
{{include ../../../../includes/help/uvm/update.txt~}}
```

{{> back}}
