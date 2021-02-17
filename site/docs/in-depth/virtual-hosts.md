+++
description = "Web server virtual hosts, authorities and LAN access"
+++

{{import "header"}}

The web server uses virtual hosts so that we can support running multiple projects simultaneously. If you are not using a [[docs/tutorials/create-workspace|workspace]] the web server will serve a single website using the `localhost` domain name; if a [[docs/tutorials/create-workspace|workspace]] is in use then several virtual hosts will be served using a convention.

The convention is to use the project `host` value converted to a slug and prefixed as a sub-domain of the `loopback.space` domain name. So for example if the project `host` value is `uwe.app` the local virtual host name will be `uwe-app.loopback.space`.

The `loopback.space` domain name is managed by us and points to the loopback address `127.0.0.1` or `::1` for IPv6 requests. You can verify this with these commands:

```
dig A loopback.space
dig AAAA loopback.space
```

Because the web server is running using virtual hosts it must check the `Host` HTTP header to determine which project to serve but sometimes we need to allow extra authorities to bypass the header check.

The primary use case for this is when we are developing on a LAN and want to access a development server using the IP address to test from a mobile device.

Let's assume we are running a development server that is given the LAN IP address `192.168.1.10` and we want to connect from a mobile device on the same network. When the mobile device connects using the IP address it would fail as the `Host` header is the IP address which the web server knows nothing about.

To allow the IP address to pass the `Host` header check we can add an `--authority` when starting the development server:

```
uwe dev . --authority 192.168.1.10
```

When [[docs/security/ssl-certificates]] are enabled and connecting to the development server the device would need to trust the SSL certificate (assuming the certificate did not include the IP address when it was issued) but afterwards can connect directly using the URL `https://192.168.1.10:8843` and view the website!

For plain HTTP the URL using the default port would be `http://192.168.1.10:8888` but it is *strongly recommended* to enable [[docs/security/ssl-certificates]] for local development.

{{import "footer"}}
