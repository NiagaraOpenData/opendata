--Creative Commons 4.0, 2016.
--These SQL commands can be used to create a database in MySQL in a terminal environment. This database is for managing information about places that you can visit to give or receive donated goods.
--The original purpose was to manage food banks, but this concept has been diversified to include other goods as well.
--Simply copy and paste each command into MySQL and you should have an empty database before you know it!
--There are 4 tables: organization, branch, service, visit.
--Do whatever you want to it.
--Use the data file to populate it with a sample.
CREATE DATABASE give_receive;
USE give_receive;

--Donation banks are run by organizations. Each organization can have multiple branches.
--affiliation: W = worship, G = government, S = school, P = private
CREATE TABLE organization(
org_name VARCHAR(255) NOT NULL,
affiliation ENUM('W', 'G', 'S', 'P') NOT NULL,
PRIMARY KEY (org_name)
);

CREATE TABLE branch(
branch_id INT AUTO_INCREMENT NOT NULL,
org_name VARCHAR(255) NULL,
branch_name VARCHAR(255) NOT NULL,
address VARCHAR(255) NOT NULL,
unit VARCHAR(20) NULL,
neighbourhood VARCHAR(255) NOT NULL,
municipality VARCHAR(255) NOT NULL,
geo_lat FLOAT(15,13) NULL,
geo_long FLOAT(15,13) NULL,
PRIMARY KEY (branch_id),
FOREIGN KEY (org_name) REFERENCES organization(org_name),
CONSTRAINT id_branch CHECK (branch_id>0)
);

--The service table allows each branch to offer multiple services of any type.
--price_point: F = free, D = discount, N = normal price
--service_desc: text field that could describe any service. No limit on how many there could be. Data entry should be done carefully, to ensure that each service is spelled the same way each time it is entered.
CREATE TABLE service(
service_id INT AUTO_INCREMENT NOT NULL,
price_point ENUM('F', 'D', 'N') NOT NULL,
description VARCHAR(255) NOT NULL,
PRIMARY KEY (service_id),
CONSTRAINT id_service CHECK (service_id>0)
);

--The visit table facilitates a relationship between the branch and service tables.
--visit_month: Can be any month ("any") or a specific month (like a Christmas event during that week, i.e. "DEC").
--visit_week: food banks operate based on which week of the month it is. For example, the 4th Saturday of the month.
--give-receive: G = give, R = receive, B = both
CREATE TABLE visit(
visit_id INT AUTO_INCREMENT NOT NULL,
branch_id INT NOT NULL,
service_id INT NOT NULL,
give_receive ENUM('G', 'R', 'B') NOT NULL,
visit_month CHAR(3) NOT NULL,
visit_week ENUM('1', '2', '3', '4', '5') NULL,
visit_day CHAR(3) NOT NULL,
visit_time_s TIME NOT NULL,
visit_time_e TIME NOT NULL,
PRIMARY KEY (visit_id),
FOREIGN KEY (branch_id) REFERENCES branch(branch_id),
FOREIGN KEY (service_id) REFERENCES service(service_id),
CONSTRAINT id_visit CHECK (visit_id>0)
);

--Now, check that you have all the tables, and you're ready to add your data!
SHOW TABLES;