-- DROP DATABASE
DROP DATABASE IF EXISTS ecommerce_db;

-- CREATE DATABASE
CREATE DATABASE ecommerce_db;

-- USE DATABASE
-- \c ecommerce_db;

-- -- CREATE TABLES
-- CREATE TABLE category (
--     id SERIAL PRIMARY KEY,
--     category_name VARCHAR(255) NOT NULL
-- );

-- CREATE TABLE product (
--     id SERIAL PRIMARY KEY,
--     product_name VARCHAR(255) NOT NULL,
--     price DECIMAL(10, 2) NOT NULL,
--     stock INT NOT NULL,
--     category_id INT,
--     FOREIGN KEY (category_id) REFERENCES category (id)
-- );

-- CREATE TABLE tag (
--     id SERIAL PRIMARY KEY,
--     tag_name VARCHAR(255) NOT NULL
-- );

-- CREATE TABLE product_tag (
--     id SERIAL PRIMARY KEY,
--     product_id INT,
--     tag_id INT,
--     FOREIGN KEY (product_id) REFERENCES product (id),
--     FOREIGN KEY (tag_id) REFERENCES tag (id)
-- );

-- -- Ensure foreign key constraints are set to cascade on delete
-- DO $$
-- BEGIN
--  IF EXISTS (SELECT 1 FROM pg_constraint WHERE conname = 'product_category_id_fkey') THEN
--      ALTER TABLE product DROP CONSTRAINT product_tag_product_id_fkey;
--  END IF;
--  ALTER TABLE product ADD CONSTRAINT product_category_id_fkey FOREIGN KEY (category_id) REFERENCES category (id) ON DELETE CASCADE;
-- END $$;