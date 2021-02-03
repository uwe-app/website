+++
description = "Show estimated reading time"
+++

{{import "header"}}

For long-form content like blog articles it is helpful to indicate to visitors an estimated time to read the page.

To enable this feature you should update the [[docs/guides/getting-started/site-settings]] so that word counts are performed:

```toml
[transform.html]
words = true
```

Afterwards you can use the [[docs/reference/helpers/words|words helper]] to print the word count and estimated reading time for a page.

On a blog you likely want to put this underneath each page title; for example to show word count and estimated reading time:

```html
{{{{raw~}}}}
<small>{{words}} words | {{words time=true}} minutes</small>
{{{{~/raw}}}}
```

A partial we use on our blog that also includes a permalink can be see in [words.hbs][].

{{import "footer"}}

[words.hbs]: https://github.com/uwe-app/blueprints/blob/main/blog/site/partials/words.hbs
