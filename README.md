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

#### 삭제
[삭제설명](https://www.cloudera.com/documentation/enterprise/latest/topics/cm_ig_uninstall_cm.html)
