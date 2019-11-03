create table users
(
    id    int auto_increment
        primary key,
    label varchar(20) not null,
    constraint users_label_uindex
        unique (label)
);

