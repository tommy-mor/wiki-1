+++
title = "Formal Spec Langauges"
author = ["Jacob Chvatal"]
lastmod = 2020-10-14T19:22:54+02:00
slug = "formal-spec-languages"
draft = false
+++

## From Hillel Wayne's writing {#from-hillel-wayne-s-writing}

A notation to describe the design of a system without implementing it.
Can test the **design** for bugs rather than the implementation.


### Examples {#examples}

[z](https://en.wikipedia.org/wiki/Z%5Fnotation)
: The first specification language to reach widespread use. Relies on set theory to describe states and schemas to describe behavior, first catalogued as a way of managing 'data semantics'.

[Alloy](https://alloytools.org)
: A response to Z's complex syntax and tooling. Alloy is an attempt to simplify both of these, specifying everything as either a type signature or relationship between signatures.
    Alloy is popular for SAT problems and models; it easily visualizes models to share properties with nontechnical people as well. This would be the tool to try!

[TLA^+](https://en.wikipedia.org/wiki/TLA%2B) is a formal specification langauge used to model concurrent and distributed systems; it's best respected as testable pseudocode and is similar to the drawing of blueprints for complex software systems.
    It is also designed to check liveness properties of systems.

    [Hillel](https://medium.com/espark-engineering-blog/formal-methods-in-practice-8f20d72bce4f) has a good article on modeling a complex system in the software development world with formal methods.

Prism
: Used to model **probabilistic** specifications, in which different things have different chances of happening and events are all dependent. Its syntax is very restrictive in order to be tractable, but the opportunity to model probabilistic systems is incredible.

Spin
: As expressive as TLA+, but written to model network protocols.

There are a lot more, but I'll investigate them further as I learn more.


## Terms {#terms}

Temporal logic
: Extending standard mathematical notation to allow temporal logic to change over time.
    Temporal logic of actions is a subset of this concept that scales to real world systems.

Liveness properties
: Similar to the definition in the compiler sphere, liveness properties are properties of systems that must _eventually_ be true for the spec to be valid.
