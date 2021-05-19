-- view для таблицы chain

create or replace view chain_view as
    select
        chainID
        , 'Название сети: ' || name as name
        , 'Город: ' || city as city
        , 'Владелец: ' || owner as owner
        , 'Год основания: ' || foundationYear as foundation
    from
        chain;

select
    *
from
    chain_view;

-- view для таблицы club
create or replace view club_view as
    select
        clubID
        , 'ID сети клубов: ' || chainID as chain
        , 'Адрес: ' || address as addr
        , (case
            when parking = 'y'
                then 'Есть парковка'
            when parking = 'n'
                then 'Нет парковки'
            else 'Нет данных'
           end) as parking
        , (case
            when working = 'y'
                then 'Работает'
            when parking = 'n'
                then 'Не работает'
            else 'В процессе открытия'
           end) as state
from
    club;

select
    *
from
    club_view;

-- view для таблицы workers

create or replace view workers_view as
    select
        'ID клуба: ' || clubID as club
        , 'ID тренера: ' || trainer_id as trainer
        , 0 * salary as salary_mask
    from
        workers;

select
    *
from
    workers_view;

-- view для таблицы trainer
create or replace view trainer_view as
    select
        'ID тренера: ' || trainerID as trainer
        , 'Имя тренера: ' || name as name
        , overlay(specialization placing 'Посетите сайт клуба, чтобы узнать больше о тренере' from 1 for 50) as spec_mask
        , 'Опыт: ' || experience
    from
        trainer;

select
    *
from
    trainer_view;

create or replace view subscription_view as
    select
        'ID абонемента: ' || subscriptionID as id
        , 'Цена: ' || price as price
        , 'ID клуба, предлагающего абонемент: ' || chainID as chain
    from
        subscription;

select
    *
from
    subscription_view;

-- view для таблицы client
create or replace view client_view as
    select
        'ID клиента: ' || clientID as id
        , overlay(name placing '*****' from 1 for 25) as name_mask
        , 'Возраст: ' || coalesce(age, '-1') as age
        , 'Пол: ' || coalesce(gender, 'нет данных') as gender
        , 'Статус: ' || coalesce(status, 'нет данных') as status
        , 'Абонемент клиента: информация скрыта' as subscription
    from
        client;

select
    *
from
    client_view;

-- view для таблицы gym
create or replace view gym_view as
    select
        'ID зала:' || gymID as id
        , 'ID клуба: ' || clubID || ' и сети, которой принадлежит зал: ' || chainID as ids
        , 'Вместимость: ' || capacity as cap
        , 'Тип зала: ' || type as type
    from
        gym;

select
    *
from
    gym_view;