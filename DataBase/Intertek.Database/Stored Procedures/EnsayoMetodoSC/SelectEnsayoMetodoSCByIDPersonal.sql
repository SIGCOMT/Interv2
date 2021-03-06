IF EXISTS (SELECT * from dbo.sysobjects WHERE id = object_id(N'[dbo].[SelectEnsayoMetodoSCByIDPersonal]') AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
	drop procedure [dbo].[SelectEnsayoMetodoSCByIDPersonal]
GO

CREATE PROCEDURE [dbo].[SelectEnsayoMetodoSCByIDPersonal]
(
	@IDPersonal int
)
AS
BEGIN
	SET NOCOUNT ON

	SELECT
	[IDEnsayoMetodo],
	[IDSolicitudCertificacion],
	[IDSC],
	[IDEnsayo],
	[IDMetodo],
	[IDPersonal],
	[ESM_OficialNoOficial],
	[ESM_Cantidad],
	[ESM_Precio],
	[ESM_FechaInicio],
	[ESM_FechaFin],
	[ESM_Estado],
	[ESM_EsSS]
	FROM [EnsayoMetodoSC]
	WHERE [IDPersonal] = @IDPersonal

	SET NOCOUNT OFF
END

GO
