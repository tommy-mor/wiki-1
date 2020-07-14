+++
title = "EXWM"
author = ["Jacob Chvatal"]
lastmod = 2020-07-14T00:53:14-04:00
slug = "exwm"
draft = false
+++

[EXWM](https://github.com/ch11ng/exwm) is an Emacs window manager.

It's a simple wrapper for X11 functions that allows for
the user to interface primarily with Emacs.

It features workspaces, multimonitor support,
i3-like keybindings, and works practically out of the box!
It'll manage your external programs in native Emacs buffers
as well.

Unfortunately, as a result of the browser oligopoly,
it's not feasible to access many resources on the internet
without a modern browser, so I'm making use of a
[Firefox compatibility layer](https://github.com/walseb/exwm-firefox-evil) to allow for the use of
Firefox's keybindings through Emacs.

My configuration can be found [here](https://github.com/jakechv/dotfiles/tree/master/emacs/.doom.d/modules/desktop/exwm).

Thankfully, even if I'm not using EXWM, Emacs just displays
an error that 'another X window manager is running' when
the EXWM configuration is loaded. It's no problem to keep
the configuration in my dotfiles even when I'm using bspwm
or another window manager.

As I make more extensive use of org-mode, I find myself using
fewer and fewer tools outside of Emacs. I've found that the tools
I do use often have Emacs plugins that allow them to be used as
Emacs functions as well.

Really, Emacs (and EXWM) are partial solutions to a more systemic
issue -- the way in which the Unix philosophy has lost its way
on the modern Linux system.
