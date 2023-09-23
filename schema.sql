DROP DATABASE IF EXISTS     employee_tracking_db;

CREATE DATABASE employee_tracking_db;

USE employee_tracking_db;

CREATE TABLE department (
   id NOT NULL INT PRIMARY KEY,
   name VARCHAR(30) NOT NULL
);

CREATE TABLE role (
    id NOT NULL INT PRIMARY KEY,
    title VARCHAR(30) NOT NULL,
    salary DECIMAL,
    department_id INT NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE employee (
    id NOT NULL INT,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    role_id NOT NULL INT,
    manager_id NOT NULL INT,
    PRIMARY KEY (id)
)