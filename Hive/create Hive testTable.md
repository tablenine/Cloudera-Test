### table 생성

``` sql
create table tableName
(
  cloumn1 type,
  cloumn1 type
)
CLUSTERED BY (cloumn1, cloumn2) INTO 2 buckets
STORED AS ORC TBLPROPERTIES ('transactional'='true');
```
### external table 생성

``` sql
create external table tablenName
(
  cloumn1 type,
  cloumn1 type
)
row format delimited 
fields terminated by ','
lines terminated by '\n'
LOCATION '/user/tablenine/flume/info/';
```
