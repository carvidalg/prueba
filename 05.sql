select sum(case L.Manual when 1 then 1  else 0 end)  as NroLicenciasManuales,
sum(case L.Electronica when 1 then 1  else 0 end)  as NroLicenciasElectronicas,
sum(case L.Mixta when 1 then 1  else 0 end)  as NroLicenciasMixtas 

from licencias L;


