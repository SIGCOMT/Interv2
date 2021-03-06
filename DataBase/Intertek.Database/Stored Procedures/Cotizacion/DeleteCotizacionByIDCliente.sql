IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'[dbo].[DeleteCotizacionByIDCliente]') AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
	DROP PROCEDURE [dbo].[DeleteCotizacionByIDCliente]
GO

CREATE PROCEDURE [dbo].[DeleteCotizacionByIDCliente]
(
	@IDCliente int
)
AS
BEGIN
	SET NOCOUNT ON

	DELETE FROM [Cotizacion]
	WHERE [IDCliente] = @IDCliente

	SET NOCOUNT OFF
END

GO
