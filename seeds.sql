
INSERT INTO department (name)
VALUES ("Security"), ("HR"), ("Engineering"), ("PayRoll"), ("Leadership");

INSERT INTO role (title, salary, department_id)
VALUE ("Head of Security", 25000.00, 2), ("Scientist", 600000.00, 3), ("Engineer", 600000.00, 4), ("Butler", 200000.00, 1), ("CEO", 800000.00, 5);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUE ("Zeno", "ofCitium", 1, 3), ("Cleanthes", "Succesor", 1, 1), ("Chrysippus", "TheSecond", 3, 2), ("Diogenes", "ofBabylon", 5, 2), ("Marcus", "Aurelius", 5, 2);