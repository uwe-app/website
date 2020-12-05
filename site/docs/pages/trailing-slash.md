+++
title = "Trailing Slash"
description = "Why we should always use trailing slashes"
+++

{{import "header"}}

Whether to use a trailing slash for folders is an old problem in web development but we think the answer is clear; browsers will only resolve relative paths correctly *when a trailing slash is present*. For this reason we always create canonical URLs to folders including a trailing slash.

Our web server will redirect to use a trailing slash for folders and we recommend that if you want to link to an index page always include a trailing slash to indicate that you mean a folder and prevent the redirect.

## Example

Consider you have a folder `docs` with an index page and in that page is a relative link to `./settings/`; if the browser address is `https://example.com/docs` then the relative link resolves incorrectly to `/settings/`.

But if we add a trailing slash (`https://example.com/docs/`) then it resolves to `/docs/settings/` which is what we intended!

## Server Configuration

When publishing your website you should ensure your web server is configured to redirect folders without a slash to include the slash so that relative paths are resolved correctly.

{{import "footer"}}
