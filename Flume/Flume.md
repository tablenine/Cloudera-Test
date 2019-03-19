
### fluem download
``` bash
wget http://apache.mirror.cdnetworks.com/flume/1.9.0/apache-flume-1.9.0-bin.tar.gz
```

### 시작
``` bash
/root/flumeTest/flume/bin/flume-ng agent --conf conf --conf-file /root/flumeTest/flume/conf/example.conf --name a1 -Dflume.root.logger=INFO,console -Dflume.monitoring.port=12345 -Dflume.monitoring.type=gangla &
```

### kafka topic 생성
``` bash
bin/kafka-topics.sh  --zookeeper hadoop1:2181,hadoop2:2181,hadoop3:2181 --topic tableninetopic --partitions 10 --replication-factor 1 --create
bin/kafka-topics.sh --zookeeper hadoop1:2181,hadoop2:2181,hadoop3:2181 --topic tableninetopic --if-exists --delete --force
bin/kafka-topics.sh --zookeeper hadoop1:2181,hadoop2:2181,hadoop3:2181 --list
bin/kafka-topics.sh --zookeeper hadoop1:2181,hadoop2:2181,hadoop3:2181 --describe
```

### hive create table
``` bash
create table weblogs ( id int , msg string )
    partitioned by (continent string, country string, ttime string)
    clustered by (id) into 5 buckets
    stored as orc;
```
	
### fluentd 설치 
``` bash
curl -L https://toolbelt.treasuredata.com/sh/install-redhat-td-agent3.sh | sh
```

### test log 
``` bash
echo [1] >> /tmp/test3.log
echo [2] >> /tmp/test3.log
echo [3] >> /tmp/test3.log
echo [4] >> /tmp/test3.log
echo [5] >> /tmp/test3.log
echo [6] >> /tmp/test3.log
echo [7] >> /tmp/test3.log
echo [8] >> /tmp/test3.log
echo [9] >> /tmp/test3.log
echo [10] >> /tmp/test3.log
echo [11] >> /tmp/test3.log
echo [12] >> /tmp/test3.log
```

### consumer 확인
``` bash 
bin/kafka-console-consumer.sh --bootstrap-server hadoop1:6667 --topic tableninetopic --from-beginning
```
