+++
description = "Stick the site header to the top"
+++

{{import "header"}}

For some websites it may be desirable to *stick* the main page header to the top of the browser viewport. This is trivial with this style rule:

```css
main header {
  position: sticky;
  top: 0;
}
```

However the problem with this approach is that the header may obscure content when using named anchors to link to sections of a page. The fix uses a specific height for the header combined with the `scroll-margin-top` CSS property:

```css
:root {
  --header-height: 96px;
}

main header {
  height: var(--header-height);
  position: sticky;
  top: 0;
}

/* Ensure that our content is not obscured by the header
 * when using named anchors */
[id] {
  scroll-margin-top: var(--header-height);
}
```

And that's all you need to create a sticky header!

{{import "footer"}}

