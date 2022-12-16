/*
    finds the listed values of each old building
*/

select nickname, value, total_area 
from building natural join oldbuildings1
order by total_area;