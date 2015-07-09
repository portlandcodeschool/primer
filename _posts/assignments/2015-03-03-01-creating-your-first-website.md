---
layout: post
title:  "01 - part 2: Creating your first website"
description: "Build a site."
date:   2015-03-03 13:00:00
category: assignments
comments: true
---

Objectives
==========
0. Create an html file with a basic content structure
0. Use html elements such as *html*, *div*, *style*, *h1*, *p*, and *img*
0. Cut and paste code from codepen.io to a file
0. Provide notes and reflective information inside the cards
0. Link an external css file to an html page
0. Store your files in a git repository
0. Store your repository on github
0. Use github pages to serve your web page on the intertubes.

Overview
========
Your client, who happens to be your instructor for this class, wants to get to know you better and see what you are picking up in the class.  You will accomplish this by creating a web page.  You will use the HTML & CSS you created in part 1 of this exercise and add information using HTML.

Please follow the instructions listed below as you work along with the instructor and the TA's.

Resources
=========
* [Beginning HTML and CSS](http://teamtreehouse.com/library/how-to-make-a-website)
* [HTML First](http://teamtreehouse.com/library/how-to-make-a-website)
* [What is CSS?](http://teamtreehouse.com/library/how-to-make-a-website) Note: This is just one video in the CSS: Cascading Style Sheets badge

Things to do
=========

Part 0 - Set up the assignment
----------------------------------

### Steps
0. Create a folder named "pcs" in your Documents folder.

0. Create a new folder *inside* the pcs folder and give it the name of this project.  This name should be unique.  

0. Open up your text editor (Sublime Text or Atom)

0. Create a new file [file, new-file or cmd n] and save [cmd s or file, save].  Name the file "index.html".  Be sure to save this file in the folder you created for this project.

0. If you are using Sublime Text, click on [view], find [sidebar] and select [show sidebar].  In Atom, use _View_>_Toggle Tree view_.  Next, drag your new folder from the finder right into the sidebar.

0. One line 1, insert <kbd><!DOCTYPE html></kbd>.

0. On line 2 and 3, create an open and closing <kbd>html</kbd> tag.

0. Save your file.  You should do this often.  On the top of the screen, next to the file name you should see an X or a circle.  If you see a circle, then you need to save your changes.

Part 1 - Start creating content structure
----------------------------------
0. All tags after this point should be between the opening and closing <kbd>html</kbd> tag.

0. Create an opening and closing <kbd>head</kbd> tag with a opening and closing <kbd>title</kbd> tag. In between this <kbd>title</kbd> tag, type your name and something witty.  

0. Save the file

0. Open the file in the Chrome web browser.  You can do this by clicking on the icon where you saved the file, or you can locate the file  on the terminal and type: <kbd>open _fileName_</kbd>.  This should open up your default browser and show your content. If Chrome is not your default browser, make it so at least during this coding session.

0. There should be nothing but a white page, but on the top of the window, the tab will have your name and your witty comment.  The browser address should also show something like this: file:///Users/_yourUserName_/_pathToYourFile_/index.html

0. Below the closing <kbd>head</kbd> tag, create an opening and closing <kbd>body</kbd> tag.  At this point, all elements (except for the <kbd>title</kbd> tag) should have zero indentation.

Part 2 - Create header, footer, and content div
----------------------------------
0. Inside the <kbd>body</kbd> tag, create opening and closing tags for the following elements: <kbd>header</kbd>, <kbd>div</kbd>, <kbd>footer</kbd>. Indent them one level because they are children of the body element.

0. Within the <kbd>header</kbd> tag, create an <kbd>h1</kbd> tag and label this the same as your title that appears in the head element.

0. In the div element, assign the class attribute *content* so that the opening tag looks like `<div class="content">`

0. In the footer, create a paragraph element and use the content: "Copyright _your name_ &copy; 2015". The html for the copyright symbol is `&copy;`

0. Your page in the browser should now show the h1 element for the header and the copyright notice in the footer and they should appear in the top left corner of the window.


Part 3 - create content in the main div
----------------------------------
0. Copy the HTML from the codepen.io pen you created for the first part of this exercise and paste it inside the content div. This should include all the cards you created previously.

0. Create a new card in front of all the other cards and share your goals for this class.  Answer questions like "Why are you taking this class? What do you hope to get out of it?" If you've sent this in email already, you can use the email text.

0. Create another card.  In this card, the title should be "Concerns" and the content in the paragraph should address any concerns you have about learning.  You can also address what you don't know about css, javaScript, using a keyboard, working with technology, etc.  The central question in you mind should be "What do you not know?" You will keep this up to date during the whole class.

0. In a third new card, find a profile picture of yourself, similar to what you would post in facebook, or some other picture that represents your learning journey.

0. Create an "img" folder and put the file for the image in that folder.

0. Use an *img* element. Identify the file using a *relative URL* as the src attribute.  For example, if your image file is "myLovelyMug.jpg" then your image tag will look like:
		<img src="img/myLovelyMug.jpg" />

0. If you are familiar with other attributes in the image tag, you can also put in an *alt* tag.

0. At this point, you should see a lot more content in the browser.


Part 4 - Styling with an external css file
----------------------------------
0. Create a new subfolder called "css".

0. In this folder, create a new file and save name this one "main.css"

0. Link this css file in your html. You can do this by creating a <kbd>link</kbd> tag inside the header, directly underneath the title element. Include the following attributes: `rel="stylesheet"` `type="text/css"` `href="css/main.css"`.  The link tag is a self closing tag, so type in a forward slash before the closing delimiter>

0. Test to see if `main.css` is loaded correctly into the html page.  This can be done easily by selecting the content div and changing the background color to something different than white.  If you see a change, then the css file is linking correctly into your html page.

0. Copy the CSS from your codepen.io pen into your main.css file.

0. Align the content in the footer so that the content appears in the center of the window.

#Gitapalooza!!

Before you do the next part, work with the instructor & class to do the git installfest.
Be sure to do these steps in class with the instructor and teaching assistants. Don't do this at home (yet). There are just a lot of things that can go wierd and it's nice to do it with help the first few times.

Part 5 - Convert your folder to a git repo
--------------------------------------------
Work through the next part with the class.

0. Open the Terminal app

0. Change directory to your *pcs* folder. If you are following recommended practice, you can do this by typing into the terminal: <kbd>cd ~/Documents/pcs</kbd>

0. Verify that your project folder is in the current directory by typing <kbd>ls</kbd> and looking for the name of the folder

0. Change directory into your folder using the <kbd>cd</kbd>command

0. Use the command <kbd>git status</kbd> and read the error message.

0. Turn the folder into a git "repository" with the command <kbd>git init</kbd>

0. Use the command <kbd>git status</kbd> and read the response. Make a guess at what it means.

0. Add all your files to the "staging area" using the command: <kbd>git add -A</kbd>

0. Use the command <kbd>git status</kbd> and verify that all of your files have been moved to the staging area of git.

0. Commit all your files to the repository using the command: <kbd>git commit -m"initial commit"</kbd>

0. Use the command <kbd>git status</kbd> and verify that all your files are now in the repository.

Part 6 - Publish your site using github.com
--------------------------------------------
Work through the next part with the class.

0. Go to github.com, log in, click the '+' in the top right to create a new repository.

0. Give this repository the same name as your local repository.

0. Click *Create repository*

0. Connect your local repository to your remote repository.  "Local" just means the repository on your computer and "remote" means the repository saved on gitHub.  To connect these two from local to remote, follow the directions on the web browser screen (the ones that appeared after you created the repo) and type

	<kbd>git remote add origin *url_from_github* </kbd> This url is located in the browser next to [quick setup].

0. Back on your computer, use the command line to have git send the work from your local to the remote: Type <kbd>git push origin master</kbd>.

0. Refresh the browser and you should see a page listing the files that you have in your local repository.

0. Make sure they match

0. Create a new branch called "gh-pages" on github. This will magically create a web server for you. It can take up to an hour.

0. View the settings on your repository to see at what URL your files have been published. It should have the format: _yourUserName_.github.io/_yourRepoName_

0. View your web site at the URL.

0. Send your web site URL to your instructor via Slack direct message.
