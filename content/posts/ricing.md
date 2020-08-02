+++
title = "Ricing wm and desktop configuration wm and desktop configuration"
author = ["Jacob Chvatal"]
lastmod = 2020-08-01T23:34:32-07:00
slug = "ricing"
draft = false
+++

Scattered notes on ricing.


## ETC {#etc}

try to get those cool conky visualizations running tho
[anime smth](https://voidlinux.org/atom.xml)
[easy setup, decent workflow](https://voidlinux.org/atom.xml)
[fun prog env](https://voidlinux.org/atom.xml)
[clear linxu!](https://voidlinux.org/atom.xml)
[cool bsp config](https://voidlinux.org/atom.xml)
[nighthawks with cool bar](https://voidlinux.org/atom.xml)
[yikes!!](http://paulgraham.com/hijack.html)
[
[good articles](https://www.techmeme.com/)
[slower news.](https://www.slowernews.com/)
[new social link aggregator.](https://littr.me/about)
[american international](https://quill.news/home)
[whats hot](https://skimfeed.com/)
[community](https://lobste.rs/)
[making music in haskell!](https://www.reddit.com/r/haskell/comments/gtq3yk/making%5Fmusic%5Fwith%5Fhaskell%5Ffrom%5Fscratch/)
[sam altman blog.](https://blog.samaltman.com/)
[whoah.](https://mmm.s-ol.nu/)]
[global structure of programs](http://akkartik.name/about)
[guerrilla public service](https://news.ycombinator.com/item?id=23325319)
[linxu security](https://news.ycombinator.com/item?id=23351396)
[??](https://news.ycombinator.com/item?id=23351007)
[wow](https://news.ycombinator.com/item?id=23351942)
[ouch](https://news.ycombinator.com/item?id=23350223)
[wow](https://news.ycombinator.com/item?id=23351145)
[neat](https://news.ycombinator.com/item?id=23371530)
[good article](https://news.ycombinator.com/item?id=23341179)
[practical python.](https://dabeaz-course.github.io/practical-python/)
[[<https://wiki.xxiivv.com/site/norns.html>}[cool tools.]]
[stop taking notes](https://eugeneyan.com/2020/04/05/note-taking-zettelkasten/)
[[<https://eugeneyan.com/2020/04/05/note-taking-zettelkasten/>

<https://zalberico.com/essay/2020/04/19/how-to-become-a-hacker.html>

<https://martinheinz.dev/blog/24>

<https://github.com/srid/slownews>
Ahttps://apparebit.com/
<https://ramsdenj.com/2017/06/19/switching-to-nixos-from-arch-linux.html>
<https://docplayer.net/611766-Using-nixos-for-declarative-deployment-and-testing.html>
<https://gautamcgoel.github.io/>
<https://ilya-sher.org/2017/07/07/why-next-generation-shell/>
<https://www.oilshell.org/blog/2018/01/28.html#introduction>
<https://rswernofsky.com/lists/coming-soon-lists.html>

<https://gist.github.com/onlurking/fc5c81d18cfce9ff81bc968a7f342fb1>
<https://www.youtube.com/watch?v=V7NkS6j-XWg&app=desktop>

<https://github.com/noahfrederick/dots>
<https://github.com/yousufinternet/config-files>
<https://github.com/notthebee/dotfiles>
<https://vlukash.com/2018/03/29/two-years-with-vim/#more-474>

-   BSPWM

<http://thedarnedestthing.com/bspwm%20not%20bar>
<http://thedarnedestthing.com/bspwm%20gym>
<http://thedarnedestthing.com/bspwm%20framed>
wiki for configuration ! <https://github.com/windelicato/dotfiles/wiki/bspwm-for-dummies>
worth noting: this does not

-   a window manager with a lot of features and functionality
-   no 'default config'; must implement everything yourself,

though comes with a nice default settings thing
<https://www.reddit.com/r/unixporn/comments/1m0ea1/arch%5Fbspwm%5Fwhy%5Fbspwm%5Fwatch%5Fthis%5Fscreencast%5Fand/>
-- this seems to be why everyone
likes bspwm, but i can't quite see the gif... let's hang out to see what happens
ideas : changing the classname by identification in the bspwm tree!
' sticky' scratchpad : will switch monitors only if the desktop is swapped with the other monitor.
personal policy - 'scratchbad when opened occupies the biggest window'
sticky normal terminal window (with tmux, via byobu) to the scratchpad is much more useful and allows for a single terminal window to be kept open rather than having to use many

ui workflow : window actions focus and place the window in the main window on
the target desktop

<https://www.reddit.com/r/unixporn/comments/1jubyi/arch%5Fbspwm%5Fnever%5Fgoing%5Fback%5Fto%5Fxmonad/>
read on this!

<http://thedarnedestthing.com/bspwm>
idea : have window actions focus and place the window on the main window of the
target desktop.

a swap monitor action is very cool; may want to either retain or swap monitor
focus independent of this! depending on the direction of the hotkey relative to
the monitor which has focus.if key action points to opposite monitor, swap the
desktop moving the focus with the desktop; else, retain focus on the current
monitor while cycling the desktop

toggling the dock! this is much more distraction free (through conky) as opposed
to a continuously updating status line at the top or bottom of the screen. conky
is super beautiful and configuring it would besuper useful. run conky above the
desktop windows via xdotool as per sdothum's articles

<https://www.reddit.com/r/unixporn/comments/1jubyi/arch%5Fbspwm%5Fnever%5Fgoing%5Fback%5Fto%5Fxmonad/>

this seems like hte most useful and powerful way to go in terms of a system
configuration. make sure to use this one in the future.

-   i3 (currently using)
-   simple
-   intuitive, easy to configure, no recompilation required
-   however, it is difficult to configure some things and aothers get very complicated

-   herbstluftwm

<http://thedarnedestthing.com/herbstluftwm>
things it can do: (see sdothum here: <http://thedarnedestthing.com/herbstluftwm%20workflow>)

-   dynamic window placement to balance frames
-   dynamic window focus to avoid empty frame focus on application close
-   distraction free monocle layout proportions (versus fullscreen mode)
-   automatic desktop layout restore on focus and monitor swap\*
-   quick monitor and frame swapping with focus directions
-   hide/unhide windows per desktop
-   pulsating borders to indicate overlapped windows
-   virtual monitors to show/hide the conky system information panel
-   single status bar to follow monitor focus and hint monitor geometry width
-   blur background if a window is present on the desktop

note that monitor geometries are global when set.
honestly his explanation is pretty complicated: there are a lot of things that can be done without this complex configuration
can have a status bar that follows the monitor focus! killing the status bar isn't super effective, but using xdotool to manage the visibility of the panels seems muh more palatable

check out his dotfiles for more information on this
<http://thedarnedestthing.com/herbstluftwm%20juggling>

-   XMonad

cool because it is written in and configured with haskell
from my rough understanding, this is another manual tiling window manager (not automatic like bspwm)

idea : rather than manually moving the window in between panels, shifting all of the workspaces 'one to the right' or 'one to the left' to refocus the panel u want at the center seems super valuable! this means that u dont have to reconfigure all of the stuff displayed at any given time)
not sure if this is worthwhile as opposed to other things : bspwm doesn't do
anythign other than window management, unlike other programs that may not
integrate very well into the existing shell.

benefits:

-   extensive multimonitor support
-   stable and feature rich
-   easy to configure and extend

drawbacks:

-   huge
-   fractured into many different libraries
-   terrible floating layer that cannot always be avoided
-   using haskell (though this is also a pro!!)
-   dmenu

rofi or dmenu ? i think that dmenu is worth trying - i like that it does not
block anything on the screen and appears at the top instead
<http://thedarnedestthing.com/dmenu>
<http://thedarnedestthing.com/dmenu2>
byobu ?? <https://www.byobu.org/>

-   diversifying systems

you should probably install and set up multiple operating systems - one
'experimental' one, with other 'stable' partitions in case the unstable one
really messes up
<https://www.reddit.com/r/unixporn/comments/ff0o8d/refind%5Fwhich%5Fkernel%5Fare%5Fyou%5Ffeeling%5Flike%5Ftoday/>
<https://www.reddit.com/r/unixporn/comments/ff1xru/oc%5Ffreebsd%5Fricing%5Fguide/> --
helpful if i install bsd

-   void linux? bedrock linux?
-   macos -- make sure to have working configuration here
-   win10 -- how do i get a win10 configuration working well?
-   freebsd / openbsd ? i think the former is supposed to be cooler
-   nix / nixos (the dev ops os!111!11) -- guix is another os with a similar model

refind configuration: <https://github.com/ibhagwan/dots/blob/master/refind/refind.conf>
<https://parabola.nu> -- arch with all free software

-   configuration!

[incredible arch configuration](https://www.reddit.com/r/unixporn/comments/gglodg/oc%5Farchiso%5Fsecond%5Fversion%5Fof%5Fmy%5Fcustom%5Farch%5Flinux/)

-   keybindings

[keyboard hotkey demon](https://github.com/baskerville/sxhkd)
may be worthwhile looking into some window manager independent way of
configuring these hotkeys

-   windows (ugh)

<https://www.reddit.com/r/i3wm/comments/3b7a1j/closest%5Fthing%5Fto%5Fi3%5Ffor%5Fwindows/cskcmjz/>

-   etc

look into configuring an rss feed reader for linux to subscribe to only more
useful information.

[cool dotfiles to look at](https://github.com/xero/dotfiles)

-   things to integrate
-   whatever side manager that sdothum uses in lieu of the header interface
-   ncmcpp for music
-   an rss reader
-   a terminal email client
-   better notification daemon
-   unifying chat app ? (slack/signal/discord/irc(????) frontend somehow)
-   twitter ? (may not want to browse twitter at all ...)
    mail :: try mutt, neomutt, smth

stream video over terminal or smth
configure .desktop files properly for configuration

-   os to try
-   nixOS / nix package management
-   openBSD or freeBSD
-   macOS installation

-   configuration
-   terraform
-   nixos
-   windows
-   script to set up dev environment on:
    -   windows
    -   macOS
    -   ubuntu
    -   arch
    -   some other system ??

[terminal utils to look at](https://kkovacs.eu/cool-but-obscure-unix-tools/)

below website is really good !!
[modern tools](https://xn--gckvb8fzb.com/the-absurdity-of-modern-tools/)
<https://xn--gckvb8fzb.com/a-nomads-computer/>

[automate dev workflow setup ??](https://github.com/achiurizo/consular)

-   try this

[i like this website layout, not sure if super relevant](https://tudorr.ro/software/windowchef/)


## waste {#waste}

[anime smth](https://voidlinux.org/atom.xml)
[easy setup, decent workflow](https://voidlinux.org/atom.xml)
[fun prog env](https://voidlinux.org/atom.xml)
[clear linxu!](https://voidlinux.org/atom.xml)
[cool bsp config](https://voidlinux.org/atom.xml)
[nighthawks with cool bar](https://voidlinux.org/atom.xml)
[yikes!!](http://paulgraham.com/hijack.html)
[
[good articles](https://www.techmeme.com/)
[slower news.](https://www.slowernews.com/)
[new social link aggregator.](https://littr.me/about)
[american international](https://quill.news/home)
[whats hot](https://skimfeed.com/)
[community](https://lobste.rs/)
[making music in haskell!](https://www.reddit.com/r/haskell/comments/gtq3yk/making%5Fmusic%5Fwith%5Fhaskell%5Ffrom%5Fscratch/)
[sam altman blog.](https://blog.samaltman.com/)
[whoah.](https://mmm.s-ol.nu/)]
[global structure of programs](http://akkartik.name/about)
[guerrilla public service](https://news.ycombinator.com/item?id=23325319)
[linxu security](https://news.ycombinator.com/item?id=23351396)
[??](https://news.ycombinator.com/item?id=23351007)
[wow](https://news.ycombinator.com/item?id=23351942)
[ouch](https://news.ycombinator.com/item?id=23350223)
[wow](https://news.ycombinator.com/item?id=23351145)
[neat](https://news.ycombinator.com/item?id=23371530)
[good article](https://news.ycombinator.com/item?id=23341179)
[practical python.](https://dabeaz-course.github.io/practical-python/)
[[<https://wiki.xxiivv.com/site/norns.html>}[cool tools.]]
[stop taking notes](https://eugeneyan.com/2020/04/05/note-taking-zettelkasten/)
[[<https://eugeneyan.com/2020/04/05/note-taking-zettelkasten/>

<https://zalberico.com/essay/2020/04/19/how-to-become-a-hacker.html>

<https://martinheinz.dev/blog/24>

<https://github.com/srid/slownews>
Ahttps://apparebit.com/
<https://ramsdenj.com/2017/06/19/switching-to-nixos-from-arch-linux.html>
<https://docplayer.net/611766-Using-nixos-for-declarative-deployment-and-testing.html>
<https://gautamcgoel.github.io/>
<https://ilya-sher.org/2017/07/07/why-next-generation-shell/>
<https://www.oilshell.org/blog/2018/01/28.html#introduction>
<https://rswernofsky.com/lists/coming-soon-lists.html>

<https://gist.github.com/onlurking/fc5c81d18cfce9ff81bc968a7f342fb1>
<https://www.youtube.com/watch?v=V7NkS6j-XWg&app=desktop>

<https://github.com/noahfrederick/dots>
<https://github.com/yousufinternet/config-files>
<https://github.com/notthebee/dotfiles>
<https://vlukash.com/2018/03/29/two-years-with-vim/#more-474>


## BSPWM {#bspwm}

<http://thedarnedestthing.com/bspwm%20not%20bar>
<http://thedarnedestthing.com/bspwm%20gym>
<http://thedarnedestthing.com/bspwm%20framed>
wiki for configuration ! <https://github.com/windelicato/dotfiles/wiki/bspwm-for-dummies>
worth noting: this does not

-   a window manager with a lot of features and functionality
-   no 'default config'; must implement everything yourself,
    though comes with a nice default settings thing

<https://www.reddit.com/r/unixporn/comments/1m0ea1/arch%5Fbspwm%5Fwhy%5Fbspwm%5Fwatch%5Fthis%5Fscreencast%5Fand/>
-- this seems to be why everyone
likes bspwm, but i can't quite see the gif... let's hang out to see what happens
ideas : changing the classname by identification in the bspwm tree!
' sticky' scratchpad : will switch monitors only if the desktop is swapped with the other monitor.
personal policy - 'scratchbad when opened occupies the biggest window'
sticky normal terminal window (with tmux, via byobu) to the scratchpad is much more useful and allows for a single terminal window to be kept open rather than having to use many

ui workflow : window actions focus and place the window in the main window on
the target desktop

<https://www.reddit.com/r/unixporn/comments/1jubyi/arch%5Fbspwm%5Fnever%5Fgoing%5Fback%5Fto%5Fxmonad/>
read on this!

<http://thedarnedestthing.com/bspwm>
idea : have window actions focus and place the window on the main window of the
target desktop.

a swap monitor action is very cool; may want to either retain or swap monitor
focus independent of this! depending on the direction of the hotkey relative to
the monitor which has focus.if key action points to opposite monitor, swap the
desktop moving the focus with the desktop; else, retain focus on the current
monitor while cycling the desktop

toggling the dock! this is much more distraction free (through conky) as opposed
to a continuously updating status line at the top or bottom of the screen. conky
is super beautiful and configuring it would besuper useful. run conky above the
desktop windows via xdotool as per sdothum's articles

<https://www.reddit.com/r/unixporn/comments/1jubyi/arch%5Fbspwm%5Fnever%5Fgoing%5Fback%5Fto%5Fxmonad/>

this seems like hte most useful and powerful way to go in terms of a system
configuration. make sure to use this one in the future.


## i3 (currently using) {#i3--currently-using}

-   simple
-   intuitive, easy to configure, no recompilation required
-   however, it is difficult to configure some things and aothers get very complicated


## herbstluftwm {#herbstluftwm}

<http://thedarnedestthing.com/herbstluftwm>
things it can do: (see sdothum here: <http://thedarnedestthing.com/herbstluftwm%20workflow>)

-   dynamic window placement to balance frames
-   dynamic window focus to avoid empty frame focus on application close
-   distraction free monocle layout proportions (versus fullscreen mode)
-   automatic desktop layout restore on focus and monitor swap\*
-   quick monitor and frame swapping with focus directions
-   hide/unhide windows per desktop
-   pulsating borders to indicate overlapped windows
-   virtual monitors to show/hide the conky system information panel
-   single status bar to follow monitor focus and hint monitor geometry width
-   blur background if a window is present on the desktop

note that monitor geometries are global when set.
honestly his explanation is pretty complicated: there are a lot of things that can be done without this complex configuration
can have a status bar that follows the monitor focus! killing the status bar isn't super effective, but using xdotool to manage the visibility of the panels seems muh more palatable

check out his dotfiles for more information on this
<http://thedarnedestthing.com/herbstluftwm%20juggling>


## XMonad {#xmonad}

cool because it is written in and configured with haskell
from my rough understanding, this is another manual tiling window manager (not automatic like bspwm)

idea : rather than manually moving the window in between panels, shifting all of the workspaces 'one to the right' or 'one to the left' to refocus the panel u want at the center seems super valuable! this means that u dont have to reconfigure all of the stuff displayed at any given time)
not sure if this is worthwhile as opposed to other things : bspwm doesn't do
anythign other than window management, unlike other programs that may not
integrate very well into the existing shell.

benefits:

-   extensive multimonitor support
-   stable and feature rich
-   easy to configure and extend

drawbacks:

-   huge
-   fractured into many different libraries
-   terrible floating layer that cannot always be avoided
-   using haskell (though this is also a pro!!)


## dmenu {#dmenu}

rofi or dmenu ? i think that dmenu is worth trying - i like that it does not
block anything on the screen and appears at the top instead
<http://thedarnedestthing.com/dmenu>
<http://thedarnedestthing.com/dmenu2>
byobu ?? <https://www.byobu.org/>


## diversifying systems {#diversifying-systems}

you should probably install and set up multiple operating systems - one
'experimental' one, with other 'stable' partitions in case the unstable one
really messes up
<https://www.reddit.com/r/unixporn/comments/ff0o8d/refind%5Fwhich%5Fkernel%5Fare%5Fyou%5Ffeeling%5Flike%5Ftoday/>
<https://www.reddit.com/r/unixporn/comments/ff1xru/oc%5Ffreebsd%5Fricing%5Fguide/> --
helpful if i install bsd

-   void linux? bedrock linux?
-   macos -- make sure to have working configuration here
-   win10 -- how do i get a win10 configuration working well?
-   freebsd / openbsd ? i think the former is supposed to be cooler
-   nix / nixos (the dev ops os!111!11) -- guix is another os with a similar model

refind configuration: <https://github.com/ibhagwan/dots/blob/master/refind/refind.conf>
<https://parabola.nu> -- arch with all free software


## configuration! {#configuration}

[incredible arch configuration](https://www.reddit.com/r/unixporn/comments/gglodg/oc%5Farchiso%5Fsecond%5Fversion%5Fof%5Fmy%5Fcustom%5Farch%5Flinux/)


## keybindings {#keybindings}

[keyboard hotkey demon](https://github.com/baskerville/sxhkd)
may be worthwhile looking into some window manager independent way of
configuring these hotkeys


## windows (ugh) {#windows--ugh}

<https://www.reddit.com/r/i3wm/comments/3b7a1j/closest%5Fthing%5Fto%5Fi3%5Ffor%5Fwindows/cskcmjz/>


## etc {#etc}

look into configuring an rss feed reader for linux to subscribe to only more
useful information.

[cool dotfiles to look at](https://github.com/xero/dotfiles)


## things to integrate {#things-to-integrate}

-   whatever side manager that sdothum uses in lieu of the header interface
-   ncmcpp for music
-   an rss reader
-   a terminal email client
-   better notification daemon
-   unifying chat app ? (slack/signal/discord/irc(????) frontend somehow)

<!--listend-->

-   twitter ? (may not want to browse twitter at all ...)
    mail :: try mutt, neomutt, smth

stream video over terminal or smth
configure .desktop files properly for configuration


## os to try {#os-to-try}

-   nixOS / nix package management
-   openBSD or freeBSD
-   macOS installation


## configuration {#configuration}

-   terraform
-   nixos
-   windows
-   script to set up dev environment on:
    -   windows
    -   macOS
    -   ubuntu
    -   arch
    -   some other system ??

[terminal utils to look at](https://kkovacs.eu/cool-but-obscure-unix-tools/)

below website is really good !!
[modern tools](https://xn--gckvb8fzb.com/the-absurdity-of-modern-tools/)
<https://xn--gckvb8fzb.com/a-nomads-computer/>

[automate dev workflow setup ??](https://github.com/achiurizo/consular)


## try this {#try-this}

[i like this website layout, not sure if super relevant](https://tudorr.ro/software/windowchef/)
