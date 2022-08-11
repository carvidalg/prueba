SELECT     dbo.Licencias.idLicencia, dbo.Sucursales.NombreSucursal, dbo.Empresas.NombreEmpresa, dbo.Trabajadores.RutTrabajador, dbo.Trabajadores.NombreTrabajador, dbo.Estados.NombreEstado, 
                      dbo.LicenciasHistorial.FecActualizacion, dbo.TiposLicencias.NombreTipoLicencia
FROM         dbo.LicenciasHistorial INNER JOIN
                      dbo.Licencias ON dbo.LicenciasHistorial.idLicencia = dbo.Licencias.idLicencia INNER JOIN
                      dbo.TiposLicencias ON dbo.Licencias.idTipoLicencia = dbo.TiposLicencias.idTipoLicencia INNER JOIN
                      dbo.Estados ON dbo.LicenciasHistorial.idEstado = dbo.Estados.idEstado INNER JOIN
                      dbo.Sucursales ON dbo.Licencias.idSucursal = dbo.Sucursales.idSucursal INNER JOIN
                      dbo.Empresas ON dbo.Licencias.idEmbresa = dbo.Empresas.idEmpresa INNER JOIN
                      dbo.Trabajadores ON dbo.Licencias.idTrabajador = dbo.Trabajadores.idTrabajador