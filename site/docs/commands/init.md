+++
description = "Create a project"
+++

{{> components}}

The `init` command creates a new project from a [blueprint]({{ link "/docs/blueprints/" }}).

To create a new project using the default blueprint pass the project name:

```text
ht init new-project
```

If you know the language or host you can set them when creating the project:

```text
ht init new-project --language=fr --host=docs.example.com
```

If you want to use a particular blueprint it can be a submodule path such as `style/newcss`:

```text
ht init new-project style/newcss
```

### List

To print a list of available blueprints run:

```text
ht init ls
```

### Multi Lingual

For multi-lingual sites you can pass the locales option to create the structure for multiple languages. The locales is a comma-delimited list of Unicode language identifiers:

```text
ht init new-project --locales=fr,de,zh
```

Which will create the skeleton structure in the `site/locales` directory and update the [fluent settings]({{ link "/docs/settings/fluent/" }}).

When creating a multi-lingual project a [redirect]({{ link "/docs/settings/redirect/" }}) is configured for the default locale. The default locale is the `--language` option when it is given otherwise the first locale in the list is used.

When `--language` is combined with `--locales` the given language must exist in the list of locales.

### Repositories

To use an alternative blueprint repository pass a URL such as:

```text
ht init new-project https://github.com/hypertext-live/blueprint-newcss.git
```

If you want to clone via SSH we need to know which key to use:

```text
ht init new-project --private-key=.ssh/id_rsa git@github.com:hypertext-live/blueprint-newcss.git
```

The path for the private key should be relative to `$HOME`; if you are cloning via SSH frequently you can set the environment variable `HT_SSH_PRIVATE_KEY` so you don't need to keep passing `--private-key`.


### Usage

```text
{{include ../../includes/help/init.txt}}
```

{{> back}}
