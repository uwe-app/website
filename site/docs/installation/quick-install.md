+++
description = "Install the platform tools"
+++

{{import "header"}}

Currently we support the Linux and MacOS operating systems; use our [quick install script][] to install all the required components:

```text
curl https://releases.uwe.app/install.sh | sh
```

Once the installation is complete you can start a new shell session or update the `PATH` for the current shell session:

```text
source $HOME/.uwe/env
```

Then check the installation succeeded:

```text
uwe --version
```

After installation these are the installed programs:

* [[docs/reference/commands/uwe]] Compile, live preview and publish websites.
* [[docs/reference/commands/uvm]] Version manager for installation and upgrading.
* [[docs/reference/commands/upm]] Plugin discovery and authoring tools.

## Test Drive

Once the installation completes use this one-liner to take a test drive:

```text
uwe new project && (cd project && uwe dev)
```

Which will perform the following tasks:

* Create a new website in the `project` folder
* Compile the files in `project/site` to `project/build/debug`
* Launch the site in a browser
* Watch the `project/site` directory for changes

You can get going right away; edit the files in `project/site` and check your changes in the browser.

To learn more about the platform head over to [[docs/getting-started]] or read on to learn how to upgrade and manage release versions.

{{import "footer"}}

[quick install script]: https://github.com/uwe-app/releases/blob/main/install.sh
