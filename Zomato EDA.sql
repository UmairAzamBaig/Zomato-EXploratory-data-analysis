
-- Calculate the average cost for two people in each city and order the result by average cost in descending order
SELECT city, AVG(Average_cost_for_two) AS Avgcost
FROM zomato
GROUP BY City
ORDER BY Avgcost DESC;

-- Retrieve restaurant name, city, and aggregate rating for restaurants with an aggregate rating greater than 4.5, ordered by aggregate rating in descending order
SELECT Restaurant_Name, city, Aggregate_rating
FROM zomato
WHERE Aggregate_rating > 4.5
ORDER BY Aggregate_rating DESC;

-- Count the number of restaurants for each cuisine and order the result by the number of restaurants in descending order
SELECT cuisines, COUNT(*) AS NumberOfRestaurants
FROM zomato
GROUP BY Cuisines
ORDER BY NumberOfRestaurants DESC;

-- Count the number of restaurants with and without online delivery
SELECT has_online_delivery, COUNT(*) AS onlinedelivery
FROM zomato
GROUP BY has_online_delivery;

-- Count the number of restaurants with and without online delivery, using an alternative column name
SELECT Has_Online_Delivery, COUNT(*) AS Total
FROM zomato
GROUP BY Has_Online_delivery;

-- Count the number of restaurants in each price range
SELECT Price_Range, COUNT(*) AS NumberOfRestaurants
FROM zomato
GROUP BY Price_Range;

-- Calculate the average aggregate rating for each cuisine and order the result by average rating in descending order
SELECT Cuisines, AVG(Aggregate_rating) AS AverageRating
FROM zomato
GROUP BY Cuisines
ORDER BY AverageRating DESC;

-- Calculate the average aggregate rating for restaurants with and without table booking
SELECT Has_Table_booking, AVG(Aggregate_rating) AS AverageRating
FROM zomato
GROUP BY Has_Table_booking;

-- Count the number of restaurants for each city and price range combination, ordered by city and price range
SELECT City, Price_range, COUNT(*) AS NumberOfRestaurants
FROM zomato
GROUP BY City, Price_range
ORDER BY City, Price_range;

-- Retrieve the city, restaurant name, and votes for the restaurant with the highest votes in each city
SELECT City, Restaurant_Name, Votes
FROM zomato
WHERE Votes = (SELECT MAX(Votes) FROM zomato AS subquery WHERE subquery.City = zomato.City)
ORDER BY City;

--Comparison of Online and Offline Restaurants' Ratings
SELECT Has_Online_Delivery, AVG(Aggregate_rating) AS AverageRating
FROM zomato
GROUP BY Has_Online_Delivery;


