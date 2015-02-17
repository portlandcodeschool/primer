---
layout: post
title:  "Git and GitHub: Collaborating like a pro"
description: "Master the \"blocking and tackling\" of the web developer's most indispensable, inscrutable tool: Git. Learn how to collaborate with teammates using GitHub."
date:   2014-07-26 09:00:00
category: topics
comments: true
---

Goals
=====
0. Set up your git configuration for use with GitHub
1. Know why web developers use Git and GitHub
2. Initialize a Git repository
3. Stage changes to be committed
4. Know how and when to commit changes
5. Use branching and merging to collaborate on projects
6. Initiate pull requests
7. Resolve merge conflicts


Prep work
==========
Estimated time: 15 minutes

1. Work through [Try Git](http://try.github.io).


Setting up Git and GitHub
==========================

Configuration
-------------

Set your username and email

{% highlight sh %}
$ git config --global user.name "jane doe"
$ git config --global user.email janedoe@example.com
{% endhighlight %}

Some more useful settings:

{% highlight sh %}
git config --global push.default current
git config --global merge.defaultToUpstream true
git config --global core.editor "subl -w"
{% endhighlight %}

Verify your details are set with the `-l` flag ("l" for "list")

{% highlight sh %}
$ git config --global -l
{% endhighlight %}

Set up your SSH key (this will allow you to push your repo to GitHub without entering your username and password at the command line)

### Step 1:

{% highlight sh %}
$ bash -c "$(curl -fsSL http://bit.ly/pcs-git)"
{% endhighlight %}

### Step 2:

Go to [http://github.com/settings/ssh](http://github.com/settings/ssh) (make sure you've signed in)

Add your ssh key by clicking on "Add SSH key"

![]({{ site.url }}/images/githubssh1.png)

And pasting what's on your clipboard into the text field below

![]({{ site.url }}/images/githubssh2.png)

To test your ssh setup, enter
{% highlight sh %}
$ ssh -T git@github.com
{% endhighlight %}

You should see the following:

{% highlight text %}
Hi <username>! You've successfuly authenticated, but GitHub
does not provide shell access.
{% endhighlight %}

If that `<username>` is yours, you've successfully set up your SSH key with GitHub.

Overview of Git
================

Some concepts
--------------

* **working directory**: your project's directory
* **index / staging area**: where you collect the changes you're about to commit to the repository<br>
    Examples:
    - `git add stylesheet2.css stylesheet2.css` (stage css files for a commit of styling changes)
    - `git add script.js` (stage a javascript file for a commit)
    - `git add .` (stage all modified files for a commit)
* **repository ('repo')**: where your project's version history is stored
    - `git commit -m "Update styling to match v2 wireframes"`


A Solo Workflow
---------------

1. Create a repo on GitHub
2. **clone** the repo
    - `git clone <SSH url from the repo's page on GitHub>`  
    ![]({{ site.url }}/images/repo-sshurl.jpg)
3. Add a branch for yourself
    - `git checkout -b <branch name>`
4. Make changes on your branch
    - e.g., to add a signup form to your site
5. Add files to track
    - `git add <filenames or .>`
6. **commit** your changes
    - `git commit -m "Add a form"` (the `-m` flag means you're setting the commit message to `"Add a form"`)
    - Note the imperative form of the message. This is [by convention](https://stackoverflow.com/questions/3580013/should-i-use-past-or-present-tense-in-git-commit-messages).
    - Eventually, as your git-fu grows, you'll want to start writing [more complete commit messages](http://robots.thoughtbot.com/5-useful-tips-for-a-better-commit-message), which look something more or less like this:

{% highlight text %}
50-character-max subject line

72-character-max wrapped longer description. This should answer:

* Why was this change necessary?
* How does it address the problem?
* Are there any side effects?

Include a url to the ticket, if any.
{% endhighlight %}

But for now just use a descriptive one-liner using the `-m` flag.

Git + GitHub for Collaboration
--------------------------------

1. Create a repo on GitHub
2. Authorize collaborators (if you're the admin)
3. All collaborators **clone** the repo
4. Each person creates a new **feature branch** for a given task or feature
5. Each person **commits** their changes locally
6. When a feature is complete, you **push** to GitHub and issue a **pull request**
7. A "pull request" is where your partners review your work, discuss it, and the project admin **merges** it into the master branch if approved

## 5. Basic git commands
### Getting and creating projects
{% highlight sh %}
$ git init
$ git clone
{% endhighlight %}

### Staging and commiting
{% highlight sh %}
$ git add <files to stage so they can be committed>
$ git commit -m "<commit message>"
{% endhighlight %}

### Merging and branching
{% highlight sh %}
$ git checkout -b <branch name>
$ git branch
$ git merge <branch name>
{% endhighlight %}

### Pushing and pulling
{% highlight sh %}
$ git push
$ git pull
{% endhighlight %}

### Viewing current status and past history
{% highlight sh %}
$ git status
$ git log
{% endhighlight %}

[[descriptions here](http://gitref.org)]
