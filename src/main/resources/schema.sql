create table IF NOT EXISTS author
(
    id integer auto_increment not null,
    name varchar(255) not null,
    surname varchar(255) not null,
    primary key(id)
);

create table IF NOT EXISTS book
(
    id integer auto_increment not null,
    title varchar(255) not null,
    author_id integer not null,
    primary key(id),
    foreign key (author_id) references author(id)
);

MERGE INTO author
KEY(ID, NAME, SURNAME) VALUES
(1, 'test author 1', 'last name'),
(2, 'test author 2', 'name');
