
select a.apt_number, a.direction_facing, a.nickname nickname, floor(a.apt_number/100) floor_number, 100*nvl(number_features, 0)+a.base_price rental_price, bathroom_color bath_col, carpet_color carp_col, appliance_color appl_col 
from (select * from open natural join building natural join floor_plan) a left join features b on a.apt_number = b.apt_number 
order by nickname desc, rental_price desc;