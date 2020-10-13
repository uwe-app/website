+++
description = "Serve a website"
+++

{{> crumbtrail}}

## {{title}}

The run command serves website files in a directory:

```text
uwe run build/release
```

Now you can visit the site at `http:://localhost:8888`.

The server does not list directory content; it is expected that an `index.html` file exists for each directory.

### Usage

```text
{{include ../../../includes/help/uwe/run.txt}}
```

{{> back}}
