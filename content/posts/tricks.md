+++
title = "tricks for linux system"
author = ["Jacob Chvatal"]
lastmod = 2020-08-01T23:50:43-07:00
slug = "tricks"
draft = false
+++

## enable pulseaudio noise cancellation {#enable-pulseaudio-noise-cancellation}

put in /etc/pulse/default.pa:

```sh
load-module module-echo-cancel use_master_format=1 aec_method=webrtc aec_args="analog_gain_control=0\ digital_gain_control=1" source_name=echoCancel_source sink_name=echoCancel_sink
set-default-source echoCancel_source
set-default-sink echoCancel_sink
```


## docker troubleshooting {#docker-troubleshooting}

```sh
# remove all containers
docker rmi $(docker images -a -q)
# stop all running containers
docker stop $(docker ps -a -q)
```
