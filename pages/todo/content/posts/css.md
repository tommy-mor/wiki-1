+++
title = "CSS"
author = ["Jacob Chvatal"]
lastmod = 2020-10-14T19:05:41+02:00
slug = "css"
draft = false
+++

Cool tricks with CSS.


## Codepens {#codepens}

<https://codepen.io/jh3y/pen/yLYXVJa> -- snorlax
<https://codepen.io/a-trost/pen/BaoZgaK> -- neat animation!
<https://codersblock.com/blog/using-css-to-control-text-selection/> -- using css to control text selection
<https://codepen.io/lukes611/pen/dyyYXqP> -- Tamagochi!!!
<https://codepen.io/KilledByAPixel/pen/BaowKzv> -- synth
<https://codepen.io/YusukeNakaya/pen/dyYzRVx> snakes, airpods or something
<https://codepen.io/fossheim/pen/jObGxQQ> nintendo switch through only css
<https://codepen.io/chrisgannon/pen/RwWVJWd> this man is rolling
<https://codepen.io/chris22smith/pen/wvKqMOR> -- make new fish!
<https://codepen.io/jordirue/pen/NWGjwzz>
<https://codepen.io/collection/njYZRV> image hovers!
<https://codepen.io/RominaMartin/pen/OJVdvRm> -- cool blood donation UI!
<https://codepen.io/pavlovsk/pen/OJymPmd> tree generation
<https://codepen.io/pavlovsk/pen/OJymPmd> -- braun radio design in css
<https://codepen.io/KilledByAPixel/pen/abvqydY> bloodflow codepen!
<https://codepen.io/jkantner/pen/vYNRdJL> catbread!
<https://codepen.io/jkantner/pen/vYNRdJL>
<https://codepen.io/hailedev/pen/OJyvvVQ> minecraft in css
<https://codepen.io/cobra%5Fwinfrey/pen/LYpeKrd> flowing letters !!
<https://codepen.io/wendko/pen/jObajYq> choosing cats !
<https://codepen.io/cybercountess/pen/gOaoWmX> isabelle's day off

[john carmack's archive](https://github.com/ESWAT/john-carmack-plan-archive)
[essentials of gc](http://dmitrysoshnikov.com/courses/essentials-of-garbage-collectors/)
[dick rnn](https://dickrnn.github.io/)
[setup windows install script](https://github.com/kylesferrazza/windows/blob/master/install.ps1)
[lasso reg](https://leimao.github.io/blog/Group-Lasso/)
[amenity detection](https://www.youtube.com/watch?v=smlQbh6jQvg&app=desktop)
[containers in linux](https://news.ycombinator.com/item?id=23165157)
[this word not exist](https://www.thisworddoesnotexist.com/)
[blog i like the look of](http://agdr.org/blog/)
[look into jekyll ?? check out template above](http://agdr.org/blog/)
[figuring out how to use autohotkey for better windows config](https://www.hillelwayne.com/post/ahk/?utm%5Fsource=hillelwayne&utm%5Fmedium=email)

[this week's finds ! cool content!](http://math.ucr.edu/home/baez/twf.html)
[wp blog for above](https://johncarlosbaez.wordpress.com/)

[urbit os](https://urbit.org/understanding-urbit/urbit-os/)
[history of dead langauges pl](https://www.hillelwayne.com/post/influential-dead-languages/)
[figure out archillect](https://archillect.com/about)

<https://codepen.io/toshiya-marukubo/pen/oNbgPRX> neat orbit thing
<https://codepen.io/oliviale/pen/BaoXOOP> fake newspaper !
<https://thomaspark.co/2020/06/the-mad-magazine-fold-in-effect-in-css/> mad
magazine folding simulation!

<https://www.simplified.guide/ssh/disable-timeout> ssh timeout :: good
reference.

<https://shibumi.dev/posts/> good blog, some useful information and things to
learn here

<https://www.tessera.li/> math visualizations in js

<https://avanier.now.sh/> i love this website

<https://avanier.now.sh/w/bucket.html> make a bucket list !
<https://avanier.now.sh/w/glossary.html> words i like
<https://avanier.now.sh/w/links.html> curated links and resources

compile my own repositories :: tips and tricks i use frequently, GA

<https://avanier.now.sh/w/orion.html> programming on android?
<https://avanier.now.sh/w/navire.html>
use all of these technologies -- check them out!
<https://avanier.now.sh/w/natalie.html> very cool; look into bringing this to
class instead of a laptop for taking notes!
<https://avanier.now.sh/w/navire.html> please do use this style for a website.

<http://evenunto.net/> yooo

<https://hraew.autophagy.io/> project and personal information repostiory. very
cool interface
<https://hraew.autophagy.io/antimber/> very cool; a uniform switch for theming
and system configuration that integrates with a set of personal preferences

<https://kaemura.com/> incredible website and experiments
<https://avanier.now.sh/w/work.html> incredible interface
<https://avanier.now.sh/w/holly.html> computer console; used as a portable
ocmputer at school? very cool!

<https://avanier.now.sh/w/rabbit.html> great idea
<https://avanier.now.sh/w/josh.html> i love this

<https://avanier.now.sh/w/malin.html> firefox theme?

<https://anxl.faith/> nut my pants

<https://heracl.es/> cool projects found below; navigation of films, diy kit
for router, etc

<https://shards.lectronice.com/> this is pcool.

<https://ellugar.co/> mexican game developer!
<https://shoelace.style/> a minimal css starter kit

<https://getpocket.com/redirect?url=https%3A%2F%2Fgithub.com%2Fhundredrabbits%2FThemes> 100 rabbits theme framework


## Convention {#convention}


### Don't use Margin {#don-t-use-margin}

[Don't use Margin](https://www.amazon.com/dp/B0771V3SSP/?tag=wtpl-20)
Margin breaks component encapsulation because components impact everything surrounding them and external to them.
It also makes reusability difficult and impacts external components.
The stack component, similar to other spacer components,
is useful for adding arbitrary spaces internal to and external from different components. THese help define discrete units for space as well which can be standardized across the application.
