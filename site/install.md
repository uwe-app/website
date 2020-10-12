+++
description = "Install the Universal Web Editor software"
+++

## Quick Install

A preview of the command-line tools is available for Linux and MacOS.

```text
curl https://release.uwe.app/install.sh | sh
```

Which will download the version manager `uvm` for your platform into the `~/.uwe` directory and use it to complete the installation.

Once the installation is complete you can start a new shell session or update the `PATH` for the current shell session:

```text
source $HOME/.uwe/env
```

Congratulations, you should now have `uwe` available (check with `which uwe`) and can upgrade to the latest version with `uvm latest`. To learn more about using the version manager see the [installation documentation]({{ link "/docs/installation/" }}).

## Test Drive

To get started and play around you can create a new *project* with this one-liner:

```text
uws init project && (cd project && uwe --live)
```

Which will perform the following tasks:

* Create a new website in the `project` folder
* Compile the files in `project/site` to `project/build/debug`
* Launch the site in a browser
* Watch the `project/site` directory for changes
    
You can get going right away; edit the files in `project/site` and check your changes in the browser. To learn more check out [usage]({{ link "/usage/" }}) and the [docs]({{ link "/docs/" }}).
