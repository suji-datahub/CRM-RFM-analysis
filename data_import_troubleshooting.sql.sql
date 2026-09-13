LOAD DATA LOCAL INFILE '/Users/suji/Desktop/데이터분석/포트폴리오/KODDYLONDON/customer.csv' 
INTO TABLE customer
FIELDS TERMINATED BY ',' 
OPTIONALLY ENCLOSED BY '"'
ESCAPED BY '\\'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

LOAD DATA LOCAL INFILE '/Users/suji/Desktop/데이터분석/포트폴리오/KODDYLONDON/orders.csv'
INTO TABLE orders -- 실제 테이블명으로 변경
FIELDS TERMINATED BY ',' 
OPTIONALLY ENCLOSED BY '"'
ESCAPED BY '\\'
LINES TERMINATED BY '\r\n' -- 쇼피파이/엑셀 CSV 필수 줄바꿈 옵션
IGNORE 1 LINES;

LOAD DATA LOCAL INFILE '/Users/suji/Desktop/데이터분석/포트폴리오/KODDYLONDON/product.csv'
INTO TABLE product
FIELDS TERMINATED BY ',' 
OPTIONALLY ENCLOSED BY '"'
ESCAPED BY '\\'
LINES TERMINATED BY '\n'  -- \r\n 에서 \n 으로 변경
IGNORE 1 LINES;
