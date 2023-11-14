
----prompt 1----

SELECT *
FROM owners
JOIN vehicles
ON vehicles.owner_id = owners.id;

----prompt 2----

SELECT first_name, last_name,
COUNT (owner_id)
AS count
FROM owners
JOIN vehicles
ON owners.id = vehicles.owner_id
GROUP BY (first_name,last_name)
ORDER BY first_name;

----prompt 3----

SELECT first_name, last_name, ROUND(AVG(price)) AS average_price, COUNT(owner_id) as count
FROM owners o
JOIN vehicles v
ON o.id = v.owner_id
GROUP BY (first_name,last_name)
HAVING COUNT(owner_id) >= 2 AND ROUND(AVG(price)) > 10000
ORDER BY first_name DESC;