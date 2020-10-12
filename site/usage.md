## Usage

Once you have the command-line tools [installed]({{ link "/install/" }}) you can get help with `uwe --help` and more about each command using `uwe help <cmd>`. If you run `uwe docs` a local version of the documentation on this website is launched in a browser.

### Components

The compiler `uwe` is used most often but here is a brief overview of the various tools:

* `uwe`: Compile, live preview and publish websites.
* `uws`: Utility for creating and syncing projects.
* `upm`: Plugin manger; extra commands for plugin authors.
* `uvm`: Version manager for installation and upgrading.

### Init

To create a new website use the `uws init` command:

```text
uws init website
```

Which will create the folder `website` using the default blueprint; to see available blueprints run `uws ls`. See [project blueprints]({{ link "/docs/blueprints/" }}) to learn more.

### Build


As a convenience the most common command `build` is run when no command is given; so you can build the new website:

```text
uwe website
```

Or if you prefer:

```text
cd website && uwe
```

Which will process all files in `site` and write the result to `build/debug`. For a release version the files are written to `build/release`:

```text
uwe --release
```

### Live Reload

To live reload files in the browser as you work pass the `--live` option:

```text
uwe --live
```

