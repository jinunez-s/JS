/*update netflix description*/
select 1 from dual where 1 <> (select count(1)
from nc_params where object_id =9153346572313003606
and attr_id=9135559823313173023 and value like 'Enjoy Canada’s must-have subscription streaming service, providing TV shows and movies without commercials on Optik and your other internet-connected devices (up to 4 screens) with access to HD and 4K content.');