CREATE TABLE USERS_TABLE2 (ID STRING PRIMARY KEY, REGISTERTIME BIGINT, USERID STRING, REGIONID STRING, GENDER STRING) 
WITH (KAFKA_TOPIC='users2', KEY_FORMAT='KAFKA', VALUE_FORMAT='AVRO');

CREATE TABLE AS SELECT ID , REGISTERTIME , USERID , REGIONID , GENDER FROM USERS_TABLE2 EMIT CHANGES;
