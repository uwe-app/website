+++
description = "Syntax highlight"
+++

{{import "header"}}

The `[syntax]` table defines directives for the syntax highlighting support; see [[docs/guides/content/syntax-highlight]] for more information and examples.

* `theme` A theme to use for inline styles (optional)
* `map` Map language names to file extensions (optional)
* `profiles` Profiles filter that determines when to use syntax highlighting (optional)

Language definitions are resolved by file extension and you can [see the list of available languages and file extensions here][languages].

Use the `map` table to create a mapping between a language identifier and a file extension. For example, let's say we want to use the lowercase `rust` keyword to refer to the *Rust* language we `map` our identfier to a known file extension:

```toml
[syntax.map]
rust = "rs"
```

Then when we want to embed *Rust* code we can use the `rust` keyword with a fenced code block and the code will be highlighted as *Rust*:

````markdown
```rust
// A rust code example
```
````

{{#> note}}
This mapping technique is useful if you have a lot of existing documents that use an unknown language identifier.
{{/note}}

{{import "footer"}}

[languages]: https://github.com/uwe-app/syntax/blob/main/languages.toml
