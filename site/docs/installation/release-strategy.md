+++
description = "How releases are versioned and managed"
+++

{{import "header"}}

Currently new releases are in the pre-alpha version range `< 1.0.0`; later in 2021 will aim to start releasing alpha (`1.0.0-alphaX`) and beta (`1.0.0-betaX`) versions.

The goal is to have a stable `1.0.0` release available at the beginning of 2022 at which point we will immediately move to an odd-even release strategy. Odd major release numbers will be Long-Term Support (LTS) and even major release versions will contain *unstable* next generation features.

Critical bug fixes will be back-ported to LTS releases but they will not receive any new features or functionality.

{{import "footer"}}
