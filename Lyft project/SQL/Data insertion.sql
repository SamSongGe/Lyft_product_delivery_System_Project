/*Customer*/
Insert into customer (customer_ID, first_name, last_name, address, phone) values
(1, 'Janie', 'Sherman', '4917 N Recreation Ave Fresno, California(CA), 93726', '(559)
291-7847'),
(2, 'Justin', 'Carter', '3103 23rd St Everett, Washington(WA), 98201', '(425) 322-5281'),
(3, 'Wayne', 'Padilla', '290 Van Buren Carolina Rd Nettleton, Mississippi(MS), 38858',
'(662) 963-3207'),
(4, 'Pat', 'Drake', '21 Hawkview Rd Hudson, New Hampshire(NH), 03051', '(603)
883-8250'),
(5, 'Sabrina', 'Hardy', '1035 Parkburg Rd Pinson, Tennessee(TN), 38366', '(731) 424-1619'),
(6, 'Vickie', 'Klein', '601 W Round St Landis, North Carolina(NC), 28088', '(704)
855-7778'),
(7, 'Bob', 'Bridges', '174 W Barney St Gouverneur, New York(NY), 13642', '(315)
535-4109'),
(8, 'Jimmy', 'Wise', '10105 Vaughan Ave Hastings, Florida(FL), 32145', '(386) 329-8404'),
(9, 'Kim', 'Wheeler', '9400 W Lone Beech Dr Muncie, Indiana(IN), 47304', '(765)
759-9274'),
(10, 'Nicolas', 'Cook', '2817 Partridge Dr S Hopkins, South Carolina(SC), 29061', '(803)
834-6809');

/*Payment*/
Insert into payment (payment_ID, payment_type, card_account_number,
payment_amount, tips, customer_ID) Values
(1, 'Visa', '4556883758786015', 35, 5, 6),
(2, 'Visa', '4024007154166531', 45, 5, 3),
(3, 'Visa', '4539595722225159', 20, 3, 5),
(4, 'Mastercard', '5563543370621457', 60, 8, 1),
(5, 'Mastercard', '5186620132613258', 38, 6, 9),
(6, 'Mastercard', '5348564717843564', 70, 9, 2),
(7, 'American Express', '344923584040461', 30, 2, 9),
(8, 'American Express', '379905840104528', 15, 0, 1),
(9, 'Visa', '4485750161994476', 83, 11, 4),
(10, 'Mastercard', '5298577094772578', 33, 5, 7);

/*PICKUP_DESTINATION_ADDRESS*/
Insert into Pickup_Destination_Address (Pickup_Address_Destination_Address_ID, unit,
street, city, state, zip_code, country, customer_ID) Values
(1, 806, '3436 Summit Ct NE', 'Washington', 'DC', 20018, 'US', 1),
(2, 113, 'One Micro Soft Way', 'Redmond', 'WA', 20018, 'US', 2),
(3, 713, '34 County Rd', 'Corinth', 'MS', 38834, 'US', 3),
(4, 005, '14 Troy Smith Ln', 'Spruce Pine', 'NC', 28777, 'US', 4),
(5, 117, '673 Alta Vista Dr', 'Gatlinburg', 'TN', 37738, 'US', 5),
(6, 133, '7337 Toxaway Dr NW', 'Knoxville', 'TN', 37909, 'US', 6),
(7, 028, '1111 Marcus Ave', 'New Hyde Park', 'NY', 11042, 'US', 7),
(8, 12, '6886 Hanging Vine Way', 'Tallahassee', 'FL', 32317, 'US', 8),
(9, 336, '11126 N 1000th W', 'Demotte', 'IN', 46310, 'US', 9),
(10, 05, '2829 New Market Rd', 'Hartsville', 'SC', 29550, 'US', 10),
(11, 121, '3458 Nash Pl SE', 'Washington', 'DC', 20019, 'US', 1),
(12, 025, 'Po Box 1297', 'Ocean Park', 'WA', 20018, 'US', 2),
(13, 022, '352 Leonard Rd', 'Jackson', 'MS', 39206, 'US', 3),
(14, 334, '185 Fairway Ln', 'Spruce Pine', 'NC', 28777, 'US', 4),
(15, 151, '7337 Toxaway Dr NW', 'Knoxville', 'TN', 37909, 'US', 5),
(16, 259, '7108 Lawford Rd', 'Knoxville', 'TN', 37919, 'US', 6),
(17, 319, '135 Hillcrest Ave', 'Southampton', 'NY', 11968, 'US', 7),
(18, 45, '689 Wellington Station Blvd', 'Ormond Beach', 'FL', 32174, 'US', 8),
(19, 188, '1113 Cottage Cir', 'Seymour', 'IN', 47274, 'US', 9),
(20, 188, '283 Bells Rd', 'Allendale', 'SC', 29810, 'US', 10);

/*Employee*/
Insert into Employee (employee_ID, first_name, last_name, address, phone, manager_ID)
Values
(1, 'Cathy', 'Dean', '14 Linton Pl Keansburg, New Jersey(NJ), 07734', '(732) 495-3908',
null),
(2, 'Tim', 'Boyd', 'Flat Iron Rd Smyrna, New York(NY), 13464', '(607) 627-6203', null),
(3, 'Allan', 'Martinez', '1520 Munn Ave Hillside, New Jersey(NJ), 07205', '(973) 923-5949',
1),
(4, 'Rosemarie', 'Luna', '136 Terrace Dr Middlefield, Ohio(OH), 44062', '(440) 632-9288',
1), (
5, 'Kristopher', 'Alexander', '2241 Lexington Dr Barksdale Afb, Louisiana(LA), 71110',
'(318) 584-6255', 1),
(6, 'Elisa ', 'Dixon', '1040 S Kimbles Rd #YARDLEY Morrisville, Pennsylvania(PA),
19067', '(215) 493-2232', 2),
(7, 'Erika', 'Lawson', '430 W Manheim St Philadelphia, Pennsylvania(PA), 19144', '(215)
951-7047', 2),
(8, 'Marvin', 'Crawford', '112 Weather Vane Dr Cherry Hill, New Jersey(NJ), 08002',
'(856) 667-7581', 2),
(9, 'Ted', 'Benson', '5220 N 230th Ave Buckeye, Arizona(AZ), 85326', '(623) 327-1687', 2),
(10, 'Elizabeth', 'Barnett', '13316 Jay St NW Andover, Minnesota(MN), 55304', '(763)
862-5644', 2);

/*Driver*/
Insert into Driver (driver_ID, driver_rate, employee_ID) Values
(1, 4.75, 5),
(2, 3.75, 6),
(3, 4.85, 7),
(4, 4.95, 8),
(5, 4.25, 9),
(6, 4.25, 3),
(7, 4.5, 4),
(8, 4.7, 2),
(9, 4.8, 10),
(10, 4.65, 1);

/*Vehicle*/
Insert into Vehicle (vin_ID, vehicle_type, driver_ID) Values
('JH4DC4460TS005270', 'SUV', 1),
('WBACD432XWAV64423', 'Sedan', 2),
('4F4ZR17V7XTM07477', 'Sedan', 3),
('1G1AF1F57A7192174', 'Truck', 4),
('ZFF78VHA2F0209560', 'Coupe', 5),
('ZHWUC1ZF1GLA03871', 'Coupe', 5),
('WP0CB2A80EK140228', 'Coupe', 6),
('1C6RD6KT4CS332867', 'SUV', 7),
('JHMCG56492C003897', 'SUV', 8),
('2T3DK4DV8CW082696', 'SUV', 9),
('7T3AK4D68TR062466', 'Truck', 10);

/*Trip*/
Insert into Trip (trip_ID, trip_date, trip_time, trip_wait_time, pickup_address_ID,
destination_address_ID, customer_ID, driver_ID, payment_ID) Values
(1, '20190601', '153000', '15', 1, 11, 1, 1, 4),
(2, '20190705', '183000', '11', 2, 12, 2, 2, 7),
(3, '20200103', '170000', '8', 3, 13, 3, 2, 2),
(4, '20200119', '090000', '12', 4, 14, 4, 3, 9),
(5, '20200110', '110000', '5', 5, 15, 5, 4, 3),
(6, '20200110', '130000', '5', 6, 16, 6, 5, 1),
(7, '20200521', '113500', '9', 7, 17, 7, 1, 10),
(8, '20200521', '163500', '15', 18, 8, 8, 2, 8),
(9, '20200601', '181600', '6', 9, 19, 9, 3, 5),
(10, '20200601', '192000', '6', 9, 20, 9, 3, 6);

/*Product*/
Insert into Product (product_ID, product_price, product_type) Values
(1, 20, 'retail_store'),
(2, 30, 'retail_store'),
(3, 40, 'retail_store'),
(4, 30, 'Restaurant'),
(5, 40, 'Restaurant'),
(6, 50, 'Restaurant'),
(7, 50, 'Pharmacy'),
(8, 60, 'Pharmacy'),
(9, 70, 'Pharmacy'),
(10, 100, 'Car_Dealership'),
(11, 200, 'Car_Dealership'),
(12, 250, 'Car_Dealership');

/*Stores*/
Insert into Retail_Store (product_ID, product_name, store_name) Values
(1, 'Water', 'Target'),
(2, 'Facial tissue', 'Target'),
(3, 'Apple juice', 'Whole Food');

Insert into Restaurant (product_ID, restaurant_name, dish_name) Values
(4, 'Flavio', 'Salsiccia Pizza'),
(5, 'Flavio', 'Spaghetti Bolognese'),
(6, 'McDonald', 'Big Mac');

Insert into Pharmacy (product_ID, pharmacy_name, medicine_name) Values
(7, 'CVS', 'Pain Killer'),
(8, 'CVS', 'Adalimumab'),
(9, 'CVS', 'Apixaban');

Insert into Car_Dealership (product_ID, dealership_name, component_name) Values
(10, 'Mercedes-Benz of Arlington', 'sedan car battery'),
(11, 'NTB', 'continental all season tire'),
(12, 'CarSmart', 'continental summer season tire');

Insert into Order_Detail (trip_ID, product_ID, quantity, discount) Values
(2, 9, 1, 0),
(1, 2, 2, 0),
(8, 11, 1, 0.525);