---
layout: post
title:  "Creating your first website"
description: "Build a site."
date:   2015-03-03 13:00:00
category: assignments
comments: true
---

Objectives
==========
0. Create an html file with a basic content structure
0. Use html elements such as <h1>, <p>, and <img>
0. Provide reflective information inside the paragraph tags
0. Link an external css file to an html page
0. Add styling to match the wireframes.
0. Add other styles to make your page look unique.

Overview
========
Your client, who happens to be your instructor for this class, wants to get to know you better.  You will accomplish this by creating a web page.  Please follow the instructions listed below and reference the wireframe.

Resources
=========
* [Beginning HTML and CSS](http://teamtreehouse.com/library/how-to-make-a-website)
* [HTML First](http://teamtreehouse.com/library/how-to-make-a-website)
* [What is CSS?](http://teamtreehouse.com/library/how-to-make-a-website) Note: This is just one video in the CSS: Cascading Style Sheets badge
* [wireframe](wireframes/primerBasic1wireframe.png)

Things to do
=========

Part 0 - set up the assignment
----------------------------------

### Steps
0. Create a new folder and give it the name of this project.  This name should be unique.  
0. Open up your editor (Sublime Text)
0. Create a new file [file, new-file or cmd n] and save [cmd s or file, save].  I would recommend [index.html]  Be sure to save this file in the folder you created for this project.
0. If you are using Sublime text, click on [view], find [sidebar] and select [show sidebar].  Next, drag that folder into the sidebar.
0. One line 1, insert <!DOCTYPE html>.
0. On line 2 and 3, create an open and closing html tag.
0. Save you file.  You should do this often.  On the top of the screen, next to the file name you should see an X or a filled circle.  If you see a filled circle, then you need to save your changes.

Part 1 - Start Creating Content structure
----------------------------------
0. All tags after this point should be between the opening and closing html tag.
0. Create an opening and closing head tag with a opening and closing title tag. In between this tag, type your name.  Save the file and open the the file.  You can do this by clicking on the icon where you saved the file, or you can locate the file  on the terminal and type: open [fileName].  This should open up your default browser and show your content.  There should be nothing but a white page, but on the top of the window, the tab will have your name.  The browser address should also show something like this: file:///Users/[yourUserName]/[pathToYourFile]/[yourFileName].html
0. Below the closing head tag, create an opening and closing body tag.  At this point, all tags (except for the title tag) should have zero indentation.

Part 2 - Create header, footer, and content div
----------------------------------
0. Inside the body tag, create a opening and closing tags for the following elements: header, div, footer.
0. Within the header tag, create an h1 tag and label this the same as your title that appears in the head.
0. In the div, assign the class container.
0. In the footer, create another h1 tag and label this copyright [your name] 2015
	*. the html for the copyright symbol is [&copy]
0. Your page in the browser should now show the h1 elements for the header and footer and they should appear in the top right corner of the window.

Part 3 - create content in div
----------------------------------
0. Create a h2 with the title [goals]
0. Create a paragraph tag next.  In this paragraph, please share your goals for this class.  Answer questions like "Why are you taking this class? What do you hope to get out of it?"
0. Create another h2 tag and paragaph tag.  In this section, the title should be [Concerns about learning html] and the content in the paragraph should address those concerns.  You can also address what you don't know about css, javaScript, using a keyboard, working with technology.  The central question in you mind should be "What do you not know?"
0. In between the first paragraph tag and the concerns h2 tag, create an image tag.  Find a profile picture of yourself, like what you would post in facebook, identify the location with the file extension as the src attribute.  If your familiar with other attributes in the image tag, you can also put in an alt tag.
0. At this point, you should see a lot more content in the browser.
 

Part 4 - Styling with an external css file
----------------------------------
0. Create a new file, save this one as main.css
0. Link this css file in your html. You can do this by creating a [link] tag inside the header, directly underneath the title tag. List the following attributes: rel="stylesheet" type="text/css" href="main.css".  The link tag is a self closing tag, so type in a forward slash before the >
0. Test to see if main.css is loaded corretly into the hmtl page.  This can be done easily by selecting the container div and changing the background color to something different than white.  If you see a change, then the css file is linking correctly into your html page.
0. Change the margin so that the elements in the container div move 30% to the right of the page.
0. Style the image height and width to match the wireframe.
0. Choose background colors or create a simple border for the header, footer, and container div.
0. Align the content in the footer so that the content appears in the center of the window.

