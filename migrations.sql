DROP TABLE IF EXISTS customers;
CREATE TABLE customers (
    id serial PRIMARY KEY,
    first text,
    last text,
    social varchar(255),
    account_number varchar(255),
    line_1 varchar(255),
    city varchar(255),
    state varchar(255),
    zip integer,
    current_balance_cents integer
);

DROP TABLE IF EXISTS statements;
CREATE TABLE statements (
    id serial PRIMARY KEY,
    customer_id integer,
    gallons_used integer,
    cents_per_gallon integer,
    start_date date,
    end_date date,
    status varchar(255),
    payment_date date,
    due_date date,
    amount_due_cents integer,
    min_amount_due_cents integer
);

-- ALTER TABLE table_name
--  RENAME COLUMN old_name TO new_name;

ALTER TABLE customers
RENAME COLUMN first TO first_name;
ALTER TABLE customers
RENAME COLUMN last TO last_name;
ALTER TABLE customers
  ALTER COLUMN first_name TYPE varchar(255);
ALTER TABLE customers
  ALTER COLUMN last_name TYPE varchar(255);
ALTER TABLE customers
  ALTER COLUMN social TYPE varchar(9);
ALTER TABLE customers
  ALTER COLUMN account_number TYPE varchar(14);
ALTER TABLE customers
  ADD line_2 varchar(255);
ALTER TABLE customers
  ALTER COLUMN zip TYPE varchar(5);
ALTER TABLE customers
  DROP COLUMN current_balance_cents;
ALTER TABLE statements
  ALTER COLUMN customer_id SET NOT NULL;
ALTER TABLE statements
  ALTER COLUMN gallons_used TYPE decimal(4,2);
ALTER TABLE statements
  ALTER COLUMN status SET DEFAULT 'payment_due';  

  
  
