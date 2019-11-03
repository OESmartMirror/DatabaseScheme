create table users_parameters
(
    id              int auto_increment
        primary key,
    user_id         int          not null,
    parameter_name  varchar(20)  not null,
    parameter_value varchar(100) not null,
    constraint users_parameters_parameter_name_uindex
        unique (parameter_name),
    constraint users_parameters_user_id_uindex
        unique (user_id),
    constraint users_parameters_users_id_fk
        foreign key (user_id) references users (id)
);

