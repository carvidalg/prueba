SELECT     TOP (100) PERCENT dbo.Sucursales.NombreSucursal AS Sucursal, dbo.Regiones.NombreRegion AS Region, dbo.Ciudades.NombreCiudad AS Ciudad, dbo.Comunas.NombreComuna AS Comuna, 
                      COUNT(dbo.Documentacion.idDocumentacion) AS TotalDocumentos
FROM         dbo.Licencias INNER JOIN
                      dbo.Sucursales ON dbo.Licencias.idSucursal = dbo.Sucursales.idSucursal INNER JOIN
                      dbo.Ciudades ON dbo.Sucursales.idCiudad = dbo.Ciudades.idCiudad INNER JOIN
                      dbo.Comunas ON dbo.Sucursales.idSucursal = dbo.Comunas.idComuna INNER JOIN
                      dbo.Regiones ON dbo.Sucursales.idRegion = dbo.Regiones.idRegion INNER JOIN
                      dbo.Documentacion ON dbo.Licencias.idLicencia = dbo.Documentacion.idLicencia
GROUP BY dbo.Sucursales.NombreSucursal, dbo.Regiones.NombreRegion, dbo.Ciudades.NombreCiudad, dbo.Comunas.NombreComuna
ORDER BY TotalDocumentos DESC