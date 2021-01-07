+++
description = "Assign a release version to projects"
+++

{{import "header"}}

As we release updates to the platform tools it is important that people are able to work on projects with the confidence that new releases will not break existing projects.

We use a project versioning strategy that will be familiar to users of `nvm`, `rvm` or other version managers like `rbenv`. This strategy let's people assign a release version to projects so that upgrades can be managed for each project individually.

To assign a release version to a project create the file `.uwe-version` in the project directory and put the release version you want to use for that project inside it, for example to use the `0.42.8` version of the platform tools for a project:

```
echo "0.42.8" > .uwe-version
```

Then that release version will always be used when compiling the project; to verify run `uvm ls` in the project directory which should indicate the version has been selected from the project version file:

```
INFO  release::list > ◯ 0.42.8 ✓ (set by /path/to/project/.uwe-version)
```

Inside your project directory if you run `uwe --version` it will show the selected version but outside the project running `uwe --version` will show the *default* version.

{{import "footer"}}
