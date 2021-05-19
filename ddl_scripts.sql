drop table if exists "chain" cascade;
drop table if exists "club" cascade;
drop table if exists "workers" cascade;
drop table if exists "trainer" cascade;
drop table if exists "subscription" cascade;
drop table if exists "client" cascade;
drop table if exists "gym" cascade;

create database MIPT_DB;

create schema fitness;
set search_path to fitness, public;

create table "chain"
(
    chainID          serial        not null primary key,
    name             varchar(100)  not null,
    city             varchar(50)   not null,
    owner            varchar(100),
    foundationYear   integer
);

create table if not exists club
(
    chainID     integer            not null references "chain" (chainID),
    clubID      serial             not null primary key,
    address     varchar(100)       not null,
    parking     char(1),
    working     char(1)            not null
);

create table if not exists workers
(
    clubID        integer          not null references "club" (clubID),
    trainer_id    serial           not null primary key,
    salary        float            not null,
    check (salary > 0)
);

create table if not exists trainer
(
    trainerID        serial           not null primary key references "workers" (trainer_id),
    name             varchar(100)     not null,
    specialization   varchar(100),
    experience       integer          not null default 0
);

create table if not exists subscription
(
    subscriptionID   serial        not null primary key,
    price            float         not null,
    chainID          integer       not null references "chain" (chainID),
    check (price > 0)
);

create table if not exists client
(
    clientID         serial          not null primary key,
    name             varchar(100)    not null,
    age              integer,
    gender           char(1),
    status           varchar(50),
    subscriptionID   integer         not null references "subscription" (subscriptionID)
);

create table if not exists gym
(
    gymID            serial        not null primary key,
    clubID           integer       not null references "club" (clubID),
    chainID          integer       not null references "chain" (chainID),
    capacity         integer,
    type             varchar(50)
);