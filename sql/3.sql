
select value, nickname, open 
from building natural join open1 
where construction_year >= (select extract(year from sysdate) - 3 from dual)
order by value desc, open desc;