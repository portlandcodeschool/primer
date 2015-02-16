---
layout: post
title:  "HTML & CSS: Refinements"
description: "Use HTML5 and CSS3 features to add some elegance to your site's UX."
date:   2014-07-19 11:00:00
category: topics
comments: true
---

Goals
=====
* Understand how HTML forms work
* Know what the client-server model is and how HTTP requests work
* Understand the difference between `<section>` and `<div>`.
* Apply a box shadow, rounded corners, and text shadow.
* Know transitions and animations and where to apply them.
* Know what vendor prefixes are and why they are used.
* Understand how box-sizing changes the box model.


HTML: Tables and Forms
=======================

A Brief History
---------------

HTML's long-run trajectory has been toward greater standardization, reaching its zenith with X/HTML.

HTML5 was a slight step backwards from that (arguably excessive) degree of standardization.

Tables
------
Basic structure of a table with a header row:
{% highlight html %}
<table>
    <tr> <!-- header row -->
        <th>header 1</th> <th>header 2</th> <th>header 3</th>
    </tr>
    <tr> <!-- row 1 -->
        <td> r1 c1 </td> <td> r1 c2  </td> <td> r2 c3 </td>
    </tr>
    <tr> <!-- row 2 -->
        <td> r2 c1 </td> <td>  &nbsp; </td> <td> r3 c3 </td>
    </tr>
</table>
{% endhighlight %}

and

{% highlight css %}
table {
    border: 1px solid black;
}
td {
    border: 1px solid black;
    padding: 20px;
}
{% endhighlight %}

produce

![]({{ site.url }}/images/table.png)

Forms
-----

Each form contains `input` fields, each input field has a `name` and a `value`.  When a form is submitted, it sends its data to the URL specified in the form's `action` attribute.

{% highlight html %}
<form action="<!-- form destination goes here -->" method="get" accept-charset="utf-8">
    <input type="text" name="recipient">  <!-- a text input field named 'recipient' -->
    <!-- input fields go here  -->
    <input type="submit" value="Send"> <!-- submit button  -->
</form>
{% endhighlight %}

### Placeholder text and default values

Placeholder text is set with the `placeholder` attribute of the `input` tag. Default values with the `value` tag. Default values are submitted if the user doesn't enter anything into the input field, but placeholder text isn't.

### Form styling

Forms can be styled in CSS just like any other HTML. Same practices apply: a `class` and/or an `id` can be added to any form element.


### Other kinds of input types

* [MDN: HTML `<input>` element][mdn-input]
* [w3schools: HTML5 Input Types][w3s-input]

[mdn-input]: https://developer.mozilla.org/en-US/docs/Web/HTML/Element/Input
[w3s-input]: http://www.w3schools.com/html/html5_form_input_types.asp

### Form submit method: GET vs. POST

Two ways of sending an HTTP request to a URL. In a GET request, all the form data is appended to the URL in the browser's address bar. In a POST request, form data is included in [the body of the request](https://stackoverflow.com/questions/8417224/how-to-mimic-an-html-form-submission-in-a-post-request).



What's an HTTP request? What does it look like?
===============================================

Clients and Servers, Requests and Responses
--------------------------------------------

The internet is built on a [client-server model](https://en.wikipedia.org/wiki/Client%E2%80%93server_model), whereby all communication between a client (like your web browser) and a server occur via [requests](https://stackoverflow.com/questions/8417224/how-to-mimic-an-html-form-submission-in-a-post-request?answertab=votes#tab-top) and responses.

A request:

{% highlight html %}
POST /index.html HTTP/1.1
Host: www.example.com
{% endhighlight %}

A response:

{% highlight html %}
HTTP/1.1 200 OK
Date: Mon, 23 May 2005 22:38:34 GMT
Server: Apache/1.3.3.7 (Unix) (Red-Hat/Linux)
Last-Modified: Wed, 08 Jan 2003 23:11:55 GMT
ETag: "3f80f-1b6-3e1cb03b"
Content-Type: text/html; charset=UTF-8
Content-Length: 131
Accept-Ranges: bytes
Connection: close

<html>
<head>
  <title>An Example Page</title>
</head>
<body>
  Hello World, this is a very simple HTML document.
</body>
</html>
{% endhighlight %}

To see what requests and responses look like in the wild, check out the Network tab in DevTools:

![]({{ site.url }}/images/request.png)



Exercise (Optional)
====================
Make a clone of the [Google homepage](http://www.google.com) that sends its request to `http://form-echo.herokuapp.com/form-echo`. Experiment sending it a GET request vs. a POST request by changing the `method` attribute of your form.

Suggestions: Work with a partner as a [driver/navigator pair][pairing-primer]. Get feedback on your code from an instructor or TA.

[pairing-primer]:http://www.wikihow.com/Pair-Program
