-- Топ-5 людей с самыми дорогими абонементами
select
    c.clientID
    , c.name
    , sum(s.price)
from
    client c
inner join
    subscription s
        on c.subscriptionID = s.subscriptionID
group by
    clientID
order by
    sum(s.price) desc
limit 5;

--  Средний стаж тренеров с самой высокой зарплатой (возьмем 5 наибольших зарплат)
select
    avg(t.experience)
from
    trainer t
inner join
    workers w
        on w.trainer_id = t.trainerID
where
      salary in (
          select distinct
              sum(salary)
          from
              workers
          group by
              workers.trainer_id
          order by
              sum(workers.salary) desc
          limit 5);

-- Сумма зарплат всех работников сети
with clubs_salary as (
    select
        c.clubID
        , c.chainID
        , sum(w.salary) as club_salary
    from
        workers w
    inner join
        club c
            on c.clubID = w.clubID
    group by
        c.clubID)

select
    ch.chainID
    , sum(cs.club_salary)
from
    clubs_salary cs
inner join
    chain ch
        on cs.chainID = ch.chainID
group by
    ch.chainID
order by
    ch.chainID;

-- Количество клиентов старше 50 у каждой сети
select
    ch.chainID
    , count(c.clientID)
from
    client c
inner join
    subscription s
        on s.subscriptionID = c.subscriptionID
inner join
    chain ch
        on ch.chainID = s.chainID
where
    c.age > 50
group by
    ch.chainID;

-- Средняя вместимость залов разного типа
select
    type
    , (case
        when trunc(avg(capacity)) = avg(capacity)
            then avg(capacity)
        else trunc(avg(capacity))
        end) as avg_capacity
from
    gym
group by
    type;
