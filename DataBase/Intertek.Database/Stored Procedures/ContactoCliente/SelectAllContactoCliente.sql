IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'[dbo].[SelectAllContactoCliente]') AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
	DROP PROCEDURE [dbo].[SelectAllContactoCliente]
GO

CREATE PROCEDURE [dbo].[SelectAllContactoCliente]

AS
BEGIN
	SET NOCOUNT ON

	SELECT
	[IDContactoCliente],
	[COC_Codigo],
	[COC_Nombres],
	[COC_Apellidos],
	[COC_Cargo],
	[COC_Telefono1],
	[COC_Telefono2],
	[IDCliente],
	[COC_Estado],
	[COC_UsuarioCreacion],
	[COC_FechaHoraCreacion],
	[COC_UsuarioModificacion],
	[COC_FechaHoraModificacion]
	FROM [ContactoCliente]

	SET NOCOUNT OFF
END

GO
