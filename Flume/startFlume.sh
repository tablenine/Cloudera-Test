#!/bin/sh
/root/flumeTest/flume/bin/flume-ng agent --conf conf --conf-file /root/flumeTest/flume/conf/example.conf --name a1 -Dflume.root.logger=INFO,console &
