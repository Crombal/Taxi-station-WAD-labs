create table message (
    id int8 not null,
    message_name varchar(255) not null,
    message_subject varchar(255) not null,
    message_text varchar(20000) not null,
    sender_id int8 not null,
    receiver_id int8 not null,
    creation_date varchar(255),
    primary key (id)
);

alter table if exists message
    add constraint message_sender_fk
    foreign key (sender_id) references usr;

alter table if exists message
    add constraint message_receiver_fk
    foreign key (receiver_id) references usr;