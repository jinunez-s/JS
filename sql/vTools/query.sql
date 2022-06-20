Select 1 from dual where 10 <>(
select count(*)
from nc_params
where object_id in (9157037478213621451,
		    9157037563913621469,
                    9157071684813998966,
                    9159227732913068393,
                    9157003813713593468,
                    9158986053713819481,
                    9157037623913621488,
                    9157037711213621606,
                    9157073992413999999,
                    9159227340413068219)
                    and (attr_id = 9135811625013383848 and value = 'HomeFallDetectionPendant.png'or value = 'HomeHelpPendantCellular.png' or value = 'LWC_HomeBaseImage_481x350.jpg'));