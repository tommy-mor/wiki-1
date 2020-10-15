+++
title = "React"
author = ["Jacob Chvatal"]
lastmod = 2020-10-15T22:36:55+02:00
slug = "react"
draft = false
+++

React is made by facebook or something.


## My development practices {#my-development-practices}

Program as functionally as possible!

-   Always use functional components. Never classes.
-   Never use 'let' or 'var'; only 'const'.


## Hook Tips {#hook-tips}

-   useMemo for expensive computations. It's magic
-   useHook is a replacement for most UX logic
-   useEffect is used to replace any rerendering in response to dependency changes; this is primarily useful for making requests when the user takes an action (thus changing props)


## Tips {#tips}

[sharing code between react and react native](https://m.youtube.com/watch?v=O8d%5F42Wc-po)

-   Always use capital letters for React components, and always use React component syntax to call them. It's okay if this means declaring a constant with a capital letter; that's expected and idiomatic in this case, even if it feels inconsistent.


## Tools {#tools}

[3kb React alternative: Preact](https://github.com/preactjs/preact)
[React bindings for Purescript](https://github.com/purescript-contrib/purescript-react)
[Experimental state management for React](https://github.com/facebookexperimental/Recoil)
[Interact with any react component like a map](https://github.com/strateos/react-map-interaction)
[easy infinite scroll](https://github.com/danbovey/react-infinite-scroller)

[Jotai](https://github.com/pmndrs/jotai)
: Primitive React state management


## UI {#ui}

[Indigo](https://github.com/urbit/indigo-react)
: Tlon's React components; [Web Design]({{< relref "web_design" >}})

[Chopchop](https://github.com/jpzk/chopchop)
: Mouseless paged reader for the browser

[React specific component playground](https://github.com/uber/react-view)

[Fluent UI](https://github.com/microsoft/fluentui)
: Microsoft's UI Framework

-- [react vim wasm](https://github.com/rhysd/react-vim-wasm) :: [Vim]({{< relref "vim" >}}) editor embedded in React code


## Learning {#learning}

[build your own react](https://pomb.us/build-your-own-react/)
