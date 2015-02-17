---
layout: post
title: "Introduction to JavaScript &amp; jQuery"
modified: 2015-02-15 22:09:03 -0800
category: assignments
tags: [JavaScript, jQuery]
description: Use JavaScript and jQuery to start making web pages interactive
---

Let's use what we learned in class and the article [JavaScript and jQuery](/topics/Interaction-JavaScript-jQuery/) by making some minor modifications in a simple web page.

Objectives
==========
0. Create a simple, interactive web site using event listeners and DOM manipulation
0. Use a JavaScript loop
0. Use attribute selectors in jQuery calls
0. Review basic git and github use
0. Publish the site using github pages

Things to do
=====

Part 0 - set up the assignment
----------------------------------
Steps

0. Make a repository and establish a remote on github.com. This should be review
0. Create a gh-pages branch both locally and on github.com to set up web hosting
0. Work on the master branch unless you are deploying via the gh-pages branch
0. Copy the contents of [this gist](https://gist.github.com/Auraelius/5a4973be6117691789fd) to a file named index.html in your repo
0. Add, commit, and push your file to github.com

This template contains lots of comments, some pre-existing code, and places for
you to answer questions and create new code.

Part 1 - take the quiz
----------------------------------
Steps

0. Read all the code and the comments. Take your time.
0. Answer the quiz questions by updating the file.
0. Test, add, commit, and push your code on master
0. Merge your code to gh-pages and push to deploy your site.

Part 2 - update event listener
----------------------------------
Make the last few changes to create the "Run Script" event listener

Steps

0. Replace the <kbd>alert()</kbd> function with the given loop_and_display() function in the "Run Script" button event listener
0. Test, add, commit, and push your code on master
0. Merge your code to gh-pages and push to deploy your site.

Part 3 - create event listener
----------------------------------
Create a new event listener for the "Clear" button,

Steps

0. Use an attribute selector like the first event listener, but select the "Clear" button
0. Remove the "selected" class when the click event happens
0. Replace the html in the #output_area div with a paragraph containing the text, "Click the <em>Run Script</em> button."
0. Test, add, commit, and push your code on master
0. Merge your code to gh-pages and push to deploy your site.

Here's some code for an event listener that does something similar. You'll have to adapt it by replacing stuff. You can't use it the way it is.

    $('input[type="button" ]').click( function(){
      console.log('Caught a button click event.');
      $("#some_div").removeClass( 'some_class' );
      $("#some_div").html( "<p>Some text.</p>");
    });


Part 4 - convert while loop to for loop
----------------------------------
This part is "extra credit". Only do this if you have time.

The while loop is a good place to start learning loops because it's easy to see what's happening.

    var count = 0;
    while (count<10) {
      // do something;
      count++;
    }

These kind of counting loops are so common, there's a more compact way to do them. It's called the "for loop."

Steps

0. Research the for loop at [w3schools](http://www.w3schools.com/js/js_loop_for.asp) and [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/for)
0. Convert the <kbd>while()</kbd> loop to a <kbd>for()</kbd> loop in the loop_and_display() function.
0. Test, add, commit, and push your code on master
0. Merge your code to gh-pages and push to deploy your site.
