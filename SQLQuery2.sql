CREATE TABLE students (
    id int NOT NULL,
    name varchar(255) NOT NULL,
    marks int,
    PRIMARY KEY (id)
);

CREATE TABLE grades (
    id int ,
   min_mark int,
   max_mark int,
   grade varchar(255)
);

insert into students(id , name , marks) values(1,'Matt',44);
insert into students(id , name , marks) values(2,'John',57);
insert into students(id , name , marks) values(3,'Lucas',78);

insert into grades(id , min_mark , max_mark, grade) values(1,40,50,'C');
insert into grades(id , min_mark , max_mark, grade) values(2,51,70,'B');
insert into grades(id , min_mark , max_mark, grade) values(3,71,90,'A');

SELECT s.id, s.name, s.marks, g.grade FROM students AS s JOIN grades AS g ON s.marks BETWEEN g.min_mark AND g.max_mark;
