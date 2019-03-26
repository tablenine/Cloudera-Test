## 테스트 명령
``` sh
sqoop import   --connect jdbc:db://db호스트:포트/db명   --username 계정   --password 패스워드   --table 테이블 \
--hive-import --hive-database db명  --hive-table 테이블명 --as-parquetfile  --map-column-java updt_dt=java.sql.Timestamp -m 1
```

## 에러
### This command is not allowed on an ACID table
``` sql
SET hive.txn.manager=org.apache.hadoop.hive.ql.lockmgr.DbTxnManager;
```

### is not alphanumeric (plus '_')
[참고](https://stackoverflow.com/questions/27861924/sqoop-import-as-parquetfile-with-cdh5)
```
db명 제거
--hive-database 추가
```

### Import failed: Cannot convert unsupported type: timestamp
```
--map-column-java updt_dt=java.sql.Timestamp 추가
```

### Cannot convert to AVRO type java.sql.Timestamp
