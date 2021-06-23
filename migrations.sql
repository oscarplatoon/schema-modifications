alter table customers
rename column first to first_name;

alter table customers
rename column last to last_name;

alter table customers
alter column first_name type varchar(255);

alter table customers
alter column last_name type varchar(255);

alter table customers
alter column social type character(9);

alter table customers
alter column account_number type character(14);

alter table customers
add line_2 varchar(255);

alter table customers
alter column zip type varchar(255);

alter table customers
drop column current_balance_cents;

alter table statements
alter column customer_id set not null;

alter table statements
alter column gallons_used type decimal(10,2);

alter table statements
alter column status set default 'payment_due';

