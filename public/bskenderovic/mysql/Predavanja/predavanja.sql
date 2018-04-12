Microsoft Windows [Version 10.0.16299.309]
(c) 2017 Microsoft Corporation. All rights reserved.

C:\Users\Bela>cd C:\xampp\mysql\bin

C:\xampp\mysql\bin>mysql -u root -p
Enter password:
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 3
Server version: 10.1.30-MariaDB mariadb.org binary distribution

Copyright (c) 2000, 2017, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| phpmyadmin         |
| test               |
+--------------------+
5 rows in set (0.29 sec)

MariaDB [(none)]> create database php2018
    -> ;
Query OK, 1 row affected (0.29 sec)

MariaDB [(none)]> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| php2018            |
| phpmyadmin         |
| test               |
+--------------------+
6 rows in set (0.00 sec)

MariaDB [(none)]> use php2018;
Database changed
MariaDB [php2018]> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| php2018            |
| phpmyadmin         |
| test               |
+--------------------+
6 rows in set (0.00 sec)

MariaDB [php2018]> show tables;
Empty set (0.00 sec)

MariaDB [php2018]> create table locations(
    -> id INT(11) NOT NULL PRIMARY KEYAUTO_INCREMENT,
    -> name VARCHAR(45) NOT NULL);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'KEYAUTO_INCREMENT,
name VARCHAR(45) NOT NULL)' at line 2
MariaDB [php2018]> create table locations(
    -> id INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    -> name VARCHAR(45) NOT NULL);
Query OK, 0 rows affected (0.30 sec)

MariaDB [php2018]> explain locations
    -> ;
+-------+-------------+------+-----+---------+----------------+
| Field | Type        | Null | Key | Default | Extra          |
+-------+-------------+------+-----+---------+----------------+
| id    | int(11)     | NO   | PRI | NULL    | auto_increment |
| name  | varchar(45) | NO   |     | NULL    |                |
+-------+-------------+------+-----+---------+----------------+
2 rows in set (0.11 sec)

MariaDB [php2018]> describe locations;
+-------+-------------+------+-----+---------+----------------+
| Field | Type        | Null | Key | Default | Extra          |
+-------+-------------+------+-----+---------+----------------+
| id    | int(11)     | NO   | PRI | NULL    | auto_increment |
| name  | varchar(45) | NO   |     | NULL    |                |
+-------+-------------+------+-----+---------+----------------+
2 rows in set (0.01 sec)

MariaDB [php2018]> INSERT INTO locations (name) VALUES ('Osijek');
Query OK, 1 row affected (0.35 sec)

MariaDB [php2018]> INSERT INTO locations (name) VALUES ('Cepin');
Query OK, 1 row affected (0.05 sec)

MariaDB [php2018]> INSERT INTO locations (name) VALUES ('Martinci');
Query OK, 1 row affected (0.05 sec)

MariaDB [php2018]> INSERT INTO locations (name) VALUES ('Čamagajevci');
Query OK, 1 row affected, 1 warning (0.06 sec)

MariaDB [php2018]> INSERT INTO locations (name) VALUES ('Beli Manastir');
Query OK, 1 row affected (0.06 sec)

MariaDB [php2018]> SELECT * FROM locations;
+----+---------------+
| id | name          |
+----+---------------+
|  1 | Osijek        |
|  2 | Cepin         |
|  3 | Martinci      |
|  4 | ?amagajevci   |
|  5 | Beli Manastir |
+----+---------------+
5 rows in set (0.00 sec)

MariaDB [php2018]> SELECT * FROM locations WHER locations.id > 2;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'locations.id > 2' at line 1
MariaDB [php2018]> SELECT * FROM locations WHERE locations.id > 2;
+----+---------------+
| id | name          |
+----+---------------+
|  3 | Martinci      |
|  4 | ?amagajevci   |
|  5 | Beli Manastir |
+----+---------------+
3 rows in set (0.05 sec)

MariaDB [php2018]> SELECT * FROM locations WHERE locations.id = 2;
+----+-------+
| id | name  |
+----+-------+
|  2 | Cepin |
+----+-------+
1 row in set (0.00 sec)

MariaDB [php2018]> SELECT * FROM locations WHERE locations.id = 2;
+----+-------+
| id | name  |
+----+-------+
|  2 | Cepin |
+----+-------+
1 row in set (0.00 sec)

MariaDB [php2018]> SELECT * FROM locations WHERE locations.id > 2;
+----+---------------+
| id | name          |
+----+---------------+
|  3 | Martinci      |
|  4 | ?amagajevci   |
|  5 | Beli Manastir |
+----+---------------+
3 rows in set (0.00 sec)

MariaDB [php2018]> SELECT * FROM locations WHERE locations.id > 2;
ERROR 2006 (HY000): MySQL server has gone away
No connection. Trying to reconnect...
Connection id:    2
Current database: php2018

+----+---------------+
| id | name          |
+----+---------------+
|  3 | Martinci      |
|  4 | ?amagajevci   |
|  5 | Beli Manastir |
+----+---------------+
3 rows in set (0.06 sec)

MariaDB [php2018]> SELECT * FROM locations WHERE locations.id > 2;
+----+---------------+
| id | name          |
+----+---------------+
|  3 | Martinci      |
|  4 | ?amagajevci   |
|  5 | Beli Manastir |
+----+---------------+
3 rows in set (0.00 sec)

MariaDB [php2018]> INSERT INTO locations (name) VALUES ('Šumarina');
Query OK, 1 row affected (0.07 sec)

MariaDB [php2018]> SELECT * FROM locations WHERE locations.id > 2;
+----+---------------+
| id | name          |
+----+---------------+
|  3 | Martinci      |
|  4 | ?amagajevci   |
|  5 | Beli Manastir |
|  6 | Šumarina      |
+----+---------------+
4 rows in set (0.00 sec)

MariaDB [php2018]> ALTER TABLE locations CONVERT TO CHARACTER SET utf8;
Query OK, 6 rows affected (0.87 sec)
Records: 6  Duplicates: 0  Warnings: 0

MariaDB [php2018]> SELECT * FROM locations;
+----+---------------+
| id | name          |
+----+---------------+
|  1 | Osijek        |
|  2 | Cepin         |
|  3 | Martinci      |
|  4 | ?amagajevci   |
|  5 | Beli Manastir |
|  6 | Šumarina      |
+----+---------------+
6 rows in set (0.00 sec)

MariaDB [php2018]> DELETE FROM locations WHERE locations.id = 4;
Query OK, 1 row affected (0.07 sec)

MariaDB [php2018]> SELECT * FROM locations;
+----+---------------+
| id | name          |
+----+---------------+
|  1 | Osijek        |
|  2 | Cepin         |
|  3 | Martinci      |
|  5 | Beli Manastir |
|  6 | Šumarina      |
+----+---------------+
5 rows in set (0.00 sec)

MariaDB [php2018]> INSERT INTO locations (name) VALUES ('Chamagajevci');
Query OK, 1 row affected (0.04 sec)

MariaDB [php2018]> UPDATE TABLE locations SET name ='Čamagajevci' WHERE name LIKE 'C%';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'TABLE locations SET name ='Čamagajevci' WHERE name LIKE 'C%'' at line 1
MariaDB [php2018]> SELECT * FROM locations;
+----+---------------+
| id | name          |
+----+---------------+
|  1 | Osijek        |
|  2 | Cepin         |
|  3 | Martinci      |
|  5 | Beli Manastir |
|  6 | Šumarina      |
|  7 | Chamagajevci  |
+----+---------------+
6 rows in set (0.00 sec)

MariaDB [php2018]> UPDATE locations SET name ='Čamagajevci' WHERE name LIKE 'C%';
Query OK, 2 rows affected (0.11 sec)
Rows matched: 2  Changed: 2  Warnings: 0

MariaDB [php2018]> SELECT * FROM locations;
+----+---------------+
| id | name          |
+----+---------------+
|  1 | Osijek        |
|  2 | Čamagajevci   |
|  3 | Martinci      |
|  5 | Beli Manastir |
|  6 | Šumarina      |
|  7 | Čamagajevci   |
+----+---------------+
6 rows in set (0.00 sec)

MariaDB [php2018]> UPDATE TABLE locations SET name ='Chamagajevci' WHERE id = 2;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'TABLE locations SET name ='Chamagajevci' WHERE id = 2' at line 1
MariaDB [php2018]> UPDATE TABLE locations SET name ='Chamagajevci' WHERE id=2;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'TABLE locations SET name ='Chamagajevci' WHERE id=2' at line 1
MariaDB [php2018]> UPDATE TABLE locations SET name = 'Chamagajevci' WHERE id=2;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'TABLE locations SET name = 'Chamagajevci' WHERE id=2' at line 1
MariaDB [php2018]> UPDATE TABLE locations SET name = 'Chamagajevci' WHERE id=2;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'TABLE locations SET name = 'Chamagajevci' WHERE id=2' at line 1
MariaDB [php2018]> UPDATE locations SET name = 'Chamagajevci' WHERE id=2;
Query OK, 1 row affected (0.09 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [php2018]> SELECT * FROM locations;
+----+---------------+
| id | name          |
+----+---------------+
|  1 | Osijek        |
|  2 | Chamagajevci  |
|  3 | Martinci      |
|  5 | Beli Manastir |
|  6 | Šumarina      |
|  7 | Čamagajevci   |
+----+---------------+
6 rows in set (0.00 sec)

MariaDB [php2018]> UPDATE locations SET name ='Čepin' WHERE id=2;
Query OK, 1 row affected (0.06 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [php2018]> SELECT * FROM locations;
+----+---------------+
| id | name          |
+----+---------------+
|  1 | Osijek        |
|  2 | Čepin         |
|  3 | Martinci      |
|  5 | Beli Manastir |
|  6 | Šumarina      |
|  7 | Čamagajevci   |
+----+---------------+
6 rows in set (0.00 sec)

MariaDB [php2018]> ALTER TABLE locations CONVERT TO CHARACTER SET utf8 COLLATE utf8_bin;
Query OK, 6 rows affected (0.49 sec)
Records: 6  Duplicates: 0  Warnings: 0

MariaDB [php2018]> create teable sensors(
    -> id INT(11) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    -> location_id INT(11) NOT NULL,
    -> name VARCHAR(45),
    -> units VARCHAR(45),
    -> INDEX loc_id(location_id),
    -> FOREIGN KEY fk_locations(location_id) REFERENCES locations(id)
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'teable sensors(
id INT(11) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
locatio' at line 1
MariaDB [php2018]> create teable sensors(
    -> id INT(11) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    -> name VARCHAR(45),
    -> units VARCHAR(45),
    -> INDEX loc_id(location_id),
    -> FOREIGN KEY fk_locations(location_id) REFERENCES locations(id)
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'teable sensors(
id INT(11) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
name VA' at line 1
MariaDB [php2018]> create table sensors(
    -> id INT(11) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    -> name VARCHAR(45),
    -> units VARCHAR(45),
    -> INDEX loc_id(location_id),
    -> FOREIGN KEY fk_locations(location_id) REFERENCES locations(id)
    -> );
ERROR 1072 (42000): Key column 'location_id' doesn't exist in table
MariaDB [php2018]> create table sensors(
    -> id INT(11) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    -> location_id INT(11) NOT NULL,
    -> name VARCHAR(45),
    -> units VARCHAR(45),
    -> INDEX loc_id(location_id),
    -> FOREIGN KEY fk_locations(location_id) REFERENCES locations(id)
    -> );
Query OK, 0 rows affected (0.44 sec)

MariaDB [php2018]> INSERT INTO sensors(location_id,name,units) VALUES (3,'temperatura 2','C');
Query OK, 1 row affected (0.34 sec)

MariaDB [php2018]> INSERT INTO sensors(location_id,name,units) VALUES (1,'temperatura 1','C');
Query OK, 1 row affected (0.05 sec)

MariaDB [php2018]> INSERT INTO sensors(location_id,name,units) VALUES (5,'temperatura 1','C');
Query OK, 1 row affected (0.06 sec)

MariaDB [php2018]> SELECT * FROM sensors;
+----+-------------+---------------+-------+
| id | location_id | name          | units |
+----+-------------+---------------+-------+
|  1 |           3 | temperatura 2 | C     |
|  2 |           1 | temperatura 1 | C     |
|  3 |           5 | temperatura 1 | C     |
+----+-------------+---------------+-------+
3 rows in set (0.00 sec)

MariaDB [php2018]> SELECT * FROM locations, sensors
    -> ;
+----+---------------+----+-------------+---------------+-------+
| id | name          | id | location_id | name          | units |
+----+---------------+----+-------------+---------------+-------+
|  1 | Osijek        |  1 |           3 | temperatura 2 | C     |
|  1 | Osijek        |  2 |           1 | temperatura 1 | C     |
|  1 | Osijek        |  3 |           5 | temperatura 1 | C     |
|  2 | Čepin         |  1 |           3 | temperatura 2 | C     |
|  2 | Čepin         |  2 |           1 | temperatura 1 | C     |
|  2 | Čepin         |  3 |           5 | temperatura 1 | C     |
|  3 | Martinci      |  1 |           3 | temperatura 2 | C     |
|  3 | Martinci      |  2 |           1 | temperatura 1 | C     |
|  3 | Martinci      |  3 |           5 | temperatura 1 | C     |
|  5 | Beli Manastir |  1 |           3 | temperatura 2 | C     |
|  5 | Beli Manastir |  2 |           1 | temperatura 1 | C     |
|  5 | Beli Manastir |  3 |           5 | temperatura 1 | C     |
|  6 | Šumarina      |  1 |           3 | temperatura 2 | C     |
|  6 | Šumarina      |  2 |           1 | temperatura 1 | C     |
|  6 | Šumarina      |  3 |           5 | temperatura 1 | C     |
|  7 | Čamagajevci   |  1 |           3 | temperatura 2 | C     |
|  7 | Čamagajevci   |  2 |           1 | temperatura 1 | C     |
|  7 | Čamagajevci   |  3 |           5 | temperatura 1 | C     |
+----+---------------+----+-------------+---------------+-------+
18 rows in set (0.04 sec)

MariaDB [php2018]> SELECT * FROM locations INNER JOIN sensors ON location.id=sensors.location.id;
ERROR 1054 (42S22): Unknown column 'location.id' in 'on clause'
MariaDB [php2018]> SELECT * FROM locations INNER JOIN sensors ON locations.id=sensors.location.id;
ERROR 1054 (42S22): Unknown column 'sensors.location.id' in 'on clause'
MariaDB [php2018]> SELECT * FROM locations INNER JOIN sensors ON locations.id=sensors.location_id;
+----+---------------+----+-------------+---------------+-------+
| id | name          | id | location_id | name          | units |
+----+---------------+----+-------------+---------------+-------+
|  3 | Martinci      |  1 |           3 | temperatura 2 | C     |
|  1 | Osijek        |  2 |           1 | temperatura 1 | C     |
|  5 | Beli Manastir |  3 |           5 | temperatura 1 | C     |
+----+---------------+----+-------------+---------------+-------+
3 rows in set (0.00 sec)

MariaDB [php2018]> SELECT * FROM locations LEFT JOIN sensors ON locations.id=sensors.location_id;
+----+---------------+------+-------------+---------------+-------+
| id | name          | id   | location_id | name          | units |
+----+---------------+------+-------------+---------------+-------+
|  3 | Martinci      |    1 |           3 | temperatura 2 | C     |
|  1 | Osijek        |    2 |           1 | temperatura 1 | C     |
|  5 | Beli Manastir |    3 |           5 | temperatura 1 | C     |
|  2 | Čepin         | NULL |        NULL | NULL          | NULL  |
|  6 | Šumarina      | NULL |        NULL | NULL          | NULL  |
|  7 | Čamagajevci   | NULL |        NULL | NULL          | NULL  |
+----+---------------+------+-------------+---------------+-------+
6 rows in set (0.00 sec)

MariaDB [php2018]> SELECT * FROM sensors LEFT JOIN locations ON locations.id=sensors.location_id;
+----+-------------+---------------+-------+------+---------------+
| id | location_id | name          | units | id   | name          |
+----+-------------+---------------+-------+------+---------------+
|  1 |           3 | temperatura 2 | C     |    3 | Martinci      |
|  2 |           1 | temperatura 1 | C     |    1 | Osijek        |
|  3 |           5 | temperatura 1 | C     |    5 | Beli Manastir |
+----+-------------+---------------+-------+------+---------------+
3 rows in set (0.00 sec)

MariaDB [php2018]> exit
Bye

C:\xampp\mysql\bin>mysql -u root -p
Enter password:
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 3
Server version: 10.1.30-MariaDB mariadb.org binary distribution

Copyright (c) 2000, 2017, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> mysql -u root -p
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'mysql -u root -p' at line 1
MariaDB [(none)]> exit
Bye

C:\xampp\mysql\bin>mysql -u root -p database_name < "C:\Users\Bela\Desktop\mysql"
Access is denied.

C:\xampp\mysql\bin>mysql -u root -p datasens < "C:\Users\Bela\Desktop\mysql\php2018.sql"
Enter password:
ERROR 1049 (42000): Unknown database 'datasens'

C:\xampp\mysql\bin>mysql -u root -p
Enter password:
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 5
Server version: 10.1.30-MariaDB mariadb.org binary distribution

Copyright (c) 2000, 2017, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> create database datasens;
Query OK, 1 row affected (0.08 sec)

MariaDB [(none)]> exit
Bye

C:\xampp\mysql\bin>mysql -u root -p datasens < "C:\Users\Bela\Desktop\mysql\php2018.sql"
Enter password:

C:\xampp\mysql\bin>show database
'show' is not recognized as an internal or external command,
operable program or batch file.

C:\xampp\mysql\bin>mysql -u root -p
Enter password:
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 7
Server version: 10.1.30-MariaDB mariadb.org binary distribution

Copyright (c) 2000, 2017, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> show database
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'database' at line 1
MariaDB [(none)]> show databases;
+--------------------+
| Database           |
+--------------------+
| datasens           |
| information_schema |
| mysql              |
| performance_schema |
| php2018            |
| phpmyadmin         |
| test               |
+--------------------+
7 rows in set (0.06 sec)

MariaDB [(none)]> use datasensž
ERROR 1049 (42000): Unknown database 'datasensž'
MariaDB [(none)]> use datasens;
Database changed
MariaDB [datasens]> show tables;
Empty set (0.00 sec)

MariaDB [datasens]> exit
Bye

C:\xampp\mysql\bin>mysql -u root -p datasens < "C:\Users\Bela\Desktop\mysql\php2018.sql"
Enter password:

C:\xampp\mysql\bin>mysql -u root -p
Enter password:
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 9
Server version: 10.1.30-MariaDB mariadb.org binary distribution

Copyright (c) 2000, 2017, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> use datasens;
Database changed
MariaDB [datasens]> show tables;
Empty set (0.00 sec)

MariaDB [datasens]> show tables;
Empty set (0.00 sec)

MariaDB [datasens]> show tables;
Empty set (0.00 sec)

MariaDB [datasens]> exit
Bye

C:\xampp\mysql\bin>mysql -u root -p datasens < "C:\Users\Bela\Desktop\mysql\php2018.sql"
Enter password:

C:\xampp\mysql\bin>mysql -u root -p
Enter password:
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 11
Server version: 10.1.30-MariaDB mariadb.org binary distribution

Copyright (c) 2000, 2017, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> use phpdev2018;
ERROR 1049 (42000): Unknown database 'phpdev2018'
MariaDB [(none)]> show databases;
+--------------------+
| Database           |
+--------------------+
| datasens           |
| information_schema |
| mysql              |
| performance_schema |
| php2018            |
| phpmyadmin         |
| test               |
+--------------------+
7 rows in set (0.00 sec)

MariaDB [(none)]> use datasens;
Database changed
MariaDB [datasens]> show databases;
+--------------------+
| Database           |
+--------------------+
| datasens           |
| information_schema |
| mysql              |
| performance_schema |
| php2018            |
| phpmyadmin         |
| test               |
+--------------------+
7 rows in set (0.00 sec)

MariaDB [datasens]> show tables;
+--------------------+
| Tables_in_datasens |
+--------------------+
| locations          |
| sensors            |
+--------------------+
2 rows in set (0.00 sec)

MariaDB [datasens]> use phpdev2018;
ERROR 1049 (42000): Unknown database 'phpdev2018'
MariaDB [datasens]> show databases;
+--------------------+
| Database           |
+--------------------+
| datasens           |
| information_schema |
| mysql              |
| performance_schema |
| php2018            |
| phpmyadmin         |
| test               |
+--------------------+
7 rows in set (0.00 sec)

MariaDB [datasens]>
MariaDB [datasens]> use php2018;
Database changed
MariaDB [php2018]> show tables;
+-------------------+
| Tables_in_php2018 |
+-------------------+
| locations         |
| sensors           |
+-------------------+
2 rows in set (0.00 sec)

MariaDB [php2018]> SELECT * FROM sensors;
+----+-------------+---------------+-------+
| id | location_id | name          | units |
+----+-------------+---------------+-------+
|  2 |           3 | temperatura 1 | °C    |
|  3 |           3 | temperatura 2 | °C    |
|  4 |           1 | temperatura 1 | °C    |
|  5 |           5 | temperatura 1 | °C    |
+----+-------------+---------------+-------+
4 rows in set (0.01 sec)

MariaDB [php2018]> create table sensors(
    -> erghergaergAErg;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 2
MariaDB [php2018]> create table readings(
    -> id INT(11) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    -> sensors_id INT(11) UNSIGNED NOT NULL,
    -> timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    -> value FLOAT,
    -> INDEX sens_id(sensors_id),
    -> FOREIGN KEY fk_sensors(sensors_id) REFERENCES sensorss(id)
    -> );
ERROR 1005 (HY000): Can't create table `php2018`.`readings` (errno: 150 "Foreign key constraint is incorrectly formed")
MariaDB [php2018]> create table readings(
    -> id INT(11) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    -> sensors_id INT(11) UNSIGNED NOT NULL,
    -> timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    -> value FLOAT,
    -> INDEX sens_id(sensors_id),
    -> FOREIGN KEY fk_sensors(sensors_id) REFERENCES sensors(id)
    -> );
Query OK, 0 rows affected (0.47 sec)

MariaDB [php2018]> show tables
    -> ;
+-------------------+
| Tables_in_php2018 |
+-------------------+
| locations         |
| readings          |
| sensors           |
+-------------------+
3 rows in set (0.00 sec)

MariaDB [php2018]> explain readings;
+------------+------------------+------+-----+-------------------+----------------+
| Field      | Type             | Null | Key | Default           | Extra          |
+------------+------------------+------+-----+-------------------+----------------+
| id         | int(11) unsigned | NO   | PRI | NULL              | auto_increment |
| sensors_id | int(11) unsigned | NO   | MUL | NULL              |                |
| timestamp  | timestamp        | NO   |     | CURRENT_TIMESTAMP |                |
| value      | float            | YES  |     | NULL              |                |
+------------+------------------+------+-----+-------------------+----------------+
4 rows in set (0.15 sec)

MariaDB [php2018]> DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP











dthdtfh
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'dthdtfh' at line 1
MariaDB [php2018]>
MariaDB [php2018]> create table alerts AS SELECT * FROM readings;
Query OK, 0 rows affected (0.46 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [php2018]> explain alerts
    -> ;
+------------+------------------+------+-----+-------------------+-------+
| Field      | Type             | Null | Key | Default           | Extra |
+------------+------------------+------+-----+-------------------+-------+
| id         | int(11) unsigned | NO   |     | 0                 |       |
| sensors_id | int(11) unsigned | NO   |     | NULL              |       |
| timestamp  | timestamp        | NO   |     | CURRENT_TIMESTAMP |       |
| value      | float            | YES  |     | NULL              |       |
+------------+------------------+------+-----+-------------------+-------+
4 rows in set (0.03 sec)

MariaDB [php2018]> alter table alerts modify column 'id' int(11) unsigned primary KEY AUTO_INCREMENT;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near ''id' int(11) unsigned primary KEY AUTO_INCREMENT' at line 1
MariaDB [php2018]> alter table alerts modify column ´id´ int(11) unsigned primary KEY AUTO_INCREMENT;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '´id´ int(11) unsigned primary KEY AUTO_INCREMENT' at line 1
MariaDB [php2018]> alter table alerts modify column `id` int(11) unsigned primary KEY AUTO_INCREMENT;
Query OK, 0 rows affected (0.64 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [php2018]> create INDEX sens_id ON alerts (sensors_id);
Query OK, 0 rows affected (0.22 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [php2018]> alter table alerts modify column 'id' int(11) unsigned primary KEY AUT
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near ''id' int(11) unsigned primary KEY AUT' at line 1
MariaDB [php2018]> exit
Bye

C:\xampp\mysql\bin>mysql -u root -p fakultet < "C:\Users\Bela\Desktop\mysql\fakultet.sql";
mysql  Ver 15.1 Distrib 10.1.30-MariaDB, for Win32 (AMD64)
Copyright (c) 2000, 2017, Oracle, MariaDB Corporation Ab and others.

Usage: mysql [OPTIONS] [database]

Default options are read from the following files in the given order:
C:\WINDOWS\my.ini C:\WINDOWS\my.cnf C:\my.ini C:\my.cnf C:\xampp\mysql\my.ini C:\xampp\mysql\my.cnf C:\xampp\mysql\data\my.ini C:\xampp\mysql\data\my.cnf
The following groups are read: mysql client client-server client-mariadb
The following options may be given as the first argument:
--print-defaults        Print the program argument list and exit.
--no-defaults           Don't read default options from any option file.
--defaults-file=#       Only read default options from the given file #.
--defaults-extra-file=# Read this file after the global files are read.

  -?, --help          Display this help and exit.
  -I, --help          Synonym for -?
  --abort-source-on-error
                      Abort 'source filename' operations in case of errors
  --auto-rehash       Enable automatic rehashing. One doesn't need to use
                      'rehash' to get table and field completion, but startup
                      and reconnecting may take a longer time. Disable with
                      --disable-auto-rehash.
                      (Defaults to on; use --skip-auto-rehash to disable.)
  -A, --no-auto-rehash
                      No automatic rehashing. One has to use 'rehash' to get
                      table and field completion. This gives a quicker start of
                      mysql and disables rehashing on reconnect.
  --auto-vertical-output
                      Automatically switch to vertical output mode if the
                      result is wider than the terminal width.
  -B, --batch         Don't use history file. Disable interactive behavior.
                      (Enables --silent.)
  -b, --binary-as-hex Print binary data as hex
  --character-sets-dir=name
                      Directory for character set files.
  --column-type-info  Display column type information.
  -c, --comments      Preserve comments. Send comments to the server. The
                      default is --skip-comments (discard comments), enable
                      with --comments.
  -C, --compress      Use compression in server/client protocol.
  -#, --debug[=#]     This is a non-debug version. Catch this and exit.
  --debug-check       Check memory and open file usage at exit.
  -T, --debug-info    Print some debug info at exit.
  -D, --database=name Database to use.
  --default-character-set=name
                      Set the default character set.
  --delimiter=name    Delimiter to be used.
  -e, --execute=name  Execute command and quit. (Disables --force and history
                      file.)
  -E, --vertical      Print the output of a query (rows) vertically.
  -f, --force         Continue even if we get an SQL error. Sets
                      abort-source-on-error to 0
  -G, --named-commands
                      Enable named commands. Named commands mean this program's
                      internal commands; see mysql> help . When enabled, the
                      named commands can be used from any line of the query,
                      otherwise only from the first line, before an enter.
                      Disable with --disable-named-commands. This option is
                      disabled by default.
  -i, --ignore-spaces Ignore space after function names.
  --init-command=name SQL Command to execute when connecting to MySQL server.
                      Will automatically be re-executed when reconnecting.
  --local-infile      Enable/disable LOAD DATA LOCAL INFILE.
  -b, --no-beep       Turn off beep on error.
  -h, --host=name     Connect to host.
  -H, --html          Produce HTML output.
  -X, --xml           Produce XML output.
  --line-numbers      Write line numbers for errors.
                      (Defaults to on; use --skip-line-numbers to disable.)
  -L, --skip-line-numbers
                      Don't write line number for errors.
  -n, --unbuffered    Flush buffer after each query.
  --column-names      Write column names in results.
                      (Defaults to on; use --skip-column-names to disable.)
  -N, --skip-column-names
                      Don't write column names in results.
  --sigint-ignore     Ignore SIGINT (CTRL-C).
  -o, --one-database  Ignore statements except those that occur while the
                      default database is the one named at the command line.
  -p, --password[=name]
                      Password to use when connecting to server. If password is
                      not given it's asked from the tty.
  -W, --pipe          Use named pipes to connect to server.
  -P, --port=#        Port number to use for connection or 0 for default to, in
                      order of preference, my.cnf, $MYSQL_TCP_PORT,
                      /etc/services, built-in default (3306).
  --progress-reports  Get progress reports for long running commands (like
                      ALTER TABLE)
                      (Defaults to on; use --skip-progress-reports to disable.)
  --prompt=name       Set the mysql prompt to this value.
  --protocol=name     The protocol to use for connection (tcp, socket, pipe,
                      memory).
  -q, --quick         Don't cache result, print it row by row. This may slow
                      down the server if the output is suspended. Doesn't use
                      history file.
  -r, --raw           Write fields without conversion. Used with --batch.
  --reconnect         Reconnect if the connection is lost. Disable with
                      --disable-reconnect. This option is enabled by default.
                      (Defaults to on; use --skip-reconnect to disable.)
  -s, --silent        Be more silent. Print results with a tab as separator,
                      each row on new line.
  --shared-memory-base-name=name
                      Base name of shared memory.
  -S, --socket=name   The socket file to use for connection.
  --ssl               Enable SSL for connection (automatically enabled with
                      other flags).
  --ssl-ca=name       CA file in PEM format (check OpenSSL docs, implies
                      --ssl).
  --ssl-capath=name   CA directory (check OpenSSL docs, implies --ssl).
  --ssl-cert=name     X509 cert in PEM format (implies --ssl).
  --ssl-cipher=name   SSL cipher to use (implies --ssl).
  --ssl-key=name      X509 key in PEM format (implies --ssl).
  --ssl-crl=name      Certificate revocation list (implies --ssl).
  --ssl-crlpath=name  Certificate revocation list path (implies --ssl).
  --ssl-verify-server-cert
                      Verify server's "Common Name" in its cert against
                      hostname used when connecting. This option is disabled by
                      default.
  -t, --table         Output in table format.
  --tee=name          Append everything into outfile. See interactive help (\h)
                      also. Does not work in batch mode. Disable with
                      --disable-tee. This option is disabled by default.
  -u, --user=name     User for login if not current user.
  -U, --safe-updates  Only allow UPDATE and DELETE that uses keys.
  -U, --i-am-a-dummy  Synonym for option --safe-updates, -U.
  -v, --verbose       Write more. (-v -v -v gives the table output format).
  -V, --version       Output version information and exit.
  -w, --wait          Wait and retry if connection is down.
  --connect-timeout=# Number of seconds before connection timeout.
  --max-allowed-packet=#
                      The maximum packet length to send to or receive from
                      server.
  --net-buffer-length=#
                      The buffer size for TCP/IP and socket communication.
  --select-limit=#    Automatic limit for SELECT when using --safe-updates.
  --max-join-size=#   Automatic limit for rows in a join when using
                      --safe-updates.
  --secure-auth       Refuse client connecting to server if it uses old
                      (pre-4.1.1) protocol.
  --server-arg=name   Send embedded server this as a parameter.
  --show-warnings     Show warnings after every statement.
  --plugin-dir=name   Directory for client-side plugins.
  --default-auth=name Default authentication client-side plugin to use.
  --binary-mode       By default, ASCII '\0' is disallowed and '\r\n' is
                      translated to '\n'. This switch turns off both features,
                      and also turns off parsing of all clientcommands except
                      \C and DELIMITER, in non-interactive mode (for input
                      piped to mysql or loaded using the 'source' command).
                      This is necessary when processing output from mysqlbinlog
                      that may contain blobs.

Variables (--variable-name=value)
and boolean options {FALSE|TRUE}  Value (after reading options)
--------------------------------- ----------------------------------------
abort-source-on-error             FALSE
auto-rehash                       TRUE
auto-vertical-output              FALSE
binary-as-hex                     FALSE
character-sets-dir                (No default value)
column-type-info                  FALSE
comments                          FALSE
compress                          FALSE
debug-check                       FALSE
debug-info                        FALSE
database                          (No default value)
default-character-set             auto
delimiter                         ;
vertical                          FALSE
force                             FALSE
named-commands                    FALSE
ignore-spaces                     FALSE
init-command                      (No default value)
local-infile                      FALSE
no-beep                           FALSE
host                              (No default value)
html                              FALSE
xml                               FALSE
line-numbers                      TRUE
unbuffered                        FALSE
column-names                      TRUE
sigint-ignore                     FALSE
port                              0
progress-reports                  FALSE
prompt                            \N [\d]>
quick                             FALSE
raw                               FALSE
reconnect                         FALSE
shared-memory-base-name           (No default value)
socket                            (No default value)
ssl                               FALSE
ssl-ca                            (No default value)
ssl-capath                        (No default value)
ssl-cert                          (No default value)
ssl-cipher                        (No default value)
ssl-key                           (No default value)
ssl-crl                           (No default value)
ssl-crlpath                       (No default value)
ssl-verify-server-cert            FALSE
table                             FALSE
user                              root
safe-updates                      FALSE
i-am-a-dummy                      FALSE
connect-timeout                   0
max-allowed-packet                16777216
net-buffer-length                 16384
select-limit                      1000
max-join-size                     1000000
secure-auth                       FALSE
show-warnings                     FALSE
plugin-dir                        (No default value)
default-auth                      (No default value)
binary-mode                       FALSE

C:\xampp\mysql\bin>mysql -u root -p fakultet < "C:\Users\Bela\Desktop\mysql\fakultet.sql";
mysql  Ver 15.1 Distrib 10.1.30-MariaDB, for Win32 (AMD64)
Copyright (c) 2000, 2017, Oracle, MariaDB Corporation Ab and others.

Usage: mysql [OPTIONS] [database]

Default options are read from the following files in the given order:
C:\WINDOWS\my.ini C:\WINDOWS\my.cnf C:\my.ini C:\my.cnf C:\xampp\mysql\my.ini C:\xampp\mysql\my.cnf C:\xampp\mysql\data\my.ini C:\xampp\mysql\data\my.cnf
The following groups are read: mysql client client-server client-mariadb
The following options may be given as the first argument:
--print-defaults        Print the program argument list and exit.
--no-defaults           Don't read default options from any option file.
--defaults-file=#       Only read default options from the given file #.
--defaults-extra-file=# Read this file after the global files are read.

  -?, --help          Display this help and exit.
  -I, --help          Synonym for -?
  --abort-source-on-error
                      Abort 'source filename' operations in case of errors
  --auto-rehash       Enable automatic rehashing. One doesn't need to use
                      'rehash' to get table and field completion, but startup
                      and reconnecting may take a longer time. Disable with
                      --disable-auto-rehash.
                      (Defaults to on; use --skip-auto-rehash to disable.)
  -A, --no-auto-rehash
                      No automatic rehashing. One has to use 'rehash' to get
                      table and field completion. This gives a quicker start of
                      mysql and disables rehashing on reconnect.
  --auto-vertical-output
                      Automatically switch to vertical output mode if the
                      result is wider than the terminal width.
  -B, --batch         Don't use history file. Disable interactive behavior.
                      (Enables --silent.)
  -b, --binary-as-hex Print binary data as hex
  --character-sets-dir=name
                      Directory for character set files.
  --column-type-info  Display column type information.
  -c, --comments      Preserve comments. Send comments to the server. The
                      default is --skip-comments (discard comments), enable
                      with --comments.
  -C, --compress      Use compression in server/client protocol.
  -#, --debug[=#]     This is a non-debug version. Catch this and exit.
  --debug-check       Check memory and open file usage at exit.
  -T, --debug-info    Print some debug info at exit.
  -D, --database=name Database to use.
  --default-character-set=name
                      Set the default character set.
  --delimiter=name    Delimiter to be used.
  -e, --execute=name  Execute command and quit. (Disables --force and history
                      file.)
  -E, --vertical      Print the output of a query (rows) vertically.
  -f, --force         Continue even if we get an SQL error. Sets
                      abort-source-on-error to 0
  -G, --named-commands
                      Enable named commands. Named commands mean this program's
                      internal commands; see mysql> help . When enabled, the
                      named commands can be used from any line of the query,
                      otherwise only from the first line, before an enter.
                      Disable with --disable-named-commands. This option is
                      disabled by default.
  -i, --ignore-spaces Ignore space after function names.
  --init-command=name SQL Command to execute when connecting to MySQL server.
                      Will automatically be re-executed when reconnecting.
  --local-infile      Enable/disable LOAD DATA LOCAL INFILE.
  -b, --no-beep       Turn off beep on error.
  -h, --host=name     Connect to host.
  -H, --html          Produce HTML output.
  -X, --xml           Produce XML output.
  --line-numbers      Write line numbers for errors.
                      (Defaults to on; use --skip-line-numbers to disable.)
  -L, --skip-line-numbers
                      Don't write line number for errors.
  -n, --unbuffered    Flush buffer after each query.
  --column-names      Write column names in results.
                      (Defaults to on; use --skip-column-names to disable.)
  -N, --skip-column-names
                      Don't write column names in results.
  --sigint-ignore     Ignore SIGINT (CTRL-C).
  -o, --one-database  Ignore statements except those that occur while the
                      default database is the one named at the command line.
  -p, --password[=name]
                      Password to use when connecting to server. If password is
                      not given it's asked from the tty.
  -W, --pipe          Use named pipes to connect to server.
  -P, --port=#        Port number to use for connection or 0 for default to, in
                      order of preference, my.cnf, $MYSQL_TCP_PORT,
                      /etc/services, built-in default (3306).
  --progress-reports  Get progress reports for long running commands (like
                      ALTER TABLE)
                      (Defaults to on; use --skip-progress-reports to disable.)
  --prompt=name       Set the mysql prompt to this value.
  --protocol=name     The protocol to use for connection (tcp, socket, pipe,
                      memory).
  -q, --quick         Don't cache result, print it row by row. This may slow
                      down the server if the output is suspended. Doesn't use
                      history file.
  -r, --raw           Write fields without conversion. Used with --batch.
  --reconnect         Reconnect if the connection is lost. Disable with
                      --disable-reconnect. This option is enabled by default.
                      (Defaults to on; use --skip-reconnect to disable.)
  -s, --silent        Be more silent. Print results with a tab as separator,
                      each row on new line.
  --shared-memory-base-name=name
                      Base name of shared memory.
  -S, --socket=name   The socket file to use for connection.
  --ssl               Enable SSL for connection (automatically enabled with
                      other flags).
  --ssl-ca=name       CA file in PEM format (check OpenSSL docs, implies
                      --ssl).
  --ssl-capath=name   CA directory (check OpenSSL docs, implies --ssl).
  --ssl-cert=name     X509 cert in PEM format (implies --ssl).
  --ssl-cipher=name   SSL cipher to use (implies --ssl).
  --ssl-key=name      X509 key in PEM format (implies --ssl).
  --ssl-crl=name      Certificate revocation list (implies --ssl).
  --ssl-crlpath=name  Certificate revocation list path (implies --ssl).
  --ssl-verify-server-cert
                      Verify server's "Common Name" in its cert against
                      hostname used when connecting. This option is disabled by
                      default.
  -t, --table         Output in table format.
  --tee=name          Append everything into outfile. See interactive help (\h)
                      also. Does not work in batch mode. Disable with
                      --disable-tee. This option is disabled by default.
  -u, --user=name     User for login if not current user.
  -U, --safe-updates  Only allow UPDATE and DELETE that uses keys.
  -U, --i-am-a-dummy  Synonym for option --safe-updates, -U.
  -v, --verbose       Write more. (-v -v -v gives the table output format).
  -V, --version       Output version information and exit.
  -w, --wait          Wait and retry if connection is down.
  --connect-timeout=# Number of seconds before connection timeout.
  --max-allowed-packet=#
                      The maximum packet length to send to or receive from
                      server.
  --net-buffer-length=#
                      The buffer size for TCP/IP and socket communication.
  --select-limit=#    Automatic limit for SELECT when using --safe-updates.
  --max-join-size=#   Automatic limit for rows in a join when using
                      --safe-updates.
  --secure-auth       Refuse client connecting to server if it uses old
                      (pre-4.1.1) protocol.
  --server-arg=name   Send embedded server this as a parameter.
  --show-warnings     Show warnings after every statement.
  --plugin-dir=name   Directory for client-side plugins.
  --default-auth=name Default authentication client-side plugin to use.
  --binary-mode       By default, ASCII '\0' is disallowed and '\r\n' is
                      translated to '\n'. This switch turns off both features,
                      and also turns off parsing of all clientcommands except
                      \C and DELIMITER, in non-interactive mode (for input
                      piped to mysql or loaded using the 'source' command).
                      This is necessary when processing output from mysqlbinlog
                      that may contain blobs.

Variables (--variable-name=value)
and boolean options {FALSE|TRUE}  Value (after reading options)
--------------------------------- ----------------------------------------
abort-source-on-error             FALSE
auto-rehash                       TRUE
auto-vertical-output              FALSE
binary-as-hex                     FALSE
character-sets-dir                (No default value)
column-type-info                  FALSE
comments                          FALSE
compress                          FALSE
debug-check                       FALSE
debug-info                        FALSE
database                          (No default value)
default-character-set             auto
delimiter                         ;
vertical                          FALSE
force                             FALSE
named-commands                    FALSE
ignore-spaces                     FALSE
init-command                      (No default value)
local-infile                      FALSE
no-beep                           FALSE
host                              (No default value)
html                              FALSE
xml                               FALSE
line-numbers                      TRUE
unbuffered                        FALSE
column-names                      TRUE
sigint-ignore                     FALSE
port                              0
progress-reports                  FALSE
prompt                            \N [\d]>
quick                             FALSE
raw                               FALSE
reconnect                         FALSE
shared-memory-base-name           (No default value)
socket                            (No default value)
ssl                               FALSE
ssl-ca                            (No default value)
ssl-capath                        (No default value)
ssl-cert                          (No default value)
ssl-cipher                        (No default value)
ssl-key                           (No default value)
ssl-crl                           (No default value)
ssl-crlpath                       (No default value)
ssl-verify-server-cert            FALSE
table                             FALSE
user                              root
safe-updates                      FALSE
i-am-a-dummy                      FALSE
connect-timeout                   0
max-allowed-packet                16777216
net-buffer-length                 16384
select-limit                      1000
max-join-size                     1000000
secure-auth                       FALSE
show-warnings                     FALSE
plugin-dir                        (No default value)
default-auth                      (No default value)
binary-mode                       FALSE

C:\xampp\mysql\bin>mysql -u root -p
Enter password:
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 12
Server version: 10.1.30-MariaDB mariadb.org binary distribution

Copyright (c) 2000, 2017, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> create database fakultet;
Query OK, 1 row affected (0.00 sec)

MariaDB [(none)]> exit
Bye

C:\xampp\mysql\bin>mysql -u root -p fakultet < "C:\Users\Bela\Desktop\mysql\fakultet.sql";
mysql  Ver 15.1 Distrib 10.1.30-MariaDB, for Win32 (AMD64)
Copyright (c) 2000, 2017, Oracle, MariaDB Corporation Ab and others.

Usage: mysql [OPTIONS] [database]

Default options are read from the following files in the given order:
C:\WINDOWS\my.ini C:\WINDOWS\my.cnf C:\my.ini C:\my.cnf C:\xampp\mysql\my.ini C:\xampp\mysql\my.cnf C:\xampp\mysql\data\my.ini C:\xampp\mysql\data\my.cnf
The following groups are read: mysql client client-server client-mariadb
The following options may be given as the first argument:
--print-defaults        Print the program argument list and exit.
--no-defaults           Don't read default options from any option file.
--defaults-file=#       Only read default options from the given file #.
--defaults-extra-file=# Read this file after the global files are read.

  -?, --help          Display this help and exit.
  -I, --help          Synonym for -?
  --abort-source-on-error
                      Abort 'source filename' operations in case of errors
  --auto-rehash       Enable automatic rehashing. One doesn't need to use
                      'rehash' to get table and field completion, but startup
                      and reconnecting may take a longer time. Disable with
                      --disable-auto-rehash.
                      (Defaults to on; use --skip-auto-rehash to disable.)
  -A, --no-auto-rehash
                      No automatic rehashing. One has to use 'rehash' to get
                      table and field completion. This gives a quicker start of
                      mysql and disables rehashing on reconnect.
  --auto-vertical-output
                      Automatically switch to vertical output mode if the
                      result is wider than the terminal width.
  -B, --batch         Don't use history file. Disable interactive behavior.
                      (Enables --silent.)
  -b, --binary-as-hex Print binary data as hex
  --character-sets-dir=name
                      Directory for character set files.
  --column-type-info  Display column type information.
  -c, --comments      Preserve comments. Send comments to the server. The
                      default is --skip-comments (discard comments), enable
                      with --comments.
  -C, --compress      Use compression in server/client protocol.
  -#, --debug[=#]     This is a non-debug version. Catch this and exit.
  --debug-check       Check memory and open file usage at exit.
  -T, --debug-info    Print some debug info at exit.
  -D, --database=name Database to use.
  --default-character-set=name
                      Set the default character set.
  --delimiter=name    Delimiter to be used.
  -e, --execute=name  Execute command and quit. (Disables --force and history
                      file.)
  -E, --vertical      Print the output of a query (rows) vertically.
  -f, --force         Continue even if we get an SQL error. Sets
                      abort-source-on-error to 0
  -G, --named-commands
                      Enable named commands. Named commands mean this program's
                      internal commands; see mysql> help . When enabled, the
                      named commands can be used from any line of the query,
                      otherwise only from the first line, before an enter.
                      Disable with --disable-named-commands. This option is
                      disabled by default.
  -i, --ignore-spaces Ignore space after function names.
  --init-command=name SQL Command to execute when connecting to MySQL server.
                      Will automatically be re-executed when reconnecting.
  --local-infile      Enable/disable LOAD DATA LOCAL INFILE.
  -b, --no-beep       Turn off beep on error.
  -h, --host=name     Connect to host.
  -H, --html          Produce HTML output.
  -X, --xml           Produce XML output.
  --line-numbers      Write line numbers for errors.
                      (Defaults to on; use --skip-line-numbers to disable.)
  -L, --skip-line-numbers
                      Don't write line number for errors.
  -n, --unbuffered    Flush buffer after each query.
  --column-names      Write column names in results.
                      (Defaults to on; use --skip-column-names to disable.)
  -N, --skip-column-names
                      Don't write column names in results.
  --sigint-ignore     Ignore SIGINT (CTRL-C).
  -o, --one-database  Ignore statements except those that occur while the
                      default database is the one named at the command line.
  -p, --password[=name]
                      Password to use when connecting to server. If password is
                      not given it's asked from the tty.
  -W, --pipe          Use named pipes to connect to server.
  -P, --port=#        Port number to use for connection or 0 for default to, in
                      order of preference, my.cnf, $MYSQL_TCP_PORT,
                      /etc/services, built-in default (3306).
  --progress-reports  Get progress reports for long running commands (like
                      ALTER TABLE)
                      (Defaults to on; use --skip-progress-reports to disable.)
  --prompt=name       Set the mysql prompt to this value.
  --protocol=name     The protocol to use for connection (tcp, socket, pipe,
                      memory).
  -q, --quick         Don't cache result, print it row by row. This may slow
                      down the server if the output is suspended. Doesn't use
                      history file.
  -r, --raw           Write fields without conversion. Used with --batch.
  --reconnect         Reconnect if the connection is lost. Disable with
                      --disable-reconnect. This option is enabled by default.
                      (Defaults to on; use --skip-reconnect to disable.)
  -s, --silent        Be more silent. Print results with a tab as separator,
                      each row on new line.
  --shared-memory-base-name=name
                      Base name of shared memory.
  -S, --socket=name   The socket file to use for connection.
  --ssl               Enable SSL for connection (automatically enabled with
                      other flags).
  --ssl-ca=name       CA file in PEM format (check OpenSSL docs, implies
                      --ssl).
  --ssl-capath=name   CA directory (check OpenSSL docs, implies --ssl).
  --ssl-cert=name     X509 cert in PEM format (implies --ssl).
  --ssl-cipher=name   SSL cipher to use (implies --ssl).
  --ssl-key=name      X509 key in PEM format (implies --ssl).
  --ssl-crl=name      Certificate revocation list (implies --ssl).
  --ssl-crlpath=name  Certificate revocation list path (implies --ssl).
  --ssl-verify-server-cert
                      Verify server's "Common Name" in its cert against
                      hostname used when connecting. This option is disabled by
                      default.
  -t, --table         Output in table format.
  --tee=name          Append everything into outfile. See interactive help (\h)
                      also. Does not work in batch mode. Disable with
                      --disable-tee. This option is disabled by default.
  -u, --user=name     User for login if not current user.
  -U, --safe-updates  Only allow UPDATE and DELETE that uses keys.
  -U, --i-am-a-dummy  Synonym for option --safe-updates, -U.
  -v, --verbose       Write more. (-v -v -v gives the table output format).
  -V, --version       Output version information and exit.
  -w, --wait          Wait and retry if connection is down.
  --connect-timeout=# Number of seconds before connection timeout.
  --max-allowed-packet=#
                      The maximum packet length to send to or receive from
                      server.
  --net-buffer-length=#
                      The buffer size for TCP/IP and socket communication.
  --select-limit=#    Automatic limit for SELECT when using --safe-updates.
  --max-join-size=#   Automatic limit for rows in a join when using
                      --safe-updates.
  --secure-auth       Refuse client connecting to server if it uses old
                      (pre-4.1.1) protocol.
  --server-arg=name   Send embedded server this as a parameter.
  --show-warnings     Show warnings after every statement.
  --plugin-dir=name   Directory for client-side plugins.
  --default-auth=name Default authentication client-side plugin to use.
  --binary-mode       By default, ASCII '\0' is disallowed and '\r\n' is
                      translated to '\n'. This switch turns off both features,
                      and also turns off parsing of all clientcommands except
                      \C and DELIMITER, in non-interactive mode (for input
                      piped to mysql or loaded using the 'source' command).
                      This is necessary when processing output from mysqlbinlog
                      that may contain blobs.

Variables (--variable-name=value)
and boolean options {FALSE|TRUE}  Value (after reading options)
--------------------------------- ----------------------------------------
abort-source-on-error             FALSE
auto-rehash                       TRUE
auto-vertical-output              FALSE
binary-as-hex                     FALSE
character-sets-dir                (No default value)
column-type-info                  FALSE
comments                          FALSE
compress                          FALSE
debug-check                       FALSE
debug-info                        FALSE
database                          (No default value)
default-character-set             auto
delimiter                         ;
vertical                          FALSE
force                             FALSE
named-commands                    FALSE
ignore-spaces                     FALSE
init-command                      (No default value)
local-infile                      FALSE
no-beep                           FALSE
host                              (No default value)
html                              FALSE
xml                               FALSE
line-numbers                      TRUE
unbuffered                        FALSE
column-names                      TRUE
sigint-ignore                     FALSE
port                              0
progress-reports                  FALSE
prompt                            \N [\d]>
quick                             FALSE
raw                               FALSE
reconnect                         FALSE
shared-memory-base-name           (No default value)
socket                            (No default value)
ssl                               FALSE
ssl-ca                            (No default value)
ssl-capath                        (No default value)
ssl-cert                          (No default value)
ssl-cipher                        (No default value)
ssl-key                           (No default value)
ssl-crl                           (No default value)
ssl-crlpath                       (No default value)
ssl-verify-server-cert            FALSE
table                             FALSE
user                              root
safe-updates                      FALSE
i-am-a-dummy                      FALSE
connect-timeout                   0
max-allowed-packet                16777216
net-buffer-length                 16384
select-limit                      1000
max-join-size                     1000000
secure-auth                       FALSE
show-warnings                     FALSE
plugin-dir                        (No default value)
default-auth                      (No default value)
binary-mode                       FALSE

C:\xampp\mysql\bin>mysql -u root -p
Enter password:
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 13
Server version: 10.1.30-MariaDB mariadb.org binary distribution

Copyright (c) 2000, 2017, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> show databases;
+--------------------+
| Database           |
+--------------------+
| datasens           |
| fakultet           |
| information_schema |
| mysql              |
| performance_schema |
| php2018            |
| phpmyadmin         |
| test               |
+--------------------+
8 rows in set (0.06 sec)

MariaDB [(none)]> use fakultet
Database changed
MariaDB [fakultet]> show tables
    -> ;
Empty set (0.00 sec)

MariaDB [fakultet]> exit
Bye

C:\xampp\mysql\bin>mysql -u root -p fakultet < "C:\Users\Bela\Desktop\mysql\fakultet.sql";
mysql  Ver 15.1 Distrib 10.1.30-MariaDB, for Win32 (AMD64)
Copyright (c) 2000, 2017, Oracle, MariaDB Corporation Ab and others.

Usage: mysql [OPTIONS] [database]

Default options are read from the following files in the given order:
C:\WINDOWS\my.ini C:\WINDOWS\my.cnf C:\my.ini C:\my.cnf C:\xampp\mysql\my.ini C:\xampp\mysql\my.cnf C:\xampp\mysql\data\my.ini C:\xampp\mysql\data\my.cnf
The following groups are read: mysql client client-server client-mariadb
The following options may be given as the first argument:
--print-defaults        Print the program argument list and exit.
--no-defaults           Don't read default options from any option file.
--defaults-file=#       Only read default options from the given file #.
--defaults-extra-file=# Read this file after the global files are read.

  -?, --help          Display this help and exit.
  -I, --help          Synonym for -?
  --abort-source-on-error
                      Abort 'source filename' operations in case of errors
  --auto-rehash       Enable automatic rehashing. One doesn't need to use
                      'rehash' to get table and field completion, but startup
                      and reconnecting may take a longer time. Disable with
                      --disable-auto-rehash.
                      (Defaults to on; use --skip-auto-rehash to disable.)
  -A, --no-auto-rehash
                      No automatic rehashing. One has to use 'rehash' to get
                      table and field completion. This gives a quicker start of
                      mysql and disables rehashing on reconnect.
  --auto-vertical-output
                      Automatically switch to vertical output mode if the
                      result is wider than the terminal width.
  -B, --batch         Don't use history file. Disable interactive behavior.
                      (Enables --silent.)
  -b, --binary-as-hex Print binary data as hex
  --character-sets-dir=name
                      Directory for character set files.
  --column-type-info  Display column type information.
  -c, --comments      Preserve comments. Send comments to the server. The
                      default is --skip-comments (discard comments), enable
                      with --comments.
  -C, --compress      Use compression in server/client protocol.
  -#, --debug[=#]     This is a non-debug version. Catch this and exit.
  --debug-check       Check memory and open file usage at exit.
  -T, --debug-info    Print some debug info at exit.
  -D, --database=name Database to use.
  --default-character-set=name
                      Set the default character set.
  --delimiter=name    Delimiter to be used.
  -e, --execute=name  Execute command and quit. (Disables --force and history
                      file.)
  -E, --vertical      Print the output of a query (rows) vertically.
  -f, --force         Continue even if we get an SQL error. Sets
                      abort-source-on-error to 0
  -G, --named-commands
                      Enable named commands. Named commands mean this program's
                      internal commands; see mysql> help . When enabled, the
                      named commands can be used from any line of the query,
                      otherwise only from the first line, before an enter.
                      Disable with --disable-named-commands. This option is
                      disabled by default.
  -i, --ignore-spaces Ignore space after function names.
  --init-command=name SQL Command to execute when connecting to MySQL server.
                      Will automatically be re-executed when reconnecting.
  --local-infile      Enable/disable LOAD DATA LOCAL INFILE.
  -b, --no-beep       Turn off beep on error.
  -h, --host=name     Connect to host.
  -H, --html          Produce HTML output.
  -X, --xml           Produce XML output.
  --line-numbers      Write line numbers for errors.
                      (Defaults to on; use --skip-line-numbers to disable.)
  -L, --skip-line-numbers
                      Don't write line number for errors.
  -n, --unbuffered    Flush buffer after each query.
  --column-names      Write column names in results.
                      (Defaults to on; use --skip-column-names to disable.)
  -N, --skip-column-names
                      Don't write column names in results.
  --sigint-ignore     Ignore SIGINT (CTRL-C).
  -o, --one-database  Ignore statements except those that occur while the
                      default database is the one named at the command line.
  -p, --password[=name]
                      Password to use when connecting to server. If password is
                      not given it's asked from the tty.
  -W, --pipe          Use named pipes to connect to server.
  -P, --port=#        Port number to use for connection or 0 for default to, in
                      order of preference, my.cnf, $MYSQL_TCP_PORT,
                      /etc/services, built-in default (3306).
  --progress-reports  Get progress reports for long running commands (like
                      ALTER TABLE)
                      (Defaults to on; use --skip-progress-reports to disable.)
  --prompt=name       Set the mysql prompt to this value.
  --protocol=name     The protocol to use for connection (tcp, socket, pipe,
                      memory).
  -q, --quick         Don't cache result, print it row by row. This may slow
                      down the server if the output is suspended. Doesn't use
                      history file.
  -r, --raw           Write fields without conversion. Used with --batch.
  --reconnect         Reconnect if the connection is lost. Disable with
                      --disable-reconnect. This option is enabled by default.
                      (Defaults to on; use --skip-reconnect to disable.)
  -s, --silent        Be more silent. Print results with a tab as separator,
                      each row on new line.
  --shared-memory-base-name=name
                      Base name of shared memory.
  -S, --socket=name   The socket file to use for connection.
  --ssl               Enable SSL for connection (automatically enabled with
                      other flags).
  --ssl-ca=name       CA file in PEM format (check OpenSSL docs, implies
                      --ssl).
  --ssl-capath=name   CA directory (check OpenSSL docs, implies --ssl).
  --ssl-cert=name     X509 cert in PEM format (implies --ssl).
  --ssl-cipher=name   SSL cipher to use (implies --ssl).
  --ssl-key=name      X509 key in PEM format (implies --ssl).
  --ssl-crl=name      Certificate revocation list (implies --ssl).
  --ssl-crlpath=name  Certificate revocation list path (implies --ssl).
  --ssl-verify-server-cert
                      Verify server's "Common Name" in its cert against
                      hostname used when connecting. This option is disabled by
                      default.
  -t, --table         Output in table format.
  --tee=name          Append everything into outfile. See interactive help (\h)
                      also. Does not work in batch mode. Disable with
                      --disable-tee. This option is disabled by default.
  -u, --user=name     User for login if not current user.
  -U, --safe-updates  Only allow UPDATE and DELETE that uses keys.
  -U, --i-am-a-dummy  Synonym for option --safe-updates, -U.
  -v, --verbose       Write more. (-v -v -v gives the table output format).
  -V, --version       Output version information and exit.
  -w, --wait          Wait and retry if connection is down.
  --connect-timeout=# Number of seconds before connection timeout.
  --max-allowed-packet=#
                      The maximum packet length to send to or receive from
                      server.
  --net-buffer-length=#
                      The buffer size for TCP/IP and socket communication.
  --select-limit=#    Automatic limit for SELECT when using --safe-updates.
  --max-join-size=#   Automatic limit for rows in a join when using
                      --safe-updates.
  --secure-auth       Refuse client connecting to server if it uses old
                      (pre-4.1.1) protocol.
  --server-arg=name   Send embedded server this as a parameter.
  --show-warnings     Show warnings after every statement.
  --plugin-dir=name   Directory for client-side plugins.
  --default-auth=name Default authentication client-side plugin to use.
  --binary-mode       By default, ASCII '\0' is disallowed and '\r\n' is
                      translated to '\n'. This switch turns off both features,
                      and also turns off parsing of all clientcommands except
                      \C and DELIMITER, in non-interactive mode (for input
                      piped to mysql or loaded using the 'source' command).
                      This is necessary when processing output from mysqlbinlog
                      that may contain blobs.

Variables (--variable-name=value)
and boolean options {FALSE|TRUE}  Value (after reading options)
--------------------------------- ----------------------------------------
abort-source-on-error             FALSE
auto-rehash                       TRUE
auto-vertical-output              FALSE
binary-as-hex                     FALSE
character-sets-dir                (No default value)
column-type-info                  FALSE
comments                          FALSE
compress                          FALSE
debug-check                       FALSE
debug-info                        FALSE
database                          (No default value)
default-character-set             auto
delimiter                         ;
vertical                          FALSE
force                             FALSE
named-commands                    FALSE
ignore-spaces                     FALSE
init-command                      (No default value)
local-infile                      FALSE
no-beep                           FALSE
host                              (No default value)
html                              FALSE
xml                               FALSE
line-numbers                      TRUE
unbuffered                        FALSE
column-names                      TRUE
sigint-ignore                     FALSE
port                              0
progress-reports                  FALSE
prompt                            \N [\d]>
quick                             FALSE
raw                               FALSE
reconnect                         FALSE
shared-memory-base-name           (No default value)
socket                            (No default value)
ssl                               FALSE
ssl-ca                            (No default value)
ssl-capath                        (No default value)
ssl-cert                          (No default value)
ssl-cipher                        (No default value)
ssl-key                           (No default value)
ssl-crl                           (No default value)
ssl-crlpath                       (No default value)
ssl-verify-server-cert            FALSE
table                             FALSE
user                              root
safe-updates                      FALSE
i-am-a-dummy                      FALSE
connect-timeout                   0
max-allowed-packet                16777216
net-buffer-length                 16384
select-limit                      1000
max-join-size                     1000000
secure-auth                       FALSE
show-warnings                     FALSE
plugin-dir                        (No default value)
default-auth                      (No default value)
binary-mode                       FALSE

C:\xampp\mysql\bin>mysql -u root -p
Enter password:
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 16
Server version: 10.1.30-MariaDB mariadb.org binary distribution

Copyright (c) 2000, 2017, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> use fakultet
Database changed
MariaDB [fakultet]> show tables
    -> ;
+---------------------+
| Tables_in_fakultet  |
+---------------------+
| crud                |
| dvorana             |
| flights             |
| ispit               |
| migrations          |
| mjesto              |
| mjesto1             |
| nastavnice          |
| nastavnik           |
| nepopularnipredmeti |
| nl_address          |
| orgjed              |
| orgjed1             |
| password_resets     |
| pred                |
| rezervacija         |
| stud                |
| users               |
| users_old           |
| xxl                 |
| yyl                 |
| zupanija            |
+---------------------+
22 rows in set (0.00 sec)

MariaDB [fakultet]> SELECT
    -> mbrstud,
    -> CONCAT(imeStud,'',prezStud) AS 'Ime i prezime'
    -> FROM stud;
+---------+-----------------------+
| mbrstud | Ime i prezime         |
+---------+-----------------------+
|    1120 | ZdenkoKolac           |
|    1121 | DanijelMarović        |
|    1123 | JozefinaAntončić      |
|    1124 | TihomirCrnković       |
|    1125 | VjeranBrezac          |
|    1127 | DarioRisek            |
|    1128 | ZlatkoBroz            |
|    1129 | JulijaKos             |
|    1131 | ZlatkoNenadić         |
|    1132 | NikicaArunović        |
|    1133 | DarkoCindrić          |
|    1135 | JurajRožman           |
|    1136 | VlatkoHorvatić        |
|    1137 | JureRibarić           |
|    1139 | NikoMarušić           |
|    1140 | DavorVurnek           |
|    1141 | ZoranHabajec          |
|    1143 | DavorVoras            |
|    1144 | ZvonimirOzimec        |
|    1145 | JuricaBašić           |
|    1147 | AlenkaVukojević       |
|    1148 | AntonijoJavorina      |
|    1149 | NikolaBačić           |
|    1151 | KarloKrsnik           |
|    1152 | BožidarTomić          |
|    1153 | JosipDukić            |
|    1155 | DavorinMirković       |
|    1156 | NikolinaMedvedec      |
|    1157 | NinaCnappi            |
|    1159 | KatarinaDobrina       |
|    1160 | MajoMusić             |
|    1161 | DavorJurinjak         |
|    1163 | DavorkaSmolić-Grgić   |
|    1164 | KrešimirVlahović      |
|    1165 | ŽeljkaMorić           |
|    1167 | MirkoTeklić           |
|    1168 | DorisRapinac          |
|    1169 | DubravkoVaniček       |
|    1170 | DenisPauk             |
|    1172 | NinoslavNovak         |
|    1173 | GordanBoršić          |
|    1174 | EditaDomijan          |
|    1176 | PredragŽuljević       |
|    1177 | KristianKlarin        |
|    1178 | KristijanVrabec       |
|    1180 | IvaMioč               |
|    1181 | ArsenioMinić          |
|    1182 | GoranaBožić           |
|    1184 | TihomirFabris         |
|    1185 | OzrenSmolić           |
|    1186 | ZlatkoKolar           |
|    1188 | KristinaMandić        |
|    1189 | JurajMaček            |
|    1190 | DomagojKrišto         |
|    1192 | HelenaMandić          |
|    1193 | KrunoslavBrezak       |
|    1194 | Antun IvanHerak       |
|    1196 | PavaoFalk             |
|    1197 | DominikHacek          |
|    1198 | HelenaVidaković       |
|    1200 | DavorBunčec           |
|    1201 | DorisKončar           |
|    1202 | PericaMikulec         |
|    1204 | KsenijaČular          |
|    1205 | DraganVranešić        |
|    1206 | JozefinaBlauhorn      |
|    1208 | FranjoStipanov        |
|    1209 | PetarŠkrinjarić       |
|    1210 | LeaDostal             |
|    1212 | JosipZelić            |
|    1213 | PetraČuljak           |
|    1214 | DragoBartolinčić      |
|    1216 | LidijaLeonard         |
|    1217 | LovreHuk              |
|    1218 | MajoHemetek           |
|    1219 | PredragSmirčić        |
|    1221 | SlavkoPrelec          |
|    1222 | DragutinLadišić       |
|    1223 | KristinaRubinić       |
|    1225 | MirkoDubravić         |
|    1226 | TinMikulaj            |
|    1227 | DraženBošnjak         |
|    1229 | VjeranBrezovec        |
|    1230 | PredragBuljat         |
|    1231 | LucijaMatijašević     |
|    1233 | RenatoStepinac        |
|    1234 | KsenijaPavišić        |
|    1235 | LeaKamenečki          |
|    1237 | LukaFrankola          |
|    1238 | TihomirCrnković       |
|    1239 | DujeŠimić             |
|    1241 | LjiljanaValentić      |
|    1242 | AlanSamodol           |
|    1243 | LidijaŽiljak          |
|    1245 | Dujo DavorFolnegović  |
|    1246 | RokoNovosel           |
|    1247 | AlanPasanec           |
|    1249 | MajaBelić             |
|    1250 | AntonijoFranjković    |
|    1251 | LucijaBrčić           |
|    1253 | BožidarCetto          |
|    1254 | EdoMarić              |
|    1255 | AntonijoDumančić      |
|    1257 | AdrianLukač           |
|    1258 | MajoVarga             |
|    1259 | LjiljanaBulić         |
|    1261 | SilvanaNovosel        |
|    1262 | MajaŠeremet           |
|    1263 | DavorPlečko           |
|    1265 | MarijaBarbić          |
|    1266 | EduardPetrović        |
|    1267 | AdrijanVuković        |
|    1268 | AdrijanaBuršić        |
|    1270 | NinoTriska            |
|    1271 | MarijanMirošević      |
|    1272 | EmilSertić            |
|    1274 | SilvestarSabljak      |
|    1275 | DubravkoToth          |
|    1276 | FilipJurić            |
|    1278 | GordanDular           |
|    1279 | MartinaKrizmanić      |
|    1280 | MarinJurić            |
|    1282 | AlanMatuna            |
|    1283 | VinkoPadovan          |
|    1284 | AlbertHunić           |
|    1286 | FranŠef               |
|    1287 | AdrijanTrnski         |
|    1288 | MirjanaIveković       |
|    1290 | SlavicaPavić          |
|    1291 | GordanKačar           |
|    1292 | JurajSabljak          |
|    1294 | IvaDevčić             |
|    1295 | FranePlavetić         |
|    1296 | SlavkoPetreković      |
|    1298 | MarinkoHorvat         |
|    1299 | DavorkaIlić           |
|    1300 | AlenkaLozić           |
|    1302 | LovreSmiljanec        |
|    1303 | JurajSzirovicza       |
|    1304 | MarioBabić            |
|    1306 | HelenaOctenjak        |
|    1307 | FranjoZdilar          |
|    1308 | StipePugelnik         |
|    1310 | MarkoMateković        |
|    1311 | GoranRemenar          |
|    1312 | NinaKućan             |
|    1314 | MarkoSuhina           |
|    1315 | AljošaSobol           |
|    1316 | GoranaFrljak          |
|    1317 | MijoVucelić           |
|    1319 | PetraŠkolnik          |
|    1320 | MartinKovačić         |
|    1321 | MarkoMeljanac         |
|    1323 | IvanJambrak           |
|    1324 | PetarNemet            |
|    1325 | MartinaSimon          |
|    1327 | AndrejJurić           |
|    1328 | RenataVujnovac        |
|    1329 | MijoPoljak            |
|    1331 | GordanLacković        |
|    1332 | SveborKeščec          |
|    1333 | AdrijanFabrični       |
|    1335 | AndrijaTopolovac      |
|    1336 | SlavkoHrvojević       |
|    1337 | MateCrnjak            |
|    1339 | AndroPopović          |
|    1340 | MatejDukić            |
|    1341 | SanjaBabić            |
|    1343 | DavorkaKralj          |
|    1344 | SvenRac               |
|    1345 | HelenaMedved          |
|    1347 | MateoMaković          |
|    1348 | SilvanaVrbanić        |
|    1349 | ŠimeKovačić           |
|    1351 | ŽelimirBabić          |
|    1352 | MarkoLevačić          |
|    1353 | SlavicaĐurak          |
|    1355 | AnteBudimir           |
|    1356 | MatijaBujas           |
|    1357 | NinoBarić             |
|    1359 | Matija TvrtkoAndrišek |
|    1360 | SunčicaBošnjak        |
|    1361 | AntoGloblek           |
|    1363 | MatkoGrgić            |
|    1364 | AntunFerenc           |
|    1365 | AntonBečić            |
|    1366 | VinkoKontak           |
|    1368 | TeaMeđimorec          |
|    1369 | MatoKobal             |
|    1370 | TiborPoljanec         |
|    1372 | AdrijanHerceg         |
|    1373 | AntonijoBilić         |
|    1374 | TeaMihaljević         |
|    1376 | DarkoMrduljaš         |
|    1377 | DavorkaČavrak         |
|    1378 | AntonioPamučar        |
|    1380 | TihomirMedić          |
|    1381 | AntunBalog            |
|    1382 | VlatkaRelota          |
|    1384 | HelenaBudimir         |
|    1385 | TinKrajtner           |
|    1386 | DraganVidaković       |
|    1388 | Antun IvanŠimić       |
|    1389 | MihovilSlaviček       |
|    1390 | ZdenkaJureta          |
|    1392 | FilipCigrovski        |
|    1393 | StjepanTomić          |
|    1394 | AugustinaŠimek        |
|    1396 | GordanaHusak          |
|    1397 | MijoLegović           |
|    1398 | ZdravkaBudiša         |
|    1400 | MiljenkoTuđen         |
|    1401 | VinkoMarković         |
|    1402 | SlavkoKavčič          |
|    1404 | ŽeljkaPuljek          |
|    1405 | JerkoOgresta          |
|    1406 | TomicaLulić           |
|    1408 | MirjanaCesnik         |
|    1409 | BerislavCrnković      |
|    1410 | ŽeljkaKoren           |
|    1412 | HanaBirkić            |
|    1413 | Antun IvanGalić       |
|    1414 | TinŠipek              |
|    1415 | TomislavKovačić       |
|    1417 | ToniMerlak            |
|    1418 | DavorRoketinec        |
|    1419 | MirkoBrečić           |
|    1421 | LjiljanaJokić         |
|    1422 | HelenaCrnković        |
|    1423 | VjeranNakić           |
|    1425 | MartinaPetrinec       |
|    1426 | VanjaBonačić          |
|    1427 | HrvojeJuričić         |
|    1429 | KarlaKafadar          |
|    1430 | ŽelimirPintar         |
|    1431 | FranjoBerač           |
|    1433 | IgorBogati            |
|    1434 | MijoVrhoci            |
|    1435 | AlanFranc             |
|    1437 | MiroPugar             |
|    1438 | VedranMeštrić         |
|    1439 | JosipŠkvorc           |
|    1441 | MajoMeglaj            |
|    1442 | BorisJertec           |
|    1443 | NatašaCerjan          |
|    1445 | NikoGrbić             |
|    1446 | AntonijoNikolić       |
|    1447 | VidMarkulinčić        |
|    1449 | NatašaOsredečki       |
|    1450 | BorislavGobin         |
|    1451 | MirkoKadić            |
|    1453 | PetraTišlar           |
|    1454 | BožidarSesar          |
|    1455 | IvaHafner             |
|    1457 | BornaBurtina          |
|    1458 | DavorKroflin          |
|    1459 | PredragVlah           |
|    1461 | NenadToth             |
|    1462 | VilimŽivčić           |
|    1463 | IvanBalenović         |
|    1464 | TihomirFizir          |
|    1466 | NevenRubeša           |
|    1467 | TeaStjepanović        |
|    1468 | IvanaKuzma            |
|    1470 | DubravkoBartolić      |
|    1471 | BožidarJežić          |
|    1472 | IvanaMuranić          |
|    1474 | VjekoslavLacković     |
|    1475 | BranimirBolfek        |
|    1476 | ZlatkoPerčić          |
|    1478 | VidKulišić            |
|    1479 | BrankoCar             |
|    1480 | VjeranStipaničev      |
|    1482 | IvaKlarin             |
|    1483 | IvicaČučković         |
|    1484 | Antun IvanPužar       |
|    1486 | IvaKopjar             |
|    1487 | JurajValjak           |
|    1488 | DavorDilber           |
|    1490 | BrunoHundak           |
|    1491 | JakovBumbar           |
|    1492 | IvanKordić            |
|    1494 | FranjoBlažević        |
|    1495 | LovreŠimek            |
|    1496 | CvijetaErceg          |
|    1498 | JankoJakopović        |
|    1499 | VlahoRoginić          |
|    1500 | DaliborGradečak       |
|    1502 | JosipNikl             |
|    1503 | MajoPosavec           |
|    1504 | JosipPoljak           |
|    1506 | DamirBuković          |
|    1507 | MijoBitar             |
|    1508 | VlastaCiković         |
|    1510 | VlatkaĆurković        |
|    1511 | MirkoRech             |
|    1512 | JosipHorvat           |
|    1513 | JosipIvanović         |
|    1515 | PredragFugaj          |
|    1516 | VlatkoBedeniković     |
|    1517 | DanielKamenar         |
|    1519 | SlavkoPrstačić        |
+---------+-----------------------+
302 rows in set (0.00 sec)

MariaDB [fakultet]> SELECT mbrStud FROM ispit
    -> WHERE sifPred = 146;
+---------+
| mbrStud |
+---------+
|    1464 |
|    1419 |
|    1173 |
|    1202 |
|    1464 |
|    1419 |
|    1173 |
|    1202 |
|    1464 |
+---------+
9 rows in set (0.00 sec)

MariaDB [fakultet]> use Zaposlenici
No connection. Trying to reconnect...
Connection id:    63
Current database: *** NONE ***

Database changed
MariaDB [Zaposlenici]> show tables
    -> ;
+-----------------------+
| Tables_in_zaposlenici |
+-----------------------+
| odjeli                |
| zaposlenici           |
+-----------------------+
2 rows in set (0.00 sec)

MariaDB [Zaposlenici]> CREATE TABLE Sefovi(
    -> Sifra_zaposlenika bigint(20) NOT NULL DEFAULT 0,
    -> Sifra_odjela char(11) NOT NULL,
    -> PRIMARY KEY (Sifra_zaposlenika, Sifra_odjela),
    -> KEY Sifra_zaposlenika (Sifra_zaposlenika),
    -> KEY Sifra_odjela (Sifra_odjela),
    -> FOREIGN KEY SefOdj_fk (Sifra_odjela) REFERENCES Odjeli (Sifra_odjela),
    -> FOREIGN KEY Sefzap_fk (Sifra_zaposlenika) REFERENCES Zaposlenici (Sifra_zaposlenika)
    -> );
ERROR 1005 (HY000): Can't create table `zaposlenici`.`sefovi` (errno: 150 "Foreign key constraint is incorrectly formed")
MariaDB [Zaposlenici]> show tables
    -> ;
+-----------------------+
| Tables_in_zaposlenici |
+-----------------------+
| odjeli                |
| radnici               |
| sefovi                |
+-----------------------+
3 rows in set (0.04 sec)

MariaDB [Zaposlenici]> exit
Bye

C:\xampp\mysql\bin>mysql -u root -p
Enter password:
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 68
Server version: 10.1.30-MariaDB mariadb.org binary distribution

Copyright (c) 2000, 2017, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> show databases
    -> ;
+--------------------+
| Database           |
+--------------------+
| datasens           |
| fakultet           |
| information_schema |
| mysql              |
| performance_schema |
| php2018            |
| phpmyadmin         |
| skladiste          |
| test               |
| upisi_polaznika    |
| videoteka          |
| zaposlenici        |
+--------------------+
12 rows in set (0.00 sec)

MariaDB [(none)]>
