+++
description = "Create custom error pages"
+++

{{> crumbtrail}}

To create custom error pages for the web server just output a page using the status code that you wish to handle.

For example, create a `404.html` page at the root of the static site and it will be served when a `404` status is encountered.

You may do this for any valid HTTP status code.

{{> back}}
