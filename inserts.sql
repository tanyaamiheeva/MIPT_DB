--fill chain
insert into chain (name, city, owner, foundationYear) values ('World Class', 'Москва', 'Ольга Слуцкер', 1990);
insert into chain (name, city, owner, foundationYear) values ('Территория Фитнеса', 'Москва', 'Александр Колмыков', 2010);
insert into chain (name, city, owner, foundationYear) values ('Территория Фитнеса', 'Чебоксары', 'Александр Колмыков', 2010);
insert into chain (name, city, owner, foundationYear) values ('Территория Фитнеса', 'Оренбург', 'Александр Колмыков', 2010);
insert into chain (name, city, owner, foundationYear) values ('X-FIT', 'Воронеж', 'Ирина Григорьева', 1989);

--fill club
insert into club (chainID, address, parking, working) values (1, 'ул. Демьяна Бедного, 4к2', 'n', 'y');
insert into club (chainID, address, parking, working) values (1, 'Пресненская наб., 8с1', 'n', 'y');
insert into club (chainID, address, parking, working) values (1, 'ул. Профсоюзная, 31с5', 'y', 'y');
insert into club (chainID, address, parking, working) values (2, 'ул. Ландышевая, д. 3', 'y', 'y');
insert into club (chainID, address, parking, working) values (2, 'ул. Академика Понтрягина, д.14', 'n', 'b');
insert into club (chainID, address, parking, working) values (2, '1-я Останкинская улица, вл. 43-55', 'n', 'b');
insert into club (chainID, address, parking, working) values (3, 'ул. Ярославская, д. 74, МЦ «Альфа Центр»', 'n', 'y');
insert into club (chainID, address, parking, working) values (4, 'Северный проезд, д. 19', 'n', 'n');
insert into club (chainID, address, parking, working) values (5, 'ул. Генерала Лизюкова, д. 35-Б', 'n', 'y');
insert into club (chainID, address, parking, working) values (5, 'Короленко ул дом № 5', 'y', 'y');
insert into club (chainID, address, parking, working) values (5, 'ул. Минская, д. 79', 'n', 'n');

-- fill workers
insert into workers (clubID, salary) values (1, 60000);
insert into workers (clubID, salary) values (1, 50000);
insert into workers (clubID, salary) values (1, 54000);
insert into workers (clubID, salary) values (2, 75000);
insert into workers (clubID, salary) values (2, 80000);
insert into workers (clubID, salary) values (3, 50000);
insert into workers (clubID, salary) values (3, 53000);
insert into workers (clubID, salary) values (4, 60000);
insert into workers (clubID, salary) values (4, 63500);
insert into workers (clubID, salary) values (5, 50000);
insert into workers (clubID, salary) values (5, 50000);
insert into workers (clubID, salary) values (6, 64000);
insert into workers (clubID, salary) values (6, 57000);
insert into workers (clubID, salary) values (7, 40000);
insert into workers (clubID, salary) values (7, 44000);
insert into workers (clubID, salary) values (8, 38000);
insert into workers (clubID, salary) values (9, 65000);
insert into workers (clubID, salary) values (9, 58000);
insert into workers (clubID, salary) values (10, 55300);
insert into workers (clubID, salary) values (10, 59000);
insert into workers (clubID, salary) values (11, 75800);
insert into workers (clubID, salary) values (11, 48000);

-- fill trainer
insert into trainer (trainerID, name, specialization, experience) values (1, 'Надежда Цыбакова', 'фитнес-менеджер', 13);
insert into trainer (trainerID, name, specialization, experience) values (2, 'Александр Гамаюнов', 'мастер-тренер', 11);
insert into trainer (trainerID, name, specialization, experience) values (3, 'Алёна Денисенко', 'персональный тренер', 2);
insert into trainer (trainerID, name, specialization, experience) values (4, 'Евгений Ванюков', 'элит-тренер', 20);
insert into trainer (trainerID, name, specialization, experience) values (5, 'Виктория Гурова', 'элит-тренер', 10);
insert into trainer (trainerID, name, specialization, experience) values (6, 'Анна Агафонова', 'фитнес-тренер', 10);
insert into trainer (trainerID, name, specialization, experience) values (7, 'Алексей Антонов', 'фитнес-тренер', 5);
insert into trainer (trainerID, name, specialization, experience) values (8, 'Александр Трапезников', 'детский тренер', 6);
insert into trainer (trainerID, name, specialization, experience) values (9, 'Алиса Аньшева', 'персональный тренер', 4);
insert into trainer (trainerID, name, specialization, experience) values (10, 'Анастасия Бушкова', 'инструктор тренажерного зала', 9);
insert into trainer (trainerID, name, specialization, experience) values (11, 'Анатолий Пышкин', 'инструктор тренажерного зала', 6);
insert into trainer (trainerID, name, specialization, experience) values (12, 'Андраник Бадалян', 'детский тренер', 3);
insert into trainer (trainerID, name, specialization, experience) values (13, 'Арам Саргатян', 'групповой инструктор', 8);
insert into trainer (trainerID, name, specialization, experience) values (14, 'Константин Герасимов', 'персональный тренер', 10);
insert into trainer (trainerID, name, specialization, experience) values (15, 'Наталья Егорова', 'инструктор по плаванию', 5);
insert into trainer (trainerID, name, specialization, experience) values (16, 'Игорь Вейтнер', 'персональный тренер', 3);
insert into trainer (trainerID, name, specialization, experience) values (17, 'Ирина Левченко', 'инструктор по боксу', 7);
insert into trainer (trainerID, name, specialization, experience) values (18, 'Максим Левобородов', 'персональный тренер', 13);
insert into trainer (trainerID, name, specialization, experience) values (19, 'Карина Столбова', 'массажист', 12);
insert into trainer (trainerID, name, specialization, experience) values (20, 'Анна Леонидова', 'персональный тренер', 5);
insert into trainer (trainerID, name, specialization, experience) values (21, 'Илья Васильев', 'инструктор по кросс-фиту', 8);
insert into trainer (trainerID, name, specialization, experience) values (22, 'Роман Самойлов', 'персональный тренер', 1);

-- fill subscription
insert into subscription (price, chainID) values (69900, 1);
insert into subscription (price, chainID) values (34500, 1);
insert into subscription (price, chainID) values (95400, 1);
insert into subscription (price, chainID) values (53000, 2);
insert into subscription (price, chainID) values (83200, 2);
insert into subscription (price, chainID) values (45500, 3);
insert into subscription (price, chainID) values (32000, 3);
insert into subscription (price, chainID) values (26000, 4);
insert into subscription (price, chainID) values (89900, 5);
insert into subscription (price, chainID) values (135000, 5);

-- fill client
insert into client (name, age, gender, status, subscriptionID) values ('Хлебникова Марина', 66, 'f', 'VIP', 1);
insert into client (name, age, gender, status, subscriptionID) values ('Русских Георгий', 22, 'm', 'новый', 2);
insert into client (name, age, gender, status, subscriptionID) values ('Большаков Николай', 16, 'm', NULL, 2);
insert into client (name, age, gender, status, subscriptionID) values ('Перевозчикова Олеся', NULL, NULL, NULL, 1);
insert into client (name, age, gender, status, subscriptionID) values ('Малышев Константин', 34, 'm', 'постоянный', 3);
insert into client (name, age, gender, status, subscriptionID) values ('Овчинкин Руслан', 26, 'm', 'новый', 3);
insert into client (name, age, gender, status, subscriptionID) values ('Цветков Алексей', 45, 'm', 'новый', 4);
insert into client (name, age, gender, status, subscriptionID) values ('Гараева Сусанна', 18, 'f', NULL, 4);
insert into client (name, age, gender, status, subscriptionID) values ('Резникова Наталья', 29, 'f', 'постоянный', 5);
insert into client (name, age, gender, status, subscriptionID) values ('Ревунов Никита', 21, 'm', 'постоянный', 5);
insert into client (name, age, gender, status, subscriptionID) values ('Круглов Андрей', 55, 'm', 'VIP', 6);
insert into client (name, age, gender, status, subscriptionID) values ('Филиппова Ирина', 22, 'f', 'новый', 6);
insert into client (name, age, gender, status, subscriptionID) values ('Вязников Артур', 37, 'm', 'новый', 7);
insert into client (name, age, gender, status, subscriptionID) values ('Аветисян Карен', 19, 'm', 'постоянный', 7);
insert into client (name, age, gender, status, subscriptionID) values ('Лисьих Людмила', 42, 'f', 'новый', 8);
insert into client (name, age, gender, status, subscriptionID) values ('Николаева Ольга', 30, 'f', 'постоянный', 9);
insert into client (name, age, gender, status, subscriptionID) values ('Юрова Анна', 39, 'f', 'новый', 9);
insert into client (name, age, gender, status, subscriptionID) values ('Зубов Арсений', 25, 'm', 'VIP', 10);

-- fill gym
insert into gym (clubID, chainID, capacity, type) values (1, 1, 100, 'бассейн');
insert into gym (clubID, chainID, capacity, type) values (1, 1, 20, 'зал для йоги');
insert into gym (clubID, chainID, capacity, type) values (2, 1, 45, 'тренажерный зал');
insert into gym (clubID, chainID, capacity, type) values (2, 1, 10, 'зал для йоги');
insert into gym (clubID, chainID, capacity, type) values (3, 1, 50, 'тренажерный зал');
insert into gym (clubID, chainID, capacity, type) values (3, 1, 30, 'зал для бокса');
insert into gym (clubID, chainID, capacity, type) values (4, 2, 38, 'бассейн');
insert into gym (clubID, chainID, capacity, type) values (4, 2, 25, 'хореографический зал');
insert into gym (clubID, chainID, capacity, type) values (5, 2, 10, 'сауна');
insert into gym (clubID, chainID, capacity, type) values (5, 2, 40, 'бассейн');
insert into gym (clubID, chainID, capacity, type) values (6, 2, 35, 'тренажерный зал');
insert into gym (clubID, chainID, capacity, type) values (6, 2, 20, 'зал для йоги');
insert into gym (clubID, chainID, capacity, type) values (7, 3, 15, 'тренажерный зал');
insert into gym (clubID, chainID, capacity, type) values (7, 3, 80, 'бассейн');
insert into gym (clubID, chainID, capacity, type) values (8, 4, 35, 'хореографический зал');
insert into gym (clubID, chainID, capacity, type) values (8, 4, 12, 'сауна');
insert into gym (clubID, chainID, capacity, type) values (9, 5, 40, 'бассейн');
insert into gym (clubID, chainID, capacity, type) values (9, 5, 35, 'тренажерный зал');
insert into gym (clubID, chainID, capacity, type) values (10, 5, 28, 'зал для йоги');
insert into gym (clubID, chainID, capacity, type) values (10, 5, 15, 'зал для аэрострейчинга');
insert into gym (clubID, chainID, capacity, type) values (11, 5, 35, 'бассейн');
insert into gym (clubID, chainID, capacity, type) values (11, 5, 8, 'хамам');