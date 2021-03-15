create database orders_app;

create type gender as enum('m', 'f');

create table orders (
    order_id serial not null primary key,
    order_fullname varchar(40),
    order_gender gender not null,
    order_contact varchar(16),
    order_date date default current_date
);

insert into orders(order_fullname, order_gender, order_contact) values('asmo','f', '123');
insert into orders(order_fullname, order_gender, order_contact) values('mas','f', '123');
insert into orders(order_fullname, order_gender, order_contact, order_date) values('edh','m', '43', '2021-03-10');
insert into orders(order_fullname, order_gender, order_contact, order_date) values('ewry','m', '34', '2021-03-10');

select 
    order_fullname,
    order_gender,
    order_contact
 from orders
 where 
to_char( order_date, 'YYYY-MM-DD') =  to_char(now(), 'YYYY-MM-DD');

