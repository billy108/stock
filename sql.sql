SET NAMES UTF8; 
DROP DATABASE IF EXISTS stock; 
CREATE DATABASE stock CHARSET=UTF8; 
USE stock; 

 
CREATE TABLE productList( 
	ean VARCHAR(15),
    sku VARCHAR(20),
    design_id VARCHAR(10),
    supplier_design_id VARCHAR(10),
    photo VARCHAR(100),
    color VARCHAR(15),
    size VARCHAR(10),
    area float(5,2),
    supplier VARCHAR(20),
    delivery int(2),
    shipping_cycle int(2),
    stocking_cycle int(2),
    stock int(2),
    shipping_stock int(2),
    moq float(5,2),
    density int(10),
    packing_size varchar(15),
    gross_weight float(5,2),
    cubic_weight float(5,2),
    pile_height float(5,2),
    material varchar(20),
    cost float(6,2),
    wholesale_price_1 float(5,2),
    wholesale_price_2 float(5,2),
    msrp_aud float(6,2),
    msrp_usd float(6,2),
    msrp_euro float(6,2),
    msrp_4 float(6,2),
    msrp_5 float(6,2),
    msrp_6 float(6,2)
);

CREATE TABLE salesStatistics( 
	ean  VARCHAR(20),
	d201603 int(2) default 0,
	s201603 float(8,2) default 0,
	d201604 int(2) default 0,
	s201604 float(8,2) default 0,
	d201605 int(2) default 0,
	s201605 float(8,2) default 0,
	d201606 int(2) default 0,
	s201606 float(8,2) default 0,
	d201607 int(2) default 0,
	s201607 float(8,2) default 0,
	d201608 int(2) default 0,
	s201608 float(8,2) default 0,
	d201609 int(2) default 0,
	s201609 float(8,2) default 0,
	d201610 int(2) default 0,
	s201610 float(8,2) default 0,
	d201611 int(2) default 0,
	s201611 float(8,2) default 0,
	d201612 int(2) default 0,
	s201612 float(8,2) default 0,
	d201701 int(2) default 0,
	s201701 float(8,2) default 0
);

CREATE TABLE orderList( 
	order_time  DATE, 
	ebay_account  VARCHAR(20),
 	ean  varchar(20),
	sold_quantity int(2),
	total float(8,2),
	pattern_size varchar(50)
); 

CREATE TABLE temp_orderList( 
	order_time DATE,
	ebay_account  VARCHAR(20),
 	ean  varchar(20),
	sold_quantity int(2),
	total float(8,2),
	pattern_size varchar(50)
); 

SET NAMES UTF8; 

 INSERT INTO productList(ean, sku, design_id, supplier_design_id, photo, color, size, area, supplier, delivery, shipping_cycle, stocking_cycle, stock, shipping_stock, moq, density, packing_size, gross_weight, cubic_weight, pile_height, material, cost, wholesale_price_1, wholesale_price_2, msrp_aud, msrp_usd, msrp_euro, msrp_4, msrp_5, msrp_6) VALUES
 ("9350329002768","MC002SIL05BLU1928","SIL05","","","IVORY_BLUE","290x280",5.32,"福荣达机织",25,30,3.5,5,5,20.00,100000,"12*12*190",13.00,15.00,1.00,"Polyester",200.00,80.00,80.00,200.00,200.00,200.00,200.00,200.00,200.00),
 ("9350329000597","MC002SIL05BLU2000","SIL11","","","IVORY_WITHE","230x280",15.34,"印度手工",15,15,2.2,5,5,20.00,100000,"11*11*190",13.00,15.00,1.00,"Polyester",200.00,80.00,80.00,200.00,200.00,200.00,200.00,200.00,200.00),
 ("9350329001464","MC002SIL05BLU7841","CEW34","","","IVORY_BLACK","110x280",25.22,"土耳其机织",25,32,2.1,5,5,20.00,100000,"12*11*190",13.00,15.00,1.00,"Polyester",200.00,80.00,80.00,200.00,200.00,200.00,200.00,200.00,200.00),
 ("9350329000504","MC002SIL05BLU8972","YRW33","","","IVORY_RED","540x280",65.12,"熊亚机织",55,23,1.5,5,5,20.00,100000,"13*13*140",13.00,15.00,1.00,"Polyester",200.00,80.00,80.00,200.00,200.00,200.00,200.00,200.00,200.00),
 ("9350329000092","MC002SIL05BLU4789","IEJ05","","","IVORY_YELLOW","30x280",2.32,"鑫源皮毛",45,2,6.5,5,5,20.00,100000,"13*12*196",13.00,15.00,1.00,"Polyester",200.00,80.00,80.00,200.00,200.00,200.00,200.00,200.00,200.00);

 INSERT INTO orderList VALUES 
 ("2017-1-19","rugaustralia","9350329002768",1,399.99,"Floor Rug MOD03 190x280cm"),
 ("2016-7-18","aussierugs","9350329000597",1,99.99,"SILVIA Floor Rug SIL05 190x280cm"),
 ("2017-1-18","rugaustralia","9350329001464",1,435,"Floor Rug SIL06 240x340cm"),
 ("2016-3-30","aussierugs","9350329000504",1,179.99,"SILVIA Floor Rug SIL01 155x225cm"),
 ("2016-3-15","aussierugs","9350329000504",1,179.99,"SILVIA Floor Rug SIL01 155x225cm");
 
 