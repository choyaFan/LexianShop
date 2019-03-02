-- auto Generated on 2019-02-28 21:14:37 
-- DROP TABLE IF EXISTS `shopping_cart`; 
CREATE TABLE shopping_cart(
    `id` INTEGER(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
    `user_phone` VARCHAR(50) NOT NULL DEFAULT '' COMMENT 'userPhone',
    `product_id` INTEGER(12) NOT NULL DEFAULT -1 COMMENT 'productId',
    `store_id` INTEGER(12) NOT NULL DEFAULT -1 COMMENT 'storeId',
    `amount` INTEGER(12) NOT NULL DEFAULT -1 COMMENT 'amount',
    `single_price` DECIMAL(14,4) NOT NULL DEFAULT -1 COMMENT 'singlePrice',
    `total_price` DECIMAL(14,4) NOT NULL DEFAULT -1 COMMENT 'totalPrice',
    `create_time` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    PRIMARY KEY (`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT 'shopping_cart';






