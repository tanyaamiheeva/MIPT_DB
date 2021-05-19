-- CRUD-запрос к таблице client
select
    *
from
    client;

insert into client (name, age, gender, status, subscriptionID) values ('Михеева Татьяна', 18, 'f', 'VIP', 10);

update client set age = 19
    where name = 'Михеева Татьяна';

delete from client
    where age = 19 and status = 'VIP' and subscriptionID = 10;

-- CRUD-запрос к таблице gym

select
    *
from
    gym;

insert into gym (clubID, chainID, capacity, type) values (1, 1, 3, 'бассейн');

update gym set type = 'комната массажа'
    where gymID = 23;

delete from gym
    where capacity < 4;