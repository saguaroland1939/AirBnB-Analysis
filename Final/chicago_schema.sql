DROP TABLE air_bnb;

CREATE TABLE air_bnb(
	zip_code varchar PRIMARY KEY,
	air_bnb_count float,
	avg_air_bnb_cost money
);

SELECT * FROM air_bnb;



DROP TABLE zillow;

CREATE TABLE zillow(
	zip_code varchar PRIMARY KEY,
	zillow_avg_price_per_sq_ft money,
	zillow_avg_price money
);

SELECT * FROM zillow;



DROP TABLE complaints;

CREATE TABLE complaints (
	zip_code varchar PRIMARY KEY,
	num_complaints int
);

SELECT * FROM complaints;