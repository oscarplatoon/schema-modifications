

-- Change Column name
ALTER TABLE customers 
  RENAME COLUMN first TO first_name;
ALTER TABLE customers 
  RENAME COLUMN last TO last_name;

-- Change Column type
ALTER TABLE customers
  ALTER COLUMN first_name TYPE varchar(255),
  ALTER COLUMN last_name TYPE varchar(255);


ALTER TABLE customers
  ALTER COLUMN social TYPE varchar(9);

ALTER TABLE customers
  ALTER COLUMN account_number TYPE varchar(14);

-- Add Column
ALTER TABLE customers
  ADD line_2 varchar(255);

ALTER TABLE customers
  ALTER COLUMN zip TYPE varchar(10);

ALTER TABLE customers
  DROP COLUMN current_balance_cents;
-- 1. The `customer_id` column allows null values, change it so a value is required
ALTER TABLE statements 
ALTER COLUMN customer_id SET NOT NULL;
-- 2. We've updated our water meters and we can accurately measure fractional gallons. Update `gallons_used` to allow for two decimal places.
ALTER TABLE statements
  ALTER COLUMN gallons_used TYPE DECIMAL(2,2);


-- 3. Add a default value "payment_due" to `status`.

ALTER TABLE statements
  ALTER COLUMN status SET DEFAULT 'payment_due';

