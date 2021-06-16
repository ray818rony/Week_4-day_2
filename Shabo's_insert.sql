INSERT INTO customer(
	customer_id,
	first_name,
	last_name,
	age,
	billing_info
)VALUES(
	1,
	'Rony',
	'Shabo',
	29,
	'123-123-123-123 132 05/22'
);


INSERT INTO production(
	production_company,
	director_name
)VALUES(
	1,
	'Del Toro'
);


INSERT INTO hall(
	hall_number,
	capacity
)VALUES(
	1,
	150
);


INSERT INTO movie(
	movie_id,
	duration,
	rating,
	production_company,
	hall_number
)VALUES(
	1,
	120,
	'PG_13',
	'Dark Horse Comics',
	1
);


INSERT INTO concessions(
	order_id,
	total_cost,
	hall_number
)VALUES(
	1,
	11.00,
	1
);


INSERT INTO ticket(
	ticket_number,
	customer_id
)VALUES(
	1,
	1
);