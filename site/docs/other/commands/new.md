+++
description = "Create a project"
+++

{{> crumbtrail}}

# {{title}}

The `new` command creates a new project from a [blueprint]({{ link "/docs/getting-started/new-project/" }}), folder or repository URL.

To create a new project using the default blueprint pass the project name:

```text
uwe new project-name
```

If you know the language or host you can set them when creating the project:

```text
uwe new project-name --language=fr --host=docs.example.com
```

If you want to use a particular blueprint it can be a submodule path such as `tailwind`:

```text
uwe new project-name tailwind
```

## List

To print a list of available blueprints run:

```text
uwe ls --blueprints
```

## Multi Lingual

For multi-lingual sites you can pass the locales option to create the structure for multiple languages. The locales is a comma-delimited list of Unicode language identifiers:

```text
uwe new project-name --locales=fr,de,zh
```

Which will create the skeleton structure in the `site/locales` directory and update the [fluent settings]({{ link "/docs/settings/fluent/" }}).

When creating a multi-lingual project a [redirect]({{ link "/docs/pages/redirects/" }}) is configured for the default locale. The default locale is the `--language` option when it is given otherwise the first locale in the list is used.

When `--language` is combined with `--locales` the given language must exist in the list of locales.

## Repositories

To use an alternative blueprint repository pass a URL such as:

```text
uwe new project-name https://github.com/uwe-app/blog.git
```

If you clone via SSH the key agent is used:

```text
uwe new project-name git@github.com:uwe-app/blog.git
```

## Usage

```text
{{include ../../../includes/help/uwe/new.txt}}
```

{{> back}}