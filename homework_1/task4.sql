SELECT *
FROM phone
WHERE manuffcturer = 'Samsung';

SELECT *
FROM phone
WHERE model LIKE '%Iphone%';

SELECT *
FROM phone
WHERE model NOT LIKE '%[0-9]%';

SELECT *
FROM phone
WHERE model LIKE '%8%';
