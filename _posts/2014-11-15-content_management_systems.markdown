---
layout: post
title:  "Content Management Systems"
description: "Managing lots of content - Site generators, Content Management Sytems, and site builders"
date:   2014-11-15 11:00:00
categories: html css
comments: true
---

Introduction
=============
Way back in the beginning of this course, 
we broke down things this way: 

* HTML took care if both content and structure
* CSS did the appearance
* JavaScript provided interaction

We need to take one more step and separate content from structure.

We will create our HTML with placeholders instead of content, creating templates. Then, we will use software to take the content, our text and media, and inject it into the templates, and publish our websites.

There are, in general, two ways to do this: 

1. Beforehand: taking all the content, injecting it into the HTML and then saving all those HTML files on the Web server. This is called _**site generation**_. 
2. On the fly: having all of our content in a database and creating HTML pages on-the-fly when users visit the site. The software that accomplishes this is called a _**content management system**_.

Templating Languages
====================

The first step, down at the coding level, is to take the content out of the HTML and just leave _**placeholders**_. Here's an example in the _Liquid_ templating langage:


    <div id="main" role="main">
      <div class="article-author-side">
        <p>Joe Smith is a famous blogger who's opinions inexplicably matter to people. </p>
      </div>
      <article>
        <h1>How to be a blogger</h1>
        <div class="article-wrap">
          <p>It's pretty easy to be a blogger. Go to a site like <a href="http://chrisvalleskey.com/fillerama/">Fillerama</a>, click a few buttons, get some text like this...</p>
    		  <i><p>Hokey religions and ancient weapons are no match for a good blaster at your side, kid. You don't believe in the Force, do you? Alderaan? I'm not going to Alderaan. I've got to go home. It's late, I'm in for it as it is. You're all clear, kid. Let's blow this thing and go home! The plans you refer to will soon be back in our hands. You're all clear, kid. Let's blow this thing and go home!</p>
          <p>... and hey, presto, you're a blogger!</p></i>
        </div>
      </article>
    </div>


Here's what it looks like as a template:

{% raw %}


    <div id="main" role="main">
      <div class="article-author-side">
        {{ author-bio }}
      </div>
      <article>
        <h1>{{ title }}</h1>
        <div class="article-wrap">
          {{ content }}
        </div>
      </article>
    </div>

{% endraw %}

Notice that all the content (author biography, article title, article body) has been replaced with placeholders, like this:

{% raw %}

    {{ author-bio }}
    {{ title }}
    {{ content }}

{% endraw %}

The actual content is kept in either simple text files or in a database.

Advantages
-----------
The advantages of using templates in either site generation or content management systems are these:

* You can re-use the same template to create many articles, blog entries, or pages
* You can focus the HTML on the structure of the material
* The people who create content do not have to understand coding - HTML, CSS, or JavaScript. They just need to type in the text. They can focus on the content.

Key Differences between site generators and content management systems
========================================================================

Both site generators and content management systems use templates to separate content from structure. But, in general, there are some key differences:
 
Site generators:

![Site generator block diagram]({{ site.url }}/images/site_generator_sketch.png "Site generator block diagram")

* Store content in files (or, in some cases, databases)
* Publish the web site as static HTML, CSS, & JavaScript files once for each content update
* Separate HTML templates from CSS stylesheets
* Are "closer to the code"

Content management systems:

![Site generator block diagram]({{ site.url }}/images/cms_sketch.png "Site generator block diagram")

* Store content in databases
* Publish each page of the web site as it is requested by the web server
* Combine HTML templates and CSS stylesheets into _**themes**_
* Are easier for non-coders to use



