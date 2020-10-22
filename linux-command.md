# Linux Pocket Guide

Welcome to Linux! If you’re a new user, this notes can serve as a quick introduction, as well as a guide to common and practical commands. If you have Linux experience, feel free to skip the introductory material.

### Linux Command Example

Here’s an example command that counts lines of text in a file, `myfile`

```sh
$ wc -l myfile
```

Here we will cover the most important Linux commands for the average user, such as `ls`(list files), `grep`(search for text),
`mplayer`(play audio and video files), and `df`(measure free disk space).

### What’s Linux?

Linux is a popular, open source operating system that competes with Microsoft Windows and Mac OS X. Like these other operating systems, Linux has a graphical user interface with win‐dows, icons, and mouse control. However, the real power of Linux comes from its command-line interface, called the `shell`,for typing and running commands like the preceding `wc`.

### What is a Command or Anatomy of Command?

A Linux command typically consists of a _program name_ followed by `options` and `arguments`, typed within a shell, like this:

```sh
$ wc -l myfile
```

Here the program name `wc`, short for `word count` refers to a program somewhere on disk that the shell will locate and run. Options, which usually begin with a `dash`, affect the behavior of the program. In the preceding command, the `-l` option tells `wc` to count lines and not words. The argument myfile specifies the file that wc should read and process.

Commands can have multiple options and arguments. Options may be given individually:

```sh
$ wc -l -w myfile      # Two individual arguments
```

of command after a single dash:

```sh
$ wc -lw myfile        # same as -l -w
```

or, can take multiple files

```sh
$ wc -lw myfile myfile2      # count lines in two files
```

> Options are not standardized. They may be a single dash and one character (say, `-l`), two dashes and a word (`--lines`), or several other formats.

> Some options are followed by a value, such as- `s 10`, and space between them might not be required `(-s10)`.

> Likewise, arguments are not standardized. They usually represent `filenames for` input or output, but they can be other things too, like `directory names` or `regular expressions`.

### Shell prompts

Before you can type a command, you must wait for the shell to display a special symbol, called a prompt. A prompt means, “Iam waiting for your next command.”

Your prompt might be a dollar sign.

```sh
$
```

or a complex string of text containing your computer name, username, and possibly other information and symbols

```sh
localhost:~rucse$
```

Some command will print text on the screen as they run.

```sh
$ wc -l myfile
18 files
```

Some commands are successfully only by an administrator, a special user with permission to do anything on the system (called `superuser or root`)

```sh
$ sudo superuser commands goes here
```

Example:

```sh
$ wc -l /etc/shadow       # This will fail
wc: /etc/shadow: Permission denied
```

```sh
$ sudo wc -l /etc/shadow
Password: ******
51 /etc/shadow
```

### Command-line warm-up

To give you a feel for Linux, here are 10 simple commands you can try right now.

`Note`: commands name, options are case sensitive

Display a calender for April 2017
```sh
$ cal apr 2017
    April 2017
Su Mo Tu We Th Fr Sa
                   1
 2  3  4  5  6  7  8
 9 10 11 12 13 14 15
16 17 18 19 20 21 22
23 24 25 26 27 28 29
30
```

List the contents of the /bin directory, which contains many commands

```sh
$ ls /bin
2to3-2.7                            more                               xmodmap
7z                                  most                               xmore
7za                                 mount                              Xorg
...........................................................................................
```

Count the number of visible items in your home directory(represented here by a special variable `HOME` that we will discuss later):

```sh
$ ls $HOME | wc -l
11
```
See how much space is used on a partition of your hard disk:
```sh
$ df -h /

Filesystem      Size  Used Avail Use% Mounted on
/dev/sda2        99G   39G   55G  42%    /
```