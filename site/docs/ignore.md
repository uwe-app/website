+++
description = "How to ignore files"
+++

{{> crumbtrail}}

Hidden files and certain folders are ignored by convention:

* `generators` Location for data sources (eg: JSON documents).
* `includes` Location for include files (eg: example files).
* `partials` Location for template partials.

Sometimes you may wish to prevent files from being compiled; you can use the `.gitignore` and `.ignore` files to do this.

If you need to include files that have been excluded by `.gitignore` add an `.ignore` file which will take precedence.

For example this website has a files directory with binary executables for download. We want to ignore these files from git but include them in the website. First we ignore all the files from git (`.gitignore`):

```
linux
macos
windows
```

Then override the pattern in `.ignore`:

```
!linux
!macos
!windows
```

Job done!

{{> back}}
