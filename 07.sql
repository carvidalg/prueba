SELECT     dbo.Trabajadores.RutTrabajador AS Rut, dbo.Trabajadores.NombreTrabajador AS Trabajador, dbo.Licencias.FecTermino AS FechaTerminoLicencia, 
                      dbo.Trabajadores.FecDesAfiliado AS FechaDesafiliación
FROM         dbo.Trabajadores INNER JOIN
                      dbo.Licencias ON dbo.Trabajadores.idTrabajador = dbo.Licencias.idTrabajador
WHERE     (dbo.Licencias.FecTermino >= GETDATE()) AND (dbo.Licencias.TrabajadorAfiliado = 0)