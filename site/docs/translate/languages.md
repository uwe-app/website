+++
description = "Create language definitions"
+++

{{> crumbtrail}}

# {{title}}

If you are creating a new project and know that you want multiple languages the `new` command will accept a comma delimited list of locales and create the files in the `site/locales` folder:

```text
uwe new project-name --locales=en,fr,es --language=fr
```

Which would create translation files for English, French and Spanish and set French as the primary language for the project.

For existing projects the `lang` sub-command can add new languages to the `site/locales` folder:

```text
uwe lang new /path/to/project fr es
```

If you are updating to a multi-lingual project remember to set a redirect for the default language in the site settings:

```toml
[redirect]
"/" = "/en/"
```

{{> next-page menu="translate-idx"}}

[project fluent]: https://www.projectfluent.org/
