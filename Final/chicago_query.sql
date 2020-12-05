SELECT a.zip_code, a.air_bnb_count, a.avg_air_bnb_cost, z.zillow_avg_price_per_sq_ft, z.zillow_avg_price, c.num_complaints
FROM air_bnb a
INNER JOIN zillow z
ON a.zip_code = z.zip_code
INNER JOIN complaints c
on a.zip_code = c.zip_code;
