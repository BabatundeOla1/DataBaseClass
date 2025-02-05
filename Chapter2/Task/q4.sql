USE lagos_ride;

SELECT Riders.City, COUNT(Rides.RideID) AS AreaCount
FROM Rides
JOIN Riders ON Rides.RiderID = Riders.RiderID
GROUP BY Riders.City
ORDER BY AreaCount DESC;


