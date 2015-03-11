---
layout: post
title: "02 Create Your Class Journal"
modified: 2015-02-22 22:09:03 -0800
category: assignments
tags: [JavaScript, jQuery]
description: Use Mobile-first and responsive design to create a simple magazine site.
---


Objectives
==========
0. Create a site from a template
0. Control page layout and style using HTML5 elements and CSS styling
0. Publish the site using github pages



Overview
========
The site for this assignment is your own personal journal. You will start this page during this assignment and add to it each week.

Resources
=========
* [HTML 5 Boilerplate](https://html5boilerplate.com/)

* You can get a bunch of easy placeholder images at [placehold.it](http://placehold.it/) (conveniently shows image size) or [lorem pixel](http://lorempixel.com/)

* You can get a bunch of fun SVG icons at [The Noun Project](http://thenounproject.com/).
* Here's a list of fun [lorem ipsum generators.](http://mashable.com/2013/07/11/lorem-ipsum/)

Things to do
=====

Part 0 - set up the assignment
----------------------------------

### Steps

0. Make a repository named "journal" on github.com.
0. Clone the repo to your local machine at "~/Documents/pcs/journal"
0. Create a gh-pages branch both locally and on github.com to set up web hosting
0. Work on the master branch until you deploy to the gh-pages branch
0. Download [this zip file](https://github.com/portlandcodeschool/primer/blob/master/_posts/assignments/journal/site.zip) and unpack it into your repo. This file set is a simple web site created from HTML5 Boilerplate, a very reliable template to use when you start a new web site.
0. Add all the files, commit them, and push master to github.
0. Merge from master to gh-pages and push to publish your file to the web
0. Verify that your site is available on the web.

Part 1 - Create a simple site with the correct structure and gibberish conten.
----------------------------------

Wireframe:
![wireframe](/primer/images/journal_wireframes.png "Wireframe")

### Steps

0. Examine the template site.
0. Modify the title and meta elements in the head to match your content.
0. Create HTML for
  - A page header, a main element, and a page footer.
  - Inside the header, a page H1 and a set of links to your other information
  - Inside the main element, a nav element and a section element
  - Inside the nav element, up an unordered list and a placeholder image. These list items will eventually be links to article headlines.
  - Inside the section element, two article elements
  - Inside each article element, an article header with a h2 title and a h3 subtitle, an article body, and an article footer.
0. Add some gibberish content to each of the elements to see that they exist.
0. Float the nav element to the left of the section element. Adjust the main element to make sure it doesn't collapse when the nav element floats left. Make the nav element about 30% wide and the section element about 70% wide within the main element.
0. Test, add, commit, and push your code on master
0. Merge your code to gh-pages and push to deploy your site.
0. View your site on the web.

Part 2 - Add meaningful content to the first article
----------------------------------

Each week, we will ask you to add information to this file and republish it. We'll ask you to use the HTML, CSS, and JS features you've learned and to give us feedback on how the class is going for you.


### Steps

0. Replace the placeholder image in the nav panel with something that means something to you. Resize the image to fit in the nav panel.
0. Update the first article with meaningful content:
    0. Replace the text in the first article with a couple of paragraphs about what you think of your first few classes.
    0. Replace the title with a good headline for the article.
    0. Replace the subtitle with a "summary at a glance" of the article
    0. Put text in the footer with your name and the date you wrote the article.
0. Leave the gibberish content in the second article. (Can you put a placeholder image floated right in the second article?)
0. Test, add, commit, and push your code on master
0. Merge your code to gh-pages and push to deploy your site.
0. View your site on the web.

Part 3 - Add some style
----------------------------------

Let's make it look unique.


### Steps

0. Create a coherent color palette using [Adobe Color CC](https://color.adobe.com/create/color-wheel/)
0. Put some comments at the front of main.css that list the color values you've chosen like this:

     /*
     primary color - #f0f0f0

     text color - #101010

     background color - #520DB2

     accent color - #FF9D20

     warning color -#14FF2F

     error color - #B21209
     */

0. Don't use these colors!
0. Use the colors you've chosen as background and content colors on some elements of your layout so that it looks good to you.
0. Change the font to a face likely to be present on averybody's computer.
0. Test, add, commit, and push your code on master
0. Merge your code to gh-pages and push to deploy your site.
0. View your site on the web.

Every week you will add material to this web site.
