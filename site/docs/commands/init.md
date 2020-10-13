+++
description = "Create a project"
+++

{{> crumbtrail}}

The `init` command creates a new project from a [blueprint]({{ link "/docs/getting-started/new-project/" }}), folder or repository URL.

To create a new project using the default blueprint pass the project name:

```text
uws init new-project
```

If you know the language or host you can set them when creating the project:

```text
uws init new-project --language=fr --host=docs.example.com
```

If you want to use a particular blueprint it can be a submodule path such as `tailwind`:

```text
uws init new-project tailwind
```

### List

To print a list of available blueprints run:

```text
uws ls
```

### Multi Lingual

For multi-lingual sites you can pass the locales option to create the structure for multiple languages. The locales is a comma-delimited list of Unicode language identifiers:

```text
uws init new-project --locales=fr,de,zh
```

Which will create the skeleton structure in the `site/locales` directory and update the [fluent settings]({{ link "/docs/settings/fluent/" }}).

When creating a multi-lingual project a [redirect]({{ link "/docs/settings/redirect/" }}) is configured for the default locale. The default locale is the `--language` option when it is given otherwise the first locale in the list is used.

When `--language` is combined with `--locales` the given language must exist in the list of locales.

### Repositories

To use an alternative blueprint repository pass a URL such as:

```text
uwe init new-project https://github.com/uwe-app/blog.git
```

If you clone via SSH the key agent is used:

```text
uwe init new-project git@github.com:uwe-app/blog.git
```

### Usage

```text
{{include ../../includes/help/init.txt}}
```

{{> back}}
