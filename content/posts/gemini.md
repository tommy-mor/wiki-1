+++
title = "Gemini"
author = ["Jacob Chvatal"]
lastmod = 2020-10-14T20:25:29+02:00
slug = "gemini"
draft = false
+++

HTTP is a bloated protocol.
Any visit to the website of a large company will tell you this.
Significant sizes of applications (often over 5 megabytes!), load times, and the constant
reminder to consent to cookies are all emblematic of what our internet has
become -- a service hostile to its users for the sake of profit.
Practically every website you visit tracks your information to collect both analytics and
personal data, assembling a profile of you that can be sold to advertisers,
government agencies and whoever else wants a cut of your data.

Gemini is a new protocol for browsing the internet founded by solderpunk.
it's designed only to serve data, and intends to foster a friendlier internet
-- one in which arbitrary information can't be passed from consumer to producer no
matter what the motivation.

Gemini can be thought of as the HTTPS equivalent of Gopher: all traffic is secured and encrypted.

I hope to have this wiki, along with my other personal websites, up on Gemini soon. All it takes is a program to convert org-mode files to files in a Gemini framework rather than a Hugo blog.


## Tools {#tools}

[Gemini Diagnostics](https://github.com/michael-lazar/gemini-diagnostics)
: A 'torture test' for Gemini servers.

[Agate](https://github.com/mbrubeck/agate)
: A Gemini server in Rust.

[Gig](https://github.com/pitr/gig)
: A Gemini framework in Go.

[geminid](https://github.com/jovoro/geminid)
: gemini server in C

[Castor](https://sr.ht/~julienxx/Castor/)
: A GTK-based browser for Gopher and Gemini.

[Asuka](https://git.sr.ht/~julienxx/asuka)
: A Rust-based Gemini client.

[A list of Gemini clients.](https://gemini.circumlunar.space/clients.html)
[A list of all currently known Gemini software.](https://portal.mozz.us/gemini/gemini.circumlunar.space/software/)


## Sites {#sites}

[The Tildeverse on Gemini](https://portal.mozz.us/gemini/tildeverse.org/).
[A Tilde blog.](https://portal.mozz.us/gemini/commie.space/blog/)
[A Gemini search engine](https://portal.mozz.us/gemini/gus.guru/).
[A YouTube Gemini interface (may be down).](https://portal.mozz.us/gemini://pon.ix.tc:1965/cgi-bin/youtube.cgi)
[A neat Gemini blog.](https://portal.mozz.us/gemini/acidic.website/)


## Active Work {#active-work}

[Proposal to allow for writing to Gemini sites](https://alexschroeder.ch/wiki/2020-06-05%5FGemini%5FWrite).
[A proposal to allow uploads and edits to Gemini pages in the protocol.](https://alexschroeder.ch/wiki/2020-06-04%5FGemini%5FUpload)


## ETC {#etc}


### gemini {#gemini}

<https://gemini.circumlunar.space/docs/faq.txt>
distribution of arbitrary files;
has special consideration for serving lightweight format
that allows linking between files!
maintained by solderpunk@sdf.org
middle child: minimalist proof of concept
designed forsimplicity, basic client creation and usability
privacy! the internet is not a safe place for plaintext.
generality!

tls ? gopher can be written from scratch! but gopher still depends on ip
stack, dns resolver and filesystem. using tls for cryptography is necessary.
tls limits access to more modern machines, but it makes no sense to sacrifice
all privacy protections to accomodate them.

<https://www.reddit.com/r/HomeServer/comments/fapk6y/nanopi%5Fneo2%5Fblack%5Frunning%5Fpihole/>

<https://developer.mozilla.org/en-US/docs/Mozilla/Gecko/Chrome/API/Browser%5FAPI>
the history of the web;; much of this should be avoided with gemini!
<https://withknown.com/> neat publishing engine that may include gemini code


## internet communities {#internet-communities}

[sdf.org, what is this?](https://sdf.org/)
stunnel and xinetd for gemini. gemini is a great content oriented portable
thing and community
