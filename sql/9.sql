
select distinct concat(to_char(bedrooms), letter) floor_plan, bedrooms, bathrooms, base_price+100*number_features rental_price, square_feet 
from apartment natural join noref natural join floor_plan natural join features1;