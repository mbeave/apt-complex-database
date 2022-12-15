/*
    finds the selected values of new buildings that have failed their inspection
*/

select permit_number, floors, construction_year, first_name, last_name, inspection_date 
from building natural join new_building natural join inspection 
where result like 'Failed' 
order by inspection_date;