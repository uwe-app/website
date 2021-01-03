+++
description = "Upgrading and managing software versions"
+++

{{import "header"}}

Learn how to upgrade and manage versions using `uvm`.

## List

List versions to see if a newer release version is available:

```text
uvm ls
```

## Update

To upgrade to the latest version run:

```text
uvm update
```

The version manager program (`uvm`) is considered stable and is not included when upgrading to a new release; however if you want to use a newer version use the `--self` option:

```text
uvm update --self
```

## Downgrade

We try our best to ensure you never need to downgrade by planning for backwards compatibility but we do make mistakes so if you need it the `use` command will install and select a specific version:

```text
uvm use 0.30.0
```

## Remove & Prune

Reclaim some disc space by removing unused versions; use the `rm` command to remove a specific version (it cannot be the current version!):

```text
uvm rm 0.30.0
```

Or use `prune` to remove all versions older than the current version:

```text
uvm prune
```

## Uninstall

To uninstall the software run:

```text
uvm uninstall
```

When prompted type `y` to confirm you want to uninstall the program and all it's components. If you decide to uninstall we would appreciate it if you could let us know why in the [community discussions](https://github.com/uwe-app/community/discussions).

Any websites you have created will not be deleted and you should remove them manually.
