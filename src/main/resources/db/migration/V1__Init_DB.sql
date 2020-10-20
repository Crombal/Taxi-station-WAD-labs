create sequence hibernate_sequence start 1 increment 1;

create table ordr (
    id int8 not null,
    from_str varchar(255) not null,
    to_str varchar(255) not null,
    author_id int8 not null,
    driver_id int8,
    complete boolean,
    creation_date varchar(255),
    primary key (id)
);

create table user_role (
    user_id int8 not null,
    roles varchar(255)
);

create table usr (
    id int8 not null,
    password varchar(255) not null,
    username varchar(255) not null,
    primary key (id)
);

alter table if exists user_role
    add constraint user_role_user_fk
    foreign key (user_id) references usr;

alter table if exists ordr
    add constraint order_author_fk
    foreign key (author_id) references usr;

alter table if exists ordr
    add constraint order_driver_fk
    foreign key (driver_id) references usr;
