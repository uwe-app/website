+++
description = "Create a new project from blueprints, folders or repositories"
+++

{{import "header"}}

Once you have the software [[docs/installation|installed]] the quickest way to create a new project is to use the default blueprint. Blueprints are project templates using an existing website to scaffold a new project.

To create a new project using the default blueprint run:

```text
uwe new project-name
```

Which will create a new project in the `project-name` folder using the `std::blueprint::default` plugin.

To get a list of standard blueprint plugins use the `list-blueprints` task:

```text
uwe task list-blueprints
```

Then you can create a new project using a specific blueprint like this:


```text
uwe new project-name blog
```

Which will install the `std::blueprint::blog` plugin and scaffold a new project from the plugin files.

## Custom Blueprints

You can create and distribute your own project blueprints easily as the `new` command will also accept a folder path or repository URL; the only requirement is that it has valid [[docs/getting-started/site-settings]] and plugin settings.

{{! TODO: link to the plugin settings ^^^ documentation once it is complete }}

If you have created a private blueprint use a local folder path:

```text
uwe new project-name --path /path/to/my/blueprint
```

Or to easily share blueprints use a repository URL:


```text
uwe new project-name --git https://github.com/uwe-app/blog
```

If you need to use a folder inside a repository pass the `--prefix` option:

```text
uwe new --git=https://github.com/uwe-app/blueprints --prefix=blog
```

{{import "footer"}}
