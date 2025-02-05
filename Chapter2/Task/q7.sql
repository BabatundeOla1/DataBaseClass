USE lagos_ride;

SELECT Riders.RiderID, Riders.Name, AVG(Rides.Rating) AS AverageRating
FROM Riders
JOIN Rides ON Riders.RiderID = Rides.RiderID
GROUP BY Riders.RiderID, Riders.Name
HAVING AVG(Rides.Rating) < 3;

-- Number 7

SELECT Riders.City AS City, AVG(Rides.Fare) AS AverageFare
FROM Riders
JOIN Rides ON Rides.RiderID = Riders.RiderID 
GROUP BY Riders.City
ORDER BY AverageFare DESC
LIMIT 5;

-- NUMBER 8

SELECT Drivers.DriverID AS DriverID, Drivers.Name AS Name
FROM Drivers
LEFT JOIN Rides ON Drivers.DriverID = Rides.DriverID
GROUP BY Drivers.DriverID
HAVING COUNT(Rides.RideID) = 0;

-- NUMBER 9

SELECT Rides.RideID AS RideID, Rides.DistanceKM AS DistanceKM, Rides.DriverID AS DriverID, Rides.RiderID AS RiderID
FROM Rides
ORDER BY Rides.DistanceKM DESC
LIMIT 5;

-- NUMBER 10 

SELECT Drivers.DriverID AS DriverID, Drivers.TotalRides AS TotalRides
FROM Drivers
ORDER BY Drivers.TotalRides DESC;

-- NUMBER 11

SELECT Payments.PaymentMethod AS PaymentMethod, COUNT(Payments.PaymentID) AS NumberOfTransaction
 FROM Payments
 JOIN Rides ON Payments.RideID = Rides.RideID
 WHERE Rides.Fare > 50000
GROUP BY Payments.PaymentMethod; 

-- NUMBER 12 

SELECT Drivers.DriverID, Drivers.Name, AVG(Rides.Rating) AS AverageRating
FROM Drivers
JOIN Rides ON Drivers.DriverID = Rides.DriverID
GROUP BY Drivers.DriverID
ORDER BY AverageRating DESC;

