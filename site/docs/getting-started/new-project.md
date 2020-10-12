+++
description = "Create a new project from blueprints, folders or repositories"
+++


{{> components}}

## Create Project

The quickest way to create a new project is to use the default project blueprint using the `uws` program:

```text
uws init project-name
```

Which will create a new website in the `project-name` folder using the `default` blueprint.

To get a list of available blueprints use the `ls` command:

```text
uws ls
```

Then you can create a new project using a specific blueprint like this:


```text
uws init project-name tailwind
```

## Custom Blueprints

You can create and distribute your own project blueprints easily as the `init` command will also accept a folder path or repository URL; the only requirement is that it has valid [settings]({{ link "/docs/settings/" }}).

If you have created a private project blueprint use a local folder path:

```text
uws init project-name /path/to/my/blueprint
```

Or to easily share blueprints use a repository URL:


```text
uws init project-name https://github.com/uwe-app/blog
```
