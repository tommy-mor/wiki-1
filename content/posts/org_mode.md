+++
title = "Org Mode"
author = ["Jacob Chvatal"]
lastmod = 2020-07-14T00:40:16-04:00
slug = "org_mode"
draft = false
+++

Org Mode is a markup language and a part of the Emacs ecosystem.
It's a favorite of developers, writers, and researchers alike,
and is often used for literate programming.

This wiki, along with all of my other notes, is drafted entirely
in org-mode and rendered through a static site generator.


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

[This post](https://karl-voit.at/2017/09/23/orgmode-as-markup-only/) and [the emacs docs](https://orgmode.org/) are incredibly helpful for documentation.
