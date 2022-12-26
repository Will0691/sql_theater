
create table customer (
	customer_id SERIAL primary key,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	address VARCHAR(150),
	email VARCHAR(150)
);

create table concession (
	concession_id SERIAL primary key,
	concession_name VARCHAR(100),
	price Numeric(5, 2)
);

create table movie (
	movie_id SERIAL primary key,
	movie_name VARCHAR(100),
	age_rating VARCHAR(5)
);

create table transaction_ (
	transaction_id SERIAL primary key,
	customer_id Integer not null,
	subtotal NUMERIC(8,2),
	total_cost NUMERIC(10,2),
	transaction_date DATE default CURRENT_DATE,
	foreign key(customer_id) references customer(customer_id)
);

create table purchase (
	purchase_id SERIAL primary key,
	transaction_id Integer not null,
	purchase_cost NUMERIC(5,2),
	amount_discounted NUMERIC(5,2),
	foreign key(transaction_id) references transaction_(transaction_id)
);

create table concession_purchase (
	concession_purchase_id SERIAL primary key,
	concession_id Integer not null,
	amount Integer not null,
	purchase_id Integer not null,
	foreign key(concession_id) references concession(concession_id),
	foreign key(purchase_id) references purchase(purchase_id)
);

create table screening (
	screening_id SERIAL primary key,
	movie_id Integer not null,
	screening_date DATE default CURRENT_DATE,
	start_time TIME default CURRENT_TIME,
	end_time TIME default CURRENT_TIME,
	capacity Integer,
	room_number Integer,
	price NUMERIC(5,2),
	foreign key(movie_id) references movie(movie_id)
);

create table ticket (
	ticket_id SERIAL primary key,
	screening_id Integer not null,
	purchase_id Integer not null,
	foreign key(screening_id) references screening(screening_id),
	foreign key(purchase_id) references purchase(purchase_id)
);




