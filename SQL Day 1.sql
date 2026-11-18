--The case of ITC for Investing the data base and Creating the tables -

CREATE TABLE distributors (
  distributor_id INTEGER PRIMARY KEY,
  name           TEXT NOT NULL,
  city           TEXT,
  region         TEXT,
  phone          TEXT
  );
  
  -- Dropping the table -----
  DROP TABLE distributors;
  
  --Create another table name Products--
  --Create a table name Products with following details: Product_ID, Product_Name, Brand, Category, Price and Stock  should be integer and if it is blank than it should be zero.Products
 -- product_id should be integer name and unique and product bname text , not null and unique, brand name text and not null and product category text and not null, price should be in real value and price should be greater than 0.
CREATE TABLE products (
 products_id INTEGER PRIMARY KEY,
 product_name TEXT NOT NULL UNIQUE,
 brand TEXT,
  category TEXT NOT NULL,
  price REAL CHECK (price > 0),
  stock INTEGER DEFAULT 0
  );
  
  --create a table name sales containing variables - sales id, product id, distributor id, sale date, 
  --quantity amount
 CREATE TABLE sales (
  sale_id INTEGER PRIMARY KEY,
  products_id INTEGER,
  distributor_id INTEGER,
  sale_date TEXT,
  quantity INTEGER CHECK (quantity>0),
  amount REAL,
  FOREIGN KEY (products_id) REFERENCES products(products_id),
  Foreign key (distributor_id) REFERENCES distributors(distributor_id)
  );
  