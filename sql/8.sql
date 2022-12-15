

select first_name, middle_initial, last_name, credit_score, apt_number, number_ref 
from tenant natural join mostreferences 
where number_ref =(select max(number_ref) 
                     from mostreferences);