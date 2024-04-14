-- Creating table Users
create table Users (
	  id integer not null,
	  name varchar(100) not null,
	  email varchar(50) not null,
	  password varchar(100) not null,
	  createdAt date not null,
	  PRIMARY KEY(id)
);

-- Creating table Groups
create table Groups (
  	id integer not null,
  	ownerUserId integer not null,
  	name varchar(100) not null,
  	color varchar(50) not null,
  	createdAt date not null,
  	PRIMARY KEY(id),
  	CONSTRAINT fk_groups_users_id FOREIGN KEY(ownerUserId) REFERENCES Users(id)
);

-- Inserting data for table Users
insert into Users (id, name, email, password, createdAt) values (1, 'miguel', 'miguel@gmail.com', 'password', '2023-01-02');
insert into Users (id, name, email, password, createdAt) values (2, 'juan camilo', 'juancamilo@gmail.com', 'password', '2024-03-14');
insert into Users (id, name, email, password, createdAt) values (3, 'mateo', 'mateo@gmail.com', 'password', '2024-04-18');
insert into Users (id, name, email, password, createdAt) values (4, 'carolina', 'carolina@gmail.com', 'password', '2024-08-22');
insert into Users (id, name, email, password, createdAt) values (5, 'liliana', 'liliana@gmail.com', 'password', '2024-08-22');
insert into Users (id, name, email, password, createdAt) values (6, 'césar', 'cesar@gmail.com', 'password', '2024-09-22');
insert into Users (id, name, email, password, createdAt) values (7, 'hernán', 'hernan@gmail.com', 'password', '2024-12-01');
  
-- Inserting data for table Groups
insert into Groups (id, name, color, ownerUserId, createdAt) values (1, 'Los 4 babies', '#FF5733', 2, '2023-03-14');
insert into Groups (id, name, color, ownerUserId, createdAt) values (2, 'Paseo san andrés', '#FCFF33', 1, '2023-04-14');
insert into Groups (id, name, color, ownerUserId, createdAt) values (3, 'Salida provenza jueves', '#77FF33', 5, '2023-05-14');
insert into Groups (id, name, color, ownerUserId, createdAt) values (4, 'Grupo # 4', '#33FFCE', 3, '2023-06-22');
insert into Groups (id, name, color, ownerUserId, createdAt) values (5, 'Los gatos', '#33C4FF', 7, '2023-07-14');
insert into Groups (id, name, color, ownerUserId, createdAt) values (6, 'Los del sur', '#335EFF', 6, '2023-07-14');
insert into Groups (id, name, color, ownerUserId, createdAt) values (7, 'Grupo # 3', '#7133FF', 1, '2023-01-02');
insert into Groups (id, name, color, ownerUserId, createdAt) values (8, 'Los chompos', '#BE33FF', 2, '2024-03-14');
insert into Groups (id, name, color, ownerUserId, createdAt) values (9, 'Grupo # 1', '#FF33FF', 3, '2024-04-18');
insert into Groups (id, name, color, ownerUserId, createdAt) values (10, 'Grupo # 2', '#FF338D', 4, '2024-08-22');

-- Homework

-- count how many rows are in the table groups
-- select all groups that belongs to the User #1
-- select all groups that belongs to the user 'juan camilo', include only the columns group id, group name, group color and user name
-- select all groups created between the dates '2023-01-01' and '2023-12-31'
-- select all groups that contains the word 'Grupo' at the beginning of the column group name
-- select all groups that belongs to these two users 'miguel' and 'liliana'
-- select all groups and apply asc ordering
-- select all groups and apply desc ordering
-- select only the first 5 groups ordered by name asc 
-- select all groups with their respective users, but include all columns from the table groups except ownerUserId and include the user name
-- insert 1 new group with name 'Grupo # 5' related to the user 'liliana'
-- update the group created in the previous step and change the column name to be 'Salida Jardín'
-- update the group created in the previous step and change the ownerUserId to be 100, explain what happens
-- delete the user 'liliana' from the table Users, explain what happens
