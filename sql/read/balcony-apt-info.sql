/*
    of the apt's with a balcony, list the selected values
*/

column 'floor_plan' format a10;
select apt_number, tenants, wood_type wood, concat(to_char(bedrooms), letter) floor_plan, base_price+100*number_features rental_price 
from balcony natural join apartment natural join floor_plan natural join features1 
order by floor_plan, tenants desc;