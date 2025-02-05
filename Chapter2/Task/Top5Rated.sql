USE mylagos_ride;

SELECT DriverID, Name, Rating, TotalRides
FROM Drivers
ORDER BY Rating DESC
LIMIT 5;
