+++
title = "Ethical Web"
author = ["Jacob Chvatal"]
lastmod = 2020-10-21T23:15:06+02:00
slug = "ethical_web"
draft = false
+++

Backlinks
: [Web]({{< relref "web" >}})

Thoughts on the current state of the web and taking action to make it more ethical.

The modern web often forces all developers to adhere to more and more specifications (have you seen how long and convoluted the RFC manual is?), and lives in a world where only the companies that create the standards can practically adhere to them.

This is bad abstraction! This process is no different from forcing everyone who **uses** a technology to add specific components to their work rather than taking on this responsibility as the browser.

Of course, information like a robots.txt, a webpage title and these sorts of things should be standardized and mandated by the user -- but there are lots of sensible defaults, like keyboard-navigable websites, that could be applied and later overridden by the user if they don't like these defaults.

Not including these accessible features in a native application that runs these web services leads to substantial bloat and insecure (JavaScript) code execution to emulate accessiblity features that could easily be accepted by the browser, like onMouseKey functionality! What about using tab-enter to navigate links without having to tag said links with specific attributes?


## Web Minimalism {#web-minimalism}


### Size Compression {#size-compression}

There are transpilers and minifying tools, but to best optimize for small websites you might as well roll your own static site generator. I've been using Python's Jinja2 template engine but I'm sure there are better options.

Lots of resources suggest that your site, or its critical resources at the least, should fit in the first ten packets:

-   <https://www.tunetheweb.com/blog/critical-resources-and-the-first-14kb/>
-   <https://www.smashingmagazine.com/2020/01/front-end-performance-checklist-2020-pdf-pages/#setting-realistic-goals>
-   <https://tylercipriani.com/blog/2016/09/25/the-14kb-in-the-tcp-initial-window/>

There are obvious performance improvements to some actions as well:

-   <https://blog.logrocket.com/improve-site-performance-inlining-css/>
-   <https://www.filamentgroup.com/lab/load-css-simpler/>

[writing css with accessibility in mind](https://www.matuzo.at/blog/writing-even-more-css-with-accessibility-in-mind-user-preferences/)


## Accessibility {#accessibility}


### WCAG Standard {#wcag-standard}

<!--list-separator-->

-  Text

    -   All non-text content must have a visible text alternative.
    -   Any prerecorded audio and video media must have alternatives completely presented via text. Captions and descriptions for these mediums must always be provided.
    -   Sign language interpretation is provided for all prerecorded audio content on synchronized media.
    -   Information, structure and relationships can be programmatically determined via text. Tags, aria labels and semantic elements should be used to strictly define navigable websites.
    -   The purpose of an element must always be determined independent of the component, icon or region (use names and text everywhere).
    -   Content does not restrict its viewing to a specific display orientation.
    -   Never use color as the only means of conveying information.
    -   Contrast ratio is very important, and text should be resized 200%+ without loss of content or functionality.
    -   No loss of content functionality occurs from:
        -   Line height 1.5x
        -   Spacing 2x
        -   Letter spacing 0.12x
        -   Word spacing 0.16x
        -   hover on focus: can dismiss without focus

<!--list-separator-->

-  Keyboard navigable

    -   No keyboard trap; all available through keyboard shortcuts, always remap or turn shortcut off
    -   No more than three flashes in one second period
    -   Any animation motion can be disabled
    -   Bypass repeated blocks of content
    -   Focus order preserves meaning
    -   Link purpose can be determined by link text alone
    -   More than one way to locate a web page
    -   Focus always visible
    -   Pointer gestures very important! Target at least 44x44 CSS pixels

<!--list-separator-->

-  Understandable

    -   Identify specific definitions used in an unusual way, jargon, idioms
    -   Definitions provided for all abbreviations
    -   Changing the setting does not change context
    -   Navigational mechanisms are repeated in many web pages
    -   Error location is identified and error described to user in text
    -   Labels & instructions provided for all user input
    -   Error prevention: legal, financial:
        -   Submissions are reversible
        -   Data is always checked and validated
        -   Method for reviewing, confirming and correcting information before finalizing
    -   Context sensitive help is always available to the user. (What does this mean?)

<!--list-separator-->

-  Robustness in Context

    -   Parseable: properly nested, unique IDs, no duplicate attributes
    -   Name and role can be programmatically determined
    -   Status messages can be determined programmatically for assistive tech


### Tips {#tips}

-   Episodic memory can be hard. Introduce product features gradually.
-   Never divide screen into multiple actions.
-   Provide clear feedback on progress or completion
-   Provide reminders and alerts for habitual actions
-   Do not assume anything; abbreviations, acronyms, scrolling, search, back button
-   Long-form text is okay as long as attention is focused
-   Font size of **at least** 16px.
-   Always pair icons and symbols with text.
-   Avoid using blue for colors and never use color to convey a message.
-   Reduce the distance between sequential interface elements. Buttons should be at least 9.6mm diagonally for ages up to 70.
-   Interface elements to be clicked with a mouse should be at least 11mm diagonally.
-   Clear, bold headings to gravitate to are vital to navigation.
-   Standard treatments for links should be used as they're familiar.
-   Buttons and links should all be clearly labeled and show that they've been clicked; some graphic buttons can be distracting rather than informative, and here text is better.
-   Use static menus -- leading to another apge on click - rather than walking menus -- exposing a sub menu. Sub menus should be on click rather than hover.
-   Do error pages provide a robust description to the user?
-   Is there a clear site map available from every page that provides an overview of the entire site?
-   Can the page be skimmed? Is there an easy starting point? If pages are dense is it grouped?
-   Is there an obvious way to increase the font size?
-   Is the content written in the active voice?


### Sources {#sources}

[Designing user interfaces for an aging population](https://www.uxmatters.com/mt/archives/2017/04/designing-user-interfaces-for-an-aging-population.php)
[W3C WCAG: Web Content Accessibility Guidelines](https://www.w3.org/WAI/standards-guidelines/wcag/)

-   [Suggested Accessibility Techniques](https://www.w3.org/TR/2016/NOTE-WCAG20-TECHS-20160317/)

[Designing for the elderly](https://uxplanet.org/accessible-design-designing-for-the-elderly-41704a375b5d)
[same thing](https://www.smashingmagazine.com/2015/02/designing-digital-technology-for-the-elderly/)
[AARP Site Accessibility](http://assets.aarp.org/www.aarp.org%5F/articles/research/oww/AARP-50Sites.pdf)
[ISO: Accessing the World](https://www.iso.org/accessing-my-world.html)
