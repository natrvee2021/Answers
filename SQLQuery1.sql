CREATE TABLE CUSTOMER (
    ID int NOT NULL,
    NAME varchar(255) NOT NULL,
    COUNTRY varchar(255),
    CREDITS int,
    PRIMARY KEY (ID)
);

insert into CUSTOMER(ID , NAME , COUNTRY , CREDITS) values(1,'Frances White','USA',200350);
insert into CUSTOMER(ID , NAME , COUNTRY , CREDITS) values(2,'Carolyn Bradley','UK',15354);

 
 insert into CUSTOMER(ID , NAME , COUNTRY , CREDITS) values(3,'Annie Fernandez','France',359200);
 insert into CUSTOMER(ID , NAME , COUNTRY , CREDITS) values(4,'Ruth Hanson','Albania',1060);

insert into CUSTOMER(ID , NAME , COUNTRY , CREDITS) values(5,'Paula Fuller','USA',14789);
 insert into CUSTOMER(ID , NAME , COUNTRY , CREDITS) values(6,'Bonnie Johnston','China',100243);

insert into CUSTOMER(ID , NAME , COUNTRY , CREDITS) values(7,'Ruth Gutierrez','USA',998999);
 insert into CUSTOMER(ID , NAME , COUNTRY , CREDITS) values(8,'Ernest Thomas','Canada',500500);

insert into CUSTOMER(ID , NAME , COUNTRY , CREDITS) values(9,'Joe Garza','UK',18782);
 insert into CUSTOMER(ID , NAME , COUNTRY , CREDITS) values(10,'Anne Harris','USA',158367);



Select ID,NAME from CUSTOMER order by NAME desc, ID asc;
