+++
title = "Programming Languages"
author = ["Jacob Chvatal"]
lastmod = 2020-08-03T04:34:19-07:00
slug = "programming-languages"
draft = false
+++

## Languages {#languages}

[J](https://www.jsoftware.com/#/)
: A high-performance language for data processing and parallel computing.

[Chapel](https://chapel-lang.org)
: A parallel programming language that claims to have some novel ideas.

[Catala](https://github.com/CatalaLang/catala)
: A DSL for representing laws by construction, designed to enable lawyers to certify laws. Interested in formal verification of legal documents, potentially.

[Raku](https://raku.org)
: A descendent of Perl, it features lots of additional features including fun grammar specifications.

[Ante](https://github.com/jfecher/ante)
: 'The compile-time language'. Made by a Northeastern undergraduate student.

[Oak](https://github.com/adam-mcdaniel/oakc)
: Designed as a simple replacement for C.

[Topshell](https://github.com/topshell-language/topshell)
: A functional, reactive scripting language.

[Chef](https://github.com/MosheWagner/PyChefInterpreter)
: An esoteric programming language designed to simultaneously represent recipes and programs.

[Fennel](https://github.com/bakpakin/Fennel)
: Lisp for Lua.

Whitespace
: A programming language designed with only whitespace characters, ignoring all others. Any program that disregards whitespace can express a whitespace program within it.

[Lux](https://github.com/LuxLang/lux)
: A statically typed Lisp-like language for the JVM.

[While](https://github.com/einaregilsson/While-Language)
: A language used in textbooks such as 'Principles of Program Analysis'.

[PolyRPC](https://github.com/kwanghoon/polyrpc)
: A 'multi-tier' functional programming language.


## Work {#work}

<https://github.com/google/evcxr>
<https://github.com/hengestone/lua-languages> programming languages targeting lua


## Research {#research}

<https://github.com/jdublu10/icfp2020-papers> ICFP 2020 conf


## Lean {#lean}

This'll be factored out when I learn more about Lean.
<https://github.com/uwdb/Cosette> automated sql solver
<https://github.com/ImperialCollegeLondon/group-theory-game> group theory in lean


## PL Notes {#pl-notes}


## blurring the curry howard line {#blurring-the-curry-howard-line}

<https://www.youtube.com/watch?v=jrVPB-Ad5Gc&t=1870s&app=desktop>
works on autonomous vehicles, fun stuff

typically using languages iwth proof assistants. however, actuation systems
in carshave real time constraints, so lazy evaluation or nondeterministic
memory management is not valid. this is typically done in c or cpp.
pulling a c program from a coq proof ?

programs :: foramlized syntactically, but modeled semantically.
denotational semantics
map number to some set :: ie some u8 integer fits within one set. map
syntactic objects to universal mathematics with such denotational semantics

typing rules:
tau - a : A, f:A -> B

---

tau |- a

cannot capture everything with type theory?
dependent types end up capturing everything. can provide complete
specification of a program's behavior in the dependent type theory.

curry-howard correspondance :: a correspondence between program and proof!
we know we can reason about our programs from a dependent type theory, but
what is this gap called?
specifying program in the types: can make assertions about the correctness of
this code.

_why dependent types matter_ paper.
rust provides subset for representing dependent typed behavior in our
programs.
type level definition of the natural numbers, for example!

these programs can be fully represented in state machines! the entire system
and communication protocols can be captured with such a state machine, and
this state machine can be represented in a rust type system

state :: sum type. type family adjacency; types that are members of the type
family are adjacent to each of these states.

can use demotational semantics to convert rust semantics to agda :: and as
agda has full dependent types. using agda allows us to mechanize semantic
function !
agda has a notion of proofs and may soon have a notion of tactics. proving
things foundationally in agda could be doable once we have the specification
of the program in its own domain

state machines :: behold the program counter as everything is tracked at
compile time. not easy in this representation to track a state machine in
terms of program handlers.

church numerals :: general way of using a function to produce numbers
program that extracts information from a rust program and stick the semantics
in agda


## being human by being animal {#being-human-by-being-animal}

<https://www.youtube.com/watch?v=oG058g3f8Ik&app=desktop>
removing animals of nay dignified cuteness; bojack horseman is pretty close
to this uncanny valley of creepy absurdism. the desire is not to make the
animals cute so much as lifelike and uncomfortable.

bojack as a horse ::  horse, long face, depression, juxtaposition of a
majestic animal as an alcoholic, etc. horse bredfor transportation but the
role no longer fulfulls the animal; could come from some broader interest in
horses
the main characters are drawn from domestic animals !
four legs good . two legs better . the control we have over domestic animals
is associated with the characters chosen for the show .

pushing the potential of animation to allow emotional states to hae an impact
on the world through cartoon absurdism ! the animalism enables them to reveal
the primal instincts of humans

blind recreation to create images that are readable.
diane. sometimes, life is a bitch; then, you keep living.


## IDEA: configuration has two types of keymappings. {#idea-configuration-has-two-types-of-keymappings-dot}

one is relative to the
location on the keyboard, while another is relative to the letter.  i like
mixing both of these. there should be some system for allowing me to easily
do the former?

TODO: break this down into more specific topics!


## blurring the curry howard line {#blurring-the-curry-howard-line}

<https://www.youtube.com/watch?v=jrVPB-Ad5Gc&t=1870s&app=desktop>
works on autonomous vehicles, fun stuff

typically using languages iwth proof assistants. however, actuation systems
in carshave real time constraints, so lazy evaluation or nondeterministic
memory management is not valid. this is typically done in c or cpp.
pulling a c program from a coq proof ?

programs :: foramlized syntactically, but modeled semantically.
denotational semantics
map number to some set :: ie some u8 integer fits within one set. map
syntactic objects to universal mathematics with such denotational semantics

typing rules:
tau - a : A, f:A -> B

---

tau |- a

cannot capture everything with type theory?
dependent types end up capturing everything. can provide complete
specification of a program's behavior in the dependent type theory.

curry-howard correspondance :: a correspondence between program and proof!
we know we can reason about our programs from a dependent type theory, but
what is this gap called?
specifying program in the types: can make assertions about the correctness of
this code.

_why dependent types matter_ paper.
rust provides subset for representing dependent typed behavior in our
programs.
type level definition of the natural numbers, for example!

these programs can be fully represented in state machines! the entire system
and communication protocols can be captured with such a state machine, and
this state machine can be represented in a rust type system

state :: sum type. type family adjacency; types that are members of the type
family are adjacent to each of these states.

can use demotational semantics to convert rust semantics to agda :: and as
agda has full dependent types. using agda allows us to mechanize semantic
function !
agda has a notion of proofs and may soon have a notion of tactics. proving
things foundationally in agda could be doable once we have the specification
of the program in its own domain

state machines :: behold the program counter as everything is tracked at
compile time. not easy in this representation to track a state machine in
terms of program handlers.

church numerals :: general way of using a function to produce numbers
program that extracts information from a rust program and stick the semantics
in agda


## future reading {#future-reading}


### prog synth {#prog-synth}


### toy lang {#toy-lang}

[powerful programming language](https://h.christine.website/)
[type level programming](http://willcrichton.net/notes/)

[aliasing and ownership](https://2020.ecoop.org/home/iwaco-2020)

[the art of code](https://www.youtube.com/watch?v=6avJHaC3C2U&app=desktop)
[prog synth at pldi](https://pldi20.sigplan.org/details/pldi-2020-papers/65/Question-Selection-for-Interactive-Program-Synthesis)


### useful lang {#useful-lang}


### elm {#elm}

<https://elm-lang.org/examples>
<https://www.reddit.com/r/gorillaz/comments/g980ui/rock%5Fthe%5Fhouse%5Fanimation%5Fby%5F%E3%83%96%E3%83%AB%E3%83%BC%E3%83%8F%E3%83%A0%E3%83%8F%E3%83%A0/>
-- how do i do animations like this?

<https://www.linkedin.com/mwlite/in/christopher-choquette-choo> who is this dude?
<https://copetti.org/projects/> -- does writing on console architecture
<https://pydanny.blogspot.com/2011/08/github-is-my-resume.html?m=1> -- making a
resume for github
<http://mjb.io/> -- wild!


## Programming Languages {#programming-languages}

useful resources: <https://github.com/wilbowma/pl-thesaurus> -- too advanced for me


### Adjunction {#adjunction}

Whnen categories are Posets, adjunction is a Galois connection


### Strong Monad {#strong-monad}


### Monad {#monad}

Kleisli trible, s4 possibility mdality
when category is defined as poset, monad is a closure operator


### Reflection {#reflection}

when categories are posets, this is a galois surjection


### Right Adjoint {#right-adjoint}

In order theory, right adjoint of Galois connection is upper adjoint
in abstract interpretation, this is Concretization function


### Left Adjoint {#left-adjoint}

in order theory: left adjoint of galois connection is lower adjoint
in abstract interpretation, this is abstract function


### Galois Connection {#galois-connection}


## \*term rewriting {#term-rewriting}

<https://www21.in.tum.de/~nipkow/TRaAT/> -- book benjamin had, it's a description
of term rewriting problems, universal algebra, unification theory
<https://en.wikipedia.org/wiki/Rewriting>


## pl {#pl}

<https://www.reddit.com/r/ProgrammingLanguages/comments/fzu00x/naming%5Ffunctional%5Fand%5Fdestructive%5Foperations/>
<https://www.reddit.com/r/haskell/comments/60r9hu/proposal%5Fsuggest%5Fexplicit%5Ftype%5Fapplication%5Ffor/>
<https://www.amazon.com/gp/product/1555580416?ie=UTF8&tag=ucmbread-20&linkCode=as2&camp=1789&creative=390957&creativeASIN=1555580416>
<https://felleisen.org/matthias/4400-s20/lecture27.html>
<https://www.cambridge.org/core/journals/journal-of-functional-programming/article/effect-handlers-via-generalised-continuations/DF590482FEE2F6888CD68B4B446E31D5>
<https://www.reddit.com/r/ProgrammingLanguages/comments/f75y79/what%5Fis%5Fmodal%5Flogic%5Fand%5Fwhat%5Fis%5Fit%5Fgood%5Ffor%5Fflash/>
<https://projectfluent.org/>
<https://arxiv.org/abs/1605.06640>
<https://brianmckenna.org/blog/>
<https://arxiv.org/abs/1905.09381>
<https://www.reddit.com/r/ProgrammingLanguages/comments/fp7sko/10%5Fmostly%5Fdead%5Finfluential%5Fprogramming%5Flanguages/>
<https://www.reddit.com/r/ProgrammingLanguages/comments/fvx72d/i%5Fanalyzed%5Fwikipedia%5Fdocuments%5Fof%5Fprogramming/>
<https://www.reddit.com/r/ProgrammingLanguages/comments/fc274s/whats%5Fyour%5Ffavorite%5Fprogramming%5Flanguage%5Fwhy/>
<http://journal.stuffwithstuff.com/2020/04/05/crafting-crafting-interpreters/>
<http://dot.planet.ee/yeti/intro.html#structures>
<https://www.quantamagazine.org/formal-verification-creates-hacker-proof-code-20160920/>
<https://www.reddit.com/r/ProgrammingLanguages/comments/8ud5am/what%5Fare%5Fthe%5Fpoison%5Fpills%5Fto%5Favoid%5Fwhen%5Fdesigning/>
<https://www.reddit.com/r/ProgrammingLanguages/comments/8vcrzb/what%5Fare%5Fsome%5Finteresting%5Flanguage%5Ffeatures%5Fthat/>
<https://www.reddit.com/r/ProgrammingLanguages/comments/cuwy29/plam%5Fnow%5Fsupports%5Flists%5Fwith%5Flist%5Flibrary%5Fcheck/>
<https://www.reddit.com/r/ProgrammingLanguages/comments/cx4hea/so%5Fi%5Fdeveloped%5Fan%5Finterpreted%5Flanguage%5Fin%5Fc/>
<https://www.reddit.com/r/ProgrammingLanguages/comments/dpnmzl/the%5Fnext%5F7000%5Fprogramming%5Flanguages/>
<https://www.cis.upenn.edu/~bcpierce/courses/670Fall04/GreatWorksInPL.shtml> --
overview of great works in pl to know before diving in!
<https://softwarefoundations.cis.upenn.edu/> -- software foundations
<https://plfa.github.io/> -- foundations in agda! for free!
<https://blog.janestreet.com/whats-in-a-name/> -- excellent essay on the
importance of naming
<https://arxiv.org/abs/1809.10756> -- intro to probabilistic prgrammign !
<https://www.defmacro.org/ramblings/lisp-in-haskell.html> -- writing a quick lisp
interpreter in haskell
<http://dev.stephendiehl.com/fun/> -- building modern functional compiler from
first principles
parsing
<https://golem.ph.utexas.edu/category/2020/05/in%5Ffurther%5Fpraise%5Fof%5Fdependent.html>
<https://stackoverflow.com/questions/232682/how-would-you-go-about-implementing-off-side-rule>
--basically indenting and dedenting with lexer just like any other parens
<https://en.wikipedia.org/wiki/Earley%5Fparser> -- context-free parsing of strings
algorithm
<https://mitpress.mit.edu/books/little-prover> -- introduction to writing proofs
about computer programs
<https://en.wikipedia.org/wiki/Idris%5F(programming%5Flanguage)> -- haskell-inspired
purely functional programming language with dependent types
<https://en.wikipedia.org/wiki/Brzozowski%5Fderivative> -- derivatives of language
constructs - whoah!
<https://github.com/adjoint-io/bulletproofs> -- proofs that require no trusted
setup
<https://en.wikipedia.org/wiki/Titchmarsh%5Fconvolution%5Ftheorem>
designing a simple racket dsl
<https://course.ccs.neu.edu/cs2500accelf17/lab12.html>
<https://felleisen.org/matthias/4620-s18/index.html> -- hack your own language /
building extensible systems : learn more about it! please!
<https://craftinginterpreters.com/> -- the book on crafting interpreters
<https://groups.google.com/forum/#!msg/racket-users/vN%5F1uUJZnXo/5bXiMEBvCgAJ> --
arguments aboutsurface syntax of racket
<https://blog.racket-lang.org/2020/02/racket-on-chez-status.htmlhttps://blog.racket-lang.org/2020/02/racket-on-chez-status.html>
-- racket on chez scheme for performance optimizations!
<https://blog.acolyer.org/2020/01/17/synthesizing-data-structure-transformations/>
synthesizing programs from input and output!! wow!! program synthesis looks like
such a cool thing
<https://www.reddit.com/r/ProgrammingLanguages/comments/ev0zzv/growing%5Fa%5Flanguage%5Fby%5Fguy%5Fsteele/>
<https://www.youtube.com/watch?v=agw-wlHGi0E&app=desktop>
<https://www.reddit.com/r/ProgrammingLanguages/comments/b2a61l/what%5Fare%5Fsome%5Fniche%5Ffeatures%5Fyoud%5Flike%5Fto%5Fsee%5Fin/>
<https://thosakwe.com/blog/aot-compilation-and-other-dart-hackery/>
<https://www.reddit.com/r/ProgrammingLanguages/comments/dwt8xu/what%5Fis%5Fyour%5Ffavourite%5Facademic%5Fpaper%5Fon/>
<http://craftinginterpreters.com/closures.html>
<https://jadon.io/blog/row-polymorphism>


### fun languages {#fun-languages}

<https://github.com/adam-mcdaniel/oakc> fun alternative to c langauge
<https://github.com/psg-mit/smooth>
<http://bloom-lang.net/>
<https://www.reddit.com/r/ProgrammingLanguages/comments/g2hhq0/statically%5Ftyped%5Flanguage%5Fwith%5Fa%5Fflexible%5Fmacro/>

<https://www.reddit.com/r/ProgrammingLanguages/comments/ehqlay/announcing%5Fthe%5Ffrost%5Fprogramming%5Flanguage/>
<https://www.reddit.com/r/ProgrammingLanguages/comments/exl0h5/free%5Fa%5Fprogramming%5Flanguage%5Fwith%5Fan%5Funusual/>
<https://www.reddit.com/r/ProgrammingLanguages/comments/g0k14m/is%5Fcopyonmodify%5Fsemantics%5Ffor%5Fvariables%5Fused%5Fin/>
<https://quorumlanguage.com/evidence.html>
<https://www.reddit.com/r/ProgrammingLanguages/comments/g0n2bd/from%5Fscala%5Fmonadic%5Feffects%5Fto%5Funison%5Falgebraic/https://www.reddit.com/r/ProgrammingLanguages/comments/g0n2bd/from%5Fscala%5Fmonadic%5Feffects%5Fto%5Funison%5Falgebraic/>
<https://v8.dev/>
<http://logitext.mit.edu/main>
<http://yannesposito.com/Scratch/en/blog/Learn-Vim-Progressively/>
<https://www.sifive.com/>
<https://www.wolframphysics.org/>
<https://daniel.haxx.se/>
<http://matt.might.net/articles/>
<http://matt.might.net/articles/best-tools-for-using-and-learning-linux-and-unix/#wms>
<https://dlang.org/>
<https://web.obarun.org/>
<https://en.m.wikipedia.org/wiki/Malbolge>
<https://eta-lang.org/>
<https://www.scala-lang.org/>
<https://www.amazon.com/gp/product/1555580416?ie=UTF8&tag=ucmbread-20&linkCode=as2&camp=1789&creative=390957&creativeASIN=1555580416>
<https://www.reddit.com/r/ProgrammingLanguages/comments/f30wxi/github%5Fmarcpaqb1fipl%5Fa%5Fbestiary%5Fof%5Fsinglefile/>
<https://www.reddit.com/r/ProgrammingLanguages/comments/elbt5u/introducing%5Fthe%5Fbeef%5Fprogramming%5Flanguage/>
<https://www.reddit.com/r/ProgrammingLanguages/comments/e8a42b/new%5Fprogramming%5Flanguage%5Fconcurnas/>
<https://www.reddit.com/r/ProgrammingLanguages/comments/ba9l0k/nomsu%5Fa%5Fdynamic%5Flanguage%5Fwith%5Fnaturallanguagelike/>
<https://www.reddit.com/r/ProgrammingLanguages/comments/bcmhkn/ldpl%5F300%5Fand%5Fwhy%5Fyou%5Fshould%5Fwork%5Fon%5Fsilly%5Fthings/>
<https://www.reddit.com/r/ProgrammingLanguages/comments/ez9k1g/zz%5Fis%5Fa%5Fmodern%5Fformally%5Fprovable%5Fdialect%5Fof%5Fc/>
<http://www.philipzucker.com/computational-category-theory-in-python-3-monoids-groups-and-preorders/>
<https://dl.acm.org/doi/10.1145/75277.75283>
<https://www.reddit.com/r/ProgrammingLanguages/comments/ftied4/idris%5F2%5Fversion%5F010%5Freleased/>

<https://www.reddit.com/r/ProgrammingLanguages/comments/avvma5/atto%5Fan%5Finsanely%5Ftiny%5Fselfhosted%5Ffunctional/>
<https://www.reddit.com/r/haskell/comments/fz7heq/accidentally%5Fexponential%5Fin%5Fa%5Fcompiler/>
<https://blog.josephmorag.com/posts/mcc2/>
<https://dl.acm.org/doi/abs/10.1145/301618.301637>
<https://github.com/mcoblenz/Obsidian>
<https://adamant-lang.org/>
<http://www.mlton.org/>
<http://matt.might.net/articles/best-programming-languages/>
<https://chrisseaton.com/truffleruby/>
<https://futhark-lang.org/blog/2020-04-13-statically-linking-the-futhark-compiler.html>
<https://www.reddit.com/r/ProgrammingLanguages/comments/awr3th/i%5Fmade%5Fa%5Fprogramming%5Flanguage%5Fbased%5Fon%5Fcobol/>
<https://github.com/seanbaxter/circle>
<http://blog.hydromatic.net/2020/02/25/morel-a-functional-language-for-data.html>
<https://www.reddit.com/r/ProgrammingLanguages/comments/ecc1fo/design%5Fflaws%5Fin%5Ffuthark/>
<https://github.com/Storyyeller/IntercalScript>
<https://vanemden.wordpress.com/2014/06/18/how-recursion-got-into-programming-a-comedy-of-errors-3/>


#### haxe! {#haxe}

<https://www.reddit.com/r/programming/comments/do220a/haxe%5F4%5Fhas%5Fbeen%5Freleased/>
cross platform language toolkit!
<https://www.reddit.com/r/ProgrammingLanguages/comments/eh1sfy/carpentry%5Fcompiler/>
<https://blog.darknedgy.net/technology/2020/05/02/0/>

<https://en.m.wikipedia.org/wiki/RenderMan%5FInterface%5FSpecification>
<https://en.m.wikipedia.org/wiki/RenderMan%5FInterface%5FSpecification>
<https://www.reddit.com/r/ProgrammingLanguages/comments/9esm8t/multiple%5Freturn%5Fvalues%5Ffrom%5Ffunctions/>
bytecode interpreter
comments
<https://www.reddit.com/r/ProgrammingLanguages/comments/g2ae36/crafting%5Finterpreters%5Fvs%5Fbuild%5Fyour%5Fown%5Flisp%5Fthe/>
<https://www.reddit.com/r/algorithms/comments/fjock1/which%5Fis%5Fthe%5Fbest%5Fsat%5Fsolver/https://www.reddit.com/r/learnmath/comments/fo5itb/riemanns%5Ffunctional%5Fequation%5Fnew%5Fsolution%5Ffound/>
<https://www.reddit.com/r/learnmath/comments/fo5itb/riemanns%5Ffunctional%5Fequation%5Fnew%5Fsolution%5Ffound/>
<https://www.reddit.com/r/ProgrammingLanguages/comments/fxrmho/the%5Fbest%5Fways%5Fto%5Fcompile%5Ffunctional%5Fprogramming/>
<https://www.reddit.com/r/ProgrammingLanguages/comments/g0j1um/simple%5Fbut%5Fpowerful%5Fpratt%5Fparsing/>
<https://www.reddit.com/r/ProgrammingLanguages/comments/g0j1um/simple%5Fbut%5Fpowerful%5Fpratt%5Fparsing/>
<https://www.reddit.com/r/ProgrammingLanguages/comments/fxrp6e/languages%5Fwith%5Fstructural%5Ftyping/>
<https://www.reddit.com/r/ProgrammingLanguages/comments/g0po6x/types%5Fover%5Fstrings%5Fextensible%5Farchitectures%5Fin/>
<https://www.reddit.com/r/dartlang/comments/f4d07x/poll%5Fshould%5Fthe%5Fangel%5Fframework%5Fbe%5Fmerged%5Finto%5Fa/>


### verification {#verification}

<https://www.cs.princeton.edu/~appel/certicoq/>
<https://vst.cs.princeton.edu/> building verified software


### parsing {#parsing}

<https://www.reddit.com/r/ProgrammingLanguages/comments/dszj7b/parse%5Fdont%5Fvalidate/>
<https://nothings.org/computer/lexing.html> -- lexing
<https://softwareengineering.stackexchange.com/questions/338665/when-to-use-a-parser-combinator-when-to-use-a-parser-generator>
<https://www.reddit.com/r/perl6/comments/73tjdo/an%5Foutline%5Fof%5Ffederico%5Ftomassettis%5Fa%5Fguide%5Fto/>
shunting yard algorithm : used to parse expressions in infix notation !
in parser generator: .mly file uses infix things with Shunting Yard Algorithm under the hood !!


### type systems {#type-systems}

<https://www.typescriptlang.org/docs/handbook/advanced-types.html#index-types-and-index-signatures>
<http://reasonableapproximation.net/2019/05/05/hindley-milner.html>
<http://prl.ccs.neu.edu/gtp>
<https://ncatlab.org/nlab/show/pure+type+system>
<https://blog.sigplan.org/2019/10/17/what-type-soundness-theorem-do-you-really-want-to-prove/>
great writeup about pa paper


### redex {#redex}

<https://www.youtube.com/watch?v=BuCRToctmw0> -- run your research - talk on redex
<https://redex.racket-lang.org/>
a dsl for specifying and debugging operational semantics


### compilers {#compilers}

[compiler neat thing](https://en.m.wikipedia.org/wiki/Duff%27s%5Fdevice)
[improving compiler correctness using formal methods](https://www.youtube.com/watch?v=de8Ak0nY1hA&app=desktop)
<http://www.keystone-engine.org/>
<https://jamespackard.me/>
<https://ollef.github.io/blog/posts/speeding-up-sixty.html>
<https://whalesalad.com/blog/doing-python-configuration-right>
<https://en.m.wikipedia.org/wiki/Multi-pass%5Fcompiler>
<https://en.m.wikipedia.org/wiki/Data-flow%5Fanalysis>
<https://www.reddit.com/r/ProgrammingLanguages/comments/a60i0m/unlike%5Fordinary%5Fjit%5Fcompilers%5Ffor%5Fother%5Flanguages/>

<https://gist.github.com/cellularmitosis/1f55f9679f064bcff02905acb44ca510#simple-compiler-codebases-to-study>
crazy compilers good stuff

<https://zserge.com/posts/jvm/> how to write a toy jvm -- try this and put it
on github! fun small thing to mess around with. add more to it, add new
things, mess aroundand have fun!
<https://www.cs.cmu.edu/~janh/courses/411/16/> compiler design course at cmu.
supposedly good material

<https://stackoverflow.com/questions/6264249/how-does-the-compilation-linking-process-work#6264256>
<https://www.cprogramming.com/compilingandlinking.html>

<https://www.youtube.com/watch?v=Os7FE3J-U5Q&app=desktop> writing a nanopass
compiler
<https://en.m.wikipedia.org/wiki/Intermediate%5Frepresentation> good reading
<https://en.m.wikipedia.org/wiki/Three-address%5Fcode>
<https://en.m.wikipedia.org/wiki/Static%5Fsingle%5Fassignment%5Fform>
<https://catalog.princeton.edu/catalog/SCSB-8534958> -- benjamin's favorite
compilers book
<http://www.ocamlpro.com/2020/03/23/ocaml-new-best-fit-garbage-collector/>
<http://www.aosabook.org/en/llvm.html> -- on llvm
<https://en.wikipedia.org/wiki/Alan%5FPerlis> -- pl research, won turing award or something
type preserving compilation for large scale optimizing object oriented compilers
how efficient can objects be?
<https://v8.dev/blog/pointer-compression> -- pointer compression in v8
<https://en.wikipedia.org/wiki/Optimizing%5Fcompiler>
<https://dl.acm.org/doi/10.1145/1375581.1375604>
<https://gcc.gnu.org/onlinedocs/gcc/Optimize-Options.html>
<https://www.cs.cornell.edu/courses/cs4410/2014fa/>
<https://www.reddit.com/r/ProgrammingLanguages/comments/fqt0fo/the%5Fstrange%5Fcase%5Fof%5Fdr%5Ffunction%5Fand%5Fmr%5Ftype/fm0vurc/?context=1>
<http://prl.ccs.neu.edu/blog/2020/01/15/the-typed-racket-optimizer-vs-transient/>
<https://docs.racket-lang.org/ts-guide/index.html>
<https://www.reddit.com/r/ProgrammingLanguages/comments/f3ekao/i%5Fbuilt%5Fa%5F2d%5Fgridbased%5Fesoteric%5Flanguage%5Fwith%5Fa/>
<https://matklad.github.io/2020/04/15/from-pratt-to-dijkstra.html>
<https://www.reddit.com/r/ProgrammingLanguages/comments/e1vv55/c3%5Fa%5Fclike%5Flanguage%5Fnow%5Fhas%5Fa%5Fdomain/>
<https://www.reddit.com/r/ProgrammingLanguages/comments/a0yyfc/plam%5Ffor%5Fanyone%5Fexploring%5F%CE%BBcalculus/>


#### pattern matching {#pattern-matching}

<https://www.reddit.com/r/ProgrammingLanguages/comments/g1vno3/beginner%5Fresources%5Ffor%5Fcompiling%5Fpattern%5Fmatching/>
<https://www.reddit.com/r/ProgrammingLanguages/comments/f4gfum/pattern%5Fmatching%5Fin%5Fyour%5Flanguage/>
<http://cone.jondgoodwin.com/coneref/refmatch.html>


### static analysis {#static-analysis}

<https://www.reddit.com/r/Coq/comments/tzpb9/webbased%5Fproofbypointing%5Ffrontend%5Fto%5Fcoq/>
<https://hal.inria.fr/hal-01093327>
<https://hal.inria.fr/tel-01102401>
<https://sed-bso.gitlabpages.inria.fr/sonarqube/>
<https://hal.inria.fr/hal-01588422> -- verificaiton!
<https://en.wikipedia.org/wiki/Loop-invariant%5Fcode%5Fmotion>
<https://www.reddit.com/r/ProgrammingLanguages/comments/g1wd0v/but%5Fwhat%5Fif%5Fwe%5Fput%5Fmodifiers%5Fafter%5Fthe%5Fkeyword/>


### tss something {#tss-something}

<https://bellard.org/otcc/>
<https://bellard.org/tcc/>
<http://web.eecs.utk.edu/~azh/blog/teenytinycompiler1.html> cool project for a
tiny compiler in python!
<https://blog.sigplan.org/2020/07/29/increasing-the-impact-of-pl-research/>
a meta article on impactful pl research
