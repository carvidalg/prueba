SELECT     dbo.Estados.NombreEstado AS Estado, COUNT(dbo.CambiosEstados.idLicencia) AS NroLicencias, AVG(dbo.CambiosEstados.TiempoCambio) AS TiempoPromedio
FROM         dbo.CambiosEstados INNER JOIN
                      dbo.Estados ON dbo.CambiosEstados.idEstado = dbo.Estados.idEstado
GROUP BY dbo.Estados.NombreEstado