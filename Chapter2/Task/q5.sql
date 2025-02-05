USE lagos_ride;


SELECT Drivers.DriverID, Drivers.Name, SUM(Rides.Fare) AS TotalRevenue
FROM Drivers
JOIN Rides ON Drivers.DriverID = Rides.DriverID
JOIN Riders ON Rides.RiderID = Riders.RiderID
GROUP BY Drivers.DriverID, Drivers.Name
ORDER BY TotalRevenue DESC;
