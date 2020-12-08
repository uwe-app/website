+++
description = "How to ignore files"
+++

{{import "header"}}

Hidden files, files ending in `.hbs` and certain folders are ignored by convention along with any patterns in `.gitignore` files; to add custom ignore patterns create `.ignore` files.

These folders are ignored by convention:

* `collections` Location for data collections (eg: JSON documents).
* `includes` Location for include files (eg: example files).
* `partials` Location for template partials.

## Force Include

If you need to include files that have been excluded by `.gitignore` add an `.ignore` file which will take precedence.

For example an earlier version of this website had a files directory with binary executables for download. We want to ignore these files from git but include them in the website. First we ignore all the files from git (`.gitignore`):

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

{{import "footer"}}
