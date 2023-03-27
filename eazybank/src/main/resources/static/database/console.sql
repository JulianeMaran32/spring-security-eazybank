create database if not exists eazybank;

use eazybank;

create table if not exists users
(
    id       int         not null auto_increment primary key,
    username varchar(50) not null,
    password varchar(50) not null,
    enabled  boolean     not null
);

create table if not exists authorities
(
    id        int         not null auto_increment primary key,
    username  varchar(50) not null,
    authority varchar(50) not null
);

insert ignore into users
values (null, 'happy', '12345', '1');

insert ignore into authorities
values (null, 'happy', 'write');

create table customer
(
    id    int(45)      not null auto_increment,
    email varchar(200) not null,
    pwd   varchar(45)  not null,
    role  varchar(45)  not null,
    primary key (id)
);

insert into customer(email, pwd, role)
values ('julianemaran@gmail.com', '123456', 'admin');