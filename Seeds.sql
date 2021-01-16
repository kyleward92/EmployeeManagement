  
DROP DATABASE IF EXISTS employee_management_DB;
CREATE database employee_management_DB;

USE employee_management_DB;


CREATE TABLE department (
  id INT NOT NULL AUTO_INCREMENT,
  department_name VARCHAR(30) NULL,
  PRIMARY KEY (id)
);

CREATE TABLE role (
  id INT NOT NULL AUTO_INCREMENT,
  title VARCHAR(100) NULL,
  Salary INT NULL,
  department_id INT NOT NULL ,
  PRIMARY KEY (id)
);

CREATE TABLE employee (
  id INT NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(30) NULL,
  last_name VARCHAR(30) NULL,
  role_id  INT NULL,
  manager_id INT NOT NULL T,
  PRIMARY KEY (id)
);

SELECT * FROM department;
SELECT * FROM role;
SELECT * FROM employee;




INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("John", "Wick", 100, 100);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Rick", "Sanchez", 200, 100);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Paul", "Walker", 300, 100);

INSERT INTO role (id,title, salary, department_id)
VALUES (100, "Management", 100000, 10);
INSERT INTO role (id,title, salary, department_id)
VALUES (200, "Sales", 65000, 20);
INSERT INTO role (id,title, salary, department_id)
VALUES (300, "Senior Accountant", 60000, 30);

INSERT INTO department (id, department_name)
VALUES (10, "Regional Manager");
INSERT INTO department (id, department_name)
VALUES (20, "Sales Representative");
INSERT INTO department (id, department_name)
VALUES (30, "Accounting");
INSERT INTO department (id, department_name)
VALUES (40, "Supply Chain");
INSERT INTO department (id, department_name)
VALUES (50, "Customer Service");