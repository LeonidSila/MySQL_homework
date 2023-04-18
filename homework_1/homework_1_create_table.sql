CREATE TABLE  phone 
(	
    id_phone INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    manuffcturer VARCHAR(20) NOT NULL, 
	model VARCHAR(20) NOT NULL,
    price INT NOT NULL,
    amount INT NULL DEFAULT 0,
    store VARCHAR(20) NOT NULL,
    UNIQUE INDEX id_phone_UNIQUE (id_phone ASC) VISIBLE
);
