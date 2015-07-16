---
layout: post
title: "02 Create Your Web Development Notebook"
modified: 2015-02-22 22:09:03 -0800
category: assignments
tags: [JavaScript, jQuery]
description: Use Mobile-first and responsive design to create a simple site.
---


Objectives
==========

Successful students will be able to perform the following:

0. Create a site from a common industry-standard template
0. Read existing professional code in order to make original changes
0. Employ a card-based user interface design language
0. Transform a wireframe design to structural, semantic HTML5
0. Create a simple responsive layout using flexbox
0. Create a fixed navigation menu
0. Practice git branching and merging
0. Publish custom bespoke sites using github pages


Overview
========
The site for this assignment is your own personal web development notebook. You will start this page during this assignment and add to it each week. For an example, see [Stephanie Argy's journal](http://stephanieargy.github.io/journal/)

We strongly recommend that you work in pairs, organizing your study time to work together and support each other. Each of you will produce your own site, but you will be able to share techniques and troubleshooting.


Resources
=========

Please visit the following resources.

* [HTML 5 Boilerplate](https://html5boilerplate.com/)
* [Why cards are the future of the web](https://blog.intercom.io/why-cards-are-the-future-of-the-web/)
* [The Complete Guide to an Effective Card-Style Interface Design](https://blog.intercom.io/why-cards-are-the-future-of-the-web/)


Please read one or more of the following references and use the following cheatsheet as you perform *Part 2*.

* Short intro article (required): [A Complete Guide to Flexbox](https://css-tricks.com/snippets/css/a-guide-to-flexbox/)
* More in-depth MDN article: [Using CSS flexible boxes](https://developer.mozilla.org/en-US/docs/Web/Guide/CSS/Flexible_boxes)
* Some cool recipes: [Harnessing Flexbox for Today's Web Apps](http://www.smashingmagazine.com/2015/03/02/harnessing-flexbox-for-todays-web-apps/)
* A very helpful article on centering with flexbox (very recommended!): [Designing CSS Layouts With Flexbox Is As Easy As Pie](http://www.smashingmagazine.com/2013/05/22/centering-elements-with-flexbox/)
* A cautionary note about making flexbox work in all browsers: [On using prefixes in Flexbox](http://shouldiprefix.com/#flexbox)
* Official specification:[CSS Flexible Box Layout Module Level 1](http://www.w3.org/TR/css3-flexbox/)
*Quick reference (required): [Flexbox Cheatsheet ](http://jonibologna.com/content/images/flexboxsheet.pdf)


The following resources are optional

* You can get a bunch of easy placeholder images at [placehold.it](http://placehold.it/) (conveniently shows image size) or [lorem pixel](http://lorempixel.com/)
* You can get a bunch of fun SVG icons at [The Noun Project](http://thenounproject.com/).
* Here's a list of fun [lorem ipsum generators.](http://mashable.com/2013/07/11/lorem-ipsum/)


Activities
=====

0. Read the references. Really. At least the required ones. Don't start coding until you do.

0. Read the whole assignment before you start coding any of it.

0. Estimate how much time you think this might take you. You have a week. Write the estimate down.

0. Keep track of your time. We will ask you how much time you spent.

0. Use the slack channel, your TA's, and your instructor for help if you get stuck.

Part 0 - set up the assignment
----------------------------------

### Steps

These steps assume you are able to work with git and github as introduced in Exercise 1.

0. Make a repository named "webdev-notebook" on github.com. Initialize the repo with a Readme.md file.

0. Clone the repo *using ssh* to your local machine at <kdb>~/Documents/pcs/webdev-notebook</kdb>. for example, I used this command:

    ```
    git clone git@github.com:Auraelius/webdev-notebook.git
    ```

0. Create a gh-pages branch both locally and on github.com to set up web hosting

0. Work on the master branch until you deploy to the gh-pages branch

You will start with a set of files called [HTML 5 Boilerplate](https://html5boilerplate.com/). These files represent best practices for site construction. You may not need all of the parts supplied with HTML 5 Boilerplate, but it will be useful to work with them and become familiar with them.



0. Download [this zip file](https://github.com/h5bp/html5-boilerplate/releases/download/5.2.0/html5-boilerplate_v5.2.0.zip) from the [HTML 5 Boilerplate](https://html5boilerplate.com/) web site.

0. Unpack it into a temporary folder named <kbd>html5-boilerplate_v5</kbd>. It may do this automatically, depending on how you have your browser configured.

0. Copy the contents of the <kbd>html5-boilerplate_v5</kbd> folder to your <kbd>webdev-notebook</kbd> folder. Make sure the file structure looks like this:

![boilerplate files](/primer/images/ex2-html5boilerplate-files.png)

0. Clean up the boilerplate <kbd>index.html</kbd> file by removing this block of HTML

![ex2-remove-html-block](/primer/images/ex2-remove-html-block.png)

0. Update the <kbd>title</kbd> element and the <kbd>meta</kbd> tag description content attribute

0. Add all the files, commit them, and push master to github.

0. Merge from master to gh-pages and push to publish your file to the web

0. Verify that your site is available on the web.

From this point on, you will add new HTML content here:

![editor with index.html file](/primer/images/ex2-html-editing1.png)

##Part 1 - Analyze the wireframe and develop the html element structure.

Here's what the page will eventually look like.

![wireframe](/primer/images/ex2-wireframe.png)

The top-level of most pages (and this one) is to have three children of the &lt;body&gt; tag.

![ex2-toplevel-children](/primer/images/ex2-toplevel-children.png)

If we draw the boxes of these elements on the wireframe, it might look like this:

![ex2-top-level-boxes](/primer/images/ex2-top-level-boxes.png)

Going further, we can see a repeating structure inside the main content of the page. There are multiple sections.

![ex2-sections](/primer/images/ex2-sections.png)

And the code might look like this:

![ex2-sections-code](/primer/images/ex2-sections-code.png)


Each section has a heading and a number of articles, like this:

![ex2-articles](/primer/images/ex2-articles.png)

And the code might look like this:

![ex2-articles-code](/primer/images/ex2-articles-code.png)

##Steps
0. Update index.html with the structure of the page. Don't worry about the header and footer yet.

0. Use the section titles from the wireframe.

0. Use gibberish or "lorem ipsum" text for the article headings and paragraph text.

0. Let the articles just stack in a single column. Don't worry about making them line up in rows yet.

0. Use the CSS from Exercise 1 to style your articles so they have borders, etc.

0. Test, add, commit, and push your code on master

0. Merge your code to gh-pages and push to deploy your site.

0. View your site on the web.



Part 2 - Use *flexbox* to lay out each section
----------------------------------

Flexbox is a relatively new feature of CSS that allows excellent control of where things are positioned on the page. It replaces older methods like tables or floats.


The first step is to simply enclose the articles in a flex container. This takes over control of the layout algorithm from the default block layout. We can use a simple <kbd>div</kbd> for this:

![ex2-flex-container-code](/primer/images/ex2-flex-container-code.png)

Then, on the CSS side, we style the flex container something like this (You may have to add vendor prefixes and play around until you find the correct combination. Refer to the references for help):

![ex2-flex-container-css](/primer/images/ex2-flex-container-css.png)

### Steps
0. Read at least one of the flexbox references before coding. Really.

0. Modify your section elements to include a flex container div

0. Modify your CSS to enable the flex layout behavior

0. Test your layout by narrowing the browser to the smallest possible width. It should turn back in to a single column layout.

0. Test, add, commit, and push your code on master

0. Merge your code to gh-pages and push to deploy your site.

0. View your site on the web.


## Part 3 - Centered Footer

More Flexbox! Look up the article on centering with flexbox to see how this works.

### Steps

0. Use your mad flexbox skillz to center the copyright notice horizontally and vertically in the footer.

0. Test, add, commit, and push your code on master

0. Merge your code to gh-pages and push to deploy your site.

0. View your site on the web.


Part 4 - Fancy Header
----------------------------------

In this section, you create an oh-so-trendy "sticky nav" element.

### Steps

0. Inside the header, create a page H1 and a set of links to your other information like a link to your github, a mailto: URL so people can send you email, and a link to your linkedin profile.

0. Create a <kbd>nav</kbd> element to act as a navigation menu to the sections on the page.
  - Each section should have a unique ID that you can use in the navigation links
  - Inside the nav element, use an unordered list.
  - Each list items should be a link to a section.
  - Change the list item elements to inline-block so they appear next to each other but still can be given padding and margin.

0. Use "fixed" positioning on the entire header element so that it stays at the top of the viewport as you navigate to different sections.

0. Adjust the styling of the sections (or the body or some other element) so that the section title doess not disappear behind header when you navigate to a new section.

0. Test, add, commit, and push your code on master

0. Merge your code to gh-pages and push to deploy your site.

0. View your site on the web.


Part 5 - Modify the color palette & font
----------------------------------

Let's make it look unique.

### Steps

0. Create a coherent color palette using [Adobe Color CC](https://color.adobe.com/create/color-wheel/)

0. Put some comments at the front of main.css that list the color values you've chosen like this:

```
     /*
     primary color - #f0f0f0
     text color - #101010
     background color - #520DB2
     accent color - #FF9D20
     warning color -#14FF2F
     error color - #B21209
     */
```

0. Don't use these colors!

0. Use the colors you've chosen as background and content colors on some elements of your layout so that it looks good to you.

0. (Optional) Feel free to add subtle gradients to the background colors.

0. (Optional) Use a different design for cards in different sections. For example, have a distinct h2 appearance for HTML cards compared with CSS cards, etc.

0. Change the font to a face likely to be present on everybody's computer.

0. Test, add, commit, and push your code on master

0. Merge your code to gh-pages and push to deploy your site.

0. View your site on the web.



Part 6 - Add meaningful content to your notebook
----------------------------------

Each week, we will ask you to add information to this file and republish it. We'll ask you to use the HTML, CSS, and JS features you've learned and to give us feedback on how the class is going for you.


### Steps

0. Add a card about what you learned about flexbox
0. Add a card about CSS positioning
0. Test, add, commit, and push your code on master
0. Merge your code to gh-pages and push to deploy your site.
0. View your site on the web.

Part 6 - Going Further!
----------------------------------

If this isn't enough for you, check out [Stephanie's Advanced Challenges](http://stephanieargy.github.io/advanced/) and add one or more of them to your notebook.
