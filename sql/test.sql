DROP TABLE IF EXISTS tb_test;
CREATE TABLE tb_test(id INTEGER NOT NULL, name TEXT, create_time TIMESTAMP);
INSERT INTO tb_test(id, name, create_time) VALUES(1, "test1", now());
INSERT INTO tb_test(id, name, create_time) VALUES(2, "test2", now());
INSERT INTO tb_test(id, name, create_time) VALUES(3, "test3", now());
INSERT INTO tb_test(id, name, create_time) VALUES(4, "test4", now());
INSERT INTO tb_test(id, name, create_time) VALUES(5, "test5", now());
INSERT INTO tb_test(id, name, create_time) VALUES(6, "test6", now());
