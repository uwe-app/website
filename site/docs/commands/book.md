+++
description = "Create and build books"
+++

{{> crumbtrail}}

The book command is used to create, list and build books.

To create a book specify the project directory and a path for the new book:

```text
ht book add . guides/getting-started
```

The book will be created in the project `site` directory; now you can add the book to the site settings in `site.toml`:

```toml
[book.guides.getting-started]
path = "getting-started"
draft = true
```

To list all books in a project or [workspace]({{ link "/docs/settings/workspace/" }}):

```text
ht book ls
```

To build all books for the project or [workspace]({{ link "/docs/settings/workspace/" }}) in the current working directory:

```text
ht book build .
```

We must pass a path; when the project is the current working directory use a period (`.`).

To build specific book(s) pass the paths:

```text
ht book build . ./site/guides/getting-started
```

### Usage

```text
{{include ../../includes/help/book.txt}}
```

{{> back}}
