---
layout: post
title:  "Command line Introduction"
description: "A gentle introduction to working on the command line."
date:   2014-07-19 14:00:00
category: topics
comments: true
---

Goals
=====
1. Configure your shell environment
2. Be able to use `ls`, `mkdir`, `cp`, `mv`, `rm`, `rmdir`, `|`, `>`, `>>`, `cat`, `chmod`, `chown`, `cp`, `export`
3. Know how to learn about a command you haven't seen before


The Unix command line
======================

Web developers spend a lot of time at the command line. Command line interfaces (CLIs) offer few of the visual cues and design affordances provided by GUIs (graphical user interfaces), so you may initially find yourself turning to Google repeatedly to find the right command for the task at hand. That's perfectly okay. You'll be using these commands all the time. Soon enough they'll be committed to muscle memory and you'll be issuing commands *legato* like a nerdy Gershwin.

Useful keyboard shortcuts for Bash
-----------------------------------
* Jump to the start of the line: <kbd>ctrl</kbd> + <kbd>a</kbd>
* Jump to the end of the line: <kbd>ctrl</kbd> + <kbd>e</kbd>
* Kill previous word: <kbd>option</kbd> + <kbd>delete</kbd> (aka <kbd>alt</kbd> + <kbd>backspace</kbd>)
* Kill to the beginning of the line: <kbd>ctrl</kbd> + <kbd>k</kbd>
* Kill to the end of the line: <kbd>ctrl</kbd> + <kbd>u</kbd>

You may find it helpful to map <kbd>ctrl</kbd> to your <kbd>caps lock</kbd> key. On a Mac, you can this by navigating to **System Preferences > Keyboard > Modifier Keys...** and selecting as follows:

![]({{ site.url }}/images/capslockremap.jpg)

On Windows machines, this requires a [registry hack](http://johnhaller.com/useful-stuff/disable-caps-lock) (see [here](https://superuser.com/questions/334849/how-can-i-remap-capslock-on-windows-7-without-thirdparty-software), as well).

It can also be helpful to set your **Key Repeat** rate to its maximum and **Delay Until Repeat** to its the minimum.


Basic Unix commands
--------------------

### Changing directories

* `cd <directory_name>` change working directory to `<directory_name>`
* `pwd` print working (i.e., current) directory

{% highlight sh %}
$ cd ~/Developer/pcs/pcs-primer-notes1
$ pwd
{% endhighlight %}

{% highlight text %}
/Users/romer/Developer/pcs/pcs-primer-notes1
{% endhighlight %}

* `cd ..` change directory to parent directory (`..`)

{% highlight sh %}
$ cd ..
$ pwd
{% endhighlight %}

{% highlight text %}
/Users/romer/Developer/pcs
{% endhighlight %}

* `cd ~` change working directory to home directory
* `cd` same as above (`~` is the default argument to the `cd` command)

{% highlight sh %}
$ cd
$ pwd
{% endhighlight %}

{% highlight text %}
/Users/romer
{% endhighlight %}

### Listing Files

* `ls` list files

{% highlight sh %}
$ cd ~/Developer/pcs/pcs-primer-notes1
$ ls
{% endhighlight %}

{% highlight text %}
figures
index.html
{% endhighlight %}

* `ls -al` list all files, including hidden ones (the `-a` flag), and show all details (the `-l` flag)

{% highlight sh %}
$ ls -al .
{% endhighlight %}

{% highlight text %}
total 3656
drwxr-xr-x   8 romer  staff      272 Jun  9 11:26 .
drwxr-xr-x   6 romer  staff      204 Jun  9 01:40 ..
drwxr-xr-x  12 romer  staff      408 Jun  9 01:39 .git
drwxr-xr-x   8 romer  staff      272 Jun  8 23:45 figures
-rw-r--r--   1 romer  staff  1831121 Jun  9 11:26 index.html
{% endhighlight %}

* **NB**: The dot (`.`) represents the current directory
  * `ls .` means list files in current directory (but `.` is the default argument to `ls` so it can be omitted)

### Making new directories / files

* `mkdir <name>` create a directory named `<name>`
* `touch <name>` create an empty file named `<name>`

{% highlight sh %}
$ mkdir new_directory
$ touch new_file
$ ls
{% endhighlight %}

{% highlight text %}
figures
index.html
new_directory
new_file
{% endhighlight %}

NB: `touch <file>` actually updates the "last modified at" attribute of `<file>` to the current time. But if the file doesn't exist, it creates an empty one named `<file>`.

### Copying and moving files

* `mv <loc1> <loc2>` moves the file at `loc1` to `loc2` (equivalently: rename the file at `loc1` to `loc2`)
* `cp <loc1> <loc2>` copy file

{% highlight sh %}
$ cp  new_file   new_directory/copy_of_new_file
$ ls . new_directory
{% endhighlight %}

{% highlight text %}
.:
figures
index.html
new_directory
new_file

new_directory:
copy_of_new_file
{% endhighlight %}

Note that we passed two arguments to `ls`: `.` and `new_directory`.

{% highlight sh %}
$ mv  new_directory/copy_of_new_file  new_file2
$ ls . new_directory
{% endhighlight %}

{% highlight text %}
.:
figures
index.html
new_directory
new_file
new_file2

new_directory:
{% endhighlight %}

And here `mv` moved and renamed `new_directory/copy_of_new_file` to `./new_file2` in one step.

### Deleting files and directories

* `rmdir` remove a directory (if it's empty)
* `rm` remove file(s)

{% highlight sh %}
$ rmdir new_directory
$ rm new_file new_file2
{% endhighlight %}

Notice we can pass multiple arguments to `rm` as well—this holds true of most basic unix commands.

{% highlight sh %}
$ ls -al . new_directory
{% endhighlight %}

{% highlight text %}
.:
total 3656
drwxr-xr-x   8 romer  staff      272 Jun  9 11:26 .
drwxr-xr-x   6 romer  staff      204 Jun  9 01:40 ..
drwxr-xr-x  12 romer  staff      408 Jun  9 01:39 .git
drwxr-xr-x   8 romer  staff      272 Jun  8 23:45 figures
-rw-r--r--   1 romer  staff  1831121 Jun  9 11:26 index.html

ls: cannot access new_directory: No such file or directory
{% endhighlight %}


### Finding out more

To find more information about a particular command, pull up its manual page:

* `man <command>` view manual for `<command>`
* Inside `man` use
  * `q` to exit.
  * `j` to scroll down, `k` to scroll up
  * `d` to jump down a few lines, `u` to jump up
  * `<space>` to page down

{% highlight sh %}
$ man man
{% endhighlight %}

{% highlight text %}
man(1)


NAME
       man - format and display the on-line manual pages

SYNOPSIS
       man [-acdfFhkKtwW] [--path] [-m system] [-p string] [-C config_file] [-M pathlist]
           [-P pager] [-B browser] [-H htmlpager] [-S section_list] [section] name ...


DESCRIPTION
       man  formats  and  displays  the on-line manual pages.  If you specify section, man only
       looks in that section of the manual.  name is normally the name of the manual page, which
       is typically the name of a command, function, or file.  However, if name contains a slash
       (/) then man interprets it as a file specification, so that  you can do man ./foo.5 or even
       man /cd/foo/bar.1.gz.
{% endhighlight %}



Exercises (Optional)
====================

Check out "Absolute and relative paths", "Heading back", and "Tab completion" in ["The Designer's Guide to the OSX command prompt"](http://wiseheartdesign.com/articles/2010/11/12/the-designers-guide-to-the-osx-command-prompt). Three quick paragraphs that will save you tons of time.

From the command line,

  1. Change to your home directory (`~`) and print a listing of all its contents
  2. Print a listing of only those files/folders in `~` that contain a `D`
      <br>(Hint: Google "piping grep")
  3. With a single command, create the listing in (2) and save it to a file on your desktop (see [here](http://www.december.com/unix/tutor/redirect.html) for how)


Suggestions: Work with a partner as a [driver/navigator pair][pairing-primer]. Get feedback on your code from an instructor or TA.

[pairing-primer]:http://www.wikihow.com/Pair-Program

<!-- starter code? -->


**Comments? Questions? Corrections? Use the comments thread below.**
