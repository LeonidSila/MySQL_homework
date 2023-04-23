-- CREATE DATABASE homework_database_3;-- 
USE homework_database;

CREATE TABLE home_work_3 (
	id int primary key auto_increment,
    name_1 varchar (20) not null,
    surname varchar (20) not null,
    speciality varchar (20) not null,
    seniority int not null,
    salary int not null,
    age int not null
);
INSERT home_work_3(name_1, surname, speciality, seniority, salary, age)
VALUES
	('Вася', 'Васькин', 'начальник', 40, 100000, 60),
    ('Петя', 'Петькин', 'начальник', 8, 70000, 30),
    ('Катя', 'Катькина', 'инженер', 2, 70000, 25),
    ('Саша', 'Сашкин', 'инженер', 12, 50000, 35),
    ('Иван', 'Иванов', 'рабочий', 40, 30000, 59),
    ('Петр', 'Петров', 'рабочий', 20, 25000, 40),
    ('Сидор', 'Сидоров', 'рабочий', 10, 20000, 35),
    ('Антон', 'Антонов', 'рабочий', 8, 19000, 28),
    ('Юра', 'Юркин', 'рабочий', 5, 15000, 25),
    ('Максим', 'Воронин', 'рабочий', 2, 11000, 22),
    ('Юра', 'Галкин', 'рабочий', 3, 12000, 24),
	('Люся', 'Люськина', 'уборщик', 10, 10000, 49);


-- 1.Отсортируйте поле “зарплата” (salary) в порядке убывания и возрастания
SELECT * FROM home_work_3
ORDER BY salary;

SELECT * FROM home_work_3
ORDER BY salary DESC;

-- 2. Выведите 5 максимальных зарплат (salary)
SELECT * FROM home_work_3
ORDER BY salary DESC LIMIT 5;


-- 3. Подсчитать суммарную зарплату(salary) по каждой специальности (speciality)
SELECT speciality, sum(salary) FROM home_work_3
GROUP BY speciality;

-- 4. Найти количество сотрудников по специальности “Рабочий” (speciality) в возрасте от 24 до 42 лет.
SELECT count(*) FROM home_work_3
WHERE speciality='рабочий' AND age BETWEEN 24 AND 42;

-- 5. Найти количество специальностей
SELECT count(*)  FROM (SELECT DISTINCT speciality FROM home_work_3) AS temp;

-- 6. Вывести специальности, у которых средний возраст сотрудника меньше 44 лет
SELECT speciality, AVG(age) FROM home_work_3
GROUP BY speciality
HAVING AVG(age)<44;
