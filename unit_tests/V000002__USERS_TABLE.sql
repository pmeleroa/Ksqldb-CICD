CREATE STREAM USERS_TABLE (ID STRING , REGISTERTIME BIGINT, USERID STRING, REGIONID STRING, GENDER STRING) 
WITH (KAFKA_TOPIC='users2', KEY_FORMAT='KAFKA', VALUE_FORMAT='AVRO');

CREATE TABLE S1 AS SELECT ID , REGISTERTIME, USERID, REGIONID, GENDER FROM USERS_TABLE EMIT CHANGES;

