SELECT     TOP (100) PERCENT dbo.Empresas.NombreEmpresa, dbo.Empresas.RutEmpresa, COUNT(dbo.Licencias.idTrabajador) AS TotalLicencias
FROM         dbo.Empresas INNER JOIN
                      dbo.Licencias ON dbo.Empresas.idEmpresa = dbo.Licencias.idEmbresa
GROUP BY dbo.Empresas.NombreEmpresa, dbo.Empresas.RutEmpresa
ORDER BY TotalLicencias DESC