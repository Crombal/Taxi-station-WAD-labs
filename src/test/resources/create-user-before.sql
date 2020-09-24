delete from user_role;
delete from usr;

insert into usr
    (id, password, username) values
    (1, '$2a$08$MT557hj1cFUNZKjPtdof9eU94oUFGhOy95Oe1000qMT3J6cl1zusi', 'admin'),
    (2, '$2a$08$XkOtIcsmFwJjLB0.fhDsBeoutCQ0PyuAnVFMOidCHUm2.L7SInJ/C', 'Anton');

insert into user_role
    (user_id, roles) values
    (1, 'USER'),
    (1, 'ADMIN'),
    (2, 'USER');