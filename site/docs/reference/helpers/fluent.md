+++
description = "Render translations"
+++

{{import "header"}}

The `fluent` helper is used to render messages for the current language, see [[docs/guides/translate]] for more information on creating translations.

Let's say we put a greeting in `locales/en/main.ftl` such as:

```
greeting = Welcome
```

And add a version for another language such as `locales/id/main.ftl`:

```
greeting = Selamat Datang
```

We can access the message in our template by passing the message name to the helper:

```handlebars
\{{fluent "greeting"}}
```

You can pass variables via the helper. Let's update the `en/main.ftl` file first:

```
greeting = Hello { $name }
```

And then the `id/main.ftl` file:

```
greeting = Selamat Datang { $name }
```

Now to pass the variable to the fluent message use this syntax:

```handlebars
\{{fluent "greeting" name="World"}}
```

There is an alternative syntax for passing parameters which is useful if you are working with multi-line values:

```handlebars
{{{{raw}}}}{{#fluent "greeting"}}
  {{#fluentparam "name"}}
    This is a really long name
    that can span multiple lines
  {{/fluentparam}}
{{/fluent}}{{{{/raw}}}}
```

{{import "footer"}}
