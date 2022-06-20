/*Distribution channel telus.com*/
select 1 from dual where 2 <>(
select count(*)
from nc_references
where object_id in (9159771246013654786 , 9153399740013035427)
and attr_id = 9135629006513360226 
and reference in(9155427281313153762));

select 1 from dual where 10 <> (
    select count(1) 
    from nc_params 
    where object_id in (
        9163393000570487613,
        9163393101841517380,
        9163217339372625431,
        9163217401267625436,
        9163400178827517404,
        9163400324568517414,
        9163400408982963287,
        9163400848479487653,
        9163400938265487658,
        9163400239771517409) 
        and attr_id = 9138776009413365171 and value >= 10)

        9132199382713895168