SELECT     TOP (100) PERCENT dbo.Documentos.NombreDocumento AS Documento, COUNT(dbo.LicenciasHistorial.idHistorial) AS NroVeces
FROM         dbo.Documentos INNER JOIN
                      dbo.LicenciasHistorial ON dbo.Documentos.idTipoDocumento = dbo.LicenciasHistorial.IdDocumento
WHERE     (dbo.LicenciasHistorial.FlujoReiniciado = 1)
GROUP BY dbo.Documentos.NombreDocumento
ORDER BY NroVeces DESC