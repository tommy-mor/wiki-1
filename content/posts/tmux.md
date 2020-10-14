+++
title = "Tmux"
author = ["Jacob Chvatal"]
lastmod = 2020-10-14T21:41:12+02:00
slug = "tmux"
draft = false
+++

Tmux is a terminal multiplexer,
allowing one to track multiple groups of terminals
and terminal environments in a[ Terminal UI]({{< relref "terminal_ui" >}}) application.

It's most often used as a window manager on Unix-based
systems without a GUI in conjunction with programs like [Vim]({{< relref "vim" >}}).

Unfortunately, the tmux configuration language is very limited,
but it provides the right facilities for keymapping and managing windows.


## Tmux Tools {#tmux-tools}

<https://github.com/tmux-plugins/tmux-pain-control>
A tmux plugin that offers pane control and standard pane navigation bindings.


## Other Work {#other-work}

[Byobu](https://www.byobu.org/home) claims to be a more fully-featured window manager built on top of tmux that might be more viable as a day to day interface without an X session.
<https://zserge.com/posts/tmux/> tmux for mortals
