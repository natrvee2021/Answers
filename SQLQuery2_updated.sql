CREATE TABLE students(
    id int NOT NULL,
    name varchar(255) NOT NULL,
    marks int,
    PRIMARY KEY (id)
);
CREATE TABLE grades(
    id int NOT NULL,
    grade varchar(255) NOT NULL
);

insert into students(id , name , marks) values(1,'Matt',44);
insert into students(id , name , marks) values(2,'John',57);
insert into students(id , name , marks) values(3,'Lucas',78);
insert into students(id , name , marks) values(4,'Arnold',99);
insert into students(id , name , marks) values(5,'Jack',39);

insert into grades(id , grade) values(1,'C');
insert into grades(id , grade) values(2,'B');
insert into grades(id , grade) values(3,'A');
insert into grades(id , grade) values(4,'A+');
insert into grades(id , grade) values(5,'Fail');

SELECT id, name, marks, 
CASE  
WHEN  marks > 90 THEN 'A+'
WHEN marks > 70 THEN 'A'
WHEN marks > 50 THEN 'B'
WHEN marks >= 40 THEN 'C'
ELSE 'Fail'  
END AS grade
FROM students;
