##fact table splitting##

CREATE TABLE `fact_table` (
  `fact_table_key` bigint NOT NULL,
  `customer_key` bigint DEFAULT NULL,
  `payment_key` bigint DEFAULT NULL,
  `store_key` bigint DEFAULT NULL,
  `first_name` varchar(255) default null,
  `last_name` varchar(255) default null,
  `email` varchar(255) default null,
  `amount` double DEFAULT NULL,
  `last_update` varchar(255) default null,
  `create_date_key` bigint DEFAULT NULL,
  `payment_date_key` bigint DEFAULT NULL,
  PRIMARY KEY (`fact_table_key`),
  KEY `customer_key` (`customer_key`),
  KEY `payment_key` (`payment_key`),
  KEY `store_key` (`store_key`),
  KEY `first_name` (`first_name`),
  KEY `last_name` (`last_name`),
  KEY `email` (`email`),
  KEY `amount` (`amount`),
  KEY `last_update` (`last_update`),
  KEY `create_date_key` (`create_date_key`),
  KEY `payment_date_key` (`payment_date_key`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4;


TRUNCATE TABLE `sakila`.`fact_table`;


select * from sakila.fact_table
where fact_table_key between 1 and 333;

select * from sakila.fact_table
where fact_table_key between 334 and 666;

select * from sakila.fact_table
where fact_table_key between 667 and 1000;


