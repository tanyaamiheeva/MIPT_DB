-- view с join #1
create or replace view subscriptions_with_chains as
    select
        'ID абонемента: ' || s.subscriptionID as id
        , 'Стоимость: ' || s.price as price
        , 'ID клуба: ' || s.chainID as chain
        , chain.name
    from
        subscription s
    inner join
        chain
            on chain.chainID = s.chainID;

select
    *
from
    subscriptions_with_chains;

-- view c join #2

create or replace view full_trainer_info as
    select
        'ID клуба: ' || w.clubID as club
        , 'ID тренера: ' || w.trainer_id as trainer
        , w.salary as salary
        , 'Имя тренера: ' || t.name as name
        , 'Специализация: ' || t.specialization as spec
        , 'Опыт: ' || t.experience as experience
        , 'Адрес клуба, в котором работает: ' || c.address as addr
    from
        workers w
    inner join
        trainer t
            on w.trainer_id = t.trainerID
    inner join
        club c
            on w.clubID = c.clubID;

select
    *
from
    full_trainer_info;