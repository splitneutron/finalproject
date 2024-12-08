use sakila;

#creating dimensions
create table dim_rentals
(`rental_key` int NOT NULL AUTO_INCREMENT, 
`rental_id` int default null, 
`inventory_id` int default null, 
`customer_id` int default null, 
`rental_date` datetime default null,    
`return_date` datetime default null,    
PRIMARY KEY (`rental_key`),   
KEY `rental_id` (`rental_id`),   
KEY `inventory_id` (`inventory_id`),   
KEY `customer_id` (`customer_id`),   
KEY `rental_date` (`rental_date`),   
KEY `return_date` (`return_date`) 
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4;

TRUNCATE TABLE `sakila`.`dim_rentals`;

#inserting data into dimension
INSERT INTO `sakila`.`dim_rentals`
 (`rental_id`,
`inventory_id`,
`customer_id`,
`rental_date`, 
`return_date`
)
SELECT
sakila.rental.rental_id,
sakila.rental.inventory_id,
sakila.rental.customer_id,
sakila.rental.rental_date,
sakila.rental.return_date
from sakila.rental;
