+++
title = "Gemini"
author = ["Jacob Chvatal"]
lastmod = 2020-08-02T19:37:43-07:00
slug = "gemini"
draft = false
+++

Http is a bloated protocol.
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


## Tools {#tools}

<https://github.com/michael-lazar/gemini-diagnostics> test gemini servers
<https://github.com/mbrubeck/agate> a rust server for Gemini
<https://github.com/pitr/gig> gemini framework in Go


## ETC {#etc}


### links: {#links}

[castor, gtk for small internet](https://sr.ht/~julienxx/Castor/)
[gopher protocol](https://en.wikipedia.org/wiki/Gopher%5F%28protocol%29)
[gemini software](https://portal.mozz.us/gemini/gemini.circumlunar.space/software/)


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

I downloaded the Castor browser to interface with gopher sites; other people
may have success with different protocols or ways of accessing the internet,
but this was enjoyable!

tls ? gopher can be written from scratch! but gopher still depends on ip
stack, dns resolver and filesystem. using tls for cryptography is necessary.
tls limits access to more modern machines, but it makes no sense to sacrifice
all privacy protections to accomodate them.

gemini://pon.ix.tc:1965/cgi-bin/youtube.cgi -- youtube gopher that was up?
<https://www.reddit.com/r/HomeServer/comments/fapk6y/nanopi%5Fneo2%5Fblack%5Frunning%5Fpihole/>


#### I have now joined the gemini space! cool links {#i-have-now-joined-the-gemini-space-cool-links}

<https://git.sr.ht/~julienxx/asuka>
<https://gemini.circumlunar.space/clients.html> gemini clients
<https://portal.mozz.us/gemini/tildeverse.org/> cool unix servers
<https://portal.mozz.us/gemini/commie.space/blog/> tilde blog
<https://portal.mozz.us/gemini/gus.guru/> gemini search
<https://developer.mozilla.org/en-US/docs/Mozilla/Gecko/Chrome/API/Browser%5FAPI>
the history of the web;; much of this should be avoided with gemini!
<https://withknown.com/> neat publishing engine that may include gemini code
<https://alexschroeder.ch/wiki/2020-06-05%5FGemini%5FWrite> write gemini sites with
a proposal
<https://alexschroeder.ch/wiki/2020-06-04%5FGemini%5FUpload> proposal to allow
uploads and edits to gemini


## internet communities {#internet-communities}

[sdf.org, what is this?](https://sdf.org/)
visit gopher://bitreich.org/1/lawn
<https://portal.mozz.us/gemini/gemini.circumlunar.space/> use the gemini web
portal!
stunnel and xinetd for gemini. gemini is a great content oriented portable
thing and community
<https://portal.mozz.us/gemini/acidic.website/> this is very cool

why is gopher not commonly used as a protocol for corporate intranets? why
have gopher, hypergopher, gopher+ been entirely abandoned? gopher does not
have a mind share?
<https://ils.unc.edu/callee/gopherpaper.htm>


## etc {#etc}

[on automating out of work](https://news.ycombinator.com/item?id=18120322)
The best work is done when you do it for yourself.
you sign your brains away when you go to work for a big company, and these
people will likely be B players -- no matter how many great people they hire.
most A players have more important things to do with their own time. without
ownership, there is a high chance that you will not be at your best.

non-technical business :: sometimes daily tasks do not end up driving
revenue! the others are driving the revenue, you are maintaining thigns for
them. their capacity to define tasks for you may not ever outpace your
ability to deliver.

automating yourself out of a job could be a goal, but this doesn't work:

-   system complexity means something can always break!
-   markets rapidly evolve and parts cease to work in the future!

[is self-automation ethical?](https://www.theatlantic.com/technology/archive/2018/10/agents-of-automation/568795/?single%5Fpage=true)

-   automation and the 15 hour work week from keynes
-   though automation continues, humans find ourselves working longer and
    longer hours -- even though we enjoy benefits from those who use automation
    and those who owned automated products.
-   Automation still has the power to reduce the amount of boring work we do.

[automating with nodejs](https://medium.com/dailyjs/how-i-automated-my-job-with-node-js-94bf4e423017)


## QAnon lol and starting cult {#qanon-lol-and-starting-cult}

[qanon](https://conspiracypsychology.com/2018/04/15/internet-prophecy-cults-101-qanon-and-his-predecessors/)
QAnon

-   find an audience and tell them what they want to hear
-   everthing they believe in is right and everything they disagree with is
    wrong
-   while things are bad now, a cleansing will come and the world will be ruled
    by the people these people revere
-   Tell people that they will succeed if they believe you!
-   set a date for when {big event} will happen.


## why lisp is good {#why-lisp-is-good}

[the lisp song](https://www.dreamsongs.com/WIB.html)
[more lisp song and history](https://twobithistory.org/2018/10/14/lisp.html)
[mit scheme](https://www.gnu.org/software/mit-scheme/)
[the bipolar lisp programmer](http://marktarver.com/bipolar.html) arrogant


## etc {#etc}

[sicp and king james generation](https://kingjamesprogramming.tumblr.com/)
from markov chain

[ur programming languages - web dev w this!](http://www.impredicative.com/ur/)


## small pl for your friends {#small-pl-for-your-friends}

<https://runyourown.social/>
you control the softare and you make the policies
can have hyperspecific norms!
can be the party host!
can welcome people kindly to the server!

<https://runyourown.social/#places-where-we-need-better-tech> -- need better
tech:

-   form of centralization that allows people to migrate their accounts
-   let people choose to keep things in the community

<https://www.rhelmer.org/blog/> the browser monoculture. and why this is bad!
<https://lwn.net/Articles/741218/> on the small internet .

<https://en.m.wikipedia.org/wiki/Anonymous%5Fremailer> hosting mail!

<https://alexschroeder.ch/wiki/2020-06-04%5FGemini%5FUpload> the small internet and
gemini uplaod
<https://alexschroeder.ch/wiki/2020-06-05%5FGemini%5FWrite>
<https://alexschroeder.ch/wiki/Diary>
<https://alexschroeder.ch/wiki/2019-06-21%5FSolderpunk's%5FGemini%5FProtocol> more on
the gemini protocol :: and why it may not be liked
<https://github.com/pitr/gig/blob/master/README.md> gemini dev framework

<https://git.carcosa.net/jmcbray/gemini.el> gemini emacs mode

<https://portal.mozz.us/gemini/gem.limpet.net/agate/> agate server for static
files over gemini
<https://news.ycombinator.com/item?id=16222478> decentralized social networking
protocol!

<https://github.com/jakechv/twitterpub> twitter activity gateway
<https://activitypub.rocks/> explanation of the activity pub prococol and how
it can be used
<https://github.com/schollz/ingredients> extract ingredients from any recipe on
the internet
<https://github.com/schollz/extract%5Frecipe>
<https://gist.github.com/shakna-israel/4fd31ee469274aa49f8f9793c3e71163#lets-destroy-c>
breaking c code

<https://write.as/matt/our-activitypub-projects> neat ActivityPub projects
<https://spiegelmock.com/2020/05/28/decentralizing-social-media/> more on
decentralization
<https://write.as/matt/our-activitypub-projects> new activitypub projects
<https://git.sr.ht/~yotam/shavit> configurable gemini server
<https://www.reddit.com/r/selfhosted/comments/h02wzr/how%5Fto%5Fadding%5Ftotp%5Fto%5Fsudo/>
??? seems useful for hosting.
<https://bitwarden.com/> bitwarden :; self hosted password management
<https://bitwarden.com/help/article/import-from-lastpass/> move from lastpass
<https://www.talkyard.io/> best way to share info?
<https://github.com/drichard/mindmaps> mindmapping tech

<https://joplinapp.org/> open source notes with joplin

<https://blynk.io/> iot mobile platform

<https://github.com/semi-technologies/weaviate> search graphql
<https://developer.mozilla.org/en-US/docs/Web/HTTP/Basics%5Fof%5FHTTP/Evolution%5Fof%5FHTTP>
the history of http
to bitwarden
