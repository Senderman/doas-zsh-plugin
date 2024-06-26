# doas-zsh-plugin 

Easily prefix your current or previous commands with `doas` by pressing <kbd>esc</kbd> twice

This is fork of [OMZ's sudo plugin](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/sudo).

# Installation

Use [Antidote](https://getantidote.github.io/)

Add the following line to your plugins file:

```Senderman/doas-zsh-plugin```

## Configuration

By default, this plugin uses to add/remove `doas` command. If you need different command (e.g. `sudo`), set this command in SUDOBIN environment variable, e.g.

```bash
export SUDOBIN=sudo
```

## Usage

### Current typed commands

Say you have typed a long command and forgot to add `doas` in front:

```console
$ apt-get install build-essential
```

By pressing the <kbd>esc</kbd> key twice, you will have the same command with `doas` prefixed without typing:

```console
$ doas apt-get install build-essential
```

### Previous executed commands

Say you want to delete a system file and denied:

```console
$ rm some-system-file.txt
-su: some-system-file.txt: Permission denied
$
```

By pressing the <kbd>esc</kbd> key twice, you will have the same command with `doas` prefixed without typing:

```console
$ rm some-system-file.txt
-su: some-system-file.txt: Permission denied
$ doas rm some-system-file.txt
Password:
$
```

### doas is already in the beginning of the line

Say you already have doas in the beginning of the line:

```console
$ doas ls
```

To remove it, press <kbd>esc</kbd> key twice:

```console
$ ls
```
