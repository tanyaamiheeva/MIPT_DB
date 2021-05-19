-- trigger на insert в таблицу клиентов

create or replace function notice_new_clients()
    returns trigger as $$
    declare
    begin
        raise notice 'New client was added';
        return new;
    end;
$$ language plpgsql;

drop trigger if exists notice_new on client;
create trigger notice_new
    after insert on client
    for each row
    execute procedure notice_new_clients();

-- trigger на delete из таблицы клиентов

create or replace function notice_delete_clients()
    returns trigger as $$
    declare
    begin
        raise notice 'Client was deleted';
        return new;
    end;
$$ language plpgsql;

drop trigger if exists notice_delete on client;
create trigger notice_delete
    after delete on client
    for each row
    execute procedure notice_delete_clients();

insert into client (name, age, gender, status, subscriptionID) values ('Михеева Татьяна', 18, 'f', 'VIP', 10);
delete from client where name = 'Михеева Татьяна';
