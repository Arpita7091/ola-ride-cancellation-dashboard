select * from bookings
where Booking_Status = 'Success';

Create view Successful_Bookings As
select * from bookings
where Booking_Status = 'Success';

select * from Successful_Bookings;


create view ride_distance_for_each_vehicle As
select Vehicle_Type, AVG(Ride_Distance)
as avg_distance From bookings
group by Vehicle_Type;

select * from ride_distance_for_each_vehicle;


Create View canceled_rides_by_customer As
select COUNT(*) from bookings
where Booking_Status = 'Canceled by Customer';

select * from canceled_rides_by_customer;

CREATE TEMPORARY TABLE Top_5_Customers AS
SELECT Customer_ID, COUNT(Booking_ID) AS total_rides
FROM Bookings
GROUP BY Customer_ID
ORDER BY total_rides DESC
LIMIT 5;
SELECT * FROM Top_5_Customers;



Create View Rides_Canceled_Rides_by_DriverS_P_C_Issues As
SELECT COUNT(*) FROM bookings
WHERE Canceled_Rides_by_Driver = 'Personal & Car related issue';

Drop view Max_Min_Drivers_Rating;
Create view Max_Min_Drivers_Rating As
select MAX(Driver_Ratings) As max_rating,
MIN(Driver_Ratings) As min_rating
FROM bookings WHERE Vehicle_Type = 'Prime Sedan';


Create view UPI_Payment As
select * from bookings
WHERE Payment_Method = 'UPI';

Drop view AVG_Cust_Rating;
Create view AVG_Cust_Rating As
select Vehicle_Type, AVG(Customer_Rating) As avg_customer_rating
from bookings 
group by Vehicle_Type;

Drop View total_successful_ride_value;
Create View total_successful_ride_value As
select SUM(Booking_Value) as total_successful_ride_value
from bookings
where Booking_Status = 'Success';



Create View Incomplete_Rides_Reason As
select Booking_ID, Incomplete_Rides_Reason
from bookings
where Incomplete_Rides = 'Yes';










 

















