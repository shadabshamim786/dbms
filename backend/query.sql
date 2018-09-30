DROP TABLE IF EXISTS category;
CREATE TABLE category(categoryid IDENTITY,
					  name VARCHAR(40),
					  description VARCHAR(300),
					  image_url VARCHAR(100),
					  is_active BOOLEAN,
					  CONSTRAINT pk_category_categoryid PRIMARY KEY(categoryid)
);


INSERT INTO category (name,description,image_url,is_active) VALUES ('Can Openers','This is some description for Can Openers','ABD7.png',TRUE);
INSERT INTO category (name,description,image_url,is_active) VALUES ('Food Choppers','This is some description for Food Choppers','ABD8.png',TRUE);
INSERT INTO category (name,description,image_url,is_active) VALUES ('Mixing Bowls','This is some description for Mixing Bowls','ABD8.png',TRUE);


CREATE TABLE user_account(id IDENTITY,
						  name VARCHAR(50),
						  role VARCHAR(50),
						  is_active BOOLEAN,
						  password VARCHAR(50),
						  email VARCHAR(50),
						  mobile_number VARCHAR(13),
						  CONSTRAINT pk_user_id PRIMARY KEY(id),
);

INSERT INTO user_account(name,role,is_active,password,email,mobile_number) VALUES ('SHADAB SHAMIM','ADMIN',TRUE,'qwerty','ss@gmail.com','9000000001');
INSERT INTO user_account(name,role,is_active,password,email,mobile_number) VALUES ('dummy1','SUPPLIER',TRUE,'qwerty','dummy1@gmail.com','9000000001');
INSERT INTO user_account(name,role,is_active,password,email,mobile_number) VALUES ('dummy2','CUSTOMER',TRUE,'qwerty','dummy2@gmail.com','9000000001');
INSERT INTO user_account(name,role,is_active,password,email,mobile_number) VALUES ('dummy3','CUSTOMER',TRUE,'qwerty','dummy3@gmail.com','9000000001');


CREATE TABLE shop(id IDENTITY,
				  name VARCHAR(50),
				  address VARCHAR(70),
				  is_active BOOLEAN,
				  mobile_number VARCHAR(13),
				  CONSTRAINT pk_shop_id PRIMARY KEY(id),
);


INSERT INTO shop(name,address,is_active,mobile_number) VALUES('Kitchen&Stuff','KOLKATA',TRUE,'9000000000');
INSERT INTO shop(name,address,is_active,mobile_number) VALUES('Kitchen&Dummy','KOLKATA',TRUE,'9000000000');


CREATE TABLE product( id IDENTITY,
					  code VARCHAR(20),		
					  name VARCHAR(100),
					  description VARCHAR(300),
					  price DECIMAL(12,2),
					  quantity INT,
					  is_active BOOLEAN,
					  category_id INT,
					  supplier_id INT,
					  shop_id INT,
					  image_url VARCHAR(100),
					  brand VARCHAR(50),
					  color VARCHAR(20),
					  purchases INT default 0,
					  material VARCHAR(40),
					  size VARCHAR(20),	
					  CONSTRAINT pk_product_id PRIMARY KEY(id),
					  CONSTRAINT fk_product_category_id FOREIGN KEY (category_id) REFERENCES category(categoryid),
					  CONSTRAINT fk_product_supplier_id FOREIGN KEY (supplier_id) REFERENCES user_account(id),
					  CONSTRAINT fk_product_shop_id FOREIGN KEY (shop_id) REFERENCES shop(id),
					  
);


--ADD PRODUCTS
INSERT INTO product(code,name,description,price,quantity,is_active,category_id,supplier_id,shop_id,brand,color,purchases,material,size,image_url)
VALUES ('K&SPRKEY120','KitchenAid Multi Function Can Opener','This is some description for Multi Function Can Opener',210,10,TRUE,1,2,1,'KitchenAid','Black',0,'Steel','10.6 inches','prod1.png');

INSERT INTO product(code,name,description,price,quantity,is_active,category_id,supplier_id,shop_id,brand,color,purchases,material,size,image_url)
VALUES ('K&SPRKEY121','Ninja Express Chop','This is some description for Ninja Express Chop',400,12,TRUE,2,2,1,'Ninja','Red',0,'Plastic','10.1 inches','prod2.png');

INSERT INTO product(code,name,description,price,quantity,is_active,category_id,supplier_id,shop_id,brand,color,purchases,material,size,image_url)
VALUES ('K&SPRKEY122','OXO Softworks Chopper','This is some description for OXO Softworks Chopper',370,8,TRUE,2,2,1,'OXO','White',0,'Plastic & Stainless Steel','7.8 inches','prod3.png');

INSERT INTO product(code,name,description,price,quantity,is_active,category_id,supplier_id,shop_id,brand,color,purchases,material,size,image_url)
VALUES ('K&SPRKEY123','Vegetable Manual Food Chopper OXO','This is some description for Vegetable Manual Food Chopper OXO',450,11,TRUE,2,2,1,'OXO','White',0,'Plastic & Stainless Steel','3.6 inches','prod4.png');

INSERT INTO product(code,name,description,price,quantity,is_active,category_id,supplier_id,shop_id,brand,color,purchases,material,size,image_url)
VALUES ('K&SPRKEY124','Plastic 2pc Mixing Bowl Set with Lid Aqua - Room Essentials','This is some description for Plastic 2pc Mixing Bowl Set with Lid Aqua - Room Essentials',550,5,TRUE,3,2,1,'Milton','Light Blue',0,'Polypropylene','3.88 inches','prod5.png');

INSERT INTO product(code,name,description,price,quantity,is_active,category_id,supplier_id,shop_id,brand,color,purchases,material,size,image_url)
VALUES ('K&SPRKEY125','Plastic 2pc Mixing Bowl Set with Lid Aqua - Room Essentials','This is some description for Plastic 2pc Mixing Bowl Set with Lid Aqua - Room Essentials',550,5,TRUE,3,2,1,'Milton','White',0,'Polypropylene','3.88 inches','prod6.png');

