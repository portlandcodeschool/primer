---
layout: post
title: "Primer Final Project"
modified: 2015-10-15 15:43:07 -0700
category: assignments
---
# This project has three goals:


0. Working as a team
0. Using git to collaborate with branching and merging
0. Showing off your mad HTML & CSS skills

Here's what you do:
===================

0. Read everything in this assignment
0. Read the customer brief (see below)
0. Set up your git environment. (See "Using git for collaboration")
0. Decide what your team is going to build -- which of the features in the client brief your team can tackle in the time you have.
0. Organize the work and make some plans. Write the plans in the readme.md file
0. Make a couple of wireframes. Take a picture of them, add the picture to the repo and link to it in the readme.md file
0. Create ToDo items as github.com issues as needed
0. Create a Slack channel for discussions as needed. Add your instructor and the TA's
0. Publish the work to "gh-pages" every day.
0. Ask questions in the class Slack channel


# Customer brief


Your team is building a static website for a client. She needs to launch the site in one week. She is a massage therapist with her own practice in her own space. The website needs to be attractive, simple, and user-friendly.


## Project Details

She jotted down these requests for the website, in random order:

* There is one page
* There is a navigation menu that sticks to the top of the window with at least 3 items (each is a link to a section on the page) --
* There should be several sections on the one page:
    * An “offerings” section with her 5 menu offerings (hot stone massage, deep tissue, etc.), with one-sentence * descriptions and the prices. These must be displayed in a set of cards. Each card should have a picture, a title, * and a hover effect that overlays a description.
    * A “feedback” section with an embedded form/survey with 3 questions: 1) Did you have a positive experience? 2) Would * you recommend us to a friend? 3) Do you want me to contact you to set up another appointment? -- it’s recommended * that you use either wufoo or google docs for this
    * A “links” section with links to other articles and resources -- this page should have at least one PDF available for downloading
    * A contact information section (phone, email, mailing address)
    * A location section with an embedded google map with her location centered
    * A header section should have a logo and catch phrase and big, full-width pictures
    * A footer section with copyright in the footer with your team name
* And a bunch of other stuff (optional):
    * social media links in either the footer or the header
    * a sweet little favicon that shows up in the browser tabs
    * make the site responsive, using media queries. It should work on a mobile browser.
    * advanced (very optional): embed a small audio player on each page that plays a different song but can be muted


This is quite a laundry list of client requirements! Nobody expects you to do all of these. Decide as a team what you can accomplish given your team's mix of skills and availability. Your assignment is NOT to do a poor job by trying to do everything. Your assignment is to do a good job on a few things.

# Thoughts on organizing the work

Prioritize the clients requirements as you understand them, then accomplish as many as your team can in the time allowed, based on your team's abilities and availability. In previous classes, some teams have accomplished the entire list and more.

Decide on which customer requirements you think your team can accomplish given your resources and the schedule. The point of the teamwork aspect of this project is to do cool work while making sure everybody on the team has fun doing the work they want to do.

If you have a question about what the client might like, ask any of the TA's

Break up the work - Here's one way:

* Person 1 - start building the contact section
* Person 2 - start building the feedback and links section
* Person 3 - start building the offerings section
* Person 4 - start building the rest of the page: header, footer, and nav menu

### Teamwork

* Arrange with your team to meet several times this week and next.
* You can meet at PCS during the day or Monday, Tuesday, Wednesday or Thursday nights
* You can meet up at a library, coffee house, or anywhere with Wifi. See https://workfrom.co or talk to the teaching assistants.
* You can meet where there are a bunch of other programmers by looking for fun events on http://calagator.org/ (tech events calendar for Portland) or http://meetup.com
* Discuss any questions  your TA or your instructor if you have any questions.

### Delivery

On the last day of class, your team will need to present your work to the class. There will be three key elements of your presentation:

0. What the client needs (see the project brief) and which items your team chose to implement
0. How your design satisfied their needs
0. Each team member’s favorite part of the code


# Using git for collaboration
This assignment is partially an opportunity for you to practice branching and merging.

Reference: http://www.sitepoint.com/getting-started-git-team-environment/

## Set up the repo

1. Choose someone to create a new shared repository to which you all will contribute
1. That person creates the new repo on their Github account and adds fellow team members as “collaborators.”  (https://help.github.com/articles/how-do-i-add-a-collaborator)
1. On github.com, create a branch named "gh-pages". This sets up a web server for your team.
1. Send the URL of the github repo to your instructor via slack.
1. Each team member clones the repo to their computer (http://git-scm.com/book/en/Git-Basics-Getting-a-Git-Repository)
1. Each team member creates their own branch (name it with your initials)  (https://github.com/Kunena/Kunena-Forum/wiki/Create-a-new-branch-with-git-an…)
1. Each team member pushes their branch up to the repo (same link as the Kunena link above)

## Process

Your team will do a lot of work on branches and do a lot of merging:

0. DO WORK on each personal branch - only edit files while you are on your own branch
0. SHARE work on the master branch
   * Get changes FROM your team by merging from master to your personal banch.
   * Share your changes TO the team by merging from your branch to master
0. PUBLISH work on the gh-pages by merging from master to gh-pages when the team has coordinated their work.

## Workflow

Do your work on your branch. You can push to github.com if you like. It's good for backups or for letting your team see what you're doing before you merge to master.

When you are ready to share your work with the team, do the following steps:

1. Switch to the master branch --> <kbd>git checkout master</kbd>
1. Pull from github to bring in your team's work --> <kbd>git pull</kbd>
1. Switch to your branch --> <kbd>git checkout mybranch</kbd>
1. Merge from master to your branch --> <kbd>git merge master</kbd>
1. Resolve any merge conflicts that may happen using your editor
1. Switch to the master branch --> <kbd>git checkout master</kbd>
1. Merge from your branch to master --> <kbd>git merge mybranch</kbd>
1. Push your changes to to the master branch on github --> <kbd>git push</kbd>
1. Switch back to your branch --> <kbd>git checkout mybranch</kbd>
1. Tell all your team that your changes are ready.
