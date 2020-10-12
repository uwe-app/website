+++
title = "Create project"
description = "How to create a new project"
+++

{{> components}}

Use the `init` command and pass the `<target>` path to create a new project:

```text
ht init new-project
```

This will cache a copy of the blueprint repository if necessary and create the `new-project` folder using the default blueprint.

The `init` command also accepts a `<source>` which can be a cached submodule path or a URL to a remote repository.

The fastest way is to use a cached blueprint:

```text
ht init new-project style/newcss
```

The equivalent using `https:` would be:

```text
ht init new-project https://github.com/hypertext-live/blueprint-newcss.git
```

{{> back}}
