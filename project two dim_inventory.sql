use sakila;

#creating dimensions
create table dim_inventory
(`inventory_key` int NOT NULL AUTO_INCREMENT, 
`inventory_id` int default null, 
`film_id` int default null, 
`store_id` int default null,    
`last_update` datetime default null,    
PRIMARY KEY (`inventory_key`),   
KEY `inventory_id` (`inventory_id`),   
KEY `film_id` (`film_id`),   
KEY `store_id` (`store_id`),   
KEY `last_update` (`last_update`) 
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4;

TRUNCATE TABLE `sakila`.`dim_inventory`;

#inserting data into dimension
INSERT INTO `sakila`.`dim_inventory`
 (`inventory_id`,
`film_id`,
`store_id`,
`last_update`
)
SELECT
sakila.inventory.inventory_id,
sakila.inventory.film_id,
sakila.inventory.store_id,
sakila.inventory.last_update
from sakila.inventory;

select * from sakila.dim_inventory;