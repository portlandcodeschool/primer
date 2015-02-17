---
layout: post
title:  "Responsive Design"
description: "Designing for the mobile web."
date:   2014-11-01 11:00:00
category: topics
comments: true
---

Goals
=====
* Understand the motivations for mobile-first design
* Be able to use fluid grids in percentages or ems
* Be able to use media queries to adapt layouts to different devices
* Be able to use responsive images to minimize bandwidth and maximize experience
* Be able to use SVG files for logos and vector art
* Be able to use Chrome Developer Tools to debug mobile designs

Overview
==========
* The mobile web is not unlike the Wild West—it’s full of surprises and adventure. The mobile web browser landscape is diverse, and, sometimes, crazy-making.
* Just because we can use the same layout on a mobile device as in a “traditional” browser doesn’t mean we necessarily should.
* **Responsive Web Design** (RWD) is a collection of approaches to make our web content adapt to the user, not the other way around (forcing the user to look at rigidly formatted pages).
* RWD is a combination of CSS3 **media queries**, **fluid-grid layouts**, and **fluid images**. It’s also a way of thinking about layout and content.
* CSS3 **media queries** let us apply CSS selectively to different user environments based on the current value of relevant media features.
* **Media types** (e.g., screen, print, projection) have **media features** (width, color, monochrome, orientation). It’s these media features we evaluate in our media queries.
* A CSS media query is a logical expression. When it evaluates to TRUE, the enclosed CSS rules are applied.
* A **fluid layout** is one that uses proportional widths instead of fixed widths such that the content of the page scales and flows naturally across a range of window widths.
* **Fluid images** are a CSS technique that keeps outsized images (or media) from “breaking out” of their parent elements when the parent element width is smaller than that of the image (or media). The images and media scale down as the parent element scales down.
* Using a simple font-size reset on the <body> element and defining font sizes in ems or percentages keeps our **type fluid**.”

Excerpt From: Lyza Danger Gardner & Jason Grigsby. “Head First Mobile Web.” iBooks. https://itun.es/us/ZENvJ.l


Mobile-first, progressive enhancement
=======================================

“Progressive enhancement views web design in a series of layers. The first layer is the content. Combine that with semantic markup to create structured content. If you stop right there, you have a document that nearly every browser in the world can read.
After you’ve got the basics out of the way, you add a presentation layer using CSS and a behavior layer using JavaScript. You never assume the browser supports those features, but if it does, visitors get a better experience.”

Excerpt From: Lyza Danger Gardner & Jason Grigsby. “Head First Mobile Web.” iBooks. https://itun.es/us/ZENvJ.l


Media Queries
==============
https://developer.mozilla.org/en-US/docs/Web/Guide/CSS/Media_queries

* CSS3 media queries let us apply CSS selectively to different user environments based on the current value of relevant media features.
* Media types (e.g., screen, print, projection) have media features (width, color, monochrome, orientation). It’s these media features we evaluate in our media queries.
* A CSS media query is a logical expression. When it evaluates to TRUE, the enclosed CSS rules are applied.
* There are lots of media features: screen size, screen density, orientation and many others. 

Syntax
-------

````
@media mediatype and|not|only (media feature) {
    CSS-Code;
}
````
**Media types** (e.g., screen, print, projection) have **media features** (width, color, monochrome, orientation).

http://pieroxy.net/blog/2012/10/18/media_features_of_the_most_common_devices.html
(out of date but illustrative)

The **Media Query** tells the browser, "*If* you have these types with these features, *then* use this CSS code."

Placement in the cascade
------------------------

Make your primary CSS handle the mobile case. Position the media query *after* the moble CSS to handle the larger screen cases.

There is a standard
--------------------
http://www.w3.org/TR/css3-mediaqueries/

How to use media queries
------------------------

It’s pointless to try to anticipate all possible screen sizes. Breakpoints should result from content.

1. Start with the core content and most important features.

1. Make a simple site using no CSS. Design it for mobile first.

1. Add CSS to style the site with mobile aesthics and user patterns.

1. Use fluid layout techniques.

1. Use em units of measure for fluid text.

    * In many cases, ems are better units of measure than pixels for media queries.
    * They relate more clearly to text content:  http://www.smashingmagazine.com/2013/03/01/logical-breakpoints-responsive-design/
    * They handle user zooming better http://blog.cloudfour.com/the-ems-have-it-proportional-media-queries-ftw/

1. Expand the layout until it breaks. Redesign for larger layouts, create media queries to create them.

1. Place the media queries after the primary (mobile) CSS

1. Add additional features as needed and real-estate permits.

1. Prepare multiple media for high-rez and varying layout sizes

1. Add higher-rez and larger images as appropriate.


Responsive images
=================

* Start with the right format of image
* Use JPG for photographic images.
* Use SVG for vector art and solid color graphics such as logos and line art. If vector art is unavailable, try WebP or PNG.
* Use PNG rather than GIF as it allows for more colors and offers better compression ratios.
* For longer animations, consider using ````<video>```` which provide better image quality and gives the user control over playback.
* https://developers.google.com/web/fundamentals/media/images/optimize-images-for-performance

Manage images in HTML
---------------------
* Use relative sizes for images to prevent them from accidentally overflowing the container.
* Use the picture element when you want to specify different images depending on device characteristics (a.k.a. art direction).
* Use srcset and the x descriptor in the img element to give hints to the browser about the best image to use when choosing from different densities.
* https://developers.google.com/web/fundamentals/media/images/

Manage images in CSS
---------------------
* Use the best image for the characteristics of the display, consider screen size, device resolution and page layout.
* Change the background-image property in CSS for high DPI displays using media queries with min-resolution and -webkit-min-device-pixel-ratio.
* Use srcset to provide high resolution images in addition to the 1x image in markup.
* Consider the performance costs when using JavaScript image replacement techniques or when serving highly compressed high resolution images to lower resolution devices.
* https://developers.google.com/web/fundamentals/media/images/images-in-css


Constrain images to their containing elements with 

````
img, embed, object, video {
  max-width: 100%;
}
````

* Make those image files small! - Designing for mobile first means designing for small screens AND low bandwidth. 

Yahoo! Smush.it™
http://www.smushit.com/ysmush.it/

Yahoo! YSlow Smush.it™ Home Uploader URL Results Smush.it uses optimization techniques specific to image format to remove unnecessary bytes from image files. It is a "lossless" tool, which means it optimizes the images without changing their look or visual quality. After Smush.it runs on a web page it reports how many bytes would be saved by optimizing the page's images and provides a downloadable zip file with the minimized image files....

* Use media queries to load larger images 
if required by a larger or more dense screen size.

````
.example {
      height: 400px;
      background-image: url(small.png);
      background-repeat: no-repeat;
      background-size: contain;
      background-position-x: center;
    }

    @media (min-width: 500px) {
      .example {
        background-image: url(large.png);
      }
    }
````

SVG images
----------
* Use SVG graphics where possible to allow truly fluid images

* SVG images are text, rendered by the browser. They are very small payloads that scale to any size. However, they are suited to vector drawings (like Adobe Illustrator files) not raster images.

* SVG can be used in img tags for the following browsers: http://caniuse.com/#feat=svg-img

* Whether there are height and width values in the SVG doesn’t seem to matter. The following  SVG is fluid even tho it contains height and weight parameters.

````
<img style="width:10%;" src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/53676/icon_793.svg" />
````

* There’s a lot more to SVG. Some browsers allow putting the SVG code in the HTML file and applying browser rendering filters, etc.

Using SVG | CSS-Tricks
http://css-tricks.com/using-svg/

Using SVG Published March 5, 2013 by Chris Coyier SVG is an image format for vector graphics. It literally means Scalable Vector Graphics . Basically, what you work with in Adobe Illustrator. You can use SVG on the web pretty easily, but there is plenty you should know. Why use SVG at all? Small file sizes that compress well Scales to any size without losing clarity (except very tiny) Looks great on retina displays Design control like interactivity and filters Getting some SVG to work with Desi…

And finally, 

if possible, don’t use images at all
--------------------------------------
Avoid images whenever possible, instead, leverage browser capabilities for shadows, gradients, rounded corners and more.
https://developers.google.com/web/fundamentals/media/images/avoid-images-completely


Tools
======
Chrome Developer Tools can do a little mobile device emulation

https://developer.chrome.com/devtools/docs/device-mode
