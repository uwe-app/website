+++
title = "SSL Certificates"
description = "Generate certificates and configure the web server for SSL"
+++

{{> crumbtrail}}

# {{title}}

When a site is published we think it *must* run over SSL to protect against man-in-the-middle attacks, prevent ad injection by intrusive ISPs and other hijacking of web traffic.

The general trend of the modern web is HTTPS everywhere and we encourage developers to always use SSL even when developing sites locally.

Thanks to the excellent [mkcert][] tool it is easy to set up certificates for local development.

Before we look at an example first a note that the `localhost` domain name does not support subdomains and we need subdomains to be able to support multiple virtual hosts when developing locally.

So we manage and maintain the `loopback.space` domain which is configured to point to the loopback IP address `127.0.0.1`. This allows us to serve multiple local virtual hosts using the `loopback.space` domain.

When using multiple virtual hosts on this domain a DNS call requires the network which may make working offline fail; to prevent this you can also map the domain in your hosts file (typically `/etc/hosts`):

```text
127.0.0.1       loopback.space
# Map specific subdomains for local development
127.0.0.1       uwe-app.loopback.space
```

To set up [mkcert][] first install the certificate authority and then you can generate the certificate to use:

```
mkcert -install
mkcert *.loopback.space loopback.space localhost 127.0.0.1 ::1
```

To configure the web server use the `--ssl-` options on the command line (see `uwe help server`) or set environment variables to always run over SSL.

We recommend taking the environment variable approach, just configure your shell with the `SSL_CERT` and `SSL_KEY` variables. For example for the ZSH shell:

```text
export MKCERT="$HOME/.local/share/mkcert"
export SSL_CERT="$MKCERT/certs/_wildcard.loopback.space+4.pem"
export SSL_KEY="$MKCERT/certs/_wildcard.loopback.space+4-key.pem"
```

Now when you use `uwe --live` and `uwe server` your certificate will be used and the site served over HTTPS!

If you have configured an SSL certificate via the environment and want to temporarily run over HTTP set the variables to the empty string:

```text
SSL_KEY= SSL_CERT= uwe --live
```

{{import "footer"}}

[mkcert]: https://github.com/FiloSottile/mkcert
