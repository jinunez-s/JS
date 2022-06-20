select 1 from dual where 0 <> (
select count( * ) from nc_references where object_id in
(9151908435813412895 )
and attr_id = 9138228293613517721
)
/*option 2*/
select 1 from dual where 0<>(
    select count(*) from nc_params where
    date_value > current_date and
    attr_id in (9138228293613517721) and
    object_id in (9151908435813412895)
)

/*Explained*/
select 1 from dual where 0<>(
    select count(*) from nc_params where
    date_value > current_date and
    attr_id in (9138228293613517721 /* Available To */) and
    object_id in (9151908435813412895 /* Musicroom Quebec */)
)