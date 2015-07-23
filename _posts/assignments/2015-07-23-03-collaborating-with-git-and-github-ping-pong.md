---
layout: post
title: "03 Collaborating with git and github (Ping Pong!)"
modified: 2015-07-23 15:58:04 -0700
category: [assignments]
tags: [git, github, command line]
---

In this exercise you will use Git and GitHub to practice sharing changed content using the Git distributed version control system in your command line (terminal) and through the GUI (graphical user interface) GitHub.com.

This exercise is designed to give you experience in working in teams on code, which is very common in development. This is a critial and very important concept that you will want to aim to master. Please be sure to reach out to your instructors with any questions or frustrations so we can assit you.

**As per usual, the instructions start very explicit and gradually get vauge so be on the lookout and trust your insticts.**

## 1. Activity: Both

**First:** Find a partner and determine the role for each: "Ping" or "Pong."

**Next:** Follow the steps below for your role and provide support to your partner as they do their part.
<hr>
## Activity: Mr or Ms Ping
**Ping: Create a new repo (repository) and clone it to yourself.**

_On GitHub.com:_

* Create new repository
	* '+' sign in top-right, then "New repository"
* Initialize with a README.md file.
* Click on "Settings", then "Collaborators." Search for and add your partner using their GitHub username.
* Copy "Clone URL"
* Send "Clone URL" to partner for good measure (Remember email and slack are your friends)

_In Command Line/Terminal:_

* Clone the Repo to your local machine

```
git clone [repo clone URL]
```
<hr>
## 2. Activity: Mr or Ms Pong
**Pong: Clone the shared repo, add a file, and push new file to GitHub.**

Obtain the clone URL. This can happen a few ways: email, slack, GitHub repo listing, etc...

_In Command Line/Terminal:_

* Clone the repo
* Move into the repo folder
* Review the branch you are currently on (should be on _master_)

```
git branch -va
or
git status
```
* Create a new branch from which you can work. Use a branch name with your name or initials in it.

```
git checkout -b [new branch name]

#or

git branch [new branch name]
```

* Move to that new branch. (What's the command for this?)

_Using Document Browser/Finder:_

* Use Sublime Text (or other editor) to open the repository folder
* Create a new file
* Save as 'index.html'
* In the file, type 'html' and hit the 'tab' key to create a basic structure with a head and body elements, etc. If the 'html' snippet doesn't work, create a basic html file by hand.
* Save your changes

_In Command Line/Terminal:_

* Confirm you're still in the repo folder (Hint: print working directory)
* Check the status for what changes git has noticed
* Add any untracked or changed files (should only be index.html)
	* Remember to add each file individually
* Commit your changes
	* Don't forget your commit message syntax
* Push your branch to GitHub
* Move to (checkout) the _master_ branch
* Merge the changes from your branch to _master_ branch

```
git merge [your branch name]
```

* Push master branch updates to GitHub
* Notify your team (Mr or Ms Ping) that there is new goodness on master to be pulled.

_Best Practices:_

* Visit GitHub.com to confirm all branches and changes exist on GitHub.com
* Notify and confirm your push with your partner as soon as possible.

<hr>
##3. Activity: Ping
**Ping: Pull the document to your local repo version, insert a change, and share with your partner.**

_In Command Line/Terminal:_

(Once you know your partner has pushed)

* Pull down the updates (first be sure you're in the repo folder on your computer and make sure you are on the master branch)

```
pwd

# Should be the path to your repo folder

# cd if required

git branch -va

# git checkout master if required

git pull
```

* Create a new branch with your name
* Move to your new branch

_Using Document Browser/Finder:_

* Open index.html in your editor
* Create a paragraph element that says "[Your name] is Ping, and Ping is Amazing!"

_In Command Line/Terminal:_

* Check the status of git
* Add and commit your new file
* Push your updates and new branch to GitHub
	* _If you have any trouble ask an instructor, a Teaching Assistant, the smartest person in the room, or your partner (who may be the smartest person in the room)._
* Move to master branch
* Merge changes into master branch

```
git merge [your branch]
```

* Push changes
* Let your partner know that you've pushed an update

<hr>
##4. Activity: Pong
**Pong: Create a 'merge conflict' and resolve it.**

* Pull down the changes from master branch
* Move to your branch
* In the paragraph that says "[partner's name] is Ping, and Ping is awesome", change text to:

```
"[partner's name] is Ping, [your name] is Pong, and Ping and Pong are the best. YES!"
```
* Save, add, commit your changes
* Move to master and merge in your branch changes
* Resolve the conflict:
	* Move into your editor to view the affected file.
	* User the "find" feature to search for the <<<<< characters
	* Decide what text you want to keep between the <<<< and >>>> character delimiters and delete the other text. (Be sure to also delete the <<< and >>> characters)

<hr>
##5. Activity: Ping
**Ping: Create another conflict and resolve**

* You are fully equipped for this!
* Repeat the process, slinging code back and forth via branching, merging, and github, until you feel comfortable. Make sure that both people have the opportunity to resolve a merge conflict.
