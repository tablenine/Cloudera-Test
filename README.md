#### 설치 참고 링크

[설치 설명](https://github.com/biospin/BigBio/blob/master/part03/week01_160503/hadoop/cloudera_install.md )

#### pssh 다운로드

``` bash
wget https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/parallel-ssh/pssh-2.1.1.tar.gz
```

#### CDH 다운로드

``` bash
wget https://archive.cloudera.com/cm6/6.1.1/cloudera-manager-installer.bin
chmod u+x cloudera-manager-installer.bin
```

설치 하기 전 selinux 상태 확인 필요..

#### psycopg2 2.7.5버전 이상 필요하다고 경고 나올때

``` bash
rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
yum install -y python-pip
## 위는 pip 설치되어 있을시 생략가능
pip install psycopg2==2.7.5 --ignore-installed
```

### 삭제
[삭제 참고 링크](https://www.cloudera.com/documentation/enterprise/latest/topics/cm_ig_uninstall_cm.html)

#### 서비스 정지
#### pacel 삭제
#### cluster 삭제
#### manger 서버 uninstall
``` bash
$ /opt/cloudera/installer/uninstall-cloudera-manager.sh
```
#### agent 삭제
``` bash
systemctl stop supervisord
yum remove 'cloudera-manager-*'
yum clean all
umount cm_processes
rm -Rf /usr/share/cmf /var/lib/cloudera* /var/cache/yum/cloudera* /var/log/cloudera* /var/run/cloudera*

rm /tmp/.scm_prepare_node.lock
rm -Rf /var/lib/flume-ng /var/lib/hadoop* /var/lib/hue /var/lib/navigator /var/lib/oozie /var/lib/solr /var/lib/sqoop* /var/lib/zookeeper
rm -rf /dfs

systemctl daemon-reload
```


