/*Average product price of registered restaurants.*/
SELECT Avg(product_price) FROM product, restaurant
WHERE product.product_id = restaurant.product_id AND product_type = 'restaurant';

/*Display customer information (first_name, last_name, phone, trip_type) of the trip date
2020/06/01. Sort the results first by the trip_ID.*/
SELECT first_name, last_name, phone FROM customer, trip
WHERE customer.customer_id = trip.customer_id AND trip_date = 20200601
ORDER BY trip_id;

/*Count of customerID whose first name is “Kim”*/
SELECT COUNT(trip.customer_ID) FROM customer, trip
WHERE trip.customer_id = customer.customer_id AND customer.first_name = ‘Kim’;

/*Count the number of Tennessee State for pickup and destination address and the number
of New York State for pickup and destination address.*/
SELECT State, Count(State) as StateCount FROM pickup_destination_address
WHERE state = 'TN'
GROUP BY state
UNION
SELECT State, Count(State) as StateCount FROM pickup_destination_address
WHERE state = 'NY'
GROUP BY state;

/*Display employee’s full name of the person whose employee ID number is under 8.*/
SELECT CONCAT (First_Name,', ', Last_Name) 'Employee Full Name' FROM employee
WHERE employee_ID < 8;

/*Display customers’ ID and the number of trips using the SUV vehicle type from 2020.*/
SELECT customer_id, count(customer_id) AS times, vehicle_type
FROM trip, vehicle
WHERE vehicle.vehicle_type = 'SUV'
AND trip.trip_date > '2020-01-01'
GROUP BY customer_id;

/*Display customer information (CustomerID, full name, payment type and account
number) using VISA card type. Sort the results of the customer's full name descending
order.
*/
SELECT customer.customer_ID, CONCAT (First_Name,', ', Last_Name) AS 'Customer Full
Name', payment_type, card_account_number
FROM payment, customer
WHERE customer.customer_ID = payment.customer_ID AND payment.payment_type =
'VISA'
ORDER BY First_Name desc;

/*Display trip information (trip ID, Date, Time, Waiting time) of the driver who is driver id
= 3, by using subquery.*/
SELECT trip_id, trip_date, trip_time, trip_wait_time
FROM trip
WHERE trip.driver_ID =
    (SELECT driver.driver_ID
    FROM driver
    WHERE driver_id = 3);

/*Display product id and discounted items from various partner shops (retail stores,
restaurants, pharmacies and car dealerships).*/
SELECT order_detail.product_ID AS discounted_productID, retail_store.product_name,
restaurant.dish_name, pharmacy.medicine_name, car_dealership.component_name
FROM order_detail
LEFT JOIN retail_store ON order_detail.product_ID = retail_store.product_ID
LEFT JOIN restaurant ON order_detail.product_ID = restaurant.product_ID
LEFT JOIN pharmacy ON order_detail.product_ID = pharmacy.product_ID
LEFT JOIN car_dealership ON order_detail.product_ID = car_dealership.product_ID
WHERE order_detail.discount > 0;

/*Create a View which shows the driver’s vehicle information (employeeID, full name,
vehicle’s vin number and vehicle type)*/
CREATE VIEW DriverInfo AS
SELECT employee.employee_ID, CONCAT(employee.First_Name,', ',
employee.Last_Name) AS 'Employee Full Name',
vehicle.vin_ID, vehicle_type
FROM employee, driver, vehicle
WHERE employee.employee_ID = driver.employee_ID
AND driver.driver_ID = vehicle.driver_ID;
