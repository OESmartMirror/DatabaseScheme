create table program_parameters
(
    id              int auto_increment
        primary key,
    program_id      int          not null,
    parameter_name  varchar(20)  not null,
    parameter_value varchar(100) not null,
    constraint program_parameters_parameter_name_uindex
        unique (parameter_name),
    constraint program_parameters_users_id_fk
        foreign key (program_id) references programs (id)
);

