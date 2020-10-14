+++
title = "Org Mode"
author = ["Jacob Chvatal"]
lastmod = 2020-10-14T21:28:35+02:00
slug = "org_mode"
draft = false
+++

### Backlinks {#backlinks}

-   [Rust]({{< relref "rust" >}})
-   [Emacs]({{< relref "emacs" >}})

Org Mode is a markup language and a part of the Emacs ecosystem.
It's a favorite of developers, writers, and researchers alike,
and is often used for literate programming.

This wiki, along with all of my other notes, is drafted entirely
in org-mode and rendered through a static site generator.

[This post](https://karl-voit.at/2017/09/23/orgmode-as-markup-only/) and [the emacs docs](https://orgmode.org/) are incredibly helpful for documentation.


## Basic Formatting {#basic-formatting}

The structure of an org-mode file is intuitive.

```org
: * Heading 1
: ** Heading 2
: *** Heading 3
: *** And so forth...
```

It supports several flavors of text:

```org
*bold*, /italic/, _underlined_, +strikethrough+, =monospace=.

Links are rendered [[https://jacob.chvatal.com][with description]]
or without: https://karl-voit.at/2017/09/23/orgmode-as-markup-only/

Lists can be
- ordered
  - have sub-headings
    1. support enumeration
    2. as needed
- have definitions :: true.
+ works as well
- [ ] can be unfinished
- [X] or complete

: or rendered as preformatted text.
```

```python
def logical():
    return f'Org mode can also'
           f'render code from many languages!'
```

```sh
echo "it supports any language that is supported by Emacs"
```

```python
return "and can even display the result of evaluated code!"
print("Sometimes...")
```

| It Contains | Great Tables |
|-------------|--------------|
| 42          | With         |
| Native      | Support!     |

It has a single standard, and isn't a 'flavor' of markdown or rst!


## Plugins {#plugins}

The best part about org mode isn't its simplicity and flexibility --
its that it has become an integral component of the Emacs ecosystem.

With this, the format has seen support for many tools -- from calendar
to todo lists and READMEs to DevOps, it's flexible enough to be used
anywhere -- and thrives in the right ecosystem.
<https://github.com/mengwong/org-asana> sync org mode and asana
<https://github.com/Kinneyzhang/gkroam> lightweight roam replica for org
<https://github.com/jethrokuan/org-capture-bot> bot to send things to org capture
<https://github.com/io12/org-fragtog> view latex fragments after exiting them with cursor
<https://www.reddit.com/r/orgmode/comments/iqhmd9/i%5Flooked%5Fat%5Fmy%5Fnotes%5Ffrom%5Fa%5Fprevious%5Fclass%5Ffor/> latex integrated
<https://blog.polaris64.net/post/emacs-using-org-mode-to-track-exercises/> xercise tracking?
<https://m.youtube.com/watch?feature=youtu.be&t=207&v=fgizHHd7nOo> doing more with org
