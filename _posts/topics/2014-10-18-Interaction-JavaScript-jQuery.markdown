---
layout: post
title:  "JavaScript/jQuery"
description: "Interaction on web pages with JavaScript and jQuery"
date:   2014-10-18 11:00:00
category: topics
comments: true
---

As with all things, we look at this subject from four perspectives:

* **Technology** - the JavaScript language
* **Technique** - Selection, Traversal, Manipulation, and Event Listeners
* **Tools** - The Chrome Developer JavaScript Debugging Tools
* **Teamwork** - An exercise in quickly adding interactivity to a simple page

#Let’s talk *Technology*


Here's what we have to work with:

* _**Text**_ - our basic medium, known here as "strings" - a set of characters that come in through forms and are displayed in HTML element contents. Also used as the basic building blocks of HTML: tags,  attributes, CSS properties, and URLs when we play with the DOM.
* _**Numbers**_ - used to count and measure things. Also used to change the size, shape, and position of elements
* _**Booleans**_ - the concept of *true* or *false*, or at least something akin to it: *truthiness* and *falsiness*.
* _**Events**_ - the ways that the browser lets us know when a human uses the mouse, touchscreen, keyboard, or other device.
* _**The DOM**_ - The main document object we use to add, change, and delete elements.

That's pretty much it. We use techniques like object-oriented programming and DOM traversal and what-not, but it still comes down to this:

> **Every interaction on a web page uses two basic things: listening for events and changing the DOM.**


## Build your vocabulary
Of course, this wouldn't be coding unless we used a whole bunch of strange words and vocabulary to describe these bizarre concepts.
So, get ready to build more glossary. You can start with the glossary list at the end of this document. Fill it in as we go.

For example, extract the definitions in the following sentence: When coding the page, we write little recipes, called _**functions**_,
that use imaginary ingredients, called _**objects**_. We
hang the functions on the DOM like Christmas tree ornaments. Then, we sit back and let the user do whatever users do.

## Read all the codes
Also of course, we code in languages that are arcane, terse, and difficult (at first) to understand.
More like hieroglyphics, these recipes do a lot of things behind the scenes with just a character or two in the right place.
For example here's some JavaScript:

```
$("button").click(function (){
  var $class_name = $(this).val();
  $('.' + $class_name).toggle();
  $(this).toggleClass("disabled");
});
```

In combination, with some HTML and CSS, this filters a list when a somebody clicks a button. You’ll understand this code before we’re done.

##Programs can remember stuff

###Variables

_**Variables**_ are like short term memory. Code stores stuff in variables as it listens to events, captures inputs, and modifies the DOM.
This code sets a variable:

```
var class_name = "horror";
```

Always use the keyword ```var``` to declare a variable.

In this case, this statement sets a variable named ```class_name``` to a particular string.

There are other things that are like long-term memory, like files and databases, but we will leave them for later.

###Arrays
An _**array**_ is a set of similar things, like a set of strings, or a set of numbers. The most common use of arrays in this kind of
programing is getting a set of elements that we want to work on a certain way, like all the odd-numbered rows in a table, so we can
create zebra stripe styling.

###Objects

_**Objects**_ are collections of variables that represent things out in the world, in the DOM, or in our functions.
They are a way of organizing stuff.  When a variable is part of an object, it’s called a _**property**_. Objects have properties.
More about objects, later.

##Programs can do stuff

###Expressions

_**Expressions**_ calculate things, like adding numbers, putting together strings, or whether something is true or not.
They result in _**values**_. This is an expression:

```
'.' + class_name
```

If ```class_name === "horror"``` then this expression's value is ```".horror"``` because ```+``` is the string concatenation  operator.


###Statements
_**Statements**_ are instructions for the browser. They *should* always end in a semicolon. This whole line is a statement:

```
class_selector = '.' + class_name;
```

Notice that this isn't math. This statement is an instruction to the browser: "Prepend a dot to the variable class_name and
put the result in the variable class_selector."

###Functions

We organize statements into _**functions**_. A function is a set of statements that accomplish some, solitary goal.
These have _**function names**_, take _**parameters**_, and _**return values**_. When you run a function,
the browser follows your instructions. Exactly. This is a function:


```
function double(aNumber) {
  return 2*aNumber;
}
```

The function name is ```double```, the parameter is ```aNumber``` and this function returns a value that is twice what you give it as a parameter.
For example, this statement sets a variable named “foo" to the double of 13.

```
var $foo = double(13);
```

###Objects are the key to the biscuit
Now, here’s something that’s cool about JavaScript. *You can store functions in variables*.
I know, I know -- that’s *so* cool.  But wait, there’s more! You know what that means?
You can put functions in objects. That’s right: *objects can do things*.
When functions are in objects, they are called _**methods**_.

That’s a key concept:

> **Objects know stuff, remember stuff, and can do stuff**.  

Get this, and JavaScript's your oyster. For example, the DOM is an object. (The “document object”, get it?)
It knows how to do web pages, remembers the current web page, and can modify web pages.
You can read and set it’s properties (variables) and run its methods (functions).

# Now, let’s talk *Technique*

We create interactivity using _**selection**_, _**traversal**_,  and _**manipulation**_.
And we react to user input with functions acting as _**event listeners**_.


* **Selection** is the process of finding some element in the DOM. Sometimes we do something to that element. Sometimes we hang a function that listens for events that happen to that element.
* **Traversal** is the process of moving from one element to another. For example, if you find yourself at a list item, you can traverse up to the parent and do something with the whole list.
* **Manipulation** is simply changing an element. Sometimes we change its style, moving it around, making it visible. Sometimes we add elements to other elements, sometimes we delete them.
* **Event listeners** are functions attached to specific DOM elements, listening for a specific event. When the event occurs, the function runs.


### jQuery makes things easy

jQuery is a library, written in JavaScript, that has lots of functions that help with these techniques. It’s complicated, so we’ll start off slow.

It all starts with the ```$()``` function. That function allows you to select and create elements.
It returns a _**jQuery object**_. jQuery objects have properties and methods that traverse the DOM,
modify elements, and create event listeners, and even do simple animations. Let's see some of the things it can do, then use it in an exercise.

####Selection

First of all, it’s easy to select an element. You just put a CSS selector inside the function call. For example, if you want to select a ```<button>``` element, you use the code:

```
$(‘button')
```

This returns an array of one or more jQuery objects, each of which acts like an element but, as we said, has lots of other properties and methods. If the selector matches more than one element, the array contains more than one jQuery object.
It is conventional to store jQuery objects in variables that start with a dollar sign, like this:

```
$addTodoItemButton = $(‘button');
```

####Traversal
Next, you can traverse the DOM easily. Let's say the button above is in the following HTML snippet:


    <ul>
      <li>
        <button value="horror">Horror</button>
      </li>
      <li>
        <button value="adventure">Adventure</button>
      </li>
      <li>
        <button value="scifi">Science Fiction</button>
      </li>
    <ul>


This code selects the adventure button using an attribute selector:

```
$('button[value="adventure"]')
```

and returns a jQuery object that represents the button element.

You can use the ```parent()``` method to traverse up the DOM to the ```<li>``` element using this:

```
$('button[value="adventure"]').parent()
```
which also returns the ```<li>``` as represented as a jQuery object.

You can go further up the DOM using _**method chaining**_, which feeds the return value of one method to the next method in the chain, like this:

```
$('button[value="adventure"]').parent().parent()
```
Traversal allows you to operate on the DOM without putting an ID or class on everything. It makes for cleaner, easier to read HTML.

####Manipulation
Manipulation is as easy as calling a method. Let's say you wanted to make the button look disabled. Here's the button:

```
<button value="adventure" class="enabled">Adventure</button>
```
You have both the normal class and a class that washes out the button color.

```
.enabled {
  color: blue;
}
.disabled {
  color: lightgray;
}
```

To make the button look disabled, you change the class.

```
function disableButton(){
  $('button[value="adventure"]').removeClass("enabled");
  $('button[value="adventure"]').addClass("disabled");
}
```
####Creation
Finally, you can create an element simply by telling jQuery you which kind of element you want.


```
$newParagraph = $("<p>").text("This is a new paragraph.").addClass("enabled");
```

Try this in the console to see that it creates:

    <p class="enabled">This is a new paragraph.</p>

####Event Listeners
There are all sorts of events. Users can click, hover, scroll, drag, drop, and many others.
jQuery has a method to attach an event listener function for each of the more common ones and a general-purposed method to attach a function to any event.

The simplest way to do this is to use an _**anonymous function**_, a function without a name that is immediately passed to some other function or assigned to a variable.
Here's an example of how we attach an event listener to a button.

    $(‘button’).click(function(){
      alert(“The button was clicked");
    });  

Watch those delimiters! A good way to make sure you don't leave anything out is to write the click function first:

```
$(‘button’).click();
```

then fill in the function with the parameter parenthesis and block braces but without any statements


```
$(‘button’).click(function(){});
```

then to stretch it out

```
$(‘button’).click(function(){

});
```
and finally fill it in

    $(‘button’).click(function(){
      alert(“The button was clicked");
    });  

You have to be careful with event listeners. Most naturally clickable elements (buttons, links, etc)
have a *default behavior*, in most cases to refresh the page with some results from the server or the new page the URL is sending. When we are handling the event ourselves,
we need to stop this from happening. Use the statement:

```
event.preventDefault();
```

at the end of your event listener function to stop the default behavior.

#Let’s talk *Tools*.

One of the things that makes coding difficult is that although you can read the code, it’s hard to see it in action.

The most important set of tools used when developing JavaScript for the web browser are the developer tools.  They let you see the code in action.
We focus on Chrome Developer tools, which incorporate several important functions:

* _**The console**_ - a place where you can enter expressions and statements and have
the JavaScript engine execute the code. You can also output error and warning messages to the console as your code runs.
* _**Breakpoints**_ - these let you see how your code behaves at a certain statement,
when a certain even occurs, when the DOM is manipulated, or when data is sent between the browser and a server.
* _**Scope Variables**_ and _**Watch Expressions**_ - these are ways to see your objects and variables as your code runs.
* _**Single Stepping**_ - this allows you to run your code one statement at a time, dive down into functions, or skip over functions and just see their result.

We'll do a short demo in class to introduce these features.


#Finally, let’s do some *Teamwork*

Divide up into teams of two or three. We will experiment with pair programming as you write some JavaScript to add some interactivity to a web page.

A note about _**pair programming**_ This is a kind of extreme collaboration where the duties of
coding are shared between two people. Typically, one person thinks tactically, focusing on
typing and editing the code while the other person thinks strategically, concerning themselves
with the algorithms, objects, and methods to be used to solve the problem.

The strategically-thinking person should use the Mozilla Developer Network and the jQuery API documentation
to learn the details of the code you have to write.

*Note: These instructions start out explicit and then get more vague as you go along.*

##1. Setup

1. Using codepen.io, *fork* the following pen: ``http://codepen.io/Auraelius/pen/puesw``
It is the HTML and CSS for a simple “to-do” app. Your team's job is to add the JavaScript.
1. Be sure that jQuery and jQuery UI are enabled in the JS pane of codepen.io

##2. Make an event listener
Start by attaching an event listener function to the button.

1. Select the button using the code, ```$(‘button’)```.
2. Use the ```click()``` method to attach an anonymous function to the button.
You should start out by having the event listener function just do something simple, like throw up an alert box, like this:

    ```
    $(‘button’).click(function(){
      alert(“The button was clicked");
    });  
    ```
3. Test your code.

##3. Read the Form
You can get to the value of an input tag easily. Say your HTML looks like this:

    <form>
        <label for="theTodoText">What's next?</label>
        <input type="text" name="theTodoText" placeholder = "This!"/>
    </form>

You can get the value in the input field using the ```val()``` method, like this:

```
$('input[name="theTodoText"]').val();
```

1. Modify your event listener function to read from the form and display the value in the alert box.
Note: you may have trouble in codepen.io so use the "Debug" menu function to bring the code into Chrome to see it work there.
2. Test your code


##4. Create a new list item

Creating a new list item is a two-step process:
1. Create the new element
2. Add it to the list

Example HTML

    <ul id="theList">
      <li>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</li>
      <li>Aliquam tincidunt mauris eu risus.</li>
      <li>Vestibulum auctor dapibus neque.</li>
    </ul>

Creating a new list item happens something like this:

```
$newListItem = $('<li>').text("Hi! I'm New!");
```
and then you append it to the list like this:

```
$("#theList").append($newListItem);
```

Modify your event listener function as follows:

1. Using the value you got from the form, create a new list item.
2. Insert it into the list at the *start* of the list. Hint: you will need a different method than ```append()```.
2. Test your code

##5 Add a little animation

Some times designers call attention to the thing that is happening by adding a highlight which draws the eye, then quickly fades away.
We can do that using a little jQuery UI addition to our code. jQuery UI is another library that adds user interface elements and methods
to jQuery.

Let's say we had a "highlight" class:

```
.highlight {
  background-color: yellow;
}
```

If we added this class to the element when we added it to the list and then removed it over, say, about a second,
the user would see the new list element highlighted and then become normal.  We'd use code something like this:

```
$newListItem = $('<li>').text("Hi! I'm New!").addClass("highlight");
$("#theList").prepend($newListItem);
$newListItem.removeClass("highlight", 1000);
```
The number "1000" is the number of milliseconds for jQuery to spend removing the class.

Modify your event listener function as follows:

1. Briefly highlight the item as you add it to the list.
2. Test your code

##6 Extra credit stretch goal #1!!

Hide the form behind a "hamburger icon".

1. Use the icon in the HTML
2. Put an event listener on it to toggle the form visibility.
3. Test your code
3. Set up a ```$(document).ready()``` event listener to hide the form when the page loads.
4. Test your code


##7 Extra credit stretch goal #2!!!
Every item in a To Do list usually a way to indicate that you've completed the item. If you have time, try the following.

Modify your event listener function as follows:

1. Add a checkbox to every new list item as you add it to the list.
2. Attach an event listener to the checkbox to indicate completion of the item.
3. Test that your event listener works
3. Make a class that styles completed items with a grey color and strikethrough font
4. Have the checkbox event listener function apply this style to the list item,
5. Test your code
6. Modify the checkbox event listener to style the list item and then gradually make the list item disappear from the list.
7. Test your code

Hint: Your checkbox event listener function will have to use traversal. The checkbox will be a child of the list item. You will need to traverse upward to get to the list item.

Another hint: In an event listener function, the built-in JavaScript variable ```this``` refers to the element that has experienced the event. In this case, the checkbox. Use ```this``` in your jQuery function to select the checkbox.


#References
Mozilla Developer Network JavaScript - https://developer.mozilla.org/en-US/docs/Web/JavaScript

jQuery - http://jquery.com/

jQuery UI - http://jqueryui.com/

Treehouse has a decent screencast class on jQuery, "jQuery Basics" - http://teamtreehouse.com/library/jquery-basics

My current favorite book on JavaScript and jQuery is

    JavaScript and jQuery - Interactive Front-End Web Development
    John Duckett, Wiley, 2014
    www.javascriptbook.com


#Glossary
_**Text**_

----
 _**Number**_

----
 _**Event**_  

----
 _**The DOM**_  

----
 _**Variable**_

----
 _**Array**_

----
 _**Object**_

----
 _**Object property**_

----
 _**Expression**_

----
 _**Expression value**_

----
 _**Statement**_  

----
 _**Function**_

----
 _**Function name**_

----
 _**Function parameters**_

----
 _**Function return value**_

----
 _**Method**_

----
 _**Selection**_

----
 _**Traversal**_

----
 _**Manipulation**_

----
 _**Event listeners**_

----
 _**jQuery object**_

----

_**method chaining**_

____

_**The console**_

----
_**Breakpoints**_

----
_**Scope Variables**_

----
_**Watch Expressions**_

----
_**Single Stepping**_

----
_**Pair programming**_

----


----

Copyright @ 2014 Alan Zimmerman

Used with permission by Portland Code School
