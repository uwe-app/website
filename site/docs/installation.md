+++
description = "Installing, upgrading and managing software versions"
+++

{{> crumbtrail}}

# Installation

Learn how to install the tools; we use a [version manager]({{ link "/docs/version-manager/" }}) to manage multiple releases.

* `uwe`: Compile, live preview and publish websites.
* `uws`: Utility for creating and syncing projects.
* `upm`: Plugin manger; extra commands for plugin authors.
* `uvm`: Version manager for installation and upgrading.

## Install

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

## Test Drive

Once the installation completes use this one-liner to take a test drive:

```text
uws init project && (cd project && uwe --live)
```

Which will perform the following tasks:

* Create a new website in the `project` folder
* Compile the files in `project/site` to `project/build/debug`
* Launch the site in a browser
* Watch the `project/site` directory for changes
    
You can get going right away; edit the files in `project/site` and check your changes in the browser.

Next read more about [getting started]({{ link "/docs/getting-started/" }}) or learn how to use the [version manager]({{ link "/docs/version-manager/" }}) to upgrade.

