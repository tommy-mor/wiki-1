+++
title = "Hackathon"
author = ["Jacob Chvatal"]
lastmod = 2020-08-01T13:30:30-07:00
slug = "hackathon"
draft = false
+++

Small ideas for hackathons or small periods of time.

These will each be eventually updated with their own posts as the ideas expand and they're given names.

The name is the most important part of a project. Without a good name the project will fail.


## Reddit Tree Navigation {#reddit-tree-navigation}

Remember Prezi? You could click on different bubbles
to navigate through a presentation nonlinearly, or could
navigate it linearly with forward and backwards arrow keys.

This has a lot of potential! Let's try it with Reddit threads.


### UX {#ux}

Visiting a reddit post and prefixing it with the reddit tree website's URL opens a window with the post's contents at the top of the webpage. Below this, there are lots of bubbles pseudorandomly scattered throughout the page. Their sizes are by default weighted by the number of upvotes on the comment, but they can be arranged by number of comments in the thread branching from the comment or some other metrics (TBD).

Each bubble has the username, number of upvotes, and the prefix of the comment. They may have smaller bubbles visible to demonstrate the next layer of comments in the tree.

Clicking on one of these bubbles does one of two things (not sure yet):

-   Moves the bubble to the top right of the screen
-   Replaces the text of the reddit post with that of the comment opened

Either way, the user now has access to a back button to go 'back up' in the tree (we define clicking on a bubble as 'going down' the tree), and they also can see all of the comments descended from the currently open comment as first-class bubbles.

Each of these pages will also havte a bubble with a plus sign on it in the bottom right of the page; clicking this opens a bubble that fills most of the screen, with the comment or post you're commenting on featured as a smaller bubble above it (perhaps it's visible as a semicircle under this bubble?). You can then make a reddit comment using the usual reddit facilities for this.


### Production {#production}


#### MVP {#mvp}

-   Visit a specific url on the reddit tree view website to open a reddit thread.
-   View the post and each comment in a bubble.
-   Click a bubble to view the next level of comments.


#### Enhanced UX {#enhanced-ux}

-   Tree view can be accessed by prefixing a reddit URL thread with our URL.
-   Post bubbles are sized proportionally to their number of upvotes or some other ranking metric. You can see smaller bubbles around them that provide an estimate of the number of comments in their assoc. thread.


#### Usable for Reddit {#usable-for-reddit}

-   The user can log in and make comments themselves.


#### Complete Product {#complete-product}

Rather than providing alternate views to individual threads, the program can instead act as its own reddit client.

The main page of the site functions just like Reddit's home page, only with bubbles for each subreddit.
The bubbles are weighted proportional to the number of new posts, popularity of those posts or some other metric.

When clicking on one of these subreddit bubbles, you open a secondary bubble view that showcases each post in the subreddit.
A UI is provided to make new posts in the subreddit from this page.

Clicking on an individual posts opens the fleshed out idea above, providing an alternative navigational experience for all of reddit.