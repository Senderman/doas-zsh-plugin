# doas-zsh-plugin 

Easily prefix your current or previous commands with `doas` (or other privilege escalation tool) by pressing <kbd>esc</kbd> twice

This is fork of [OMZ's sudo plugin](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/sudo).

# Installation

## Plain zsh

Clone this repository to any location on your PC, then add to your `.zshrc`:

```bash
source /path/to/repo/doas-zsh-plugin.plugin.zsh
```

## With [Antidote](https://getantidote.github.io/)

Add the following line to your plugins file:

```
Senderman/doas-zsh-plugin
```

# Configuration

By default, this plugin uses to add/remove `doas` command. If you need different command (e.g. `sudo`), set this command in SUDOBIN environment variable, e.g.

```bash
export SUDOBIN=sudo
```

# Usage

## Current typed commands

Say you have typed a long command and forgot to add `doas` in front:

```console
$ apt-get install build-essential
```

By pressing the <kbd>esc</kbd> key twice, you will have the same command with `doas` prefixed:

```console
$ doas apt-get install build-essential
```

## Previously executed commands

Say you wanted to see the contents of a system file:

```console
$ cat some-system-file.txt
cat: some-system-file.txt: Permission denied
```

By pressing the <kbd>esc</kbd> key twice, you will have the latest command from the history with `doas` prefixed:

```console
$ cat some-system-file.txt
cat: some-system-file.txt: Permission denied
# press ESC twice
$ doas cat some-system-file.txt
```

## doas is already in the beginning of the line

Say you already have doas in the beginning of the line:

```console
$ doas ls
```

To remove it, press <kbd>esc</kbd> key twice:

```console
$ ls
```

