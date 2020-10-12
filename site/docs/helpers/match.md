+++
description = "Highlight navigation items"
+++

{{> components}}

It is considered good practice to highlight the navigation items for a user's current location. The `match` helper tests whether a target URL matches and outputs a value if the match succeeds.

The parameters for `match` are:

* `url` The absolute URL to match against.
* `value` The string to output when a match is found.

By default *matching is not exact* so that navigating to child directories would also be considered a match on a parent navigation item.

Here is a real-world example for a simple navigation:

```handlebars
{{{{raw}}}}
<nav>
  <a {{match "/" "class='selected'"}} href="{{ link "/" }}" title="Home">Home</a>
  <a {{match "/work/" "class='selected'"}} href="{{ link "/work/" }}" title="Work">Work</a>
  <a {{match "/about/" "class='selected'"}} href="{{ link "/about/" }}" title="About">About</a>
</nav>{{{{/raw}}}}
```

The hash parameter `exact` can be used to request an exact match:

```handlebars
{{{{raw}}}}
  <a {{match "/docs/" "class='selected'" exact=true}} href="{{ link "/docs/" }}" title="Docs">Docs</a>{{{{/raw}}}}
```

{{> back}}
