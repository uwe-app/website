+++
description = "Compile a project to static pages"
+++

{{> crumbtrail}}

## {{title}}

Use the `uwe` command line tool to compile your website; run `uwe` in the project working directory or pass a project path:

```text
uwe /path/to/project
```

The typical workflow is to run with live reload enabled:

```text
uwe --live
```

Then edit your pages using your preferred text editor and observe the changes in your browser.

### Release

To compile a release build run with the `--release` option:

```text
uwe --release
```

Your website files are now in `build/release`.

{{> next-page menu="getting-started-idx"}}
