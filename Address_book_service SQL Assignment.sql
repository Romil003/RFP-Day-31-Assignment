/* Address_book_service database */

#UC1
create database address_book_service ;
use address_book_service;

#UC2
create table address_book(
firstname varchar(20),
lastname varchar(20),
city varchar(20),
state varchar(20),
zip int ,
phonenumber int,
email varchar(20),
primary key(firstname)
);

#UC3
insert into address_book(firstname,lastname,city,state,zip,phonenumber,email)
values("Sarvesh","Pednekar","Bhandup","Maharashtra",400099,20004,"sarvesh@gmail.com"),
("Prathamesh","Vardam","Bhandup","Maharashtra",400021,32342,"vardam@yahoo.in"),
("Vaibhav","Gopale","Ghatkopar","Maharashtra",400024,1234,"vaibh@gmail.com"),
("Sujit","Dhamke","Asangaon","Maharashtra",400020,78695,"suj11@yahoo.in"),
("Rutik","Hajare","Thane","Maharashtra",423134,234323,"hajare11@gmail.com"),
("Siddhesh","Shewale","Ghatkopar","Maharashtra",4329,968594069,"sheawl@gmail.com"),
("Vishal","Paul","Ghatkopar","Maharashtra",4567891,2343,"paul65@yahoo.in"),
("Romil","Ghadge","Thane","Maharashtra",400032,7654,"romi77@gmail.com");

#UC4
update address_book set email = "shewale1121@yahoo.in"
where firstname = "Sidhhesh";

#UC5
delete from address_book 
where firstname = "Vishal";

#UC6
select * from address_book
where city = "Ghatkopar";
select * from address_book
where city = "Bhandup";

#UC7
select count(city) from address_book
where city = "Ghatkopar";
select count(state) from address_book
where state = "Maharashtra";

#UC8
select * from address_book
where city = "Bhandup" order by firstname asc;
select * from address_book
where city = "Ghatkopar" order by firstname desc;

#UC9
alter table address_book add address_book_name varchar(20) after lastname;
alter table address_book add type varchar(20) after address_book_name;
update address_book set address_book_name = "abc" , type = "Family"
where firstname in("Sarvesh","Prathamesh");
update address_book set address_book_name = "xyz" , type = "Friends"
where firstname in("Vaibhav","Sujit","Siddhesh");

#UC10
select count(type) from address_book
where type = "Family";
select count(type) from address_book
where type = "Friends";

#UC11
delete from address_book 
where firstname = "Rutik";
insert into address_book(firstname,lastname,address_book_name,type,city,state,zip,phonenumber,email)
values("Rutik","Hajare","abc","Family","Thane","Maharashtra",423134,234323,"hajare11@gmail.com"),
("Vishal","Paul","xyz","Friends","Ghatkopar","Maharashtra",4567891,2343,"paul65@yahoo.in");
select *from address_book;

#UC12 ER diagram

