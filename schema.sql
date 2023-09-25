DROP DATABASE IF EXISTS     employee_tracking_db;

CREATE DATABASE employee_tracking_db;

USE employee_tracking_db;

CREATE TABLE department (
    id INT NOT NULL PRIMARY KEY,
    title VARCHAR(30) NOT NULL
);

CREATE TABLE role (
    id INT NOT NULL PRIMARY KEY,
    title VARCHAR(30) NOT NULL,
    salary DECIMAL,
    department_id INT NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE employee (
    id INT NOT NULL PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    role_id  INT NOT NULL ,
    manager_id INT NOT NULL ,
    FOREIGN KEY (role_id)
    REFERENCES role(id)
    FOREIGN KEY (manager_id)
    REFERENCES employee(id)
);