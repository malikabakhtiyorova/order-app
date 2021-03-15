create database orders_app;

create type gender as enum('m', 'f');

create table orders (
    order_id serial not null primary key,
    order_fullname varchar(40),
    order_gender gender not null,
    order_contact varchar(16),
    order_date date default current_date
);