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

```html

<!-- Google Analytics: change UA-XXXXX-X to be your site's ID. -->
<script>
    (function(b,o,i,l,e,r){b.GoogleAnalyticsObject=l;b[l]||(b[l]=
    function(){(b[l].q=b[l].q||[]).push(arguments)});b[l].l=+new Date;
    e=o.createElement(i);r=o.getElementsByTagName(i)[0];
    e.src='https://www.google-analytics.com/analytics.js';
    r.parentNode.insertBefore(e,r)}(window,document,'script','ga'));
    ga('create','UA-XXXXX-X','auto');ga('send','pageview');
</script>
```

0. Update the <kbd>title</kbd> element and the description content attribute by updating these two lines:


    <title></title>
    <meta name="description" content="">



0. Add all the files, commit them, and push master to github.

0. Merge from master to gh-pages and push to publish your file to the web

0. Verify that your site is available on the web.

From this point on, you will add new HTML content here:

![editor with index.html file](/primer/images/ex2-html-editing1.png)

##Part 1 - Analyze the wireframe and develop the html element structure.

Here's what the page will eventually look like.

![wireframe](/primer/images/ex2-wireframe.png)

The top-level of most pages (and this one) is to have three children of the &lt;body&gt; tag.

  ```html
  <body>
    <header></header>
    <div class="content"></div>
    <footer></footer>
  </body>
  ```
If we draw the boxes of these elements on the wireframe, it might look like this:

![ex2-top-level-boxes](/primer/images/ex2-top-level-boxes.png)

Going further, we can see a repeating structure inside the main content of the page. There are multiple sections.

![ex2-sections](/primer/images/ex2-sections.png)

And the code might look like this:

  ```html
  <body>
    <header></header>
    <div class="content">
      <section></section>
      <section></section>
      <section></section>
      <section></section>
    </div>
    <footer></footer>
  </body>
  ```


Each section has a heading and a number of articles, like this:

![ex2-articles](/primer/images/ex2-articles.png)

And the code might look like this:

  ```html
  <section>
      <h2></h2>
      <article>
      <article>
      <article>
  </section>
  ```


##Steps
0. Update index.html with the structure of the page.
0. Use the section titles from the wireframe.
0. Use gibberish or "lorem ipsum" text for the article headings and paragraph text.
0. Let the articles just stack in a single column. Don't worry about making them line up in rows.
0. Use the CSS from Exercise 1 to style your articles so they have borders, etc.


moremoremore


Part 2 - Create a simple site with the correct structure and gibberish conten.
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
