+++
description = "Create a new project from blueprints, folders or repositories"
+++

{{> crumbtrail}}

# {{title}}

Once you have an [[docs/installation]] the quickest way to create a new project is to use the default project blueprint using the `uws` program:

```text
uwe new project-name
```

Which will create a new website in the `project-name` folder using the `default` blueprint.

To get a list of available blueprints use the `ls` command:

```text
uwe ls --blueprints
```

Then you can create a new project using a specific blueprint like this:


```text
uwe new project-name tailwind
```

## Custom Blueprints

You can create and distribute your own project blueprints easily as the `init` command will also accept a folder path or repository URL; the only requirement is that it has valid [[docs/settings]].

If you have created a private blueprint use a local folder path:

```text
uwe new project-name /path/to/my/blueprint
```

Or to easily share blueprints use a repository URL:


```text
uwe new project-name https://github.com/uwe-app/blog
```

{{import "footer"}}
