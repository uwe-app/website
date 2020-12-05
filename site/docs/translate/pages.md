+++
description = "Create translated pages"
+++

{{import "header"}}

For long-form content it can be easier to create an alternate page for a language; to do this append the language identifier before the file extension.

## Example

To translate a file `about.md` to the French language create a new file and give it the name `about.fr.md` and it will be used when rendering the `fr` locale.


If the *primary* language is `en` then the `about.md` file might be like this:

```markdown
+++
title = "About"
description = "About us"
+++

# \{{title}}

About content.
```

Assuming we have already configured the project for the French language (see [[docs/translate/languages]]) then we could create the `about.fr.md` with this content:

```markdown
+++
title = "À propos"
description = "À propos de nous"
+++

# \{{title}}

À propos du contenu.
```

## Fallback

When we create a translated page the content in the new page is used by default but if the existing content is already localized (using [[docs/translate/messages]]) then it is possible to defer to the fallback content but still override the page data using the `fallback` flag.

### site/locales/en/main.ftl

```text
about-content = About content.
```

### site/locales/fr/main.ftl

```text
about-content = À propos du contenu.
```

### site/about.md

```markdown
+++
title = "About"
description = "About us"
+++

# \{{title}}

\{{fluent "about-content"}}
```

### site/about.fr.md

```markdown
+++
title = "À propos"
description = "À propos de nous"
fallback = true
+++
```

By adding the `fallback` flag to the page data we are saying *use the content from the fallback language* for this page.

{{import "footer"}}
