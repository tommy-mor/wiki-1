+++
title = "File Systems"
author = ["Jacob Chvatal"]
lastmod = 2020-10-14T19:22:14+02:00
slug = "file-systems"
draft = false
+++

File systems are pretty cool, they manage how you interact with your files.
You can interface with new file systems without modifying your kernel by using FUSE.
I use ext4 at the moment, but a future install of my operating system will make use of BtrFS or ZFS to provide automatic backups and rollbacks, potentially using RAID to preserve information across zpools.


## Projects {#projects}

-   <https://github.com/ipfs/awesome-ipfs> interplanetary file system configuration
-   <https://github.com/edolstra/dwarffs> allows debug tools to automatically look up debug information over the internet
-   ZFS: Killer
