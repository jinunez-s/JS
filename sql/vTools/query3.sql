select 1 from dual where 2 <>(
select count(*)
from nc_params
where object_id in (9159771246013654786 /* Hide You Pick when customer is not migrating or is not a current You Pick customer */,
                    9153399740013035427 /* Hide You Pick for Customers without active You Pick */ )
                    and (attr_id = 9135629006513360226 /* Distribution Channel */ and object_id = 9155427281313153762 /* TELUS.com */ ));