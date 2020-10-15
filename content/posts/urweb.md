+++
title = "Urweb"
author = ["Jacob Chvatal"]
lastmod = 2020-10-15T22:37:38+02:00
slug = "urweb"
draft = false
+++

Ur/Web, or the Ur programming language and the Ur/Web domain-specific language standard and library, is an ecosystem designed to promote **very** safe [web]({{< relref "web" >}}) development. The system has some interesting ideas like validating requests, queries, HTML and SQL, and has an inbuilt ORM for expressing database interactions.
It's also super easy to install with Nix!

Unfortunately, it's software developed on master without rigorous testing practices and the documentation can be lacking at times (though it is very good for a research effort). In my limited time using the framework, I found that I would frequently struggle with errors related to bad parses; if I used the wrong syntax at some point, I would receive an error that felt incredibly inconsistent with the code I was writing - I wish the system had more logging to inform the user of where the error occurs at the least!

It's also clear that the framework operates entirely independent of any progress in the web development space -- which leads to some interesting ideas but foregoes several nice-to-haves of current systems. Urweb, though, is in it for the long haul.

Ur/web **does** seem to have decent Emacs support, though I had some initial trouble getting urweb-mode to run in Emacs out of the box.


## Starting Out {#starting-out}

If you're starting and you're a beginner, don't bother with the manual at first. Install the \`urweb\` package with Nix (use a nix-shell!) and jump straight to the examples. I found that without the proper context the manual and reference weren't super useful; they focus on the programming language itself rather than the ecosystem surrounding web development, which is likely why you're using the framework.

Of course, once you're familiar with using the ecosystem, go back to the reference to learn more about the language!


## Links {#links}

[the Urweb repository](https://github.com/urweb/urweb)
[the main demo as provided in the repo](http://www.impredicative.com/ur/demo/)
[a great writeup on why urweb is worth trying](http://frigoeu.github.io/urweb1.html)
<http://expdev.net/urtutorial/> decent tutorial
