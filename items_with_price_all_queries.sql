SELECT * FROM items_with_price


SELECT * FROM items_with_price
LIMIT 100

SELECT items, price FROM items_with_price
WHERE items='Milk'

SELECT items, price FROM items_with_price
WHERE items lIKE '%read'

SELECT SUM(price)  FROM items_with_price

SELECT SUM(price)  FROM items_with_price
WHERE items like '%ilk'

SELECT EXTRACT ('Month' FROM date) AS given_month
FROM items_with_price
GRoup BY EXTRACT ('Month' FROM date )

SELECT MAX(Price)
FROM items_with_price

SELECT MIN(Price)
FROM items_with_price


SELECT SUM(price) AS Totalcost FROM items_with_price
WHERE date between '2022-08-28' AND '2022-08-31'

--UPDATE 
UPDATE items_with_price
SET date='2022-10-30' WHERE item_id=172

--update check 
SELECT date 
FROM items_with_price 
WHERE EXISTS (SELECT date FROM items_with_price WHERE date='2022-10-30' AND item_id=172)

--Inseting new values 
INSERT INTO items_with_price(Item_ID, Date, Items, Quantity, Price, Notes)
VALUES(173, '2022-11-05', 'Ticket', 1, 680, 'Coming back to Dhaka from ctg CTL office' ), 


INSERT INTO items_with_price(Item_ID, Date, Items, Quantity, Price, Notes)
VALUES(174, '2022-11-05', 'Snacks', 1, 100, 'Tea & Sandwich'),
(175, '2022-11-05', 'Rice', NULL,  156, '2kg');

INSERT INTO items_with_price(Item_ID, Date, Items, Quantity, Price, Notes)
VALUES (176, '2022-11-05', 'Tea', 1,  20, 'evening tea from outdoor'),
(177, '2022-11-05', 'Eggs', 4,  48, '1 hali')

--NULL values 
SELECT * FROM items_with_price
WHERE Notes  IS NOT NULL
-- order by 
SELECT * FROM items_with_price
ORDER BY price DESC


--for a month total price? 
--add more data to the table ? 
--ask a single item and make a table of it with price? 
