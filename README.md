# Configuration files for the Framework Laptop, DIY Edition

## Pre-requisites

Requires: [GNU Stow](https://www.gnu.org/software/stow/)

```
$ sudo pacman -S stow
```

## Installation

```
$ cd ~
$ git clone git@github.com:drhaynes/dotfiles-framework.git
$ cd dotfiles-framework
$ stow <module-directory-name>
```

Where module directory name is e.g. `desktop`.

