+++
title = "Nix"
author = ["Jacob Chvatal"]
lastmod = 2020-11-15T16:25:15+01:00
slug = "nix"
draft = false
+++

Nix is a functional package manager that isolates and sandboxes dependencies.


## Tools {#tools}

<https://github.com/elitak/nixos-infect> install nixos over an existing os on digitalocean and other vps systems


## Tutorials {#tutorials}

<https://github.com/nh2/nixops-tutorial> development with NixOps
<https://www.reddit.com/r/emacs/comments/hniz19/using%5Fnix%5Fto%5Fmanage%5Femacs%5Fpackages/> using nix to manage emacs packages


## Configs {#configs}

<https://github.com/luke-clifton/nix-config> has cool config
<https://github.com/hlissner/dotfiles>, doom emacs developer, has nice config. It's not terribly complicated though
<https://github.com/bjornfor/nixos-config>
<https://github.com/fooblahblah/nixos>
<https://getpocket.com/redirect?url=https%3A%2F%2Fgithub.com%2Futdemir%2Fdotfiles>


## ETC {#etc}

[installing nixos](http://fluffynukeit.com/installing-nixos/)
[official wiki on it](https://nixos.org/nixos/manual/index.html#sec-installation-installing)
[building nix](https://hydra.nixos.org/build/115931128/download/1/manual/manual.html#idm140737322673584)
[example server config](https://github.com/boxdot/nixos-server)
[provisioning nix server from macos](https://medium.com/@zw3rk/provisioning-a-nixos-server-from-macos-d36055afc4ad)
[nixops user guide](https://hydra.nixos.org/build/115931128/download/1/manual/manual.html#chap-introduction)
[installing nixos in vm](http://fluffynukeit.com/installing-nixos/)
[nixos for developers](https://myme.no/posts/2020-01-26-nixos-for-development.html)

[politics and nix](http://blog.shealevy.com/)
[using nixos in prod](https://www.quora.com/What-is-it-like-to-use-NixOS-Linux-on-production?share=1#)
[a year with nixos](https://medium.com/@jethroksy/a-year-with-nixos-113b534f446b)
[nixos on a NAS](https://www.codedbearder.com/posts/nixos-terramaster-f2-221/)

[changing nixos configuration](https://nixos.org/nixos/manual/index.html#sec-changing-config)
[managing nix config](https://nixos.org/nixos/manual/index.html#sec-changing-config)
[installing matrix on ubuntu](https://www.natrius.eu/dokuwiki/doku.php?id=digital:server:matrixsynapse)
[managing common programs on nixos](https://nixos.org/nixos/manual/index.html#sec-user-management)
[connecting to synapse from a client](https://github.com/matrix-org/synapse#synapse-installation)
[good organization for config](https://github.com/kylesferrazza/nix)
[here is why nix is good .](https://christine.website/blog/i-was-wrong-about-nix-2020-02-10)
[a good intro to nixos](https://nixos.org/nixos/nix-pills/pr01.html)
[short, readable notes on nix](https://github.com/justinwoo/nix-shorts)
[nixos for developers](https://myme.no/posts/2020-01-26-nixos-for-development.html)

[module services for nix](https://nixos.org/nixos/manual/index.html#module-services-matrix)


## initial installation {#initial-installation}

download disk
load onto live usb

worth noting that what i found the most confusing was:

-   user configuration
-   vps specific, ensuring that i could remove the virtual disk (not delete it)

and log in as an unprivileged user without booting to the installation disk


## partition {#partition}

partition for space for nixos

sudo fdisk /dev/sda
new
partition
sector1
no selection for start of partition
no selection for last sector
w to write to disk

sudo mkfs.ext4 -j -L nixos /dev/sda1


## nixos configuration {#nixos-configuration}

nixos-generate-config --root /mnt

edit /mnt/etc/nixos/configuration.nix

uncomment:

-   localization for us
-   terminal font and keymap
-   timezone = America/NewYork (??)

UEFI systems:
You must set the option boot.loader.systemd-boot.enable to true. nixos-generate-config should do this automatically for new configurations when booted in UEFI mode.
look at options with boot.loader.efi and boot.loader.systemd as well.

boot.loader.grub.useOSProber can be set to true to add other OS to the grub
menu


## enabling wifi {#enabling-wifi}

must enable wifi for the configuration generated:
plug in live usb
start

entering nixos comes with manual thing
sudo systemctl start sshd to start ssh daemon
[installing and configuring nixos on linode](https://www.linode.com/docs/tools-reference/custom-kernels-distros/install-nixos-on-linode/)
[using nixos for declarative deployment and testing](https://www.youtube.com/watch?v=uYZrbb78YzA&app=desktop)
[nixos example](https://github.com/kalbasit/shabka)
[nixos router for the homelab](https://www.youtube.com/watch?v=0tsfQskVW18&app=desktop) -- useful for learning to set everything up

[oepn source alternatives for everything](https://opensource.builders/)
[cool selfhosting specs](http://thedarnedestthing.com/current%20configuration)
[self hosting email with vultr, nixos](https://cinemasojourns.com/2020/03/29/akira-kurosawas-record-of-a-living-being/)
[nix as config mgr](https://www.reddit.com/r/NixOS/comments/44attf/nixos%5Fon%5Fdigital%5Focean/)
[ooh](https://www.reddit.com/r/NixOS/comments/44attf/nixos%5Fon%5Fdigital%5Focean/czoyjng/)


### nix {#nix}

<https://christine.website/blog/i-was-wrong-about-nix-2020-02-10>
<https://nixos.org/nixos/about.html>
<https://ebzzry.io/en/nix/>
<https://opencollective.com/nix-errors-enhancement>
<http://fluffynukeit.com/installing-nixos/>
<https://www.reddit.com/r/NixOS/comments/g1rmby/building%5Fa%5Fweb%5Fapp%5Fwith%5Ffunctional%5Fprogramming/>

[nix!](https://builtwithnix.org/)
[nix vs docker](https://discourse.nixos.org/t/is-there-much-difference-between-using-nix-shell-and-docker-for-local-development/807)
[configuring infra in nix](https://blog.container-solutions.com/step-towards-future-configuration-infrastructure-management-nix)
[nix!](https://github.com/kylesferrazza/nix/blob/master/README.md)
[looks good](https://github.com/kylesferrazza/nix-gce)
<https://nix.dev/> resources for learning nix to get things done
<https://www.reddit.com/r/NixOS/comments/6j9zlj/how%5Fto%5Fset%5Fup%5Fthemes%5Fin%5Fnixos/> working with themes in nixos
<https://getpocket.com/redirect?url=https%3A%2F%2Fgithub.com%2Fryantm%2Fnixfiles%2Fblob%2Fmaster%2Fmachine-specific%2Fhome1.nix> someones config files

<https://app.getpocket.com/read/2452794423> tutorial for encrypted zfs boot
<https://app.getpocket.com/read/1841792851> nixos on zfs
<https://app.getpocket.com/read/3056979074> building package from source tutorial
<https://app.getpocket.com/read/3056078810> nix and music ??
<https://app.getpocket.com/read/875290314> real time audio with nixos

<https://app.getpocket.com/read/2962491016> nixos desktop workflow
<https://spartanengineer.com/nixos/2017/09/25/basic-git-server-with-nixos.html> basic git server with nixos


## cool nixos stuff to do {#cool-nixos-stuff-to-do}

<https://github.com/grahamc/nixos-config/commit/9161782363b1fab27cffaa0b6432a10b303f3d7c> make programs run in their own cgroups; use play/pause to play and pause _programs_.
<https://github.com/sdiehl/dotfiles/blob/master/i3/config> good i3 configuration from stephen diehl
<http://www.seas.upenn.edu/~bcpierce/unison> config with some good android stuff
