select s.product, count(*) as c
from chashken.sponsor s, chashken.sponsored_by sb
where s.sponsorid = sb.sponsorid
group by s.product
having count(*) >= 3
order by c
