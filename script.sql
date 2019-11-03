create
or
replace table users
(
    id int auto_increment
    primary key,
    label varchar (20) not null,
    constraint users_label_uindex
    unique (label)
);

create
or
replace table pictures
(
    id int auto_increment
    primary key,
    user_id int not null,
    picture longblob not null,
    time_stamp timestamp default CURRENT_TIMESTAMP not null,
    constraint pictures_users_id_fk
    foreign key (user_id) references users (id)
);

create
or
replace table programs
(
    id int auto_increment
    primary key,
    name varchar (50) not null,
    user_id int not null,
    constraint programs_name_uindex
    unique (name),
    constraint programs_users_id_fk
    foreign key (user_id) references users (id)
);

create
or
replace table program_parameters
(
    id int auto_increment
    primary key,
    program_id int not null,
    parameter_name varchar (20) not null,
    parameter_value varchar (100) not null,
    constraint program_parameters_parameter_name_uindex
    unique (parameter_name),
    constraint program_parameters_users_id_fk
    foreign key (program_id) references programs (id)
);

create
or
replace table users_parameters
(
    id int auto_increment
    primary key,
    user_id int not null,
    parameter_name varchar (20) not null,
    parameter_value varchar (100) not null,
    constraint users_parameters_parameter_name_uindex
    unique (parameter_name),
    constraint users_parameters_user_id_uindex
    unique (user_id),
    constraint users_parameters_users_id_fk
    foreign key (user_id) references users (id)
);


