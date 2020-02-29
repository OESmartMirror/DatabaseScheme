create schema `datatable;` collate utf8mb4_general_ci;

create table users
(
	id int auto_increment
		primary key,
	label varchar(20) not null,
	constraint users_label_uindex
		unique (label)
);

create table pictures
(
	id int auto_increment
		primary key,
	user_id int not null,
	picture longblob not null,
	time_stamp timestamp default current_timestamp() not null,
	constraint pictures_users_id_fk
		foreign key (user_id) references users (id)
);

create table programs
(
	id int auto_increment
		primary key,
	name varchar(50) not null,
	user_id int not null,
	constraint programs_users_id_fk
		foreign key (user_id) references users (id)
);

create table program_parameters
(
	id int auto_increment
		primary key,
	program_id int not null,
	parameter_name varchar(20) not null,
	parameter_value varchar(100) not null,
	constraint program_parameters_users_id_fk
		foreign key (program_id) references programs (id)
);

create table users_parameters
(
	id int auto_increment
		primary key,
	user_id int not null,
	parameter_name varchar(20) not null,
	parameter_value varchar(100) not null,
	constraint users_parameters_user_id_uindex
		unique (user_id),
	constraint users_parameters_users_id_fk
		foreign key (user_id) references users (id)
);

