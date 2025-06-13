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

INSERT INTO items_with_price(Item_ID, Date, Items, Quantity, Price, Notes)
VALUES (178, '2022-11-06', 'Charity', NULL, 50, 'Given to an old woman asking for me!'),
(179, '2022-11-06', 'Gatekeeper', NULL, 10, NULL),
(180, '2022-11-07', 'Vegetables', NULL, 118, 'Green Beans, Brenzel, Tomatoes, Bananas(1 hali), Milk'),
(181, '2022-11-09', 'Bread', 1, 25, NULL),
(182, '2022-11-10', 'Restaurant', 1, 196, NULL),
(183, '2022-11-10','Cold Coffee', 1, 80, NULL),
(184, '2022-11-10', 'Eggs', 12, 135, 'One Dozen'),
(185, '2022-11-10', 'Beggar', NULL, 12, NULL )

INSERT INTO items_with_price(Item_ID, Date, Items, Quantity, Price, Notes)
VALUES (186, '2022-11-11', 'Cooking Utensils', 1, 260, NULL),
(187, '2022-11-11', 'Tea', 1, 10, NULL),
(188, '2022-11-12', 'Cauliflower', 1, 40, NULL),
(189, '2022-11-12', 'Tomatoes', 1, 10, NULL),
(190, '2022-11-12', 'Tea', 1, 10, NULL),
(191, '2022-11-13', 'Food', 1, 150, NULL),
(192, '2022-11-13', 'Tea', 1, 10, NULL),
(193, '2022-11-14', 'Food Restaurant', 1, 179, NULL),
(194, '2022-11-14', 'Burger', 1, 250, 'With Mushroom'),
(195, '2022-11-14', 'Beggar', 1, 70, 'On the bridge & streets'),
(196, '2022-11-14', 'Tea', 1, 40, 'For Beggar & Me'),
(197, '2022-11-14', 'Bananas', 1, 20, '1 hali'),
(198, '2022-11-14', 'Dress Repair', 1, 100, NULL),
(199, '2022-11-16', 'Apples', Null, 90, 'Half KG'),
(200, '2022-11-16', 'Rice', Null, 156, '2 kg'),
(201, '2022-11-16', 'Tea & Vapa pitha', Null, 90, Null), 
(202, '2022-11-17', 'Indian Food Testing at Bashundhara & tea', NULL, 570, 'Ordered Afghan Spicey, Palak Paneer masala, tip'),
(203, '2022-11-18', 'Bananas', 12, 10, NULL),
(204, '2022-11-19', 'Gourd', 1, 50, NULL),
(205, '2022-11-19', 'Pointed Gourd', NULL, 25, NULL),
(206, '2022-11-19', 'Onions & Garlic', NULL, 40, NULL),
(207, '2022-11-19', 'Travel', NULL, 260, 'Bus fair & Dakeshwari temple & Kuril Bisshoroad & CNG fair'),
(208, '2022-11-19', 'Bua october bill', Null, 200, Null ), 
(209, '2022-11-20', 'Tea', NULL, 20, '2 Cups'), 
(210, '2022-11-21', 'Egg', 12, 130, '1 dozon'), 
(211, '2022-11-21', 'Roti', 5, 25, 'Packet item'), 
(212, '2022-11-21', 'Noodles', 3, 30, 'Packet noodles')





--NULL values 
SELECT * FROM items_with_price
WHERE Notes  IS NOT NULL
-- order by 
SELECT * FROM items_with_price
ORDER BY price DESC


--for a month total price? 
SELECT 
EXTRACT(Year from date) as year, 
EXTRACT (Month from date) as month, 
AVG(price) as avg_cost
FROM items_with_price
GROUP BY 1, 2 
ORDER BY 1, 3 DESC

--for a month total price? and rank them? 
SELECT 
EXTRACT(Year from date) as year, 
EXTRACT (Month from date) as month, 
AVG(price) as avg_cost
RANK()OVER(
Partition by extract(year from date) order by avg(price)DESC) as rank,
FROM items_with_price
GROUP BY 1, 2 
--ORDER BY 1, 3 DESC
--upgrade postgresql for rank() function to work!

--add more data to the table ? 
--ask a single item and make a table of it with price? 
--find out the top items cost more 
SELECT items, count(price)
FROM items_with_price
group by items

--Data Analysis
SELECT items, count(distinct price) as unique_item
FROM items_with_price
group by items


--

