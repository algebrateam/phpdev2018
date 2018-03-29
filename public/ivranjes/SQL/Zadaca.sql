
MariaDB [information_schema]> use polaznici;
ERROR 1049 (42000): Unknown database 'polaznici'
MariaDB [information_schema]> show tables;
+---------------------------------------+
| Tables_in_information_schema          |
+---------------------------------------+
| ALL_PLUGINS                           |
| APPLICABLE_ROLES                      |
| CHARACTER_SETS                        |
| CLIENT_STATISTICS                     |
| COLLATIONS                            |
| COLLATION_CHARACTER_SET_APPLICABILITY |
| COLUMNS                               |
| COLUMN_PRIVILEGES                     |
| ENABLED_ROLES                         |
| ENGINES                               |
| EVENTS                                |
| FILES                                 |
| GLOBAL_STATUS                         |
| GLOBAL_VARIABLES                      |
| INDEX_STATISTICS                      |
| KEY_CACHES                            |
| KEY_COLUMN_USAGE                      |
| PARAMETERS                            |
| PARTITIONS                            |
| PLUGINS                               |
| PROCESSLIST                           |
| PROFILING                             |
| REFERENTIAL_CONSTRAINTS               |
| ROUTINES                              |
| SCHEMATA                              |
| SCHEMA_PRIVILEGES                     |
| SESSION_STATUS                        |
| SESSION_VARIABLES                     |
| STATISTICS                            |
| TABLES                                |
| TABLESPACES                           |
| TABLE_CONSTRAINTS                     |
| TABLE_PRIVILEGES                      |
| TABLE_STATISTICS                      |
| TRIGGERS                              |
| USER_PRIVILEGES                       |
| USER_STATISTICS                       |
| VIEWS                                 |
| INNODB_CMP                            |
| XTRADB_INTERNAL_HASH_TABLES           |
| INNODB_SYS_DATAFILES                  |
| XTRADB_RSEG                           |
| INNODB_SYS_TABLESTATS                 |
| INNODB_TRX                            |
| INNODB_FT_BEING_DELETED               |
| INNODB_CMP_RESET                      |
| INNODB_CMP_PER_INDEX                  |
| INNODB_LOCKS                          |
| INNODB_FT_DELETED                     |
| XTRADB_READ_VIEW                      |
| INNODB_LOCK_WAITS                     |
| INNODB_CMPMEM_RESET                   |
| INNODB_SYS_INDEXES                    |
| INNODB_SYS_TABLES                     |
| INNODB_SYS_FIELDS                     |
| INNODB_BUFFER_PAGE_LRU                |
| INNODB_FT_CONFIG                      |
| INNODB_FT_INDEX_TABLE                 |
| INNODB_CMP_PER_INDEX_RESET            |
| INNODB_SYS_TABLESPACES                |
| INNODB_FT_INDEX_CACHE                 |
| INNODB_SYS_FOREIGN_COLS               |
| INNODB_METRICS                        |
| INNODB_BUFFER_POOL_STATS              |
| INNODB_CMPMEM                         |
| INNODB_SYS_FOREIGN                    |
| INNODB_SYS_COLUMNS                    |
| INNODB_FT_DEFAULT_STOPWORD            |
| INNODB_BUFFER_PAGE                    |
| INNODB_CHANGED_PAGES                  |
+---------------------------------------+
70 rows in set (0.00 sec)

MariaDB [information_schema]> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| test               |
| upisi_polaznika    |
+--------------------+
5 rows in set (0.00 sec)

MariaDB [information_schema]> use upisi_polaznika;
Database changed
MariaDB [upisi_polaznika]> show tables;
+---------------------------+
| Tables_in_upisi_polaznika |
+---------------------------+
| polaznici                 |
| tecajevi                  |
+---------------------------+
2 rows in set (0.00 sec)

MariaDB [upisi_polaznika]> insert into polaznici values ('Ivan','Ivan');
ERROR 1366 (22007): Incorrect integer value: 'Ivan' for column 'sifra_polaznika' at row 1
MariaDB [upisi_polaznika]> insert into polaznici values ('Ivano','Ivano');
ERROR 1366 (22007): Incorrect integer value: 'Ivano' for column 'sifra_polaznika' at row 1
MariaDB [upisi_polaznika]> explain polaznici;
+-----------------+-------------+------+-----+---------+-------+
| Field           | Type        | Null | Key | Default | Extra |
+-----------------+-------------+------+-----+---------+-------+
| sifra_polaznika | int(11)     | NO   | PRI | 0       |       |
| prezime         | varchar(50) | YES  |     | NULL    |       |
+-----------------+-------------+------+-----+---------+-------+
2 rows in set (0.01 sec)

MariaDB [upisi_polaznika]> insert into polaznici values ('1','Ivano');
Query OK, 1 row affected (0.01 sec)

MariaDB [upisi_polaznika]> insert into polaznici values ('2','Ivana');
ERROR 1062 (23000): Duplicate entry '2' for key 'PRIMARY'
MariaDB [upisi_polaznika]> insert into polaznici values ('3','Ivana');
Query OK, 1 row affected (0.00 sec)

MariaDB [upisi_polaznika]> explain polaznici;
+-----------------+-------------+------+-----+---------+-------+
| Field           | Type        | Null | Key | Default | Extra |
+-----------------+-------------+------+-----+---------+-------+
| sifra_polaznika | int(11)     | NO   | PRI | 0       |       |
| prezime         | varchar(50) | YES  |     | NULL    |       |
+-----------------+-------------+------+-----+---------+-------+
2 rows in set (0.01 sec)

MariaDB [upisi_polaznika]> select * from polaznici;
+-----------------+---------+
| sifra_polaznika | prezime |
+-----------------+---------+
|               0 | Vranjes |
|               1 | Ivano   |
|               2 | iVAN    |
|               3 | Ivana   |
+-----------------+---------+
4 rows in set (0.00 sec)

MariaDB [upisi_polaznika]> select * from polaznici limit 2;
+-----------------+---------+
| sifra_polaznika | prezime |
+-----------------+---------+
|               0 | Vranjes |
|               1 | Ivano   |
+-----------------+---------+
2 rows in set (0.00 sec)

MariaDB [upisi_polaznika]> show tables;
+---------------------------+
| Tables_in_upisi_polaznika |
+---------------------------+
| polaznici                 |
| tecajevi                  |
+---------------------------+
2 rows in set (0.00 sec)

MariaDB [upisi_polaznika]> explain tecajevi;
+--------------+----------+------+-----+---------+-------+
| Field        | Type     | Null | Key | Default | Extra |
+--------------+----------+------+-----+---------+-------+
| sifra_tecaja | char(3)  | NO   | PRI |         |       |
| naziv        | char(19) | YES  |     | NULL    |       |
+--------------+----------+------+-----+---------+-------+
2 rows in set (0.01 sec)

MariaDB [upisi_polaznika]> selct 10 + 20;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'selct 10 + 20' at line 1
MariaDB [upisi_polaznika]> select 10 + 20;
+---------+
| 10 + 20 |
+---------+
|      30 |
+---------+
1 row in set (0.00 sec)

MariaDB [upisi_polaznika]> select 10 * 20;
+---------+
| 10 * 20 |
+---------+
|     200 |
+---------+
1 row in set (0.00 sec)

MariaDB [upisi_polaznika]> create table kolegij (
    -> ime VARCHAR(50),
    -> prezime VARCHAR(50),
    -> kid INT,
    -> naslov VARCHAR(50),
    -> sati1 INT,
    -> sati2 INT,
    -> sati2 INT,
    -> vjezbi2 INT,
    -> PRIMARY KEY (kid));
ERROR 1060 (42S21): Duplicate column name 'sati2'
MariaDB [upisi_polaznika]> create table kolegij (
    -> ime VARCHAR(50),
    -> prezime VARCHAR(50),
    -> kid INT,
    -> naslov VARCHAR(50),
    -> sati1 INT,
    -> vjezbi1 INT,
    -> sati2 INT,
    -> vjezbi2 INT,
    -> PRIMARY KEY (kid));
Query OK, 0 rows affected (0.03 sec)

MariaDB [upisi_polaznika]> explain kolegij
    -> ;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| ime     | varchar(50) | YES  |     | NULL    |       |
| prezime | varchar(50) | YES  |     | NULL    |       |
| kid     | int(11)     | NO   | PRI | 0       |       |
| naslov  | varchar(50) | YES  |     | NULL    |       |
| sati1   | int(11)     | YES  |     | NULL    |       |
| vjezbi1 | int(11)     | YES  |     | NULL    |       |
| sati2   | int(11)     | YES  |     | NULL    |       |
| vjezbi2 | int(11)     | YES  |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+
8 rows in set (0.01 sec)

MariaDB [upisi_polaznika]> insert into kolegij values ('Ivan','Vranjes',1,'ne ide',2,3,3,5);
Query OK, 1 row affected (0.00 sec)

MariaDB [upisi_polaznika]> showkolegij
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'showkolegij' at line 1
MariaDB [upisi_polaznika]> explain kolegij;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| ime     | varchar(50) | YES  |     | NULL    |       |
| prezime | varchar(50) | YES  |     | NULL    |       |
| kid     | int(11)     | NO   | PRI | 0       |       |
| naslov  | varchar(50) | YES  |     | NULL    |       |
| sati1   | int(11)     | YES  |     | NULL    |       |
| vjezbi1 | int(11)     | YES  |     | NULL    |       |
| sati2   | int(11)     | YES  |     | NULL    |       |
| vjezbi2 | int(11)     | YES  |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+
8 rows in set (0.01 sec)

MariaDB [upisi_polaznika]> describe kolegij
    -> ;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| ime     | varchar(50) | YES  |     | NULL    |       |
| prezime | varchar(50) | YES  |     | NULL    |       |
| kid     | int(11)     | NO   | PRI | 0       |       |
| naslov  | varchar(50) | YES  |     | NULL    |       |
| sati1   | int(11)     | YES  |     | NULL    |       |
| vjezbi1 | int(11)     | YES  |     | NULL    |       |
| sati2   | int(11)     | YES  |     | NULL    |       |
| vjezbi2 | int(11)     | YES  |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+
8 rows in set (0.01 sec)

MariaDB [upisi_polaznika]> select * from kolegij;
+------+---------+-----+--------+-------+---------+-------+---------+
| ime  | prezime | kid | naslov | sati1 | vjezbi1 | sati2 | vjezbi2 |
+------+---------+-----+--------+-------+---------+-------+---------+
| Ivan | Vranjes |   1 | ne ide |     2 |       3 |     3 |       5 |
+------+---------+-----+--------+-------+---------+-------+---------+
1 row in set (0.00 sec)

MariaDB [upisi_polaznika]> UPDATE kolegij SET ime= 'Jovan' WHERE kid=1;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [upisi_polaznika]> select * from kolegij;
+-------+---------+-----+--------+-------+---------+-------+---------+
| ime   | prezime | kid | naslov | sati1 | vjezbi1 | sati2 | vjezbi2 |
+-------+---------+-----+--------+-------+---------+-------+---------+
| Jovan | Vranjes |   1 | ne ide |     2 |       3 |     3 |       5 |
+-------+---------+-----+--------+-------+---------+-------+---------+
1 row in set (0.00 sec)

MariaDB [upisi_polaznika]> insert into kolegij values ('Marko','Vranjesevic',2,'ide',2,3,3,5);
Query OK, 1 row affected (0.01 sec)

MariaDB [upisi_polaznika]> select * from kolegij;
+-------+-------------+-----+--------+-------+---------+-------+---------+
| ime   | prezime     | kid | naslov | sati1 | vjezbi1 | sati2 | vjezbi2 |
+-------+-------------+-----+--------+-------+---------+-------+---------+
| Jovan | Vranjes     |   1 | ne ide |     2 |       3 |     3 |       5 |
| Marko | Vranjesevic |   2 | ide    |     2 |       3 |     3 |       5 |
+-------+-------------+-----+--------+-------+---------+-------+---------+
2 rows in set (0.00 sec)

MariaDB [upisi_polaznika]> show tables;
+---------------------------+
| Tables_in_upisi_polaznika |
+---------------------------+
| kolegij                   |
| polaznici                 |
| tecajevi                  |
+---------------------------+
3 rows in set (0.00 sec)

MariaDB [upisi_polaznika]> select imepolaznici, prezpolaznici FROM polaznici;
ERROR 1054 (42S22): Unknown column 'imepolaznici' in 'field list'
MariaDB [upisi_polaznika]> show tables;
+---------------------------+
| Tables_in_upisi_polaznika |
+---------------------------+
| kolegij                   |
| polaznici                 |
| tecajevi                  |
+---------------------------+
3 rows in set (0.00 sec)

MariaDB [upisi_polaznika]> create table kraj(
    -> id INT,
    -> status CHAR(12),
    -> opao VARCHAR(60),
    -> PRIMARY KEY id INT;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'INT' at line 5
MariaDB [upisi_polaznika]> create table kraj(
    -> id INT,
    -> status CHAR(12),
    -> opao VARCHAR(60),
    -> PRIMARY KEY id INT);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'INT)' at line 5
MariaDB [upisi_polaznika]> create table kraj(
    -> id INT,
    -> status CHAR(12),
    -> opao VARCHAR(60),
    -> PRIMARY KEY id);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near ')' at line 5
MariaDB [upisi_polaznika]> create table kraj(
    -> id INT,
    -> create table kraj(
    -> opao VARCHAR(60),
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'create table kraj(
opao VARCHAR(60),
)' at line 3
MariaDB [upisi_polaznika]> create table kraj(
    -> id INT,
    -> status CHAR(12),
    -> opao VARCHAR(60),
    -> PRIMARY KEY (id));
Query OK, 0 rows affected (0.03 sec)

MariaDB [upisi_polaznika]> show tables
    -> ;
+---------------------------+
| Tables_in_upisi_polaznika |
+---------------------------+
| kolegij                   |
| kraj                      |
| polaznici                 |
| tecajevi                  |
+---------------------------+
4 rows in set (0.00 sec)

MariaDB [upisi_polaznika]> insert into kraj values (1,'taj kolegij gotov','opao bome');
ERROR 1406 (22001): Data too long for column 'status' at row 1
MariaDB [upisi_polaznika]> insert into kraj values (1,'taj gotov','opao bome');
Query OK, 1 row affected (0.01 sec)

MariaDB [upisi_polaznika]> explain kraj;
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| id     | int(11)     | NO   | PRI | 0       |       |
| status | char(12)    | YES  |     | NULL    |       |
| opao   | varchar(60) | YES  |     | NULL    |       |
+--------+-------------+------+-----+---------+-------+
3 rows in set (0.01 sec)

MariaDB [upisi_polaznika]> select * from opao;
ERROR 1146 (42S02): Table 'upisi_polaznika.opao' doesn't exist
MariaDB [upisi_polaznika]> select * from opao;
ERROR 1146 (42S02): Table 'upisi_polaznika.opao' doesn't exist
MariaDB [upisi_polaznika]> select * from kraj;
+----+-----------+-----------+
| id | status    | opao      |
+----+-----------+-----------+
|  1 | taj gotov | opao bome |
+----+-----------+-----------+
1 row in set (0.00 sec)

MariaDB [upisi_polaznika]> show tables;
+---------------------------+
| Tables_in_upisi_polaznika |
+---------------------------+
| kolegij                   |
| kraj                      |
| polaznici                 |
| tecajevi                  |
+---------------------------+
4 rows in set (0.00 sec)

MariaDB [upisi_polaznika]> select * from polaznici left join  kolegij;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 1
MariaDB [upisi_polaznika]> select * from polaznici left join  kolegij on polaznici.id=
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 1
MariaDB [upisi_polaznika]> select 20+30;
+-------+
| 20+30 |
+-------+
|    50 |
+-------+
1 row in set (0.00 sec)

MariaDB [upisi_polaznika]> create table greska;
ERROR 1113 (42000): A table must have at least 1 column
MariaDB [upisi_polaznika]> create table greska(
    -> sifra INT(11) NOT Null
    -> ime CHAR(11) NOT NULL,
    -> PRIMARY KEY (SIFRA));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'CHAR(11) NOT NULL,
PRIMARY KEY (SIFRA))' at line 3
MariaDB [upisi_polaznika]> create table greska(
    -> sifra INT(11) NOT Null
    ->
    -> sifra INT(11) NOT Null
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'INT(11) NOT Null' at line 4
MariaDB [upisi_polaznika]> create table greska(
    -> sifra INT(11) NOT Null,
    -> ime CHAR(11) NOT NULL,
    -> PRIMARY KEY (sifra));
Query OK, 0 rows affected (0.04 sec)

MariaDB [upisi_polaznika]> show tables;
+---------------------------+
| Tables_in_upisi_polaznika |
+---------------------------+
| greska                    |
| kolegij                   |
| kraj                      |
| polaznici                 |
| tecajevi                  |
+---------------------------+
5 rows in set (0.00 sec)

MariaDB [upisi_polaznika]> insert into greska values (1,'Charlie');
Query OK, 1 row affected (0.01 sec)

MariaDB [upisi_polaznika]> explain greska;
+-------+----------+------+-----+---------+-------+
| Field | Type     | Null | Key | Default | Extra |
+-------+----------+------+-----+---------+-------+
| sifra | int(11)  | NO   | PRI | NULL    |       |
| ime   | char(11) | NO   |     | NULL    |       |
+-------+----------+------+-----+---------+-------+
2 rows in set (0.01 sec)

MariaDB [upisi_polaznika]> select * from greska;
+-------+---------+
| sifra | ime     |
+-------+---------+
|     1 | Charlie |
+-------+---------+
1 row in set (0.00 sec)

MariaDB [upisi_polaznika]> update greska SET ime = 'Karlo' WHERE sifra = 1;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [upisi_polaznika]> explain greska;
+-------+----------+------+-----+---------+-------+
| Field | Type     | Null | Key | Default | Extra |
+-------+----------+------+-----+---------+-------+
| sifra | int(11)  | NO   | PRI | NULL    |       |
| ime   | char(11) | NO   |     | NULL    |       |
+-------+----------+------+-----+---------+-------+
2 rows in set (0.01 sec)

MariaDB [upisi_polaznika]> select * FROM greska;
+-------+-------+
| sifra | ime   |
+-------+-------+
|     1 | Karlo |
+-------+-------+
1 row in set (0.00 sec)

MariaDB [upisi_polaznika]> show tables;
+---------------------------+
| Tables_in_upisi_polaznika |
+---------------------------+
| greska                    |
| kolegij                   |
| kraj                      |
| polaznici                 |
| tecajevi                  |
+---------------------------+
5 rows in set (0.00 sec)

MariaDB [upisi_polaznika]> create table josjedna(
    -> id INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    -> ime CHAR(23) NOT NULL);
Query OK, 0 rows affected (0.04 sec)

MariaDB [upisi_polaznika]> explain table jos jedna;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'table jos jedna' at line 1
MariaDB [upisi_polaznika]> explain table josjedna;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'table josjedna' at line 1
MariaDB [upisi_polaznika]> explain josjedna;
+-------+----------+------+-----+---------+----------------+
| Field | Type     | Null | Key | Default | Extra          |
+-------+----------+------+-----+---------+----------------+
| id    | int(11)  | NO   | PRI | NULL    | auto_increment |
| ime   | char(23) | NO   |     | NULL    |                |
+-------+----------+------+-----+---------+----------------+
2 rows in set (0.01 sec)

MariaDB [upisi_polaznika]> insert into josjedna (1,'ivan');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '1,'ivan')' at line 1
MariaDB [upisi_polaznika]> insert into josjedna VALUES (1,'ivan');
Query OK, 1 row affected (0.01 sec)

MariaDB [upisi_polaznika]> insert into josjedna VALUES (2,'JOVAN');
Query OK, 1 row affected (0.01 sec)

MariaDB [upisi_polaznika]> EXPLAIN JOSJEDNA;
+-------+----------+------+-----+---------+----------------+
| Field | Type     | Null | Key | Default | Extra          |
+-------+----------+------+-----+---------+----------------+
| id    | int(11)  | NO   | PRI | NULL    | auto_increment |
| ime   | char(23) | NO   |     | NULL    |                |
+-------+----------+------+-----+---------+----------------+
2 rows in set (0.01 sec)

MariaDB [upisi_polaznika]> SELECT * from josjedna;
+----+-------+
| id | ime   |
+----+-------+
|  1 | ivan  |
|  2 | JOVAN |
+----+-------+
2 rows in set (0.00 sec)

MariaDB [upisi_polaznika]> delete josjedna WHERE ID = 2;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'WHERE ID = 2' at line 1
MariaDB [upisi_polaznika]> delete WHERE ID = 2;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'WHERE ID = 2' at line 1
MariaDB [upisi_polaznika]> DELETE from josjedna WHERE id = 2;
Query OK, 1 row affected (0.01 sec)

MariaDB [upisi_polaznika]> select * from josjedna;
+----+------+
| id | ime  |
+----+------+
|  1 | ivan |
+----+------+
1 row in set (0.00 sec)

MariaDB [upisi_polaznika]> insert into josjedna values (2,'Jovan');
Query OK, 1 row affected (0.01 sec)

MariaDB [upisi_polaznika]> select * from josjedna where id = 2;
+----+-------+
| id | ime   |
+----+-------+
|  2 | Jovan |
+----+-------+
1 row in set (0.00 sec)

MariaDB [upisi_polaznika]> update josjedna WHERE ime= 'Kreso' id = 2;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'WHERE ime= 'Kreso' id = 2' at line 1
MariaDB [upisi_polaznika]> update josjedna SET ime= 'Kreso' id = 2;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'id = 2' at line 1
MariaDB [upisi_polaznika]> update josjedna SET ime= 'Kreso' WHERE id = 2;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [upisi_polaznika]> select * from josjedna;
+----+-------+
| id | ime   |
+----+-------+
|  1 | ivan  |
|  2 | Kreso |
+----+-------+
2 rows in set (0.00 sec)

MariaDB [upisi_polaznika]> create database Zaposlenici;
Query OK, 1 row affected (0.00 sec)

MariaDB [upisi_polaznika]> use Zaposlenici;
Database changed
MariaDB [Zaposlenici]> create table Odjeli(
    -> sifra_odjela CHAR(10) NOT NULL,
    -> naziv_odjela VARCHAR(50) NOT NULL,
    -> lokacija odjela VARCHAR(60) NOT NULL;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'odjela VARCHAR(60) NOT NULL' at line 4
MariaDB [Zaposlenici]> create table Odjeli(
    -> sifra_odjela CHAR(10) NOT NULL,
    -> naziv_odjela VARCHAR(50) NOT NULL,
    -> lokacija odjela VARCHAR(60) NOT NULL,
    -> PRIMARY KEY (sifra_odjela))
    -> ENGINE=InnoDB;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'odjela VARCHAR(60) NOT NULL,
PRIMARY KEY (sifra_odjela))
ENGINE=InnoDB' at line 4
MariaDB [Zaposlenici]> create table Odjeli(
    -> sifra_odjela CHAR(10) NOT NULL,
    -> naziv_odjela VARCHAR(50) NOT NULL,
    -> lokacija_odjela VARCHAR(60) NOT NULL,
    -> PRIMARY KEY (sifra_odjela))
    -> ENGINE=InnoDB;
Query OK, 0 rows affected (0.03 sec)

MariaDB [Zaposlenici]> explain odjeli;
+-----------------+-------------+------+-----+---------+-------+
| Field           | Type        | Null | Key | Default | Extra |
+-----------------+-------------+------+-----+---------+-------+
| sifra_odjela    | char(10)    | NO   | PRI | NULL    |       |
| naziv_odjela    | varchar(50) | NO   |     | NULL    |       |
| lokacija_odjela | varchar(60) | NO   |     | NULL    |       |
+-----------------+-------------+------+-----+---------+-------+
3 rows in set (0.01 sec)

MariaDB [Zaposlenici]> create table Zaposleniv
    -> ;
ERROR 1113 (42000): A table must have at least 1 column
MariaDB [Zaposlenici]> create table Zaposlenici(
    -> sifra_zaposlenika bigint (20) NOT NULL PRIMARY KEY,
    -> Ime VARCHAR(50) NOT NULL,
    -> Prezime VARCHAR(50) NOT NULL,
    -> sifra_odjela CHAR(10) NOT NULL,
    -> KEY Sifra_odjela (sifra_odjela))
    -> ENGINE=InnoDB;
Query OK, 0 rows affected (0.04 sec)

MariaDB [Zaposlenici]> ALTER TABLE Zaposlenici
    -> ADD CONSTRAINT Zaposlenici _ibfk_1
    -> FOREIGN KEY (sifra_odjela)
    -> REFERENCES Odjeli (sifra_odjela);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '_ibfk_1
FOREIGN KEY (sifra_odjela)
REFERENCES Odjeli (sifra_odjela)' at line 2
MariaDB [Zaposlenici]> ADD CONSTRAINT Zaposlenici
    -> FOREIGN KEY (sifra_odjela)
    -> REFERENCES Odjeli (sifra_odjela);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'ADD CONSTRAINT Zaposlenici
FOREIGN KEY (sifra_odjela)
REFERENCES Odjeli (sifra_o' at line 1
MariaDB [Zaposlenici]> select * from zaposlenici;
Empty set (0.00 sec)

MariaDB [Zaposlenici]> explain Zaposlenici;
+-------------------+-------------+------+-----+---------+-------+
| Field             | Type        | Null | Key | Default | Extra |
+-------------------+-------------+------+-----+---------+-------+
| sifra_zaposlenika | bigint(20)  | NO   | PRI | NULL    |       |
| Ime               | varchar(50) | NO   |     | NULL    |       |
| Prezime           | varchar(50) | NO   |     | NULL    |       |
| sifra_odjela      | char(10)    | NO   | MUL | NULL    |       |
+-------------------+-------------+------+-----+---------+-------+
4 rows in set (0.01 sec)

MariaDB [Zaposlenici]> Insert into zaposlenici VALUES (1,'IVAN','vranjes','OD69');
Query OK, 1 row affected (0.00 sec)

MariaDB [Zaposlenici]> explain zaposlenici;
+-------------------+-------------+------+-----+---------+-------+
| Field             | Type        | Null | Key | Default | Extra |
+-------------------+-------------+------+-----+---------+-------+
| sifra_zaposlenika | bigint(20)  | NO   | PRI | NULL    |       |
| Ime               | varchar(50) | NO   |     | NULL    |       |
| Prezime           | varchar(50) | NO   |     | NULL    |       |
| sifra_odjela      | char(10)    | NO   | MUL | NULL    |       |
+-------------------+-------------+------+-----+---------+-------+
4 rows in set (0.01 sec)

MariaDB [Zaposlenici]> select * from zaposlenici;
+-------------------+------+---------+--------------+
| sifra_zaposlenika | Ime  | Prezime | sifra_odjela |
+-------------------+------+---------+--------------+
|                 1 | IVAN | vranjes | OD69         |
+-------------------+------+---------+--------------+
1 row in set (0.00 sec)

MariaDB [Zaposlenici]> Insert into zaposlenici VALUES (1,'IVANo','kekez','OD69');
ERROR 1062 (23000): Duplicate entry '1' for key 'PRIMARY'
MariaDB [Zaposlenici]> Insert into zaposlenici VALUES (2,'IVANo','kekez','OD69');
Query OK, 1 row affected (0.01 sec)

MariaDB [Zaposlenici]> select * from zaposlenici;
+-------------------+-------+---------+--------------+
| sifra_zaposlenika | Ime   | Prezime | sifra_odjela |
+-------------------+-------+---------+--------------+
|                 1 | IVAN  | vranjes | OD69         |
|                 2 | IVANo | kekez   | OD69         |
+-------------------+-------+---------+--------------+
2 rows in set (0.00 sec)

MariaDB [Zaposlenici]> select * from zaposnici where ime = 'IVAN';
ERROR 1146 (42S02): Table 'zaposlenici.zaposnici' doesn't exist
MariaDB [Zaposlenici]> select * from zaposlenici where ime = 'IVAN';
+-------------------+------+---------+--------------+
| sifra_zaposlenika | Ime  | Prezime | sifra_odjela |
+-------------------+------+---------+--------------+
|                 1 | IVAN | vranjes | OD69         |
+-------------------+------+---------+--------------+
1 row in set (0.00 sec)

MariaDB [Zaposlenici]> delete from zaposlenici where ime = 'Ivan';
Query OK, 1 row affected (0.01 sec)

MariaDB [Zaposlenici]> select * from zaposlenici;
+-------------------+-------+---------+--------------+
| sifra_zaposlenika | Ime   | Prezime | sifra_odjela |
+-------------------+-------+---------+--------------+
|                 2 | IVANo | kekez   | OD69         |
+-------------------+-------+---------+--------------+
1 row in set (0.00 sec)

MariaDB [Zaposlenici]> select * from Zaposlenici;
+-------------------+-------+---------+--------------+
| sifra_zaposlenika | Ime   | Prezime | sifra_odjela |
+-------------------+-------+---------+--------------+
|                 2 | IVANo | kekez   | OD69         |
+-------------------+-------+---------+--------------+
1 row in set (0.00 sec)

MariaDB [Zaposlenici]> insert into zaposlenici values (1,'Danijela','Bljaic','RI69');
Query OK, 1 row affected (0.01 sec)

MariaDB [Zaposlenici]> select * from Zaposlenici;
+-------------------+----------+---------+--------------+
| sifra_zaposlenika | Ime      | Prezime | sifra_odjela |
+-------------------+----------+---------+--------------+
|                 1 | Danijela | Bljaic  | RI69         |
|                 2 | IVANo    | kekez   | OD69         |
+-------------------+----------+---------+--------------+
2 rows in set (0.00 sec)

