
--- Adding customers to the customer table
insert into customer (
	customer_id,
	first_name,
	last_name,
	address,
	email
) values (
	1,
	'Homer',
	'Simpson',
	'742 Evergreen Terrace',
	'HSimpson@example.com'
) 

insert into customer (
	customer_id,
	first_name,
	last_name,
	address,
	email
) values (
	2,
	'Peter',
	'Griffin',
	'31 Spooner Street',
	'PGriffon@example.com'
) 

insert into customer (
	customer_id,
	first_name,
	last_name,
	address,
	email
) values (
	3,
	'Herman',
	'Munster',
	'1313 mockingbird lane',
	'NotFrankenstein@example.com'
) 

insert into customer (
	customer_id,
	first_name,
	last_name,
	address,
	email
) values (
	4,
	'Wednesday',
	'Addams',
	'001 Cemetery Lane',
	'Wednesday@example.com'
) 


--- Adding movies
insert into movie (
	movie_id,
	movie_name,
	age_rating
) values (
	24,
	'The Day the Sun Exploded',
	'G'
) 

insert into movie (
	movie_id,
	movie_name,
	age_rating
) values (
	42,
	'Invasion of the People Melters',
	'PG-13'
) 

insert into movie (
	movie_id,
	movie_name,
	age_rating
) values (
	1224,
	'The Year Santa Finally Snapped',
	'R'
) 


--- Screenings for the movies
insert into screening (
	screening_id,
	movie_id,
	screening_date,
	start_time,
	end_time,
	capacity,
	room_number,
	price
) values (
	1,
	24,
	CURRENT_DATE,
	CURRENT_TIME,
	CURRENT_TIME,
	60,
	15,
	29.99
) 

insert into screening (
	screening_id,
	movie_id,
	capacity,
	room_number,
	price
) values (
	2,
	24,
	60,
	20,
	29.99
) 

insert into screening (
	screening_id,
	movie_id,
	capacity,
	room_number,
	price
) values (
	3,
	42,
	30,
	3,
	39.99
) 

insert into screening (
	screening_id,
	movie_id,
	capacity,
	room_number,
	price
) values (
	97,
	1224,
	10,
	1,
	59.99
) 

insert into screening (
	screening_id,
	movie_id,
	capacity,
	room_number,
	price
) values (
	100,
	1224,
	10,
	1,
	59.99
) 

--- Add a stock of concessions
insert into concession  (
	concession_id,
	concession_name,
	price
) values (
	1,
	'popcorn',
	6.99
) 

insert into concession  (
	concession_id,
	concession_name,
	price
) values (
	2,
	'soda',
	8.99
) 

insert into concession  (
	concession_id,
	concession_name,
	price
) values (
	5,
	'candy',
	2.99
) 

--- Create some transactions
insert into transaction_  (
	transaction_id,
	customer_id,
	subtotal,
	total_cost,
	transaction_date
) values (
	1,
	1,
	22.06, -- This is just a random cost, I am NOT going to do math for this
	33.27, -- This too
	CURRENT_DATE
)

insert into transaction_  (
	transaction_id,
	customer_id,
	subtotal,
	total_cost
) values (
	5,
	2,
	94.99,
	108.71
)

insert into transaction_  (
	transaction_id,
	customer_id,
	subtotal,
	total_cost
) values (
	6,
	3,
	10.01,
	22.22
)

insert into transaction_  (
	transaction_id,
	customer_id,
	subtotal,
	total_cost
) values (
	66,
	4,
	39.99,
	45.54
)

insert into transaction_  (
	transaction_id,
	customer_id,
	subtotal,
	total_cost
) values (
	55,
	4,
	9999.99,
	11111.11
)

--- Some purchases per transaction
insert into purchase  (
	purchase_id,
	transaction_id,
	purchase_cost,
	amount_discounted
) values (
	1,
	1,
	19.99,
	0.00
)

insert into purchase  (
	purchase_id,
	transaction_id,
	purchase_cost,
	amount_discounted
) values (
	5,
	1,
	33.33,
	0.00
)

insert into purchase  (
	purchase_id,
	transaction_id,
	purchase_cost,
	amount_discounted
) values (
	4,
	5,
	0.01,
	9.98
)

insert into purchase  (
	purchase_id,
	transaction_id,
	purchase_cost,
	amount_discounted
) values (
	9,
	6,
	25.25,
	63.41
)

insert into purchase  (
	purchase_id,
	transaction_id,
	purchase_cost,
	amount_discounted
) values (
	11,
	66,
	286.15,
	294.33
)

insert into purchase  (
	purchase_id,
	transaction_id,
	purchase_cost,
	amount_discounted
) values (
	22,
	55,
	123.45,
	678.90
)

insert into purchase  (
	purchase_id,
	transaction_id,
	purchase_cost,
	amount_discounted
) values (
	23,
	55,
	112.11,
	686.22
)

insert into purchase  (
	purchase_id,
	transaction_id,
	purchase_cost,
	amount_discounted
) values (
	24,
	55,
	231.45,
	262.33
)

-- concession purchases
insert into concession_purchase (
	concession_purchase_id,
	concession_id ,
	amount,
	purchase_id
) values (
	1,
	1,
	99,
	1
)

insert into concession_purchase (
	concession_purchase_id,
	concession_id ,
	amount,
	purchase_id
) values (
	2,
	5,
	22,
	1
)

insert into concession_purchase (
	concession_purchase_id,
	concession_id ,
	amount,
	purchase_id
) values (
	3,
	5,
	1,
	9
)

insert into concession_purchase (
	concession_purchase_id,
	concession_id ,
	amount,
	purchase_id
) values (
	4,
	5,
	3,
	4
)

-- tickets
insert into ticket (
	ticket_id,
	screening_id,
	purchase_id
) values (
	2,
	97,
	22
)

insert into ticket (
	ticket_id,
	screening_id,
	purchase_id
) values (
	4,
	100,
	23
)

insert into ticket (
	ticket_id,
	screening_id,
	purchase_id
) values (
	7,
	100,
	24
)

insert into ticket (
	ticket_id,
	screening_id,
	purchase_id
) values (
	9,
	3,
	5
)

insert into ticket (
	ticket_id,
	screening_id,
	purchase_id
) values (
	11,
	2,
	4
)

insert into ticket (
	ticket_id,
	screening_id,
	purchase_id
) values (
	22,
	1,
	11
)

insert into ticket (
	ticket_id,
	screening_id,
	purchase_id
) values (
	34,
	3,
	4
)

insert into ticket (
	ticket_id,
	screening_id,
	purchase_id
) values (
	44,
	2,
	4
)

insert into ticket (
	ticket_id,
	screening_id,
	purchase_id
) values (
	77,
	100,
	24
)



--- And now to display some data 

-- Check which customer had the most transactions
select customer_id, count(customer_id), sum(total_cost)
from transaction_ t 
group by customer_id
order by count(customer_id) desc

-- Transactions for less than $100
select transaction_id, customer_id, total_cost
from transaction_
where total_cost < 100.00

-- Check which screening sold the most tickets
select screening_id, count(screening_id)
from ticket 
group by screening_id
order by count(screening_id) desc

-- Check all tickets ever sold
select *
from ticket 