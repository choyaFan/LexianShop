-- auto Generated on 2019-02-28 21:14:37 
-- DROP TABLE IF EXISTS `special_products`; 
CREATE TABLE special_products(
    `id` INTEGER(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
    `sector_name` VARCHAR(50) NOT NULL DEFAULT '' COMMENT 'sectorName',
    `product_id` INTEGER(12) NOT NULL DEFAULT -1 COMMENT 'productId',
    PRIMARY KEY (`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT 'special_products';




