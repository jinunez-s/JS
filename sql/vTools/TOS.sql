SELECT 1 FROM DUAL WHERE 2<> (
    SELECT COUNT(*)
    FROM nc_params
    WHERE object_id IN (
        9157722444213159922,
        9157722462813159948
    ) AND (attr_id =9135559823313173023  AND VALUE LIKE '%Monitors your social media accounts for account takeovers, risky activity and inappropriate content.%')
);


select 1 from dual where not exists (
select object_id from nc_objects where object_id = 45646546546546566
and description = 'NEW DESCRIPTION'
);

select 1 from dual where exists (
select object_id 
from nc_objects 
where object_id in (
    9157722444213159922 /* TELUS Online Security - Complete */, 9157722462813159948 /* TELUS Online Security - Ultimate */
    ) and description = 'Monitors your social media accounts for account takeovers, risky activity and inappropriate content.'
);


/*FOR VALIDATION TOOL*/

select 1 from dual where not exists (
select object_id
from nc_objects
where object_id in (
    9157722444213159922 
    , 9157722462813159948 
    ) and description LIKE 'Monitors your social media accounts for account takeovers, risky activity and inappropriate content.'
);
/*REAL QUERY THAT GETS 0 BACK */
select 1 from dual where not exists (
select object_id
from nc_objects
where object_id in (
    9157722444213159922
    , 9157722462813159948
    ) and description LIKE '%Monitors your social media accounts for account takeovers, risky activity and inappropriate content.%'
);

