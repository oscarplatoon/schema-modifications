ALTER TABLE customers
RENAME COLUMN first to first_name;

ALTER TABLE customers
RENAME COLUMN last to last_name;

ALTER TABLE customers
ALTER COLUMN first_name TYPE varchar(50),
ALTER COLUMN last_name TYPE varchar(50),
alter COLUMN social type varchar(9),
alter COLUMN account_number type varchar(14),
alter COLUMN zip type varchar(20);

ALTER TABLE customers
ADD COLUMN line_2 varchar(50);

alter table statements
drop COLUMN current_balance_cents;

alter table statements
alter COLUMN customer_id set not NULL,
alter COLUMN gallons_used type decimal(2),
alter COLUMN status set default 'payment_due'


