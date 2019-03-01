-- auto Generated on 2019-02-28 21:11:50 
-- DROP TABLE IF EXISTS `orders`; 
CREATE TABLE orders(
    `id` INTEGER(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
    `order_id` INTEGER(12) NOT NULL DEFAULT -1 COMMENT 'orderId',
    `user_phone` VARCHAR(50) NOT NULL DEFAULT '' COMMENT 'userPhone',
    `product_id` INTEGER(12) NOT NULL DEFAULT -1 COMMENT 'productId',
    `store_id` INTEGER(12) NOT NULL DEFAULT -1 COMMENT 'storeId',
    `amount` INTEGER(12) NOT NULL DEFAULT -1 COMMENT 'amount',
    `single_price` DECIMAL(14,4) NOT NULL DEFAULT -1 COMMENT 'singlePrice',
    `total_price` DECIMAL(14,4) NOT NULL DEFAULT -1 COMMENT 'totalPrice',
    `order_status` INTEGER(12) NOT NULL DEFAULT -1 COMMENT 'orderStatus',
    PRIMARY KEY (`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT 'orders';






