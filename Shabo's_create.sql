
CREATE TABLE customer(
	customer_id SERIAL PRIMARY KEY, 
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	age INTEGER,
	billing_info VARCHAR(150)
);


CREATE TABLE production(
	production_company INTEGER PRIMARY KEY,
	director_name VARCHAR(100)
);

CREATE TABLE hall(
	hall_number INTEGER PRIMARY KEY,
	capacity VARCHAR(100)
);


CREATE TABLE concessions(
	order_id SERIAL PRIMARY KEY,
	order_date DATE DEFAULT CURRENT_DATE,
	total_cost NUMERIC(10,2),
	hall_number INTEGER NOT NULL,
	FOREIGN KEY(hall_number) REFERENCES hall(hall_number)
);


CREATE TABLE movie(
	movie_id SERIAL PRIMARY KEY,
	duration INTEGER,
	rating VARCHAR(100),
	production_company INTEGER NOT NULL,
	hall_number INTEGER NOT NULL,
	FOREIGN KEY(production_company) REFERENCES production(production_company),
	FOREIGN KEY(hall_number) REFERENCES hall(hall_number)
);


CREATE TABLE ticket(
	ticket_number SERIAL PRIMARY KEY,
	customer_id INTEGER NOT NULL,
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id),
	FOREIGN KEY(ticket_number) REFERENCES ticket(ticket_number)
);