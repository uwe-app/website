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

## Upgrade

To upgrade to the latest version run:

```text
uvm latest
```

## Downgrade

We try our best to ensure you never need to downgrade by planning for backwards compatibility but we do make mistakes so if you need it the `use` command will install and select a specific version:

```text
uvm use 0.30.0
```

## Update

The version manager program (`uvm`) is considered stable and is not included when upgrading to a new release; however if you want to use a newer version run the `update` command:

```text
uvm update
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

## Runtime

Our tools rely on some runtime assets which are fetched on demand to resolve available plugins and syntax highlighting definitions. If you need to manually update the runtime repository run this command:

```text
uvm runtime
```

Normally this should not be necessary but perhaps some new syntax language definitions have been released and you want to try them.

## Uninstall

To uninstall the software run:

```text
uvm uninstall
```

When prompted type `y` to confirm you want to uninstall the program and all it's components. If you decide to uninstall we would appreciate it if you could let us know why in the [community issues](https://github.com/uwe-app/community/issues).

Any websites you have created will not be deleted and you should remove them manually.
