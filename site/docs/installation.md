+++
description = "Installing, upgrading and managing software versions"
+++

## Installation

Learn how to install, upgrade and uninstall the software; we use a version manager (`uvm`) to manage multiple releases.

### Install

Currently we support the Linux and MacOS operating systems; use our [quick install script](https://release.uwe.app/install.sh) to download `uvm` which will install all the required components:

```text
curl https://release.uwe.app/install.sh | sh
```

Once the installation is complete you can start a new shell session or update the `PATH` for the current shell session:

```text
source $HOME/.uwe/env
```

Then check the installation succeeded:

```text
which uwe
```

### List

List versions to see if a newer release version is available:

```text
uvm ls
```

### Upgrade

To upgrade to the latest version run:

```text
uvm latest
```

### Downgrade

We try our best to ensure you never need to downgrade by planning for backwards compatibility but we do make mistakes so if you need it the `use` command will install and select a specific version:

```text
uvm use 0.30.0
```

### Update

The version manager program (`uvm`) is considered stable and is not included when upgrading to a new release; however if you want to use a newer version run the `update` command:

```text
uvm update
```

### Remove & Prune

Reclaim some disc space by removing unused versions; use the `rm` command to remove a specific version (it cannot be the current version!):

```text
uvm rm 0.30.0
```

Or use `prune` to remove all versions older than the current version:

```text
uvm prune
```

### Uninstall

To uninstall the software run:

```text
uvm uninstall
```

When prompted type `y` to confirm you want to uninstall the program and all it's components. If you decide to uninstall we would appreciate it if you could let us know why in the [community issues](https://github.com/uwe-app/community/issues).

Any websites you have created will not be deleted and you should remove them manually.
