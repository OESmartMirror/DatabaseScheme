create table pictures
(
    id         int auto_increment
        primary key,
    user_id    int                                 not null,
    picture    longblob                            not null,
    time_stamp timestamp default CURRENT_TIMESTAMP not null,
    constraint pictures_users_id_fk
        foreign key (user_id) references users (id)
);

