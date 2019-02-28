-- auto Generated on 2019-02-28 21:14:37 
-- DROP TABLE IF EXISTS `products_by_store`; 
CREATE TABLE products_by_store(
    `id` INTEGER(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
    `store_id` INTEGER(12) NOT NULL DEFAULT -1 COMMENT 'storeId',
    `product_id` INTEGER(12) NOT NULL DEFAULT -1 COMMENT 'productId',
    `inventory` INTEGER(12) NOT NULL DEFAULT -1 COMMENT 'inventory',
    `original_price` DECIMAL(14,4) NOT NULL DEFAULT -1 COMMENT 'originalPrice',
    `discount` DECIMAL(14,4) NOT NULL DEFAULT -1 COMMENT 'discount',
    `product_status` INTEGER(12) NOT NULL DEFAULT -1 COMMENT 'productStatus',
    PRIMARY KEY (`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT 'products_by_store';




