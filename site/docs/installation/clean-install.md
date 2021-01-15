+++
description = "Remove and re-install the platform tools"
+++

{{import "header"}}

During the alpha and beta testing we may ask people to *clean install* the platform tools, this document describes the process for removing and re-installing the platform tools.

Most of the time a clean install is not necessary and we recommend running `uvm update` to upgrade to the latest version but sometimes we change the layout of the installation directory and a clean install is the best option.

We store all files in a `.uwe` folder within your home directory; to uninstall just remove this folder. The version manager `uvm` has an uninstall command which will delete this directory:

```
uvm uninstall
``` 

Type **y** when prompted and the `.uwe` directory will be removed.

If for some reason `uvm` is not available you could uninstall manually like this:

```
rm -rf $HOME/.uwe
```

Then to re-install use the quick install script:

```
curl https://releases.uwe.app/install.sh | sh
```

Afterwards the platform tools should be available again, if you run into any problems please reach out to us on [discord][].

{{import "footer"}}

[discord]: https://discord.gg/gmhWetv2fE "Discord Chat"
