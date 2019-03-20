#!/bin/sh
/root/flumeTest/flume/bin/flume-ng agent --conf conf --conf-file /root/flumeTest/flume/conf/example.conf --name a1 -Dflume.root.logger=INFO,console --classpath "/opt/cloudera/parcels/CDH-6.1.1-1.cdh6.1.1.p0.875250/lib/hive-hcatalog/share/hcatalog/*:/opt/cloudera/parcels/CDH-6.1.1-1.cdh6.1.1.p0.875250/lib/hive/lib/* &
