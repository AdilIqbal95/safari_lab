DROP TABLE IF EXISTS assignment;
DROP TABLE IF EXISTS animal;
DROP TABLE IF EXISTS enclosure;
DROP TABLE IF EXISTS staff;


CREATE TABLE enclosure (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    capacity INT,
    closedForMaintenance VARCHAR(255)    
);

CREATE TABLE animal (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    type VARCHAR(255),
    age INT,
    enclosure_id INTEGER REFERENCES enclosure(id) NOT NULL
);

CREATE TABLE staff (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    employeeNumber INT
);

CREATE TABLE assignment (
    id SERIAL PRIMARY KEY,
    employee_id INTEGER REFERENCES staff(id) NOT NULL,
    enclosure_id INTEGER REFERENCES enclosure(id) NOT NULL,
    day VARCHAR(255)
);



INSERT INTO enclosure (name, capacity, closedForMaintenance) VALUES ('Tiger enclosure', 3, 'false');
INSERT INTO enclosure (name, capacity, closedForMaintenance) VALUES ('Lion enclosure', 2, 'false');
INSERT INTO enclosure (name, capacity, closedForMaintenance) VALUES ('Penguin enclosure', 10, 'false');
INSERT INTO enclosure (name, capacity, closedForMaintenance) VALUES ('Snake enclosure', 5, 'false');
INSERT INTO enclosure (name, capacity, closedForMaintenance) VALUES ('Eagle enclosure', 2, 'true');

INSERT INTO animal (name, type, age, enclosure_id) VALUES ('Tony', 'Tiger', 59, 1);
INSERT INTO animal (name, type, age, enclosure_id) VALUES ('Leo', 'Lion', 40, 2);
INSERT INTO animal (name, type, age, enclosure_id) VALUES ('Pingu', 'Penguin', 35, 3);
INSERT INTO animal (name, type, age, enclosure_id) VALUES ('Nial', 'Snake', 24, 4);
INSERT INTO animal (name, type, age, enclosure_id) VALUES ('Lira', 'Tiger', 46, 1);

INSERT INTO staff (name, employeeNumber) VALUES ('Bob', 123);
INSERT INTO staff (name, employeeNumber) VALUES ('Kate', 456);
INSERT INTO staff (name, employeeNumber) VALUES ('John', 789);
INSERT INTO staff (name, employeeNumber) VALUES ('Lilo', 246);
INSERT INTO staff (name, employeeNumber) VALUES ('Andrew', 135);


INSERT INTO assignment (employee_id, enclosure_id, day) VALUES (1,1,'Monday');
INSERT INTO assignment (employee_id, enclosure_id, day) VALUES (2,2,'Monday');
INSERT INTO assignment (employee_id, enclosure_id, day) VALUES (3,3,'Tuesday');
INSERT INTO assignment (employee_id, enclosure_id, day) VALUES (4,4,'Wednesday');
INSERT INTO assignment (employee_id, enclosure_id, day) VALUES (5,5,'Thursday');

