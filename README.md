# /home/dev_islom/.dotfiles

This repo is the home of my custom system configuration which enables a
consistent computing experience across multiple machines.  These days I
primarily use GNU/Linux via the [GNU Guix distribution](https://guix.gnu.org).

I manage the various configuration files in this repo using
[GNU Stow](https://www.gnu.org/software/stow/).  This allows me to set up
symlinks for all of my dotfiles using a single command:

```shell
stow .
```
## Node Js and NPM 

Installing nodejs and npm

```shell
sudo dnf install nodejs
```

Setting up NPM

```shell
mkdir ~/.npm-global
npm config set prefix '~/.npm-global'
fish_add_path ~/.npm-global/bin:$PATH
```
