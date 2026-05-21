# dots - simply my config files

![bgen static-main]
![bgen git-lcommit]
![bgen git-license]

I don't have much to say about it, to summarize:

```sh
#!/usr/bin/env bash

declare -A inkwje

inkwje[distro]="arch"
inkwje[pkgs]="nix"
inkwje[shell]="zsh"
inkwje[term]="foot"
inkwje[edit]="neovim"
inkwje[theme]="rose-pine"

for k in "${!inkwje[@]}"; do
    echo "$k = ${inkwje[$k]}"
done
```

## Abstract

**`dots`** is a repo created after a long period
of doubt and uncertainty (1-3 business days)
and to meet the demand of people who,
in a parallel universe,
are interested in this repo.

<!-- badge composition -->
[bgen static-main]: https://badgen.net/static/linux/rice
[bgen git-lcommit]: https://badgen.net/github/last-commit/inkwje/dots
[bgen git-license]: https://badgen.net/github/license/inkwje/dots

