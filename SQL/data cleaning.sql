## Data cleaning.
# Remove duplicates by creating a new table without duplicates.
create table buyers as 
select distinct *  from customers;

# Replacing M in gender with Male cuz there's another M in marital_status
update buyers 
set gender = replace(gender, 'M','Male')
;
# Replac f with female to keeping consistency
update buyers 
set gender = replace(gender, 'F','Female')
;

set sql_safe_updates = 0;
set sql_safe_updates = 1;

