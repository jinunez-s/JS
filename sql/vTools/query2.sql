Select 1 from dual where 2 <>(
select count(*)
from nc_params
where object_id in (9159771246013654786,
                    9153399740013035427 )
                    and (attr_id = 9135629006513360226 and object_id = 9155427281313153762 ));
