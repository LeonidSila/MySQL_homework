### Используя операторы языка SQL, создайте табличку “sales”. Заполните ее данными.


```
CREATE TABLE sales (
    id INT,
    order_date Date NOT NULL,
    bucket VARCHAR(50)
    );

INSERT INTO sales (id, order_date, bucket) VALUES (
    1, "2021-01-01", "101 to 300"
    );

INSERT INTO sales (id, order_date, bucket) VALUES (
    1, "2021-01-02", "101 to 300"
    );

INSERT INTO sales (id, order_date, bucket) VALUES (
    1, "2021-01-03", "less than equal to 100"
    );

INSERT INTO sales (id, order_date, bucket) VALUES (
    1, "2021-01-04", "101 to 300"
    );

INSERT INTO sales (id, order_date, bucket) VALUES (
    1, "2021-01-05", "greater than 300"
    );

```



### Создайте таблицу “orders”, заполните ее значениями. Выберите все заказы. В зависимости от поля order_status выведите столбец full_order_status: OPEN – «Order is in open state» CLOSED - «Order is closed»; CANCELLED - «Order is cancelled»


```
CREATE TABLE orders (
    ordreid INT PRIMARY KEY AUTO_INCREMENT,
    employeeid VARCHAR(3) NOT NULL,
    amount DECIMAL(5,2) NOT NULL,
    orderstatus VARCHAR(10) NOT NULL
    );

INSERT INTO orders (employeeid, amount, orderstatus) VALUES (
    "e03", 15.00, "OPEN");

INSERT INTO orders (employeeid, amount, orderstatus) VALUES (
    "e01", 25.50, "OPEN");

INSERT INTO orders (employeeid, amount, orderstatus) VALUES (
    "e05", 100.70, "CLOSED");

INSERT INTO orders (employeeid, amount, orderstatus) VALUES (
    "e02", 22.18, "OPEN");

INSERT INTO orders (employeeid, amount, orderstatus) VALUES (
    "e04", 9.50, "CANCELLED");

INSERT INTO orders (employeeid, amount, orderstatus) VALUES (
    "e04", 99.99, "OPEN");
    
SELECT ordreid, orderstatus,
    CASE
    WHEN orderstatus = "OPEN"
    THEN "Order is in open state."
    WHEN orderstatus = "CLOSED"
    THEN "Order is closed."
    ELSE "Order is cancelled."
    END AS order_summary
    FROM orders;
```


### Сгруппируйте значений количества в 3 сегмента — меньше 100, 100-300 и больше 300.

```
SELECT * FROM sales
    WHERE bucket LIKE '%less%';

SELECT * FROM sales
    WHERE bucket LIKE '%101%';
    
SELECT * FROM sales
    WHERE bucket LIKE “%greater%';
    
```

### Чем NULL отличается от 0?
```
 что NULL значение bool, в то время как 0 представляет арифметическое значение нуля. А "ноль" - есть вполне себе нормальное и законное число с математическим значением 0.
```