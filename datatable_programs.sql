create table programs
(
    id      int auto_increment
        primary key,
    name    varchar(50) not null,
    user_id int         not null,
    constraint programs_name_uindex
        unique (name),
    constraint programs_users_id_fk
        foreign key (user_id) references users (id)
);

