-- auto Generated on 2019-02-28 21:11:50 
-- DROP TABLE IF EXISTS `citys`; 
CREATE TABLE citys(
    `id` INTEGER(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
    `cityid` VARCHAR(50) NOT NULL DEFAULT '' COMMENT 'cityid',
    `city` VARCHAR(50) NOT NULL DEFAULT '' COMMENT 'city',
    `city_py` VARCHAR(50) NOT NULL DEFAULT '' COMMENT 'cityPy',
    `city_pym` VARCHAR(50) NOT NULL DEFAULT '' COMMENT 'cityPym',
    `clazz` INTEGER(12) NOT NULL DEFAULT -1 COMMENT 'clazz',
    `parent_id` INTEGER(12) NOT NULL DEFAULT -1 COMMENT 'parentId',
    `postcode` VARCHAR(50) NOT NULL DEFAULT '' COMMENT 'postcode',
    PRIMARY KEY (`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT 'citys';




