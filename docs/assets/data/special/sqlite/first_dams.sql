SELECT COUNT(*), COUNT (DISTINCT NIDID)
FROM DAMS;

SELECT NIDID, dam_name, insp_date, river, county, state, owner_type, 
   year_comp, year_mod, eap, npdp_hazard
from dams;