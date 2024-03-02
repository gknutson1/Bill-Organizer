create table if not exists bills
(
    source         varchar(255)                          not null,
    id             varchar(255)                          not null
        primary key,
    status         varchar(255)                          not null,
    sponsor        varchar(255)                          not null,
    last_update    timestamp default current_timestamp() not null on update current_timestamp(),
    title          varchar(255)                          not null,
    companion_bill varchar(255)                          null,
    vetoed         binary(1) default '0'                 not null,
    passing_status binary(1)                             null,
    info_link      varchar(255)                          not null,
    party          varchar(255)                          not null,
    constraint bills_bills_id_fk
        foreign key (companion_bill) references bills (id)
);

create table if not exists users
(
    uname varchar(16)  not null
        primary key,
    pass  varchar(97)  not null,
    email varchar(255) null
);

create table if not exists lists
(
    id     uuid default uuid() not null
        primary key,
    color  tinyint             null,
    author varchar(16)         not null,
    name   varchar(255)        not null,
    constraint lists_users_uname_fk
        foreign key (author) references users (uname)
            on delete cascade
);

create table if not exists marks
(
    list uuid         not null,
    bill varchar(255) not null,
    primary key (list, bill),
    constraint marks_bills_id_fk
        foreign key (bill) references bills (id),
    constraint marks_lists_id_fk
        foreign key (list) references lists (id)
            on delete cascade
);

create table if not exists notes
(
    id            uuid      default uuid()              not null
        primary key,
    content       text                                  null,
    author        varchar(255)                          not null,
    creation_time timestamp default current_timestamp() not null,
    edit_time     timestamp default current_timestamp() not null on update current_timestamp(),
    bill          varchar(255)                          not null,
    constraint author_users_uname_fk
        foreign key (author) references users (uname)
            on delete cascade,
    constraint notes_bills_id_fk
        foreign key (bill) references bills (id)
);

