USE [duo]
GO
/****** Object:  Trigger [InsWorks]    Script Date: 2/9/2021 13:38:53 ******/
IF  EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[InsWorks]'))
DROP TRIGGER [dbo].[InsWorks]
GO
/****** Object:  Trigger [DelWorks]    Script Date: 2/9/2021 13:38:53 ******/
IF  EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[DelWorks]'))
DROP TRIGGER [dbo].[DelWorks]
GO
/****** Object:  Trigger [InsProducts]    Script Date: 2/9/2021 13:38:53 ******/
IF  EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[InsProducts]'))
DROP TRIGGER [dbo].[InsProducts]
GO
/****** Object:  Trigger [DelProducts]    Script Date: 2/9/2021 13:38:53 ******/
IF  EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[DelProducts]'))
DROP TRIGGER [dbo].[DelProducts]
GO
/****** Object:  Trigger [InsPerfilDUO]    Script Date: 2/9/2021 13:38:53 ******/
IF  EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[InsPerfilDUO]'))
DROP TRIGGER [dbo].[InsPerfilDUO]
GO
/****** Object:  Trigger [DelAnuncio]    Script Date: 2/9/2021 13:38:53 ******/
IF  EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[DelAnuncio]'))
DROP TRIGGER [dbo].[DelAnuncio]
GO
/****** Object:  Table [dbo].[worksTNQ]    Script Date: 2/9/2021 13:38:53 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[worksTNQ]') AND type in (N'U'))
DROP TABLE [dbo].[worksTNQ]
GO
/****** Object:  Table [dbo].[works_03022021]    Script Date: 2/9/2021 13:38:53 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[works_03022021]') AND type in (N'U'))
DROP TABLE [dbo].[works_03022021]
GO
/****** Object:  Table [dbo].[works]    Script Date: 2/9/2021 13:38:53 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[works]') AND type in (N'U'))
DROP TABLE [dbo].[works]
GO
/****** Object:  Table [dbo].[SessionDUOTNQ]    Script Date: 2/9/2021 13:38:53 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SessionDUOTNQ]') AND type in (N'U'))
DROP TABLE [dbo].[SessionDUOTNQ]
GO
/****** Object:  Table [dbo].[SessionDUO]    Script Date: 2/9/2021 13:38:53 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SessionDUO]') AND type in (N'U'))
DROP TABLE [dbo].[SessionDUO]
GO
/****** Object:  Table [dbo].[RegistradoTNQ]    Script Date: 2/9/2021 13:38:53 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RegistradoTNQ]') AND type in (N'U'))
DROP TABLE [dbo].[RegistradoTNQ]
GO
/****** Object:  Table [dbo].[Registrado]    Script Date: 2/9/2021 13:38:53 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Registrado]') AND type in (N'U'))
DROP TABLE [dbo].[Registrado]
GO
/****** Object:  Table [dbo].[ProductsTNQ]    Script Date: 2/9/2021 13:38:53 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductsTNQ]') AND type in (N'U'))
DROP TABLE [dbo].[ProductsTNQ]
GO
/****** Object:  Table [dbo].[products_03022021]    Script Date: 2/9/2021 13:38:53 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[products_03022021]') AND type in (N'U'))
DROP TABLE [dbo].[products_03022021]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 2/9/2021 13:38:53 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Products]') AND type in (N'U'))
DROP TABLE [dbo].[Products]
GO
/****** Object:  Table [dbo].[PerfilDuoTNQ]    Script Date: 2/9/2021 13:38:53 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PerfilDuoTNQ]') AND type in (N'U'))
DROP TABLE [dbo].[PerfilDuoTNQ]
GO
/****** Object:  Table [dbo].[PerfilDUO_03022021]    Script Date: 2/9/2021 13:38:53 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PerfilDUO_03022021]') AND type in (N'U'))
DROP TABLE [dbo].[PerfilDUO_03022021]
GO
/****** Object:  Table [dbo].[PerfilDuo]    Script Date: 2/9/2021 13:38:53 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PerfilDuo]') AND type in (N'U'))
DROP TABLE [dbo].[PerfilDuo]
GO
/****** Object:  Table [dbo].[AnuncioTNQ]    Script Date: 2/9/2021 13:38:53 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AnuncioTNQ]') AND type in (N'U'))
DROP TABLE [dbo].[AnuncioTNQ]
GO
/****** Object:  Table [dbo].[AnuncioImages_03022021]    Script Date: 2/9/2021 13:38:53 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AnuncioImages_03022021]') AND type in (N'U'))
DROP TABLE [dbo].[AnuncioImages_03022021]
GO
/****** Object:  Table [dbo].[AnuncioImages]    Script Date: 2/9/2021 13:38:53 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AnuncioImages]') AND type in (N'U'))
DROP TABLE [dbo].[AnuncioImages]
GO
/****** Object:  Table [dbo].[Anuncio_03022021]    Script Date: 2/9/2021 13:38:53 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Anuncio_03022021]') AND type in (N'U'))
DROP TABLE [dbo].[Anuncio_03022021]
GO
/****** Object:  Table [dbo].[Anuncio]    Script Date: 2/9/2021 13:38:53 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Anuncio]') AND type in (N'U'))
DROP TABLE [dbo].[Anuncio]
GO
/****** Object:  Table [dbo].[Anuncio]    Script Date: 2/9/2021 13:38:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Anuncio](
	[RegAnuncioId] [int] IDENTITY(1,1) NOT NULL,
	[RegId] [int] NULL,
	[RegCodigoUnico] [varchar](max) NULL,
	[RegAnuncioPalabraClave] [varchar](10) NULL,
	[RegAnuncioAcercaDe] [varchar](max) NULL,
	[RegAnuncioEstado] [varchar](20) NULL,
	[RegAnuncioFecha] [datetime] NULL,
	[AnioAnuncioReg] [int] NULL,
	[MesAnuncioReg] [int] NULL,
	[DiaAnuncioReg] [int] NULL,
	[AnioAnuncioHastaId] [int] NULL,
	[MesAnuncioHastaId] [int] NULL,
	[DiaAnuncioHastaId] [int] NULL,
	[RegRutaImagen1] [varchar](max) NULL,
	[RegRutaImagen2] [varchar](max) NULL,
	[RegRutaImagen3] [varchar](max) NULL,
	[Titulo] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[RegAnuncioId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Anuncio_03022021]    Script Date: 2/9/2021 13:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Anuncio_03022021](
	[RegAnuncioId] [int] IDENTITY(1,1) NOT NULL,
	[RegId] [int] NULL,
	[RegCodigoUnico] [varchar](max) NULL,
	[RegAnuncioPalabraClave] [varchar](10) NULL,
	[RegAnuncioAcercaDe] [varchar](max) NULL,
	[RegAnuncioEstado] [varchar](20) NULL,
	[RegAnuncioFecha] [datetime] NULL,
	[AnioAnuncioReg] [int] NULL,
	[MesAnuncioReg] [int] NULL,
	[DiaAnuncioReg] [int] NULL,
	[AnioAnuncioHastaId] [int] NULL,
	[MesAnuncioHastaId] [int] NULL,
	[DiaAnuncioHastaId] [int] NULL,
	[RegRutaImagen1] [varchar](max) NULL,
	[RegRutaImagen2] [varchar](max) NULL,
	[RegRutaImagen3] [varchar](max) NULL,
	[Titulo] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AnuncioImages]    Script Date: 2/9/2021 13:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnuncioImages](
	[RegAnuncioImagenId] [int] IDENTITY(1,1) NOT NULL,
	[RegAnuncioId] [int] NULL,
	[RegId] [int] NULL,
	[RegRutaImagen] [varchar](max) NULL,
	[RegAnuncioEstado] [varchar](20) NULL,
	[RegAnuncioFecha] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[RegAnuncioImagenId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AnuncioImages_03022021]    Script Date: 2/9/2021 13:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnuncioImages_03022021](
	[RegAnuncioImagenId] [int] IDENTITY(1,1) NOT NULL,
	[RegAnuncioId] [int] NULL,
	[RegId] [int] NULL,
	[RegRutaImagen] [varchar](max) NULL,
	[RegAnuncioEstado] [varchar](20) NULL,
	[RegAnuncioFecha] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AnuncioTNQ]    Script Date: 2/9/2021 13:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnuncioTNQ](
	[RegAnuncioIdTnq] [int] IDENTITY(1,1) NOT NULL,
	[RegAnuncioId] [int] NULL,
	[RegId] [int] NULL,
	[RegCodigoUnico] [varchar](max) NULL,
	[RegAnuncioPalabraClave] [varchar](max) NULL,
	[RegAnuncioAcercaDe] [varchar](max) NULL,
	[RegAnuncioEstado] [varchar](30) NULL,
	[RegAnuncioFecha] [datetime] NULL,
	[AnioAnuncioReg] [int] NULL,
	[MesAnuncioReg] [int] NULL,
	[DiaAnuncioReg] [int] NULL,
	[AnioAnuncioHastaId] [int] NULL,
	[MesAnuncioHastaId] [int] NULL,
	[DiaAnuncioHastaId] [int] NULL,
	[RegRutaImagen1] [varchar](max) NULL,
	[RegRutaImagen2] [varchar](max) NULL,
	[RegRutaImagen3] [varchar](max) NULL,
	[Titulo] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[RegAnuncioIdTnq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PerfilDuo]    Script Date: 2/9/2021 13:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PerfilDuo](
	[RegPerfilId] [int] IDENTITY(1,1) NOT NULL,
	[RegId] [int] NULL,
	[RegCodigoUnico] [varchar](max) NULL,
	[RegRutaImagen] [varchar](max) NULL,
	[RegStreamImagen] [image] NULL,
	[RegNombres] [varchar](max) NULL,
	[RegApellidos] [varchar](max) NULL,
	[RegNombresCompletos] [varchar](max) NULL,
	[RegProfesion] [varchar](max) NULL,
	[RegAcercaDe] [varchar](max) NULL,
	[RegEmail] [varchar](max) NULL,
	[RegNumeroCelular] [varchar](max) NULL,
	[RegFecha] [datetime] NULL,
	[AnioReg] [int] NULL,
	[MesReg] [int] NULL,
	[DiaReg] [int] NULL,
	[Tecnologia] [bit] NULL,
	[Legales] [bit] NULL,
	[Comunicacion] [bit] NULL,
	[Comercio] [bit] NULL,
	[ArteDiseno] [bit] NULL,
	[ServiciosTecnicos] [bit] NULL,
	[Urbanismo] [bit] NULL,
	[Emprendimientos] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[RegPerfilId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PerfilDUO_03022021]    Script Date: 2/9/2021 13:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PerfilDUO_03022021](
	[RegPerfilId] [int] IDENTITY(1,1) NOT NULL,
	[RegId] [int] NULL,
	[RegCodigoUnico] [varchar](max) NULL,
	[RegRutaImagen] [varchar](max) NULL,
	[RegStreamImagen] [image] NULL,
	[RegNombres] [varchar](max) NULL,
	[RegApellidos] [varchar](max) NULL,
	[RegNombresCompletos] [varchar](max) NULL,
	[RegProfesion] [varchar](max) NULL,
	[RegAcercaDe] [varchar](max) NULL,
	[RegEmail] [varchar](max) NULL,
	[RegNumeroCelular] [varchar](max) NULL,
	[RegFecha] [datetime] NULL,
	[AnioReg] [int] NULL,
	[MesReg] [int] NULL,
	[DiaReg] [int] NULL,
	[Tecnologia] [bit] NULL,
	[Legales] [bit] NULL,
	[Comunicacion] [bit] NULL,
	[Comercio] [bit] NULL,
	[ArteDiseno] [bit] NULL,
	[ServiciosTecnicos] [bit] NULL,
	[Urbanismo] [bit] NULL,
	[Emprendimientos] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PerfilDuoTNQ]    Script Date: 2/9/2021 13:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PerfilDuoTNQ](
	[RegPerfilIdTNQ] [int] IDENTITY(1,1) NOT NULL,
	[RegPerfilId] [int] NULL,
	[RegId] [int] NULL,
	[RegCodigoUnico] [varchar](max) NULL,
	[RegRutaImagen] [varchar](max) NULL,
	[RegStreamImagen] [image] NULL,
	[RegNombres] [varchar](max) NULL,
	[RegApellidos] [varchar](max) NULL,
	[RegNombresCompletos] [varchar](max) NULL,
	[RegProfesion] [varchar](max) NULL,
	[RegAcercaDe] [varchar](max) NULL,
	[RegEmail] [varchar](max) NULL,
	[RegNumeroCelular] [varchar](max) NULL,
	[RegFecha] [datetime] NULL,
	[AnioReg] [int] NULL,
	[MesReg] [int] NULL,
	[DiaReg] [int] NULL,
	[Tecnologia] [bit] NULL,
	[Legales] [bit] NULL,
	[Comunicacion] [bit] NULL,
	[Comercio] [bit] NULL,
	[ArteDiseno] [bit] NULL,
	[ServiciosTecnicos] [bit] NULL,
	[Urbanismo] [bit] NULL,
	[Emprendimientos] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[RegPerfilIdTNQ] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 2/9/2021 13:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[RegProductId] [int] IDENTITY(1,1) NOT NULL,
	[RegPerfilId] [int] NULL,
	[RegId] [int] NULL,
	[RegCodigoUnico] [varchar](max) NULL,
	[RegRutaImagen] [varchar](max) NULL,
	[RegStreamImagen] [image] NULL,
	[RegTituloProducto] [varchar](max) NULL,
	[RegDescripcionProducto] [varchar](max) NULL,
	[RegPreciProducto] [varchar](max) NULL,
	[RegFecha] [datetime] NULL,
	[AnioReg] [int] NULL,
	[MesReg] [int] NULL,
	[DiaReg] [int] NULL,
	[IsNew] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[RegProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[products_03022021]    Script Date: 2/9/2021 13:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[products_03022021](
	[RegProductId] [int] IDENTITY(1,1) NOT NULL,
	[RegPerfilId] [int] NULL,
	[RegId] [int] NULL,
	[RegCodigoUnico] [varchar](max) NULL,
	[RegRutaImagen] [varchar](max) NULL,
	[RegStreamImagen] [image] NULL,
	[RegTituloProducto] [varchar](max) NULL,
	[RegDescripcionProducto] [varchar](max) NULL,
	[RegPreciProducto] [varchar](max) NULL,
	[RegFecha] [datetime] NULL,
	[AnioReg] [int] NULL,
	[MesReg] [int] NULL,
	[DiaReg] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductsTNQ]    Script Date: 2/9/2021 13:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductsTNQ](
	[RegProductIdTNQ] [int] IDENTITY(1,1) NOT NULL,
	[RegProductId] [int] NULL,
	[RegPerfilId] [int] NULL,
	[RegId] [int] NULL,
	[RegCodigoUnico] [varchar](max) NULL,
	[RegRutaImagen] [varchar](max) NULL,
	[RegStreamImagen] [image] NULL,
	[RegTituloProducto] [varchar](max) NULL,
	[RegDescripcionProducto] [varchar](max) NULL,
	[RegPreciProducto] [varchar](max) NULL,
	[RegFecha] [datetime] NULL,
	[AnioReg] [int] NULL,
	[MesReg] [int] NULL,
	[DiaReg] [int] NULL,
	[IsDel] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[RegProductIdTNQ] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Registrado]    Script Date: 2/9/2021 13:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Registrado](
	[RegId] [int] IDENTITY(1,1) NOT NULL,
	[RegCodigoUnico] [varchar](max) NULL,
	[RegNombres] [varchar](max) NULL,
	[RegApellidos] [varchar](max) NULL,
	[RegNombreCompleto] [varchar](max) NULL,
	[RegContrasenia] [varchar](max) NULL,
	[RegEmail] [varchar](max) NULL,
	[RegNumeroCelular] [varchar](max) NULL,
	[RegFecha] [datetime] NULL,
	[AnioReg] [int] NULL,
	[MesReg] [int] NULL,
	[DiaReg] [int] NULL,
	[Tecnologia] [bit] NULL,
	[Legales] [bit] NULL,
	[Comunicacion] [bit] NULL,
	[Comercio] [bit] NULL,
	[ArteDiseno] [bit] NULL,
	[ServiciosTecnicos] [bit] NULL,
	[Urbanismo] [bit] NULL,
	[Emprendimientos] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[RegId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RegistradoTNQ]    Script Date: 2/9/2021 13:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RegistradoTNQ](
	[RegIdTNQ] [int] IDENTITY(1,1) NOT NULL,
	[RegId] [int] NULL,
	[RegCodigoUnico] [varchar](max) NULL,
	[RegNombres] [varchar](max) NULL,
	[RegApellidos] [varchar](max) NULL,
	[RegNombreCompleto] [varchar](max) NULL,
	[RegContrasenia] [varchar](max) NULL,
	[RegEmail] [varchar](max) NULL,
	[RegNumeroCelular] [varchar](max) NULL,
	[RegFecha] [datetime] NULL,
	[AnioReg] [int] NULL,
	[MesReg] [int] NULL,
	[DiaReg] [int] NULL,
	[Tecnologia] [bit] NULL,
	[Legales] [bit] NULL,
	[Comunicacion] [bit] NULL,
	[Comercio] [bit] NULL,
	[ArteDiseno] [bit] NULL,
	[ServiciosTecnicos] [bit] NULL,
	[Urbanismo] [bit] NULL,
	[Emprendimientos] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[RegIdTNQ] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SessionDUO]    Script Date: 2/9/2021 13:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SessionDUO](
	[IdSessionDUO] [int] IDENTITY(1,1) NOT NULL,
	[UsuarioDUO] [varchar](max) NULL,
	[FechaLog] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdSessionDUO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SessionDUOTNQ]    Script Date: 2/9/2021 13:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SessionDUOTNQ](
	[IdSessionDUOTNQ] [int] IDENTITY(1,1) NOT NULL,
	[IdSessionDUO] [int] NULL,
	[UsuarioDUO] [varchar](max) NULL,
	[FechaLog] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdSessionDUOTNQ] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[works]    Script Date: 2/9/2021 13:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[works](
	[RegWorksId] [int] IDENTITY(1,1) NOT NULL,
	[RegPerfilId] [int] NULL,
	[RegId] [int] NULL,
	[RegCodigoUnico] [varchar](max) NULL,
	[RegRutaImagen] [varchar](max) NULL,
	[RegStreamImagen] [image] NULL,
	[RegDescripcion] [varchar](max) NULL,
	[RegFecha] [datetime] NULL,
	[AnioReg] [int] NULL,
	[MesReg] [int] NULL,
	[DiaReg] [int] NULL,
	[IsNew] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[RegWorksId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[works_03022021]    Script Date: 2/9/2021 13:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[works_03022021](
	[RegWorksId] [int] IDENTITY(1,1) NOT NULL,
	[RegPerfilId] [int] NULL,
	[RegId] [int] NULL,
	[RegCodigoUnico] [varchar](max) NULL,
	[RegRutaImagen] [varchar](max) NULL,
	[RegStreamImagen] [image] NULL,
	[RegDescripcion] [varchar](max) NULL,
	[RegFecha] [datetime] NULL,
	[AnioReg] [int] NULL,
	[MesReg] [int] NULL,
	[DiaReg] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[worksTNQ]    Script Date: 2/9/2021 13:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[worksTNQ](
	[RegWorksIdTNQ] [int] IDENTITY(1,1) NOT NULL,
	[RegWorksId] [int] NULL,
	[RegPerfilId] [int] NULL,
	[RegId] [int] NULL,
	[RegCodigoUnico] [varchar](max) NULL,
	[RegRutaImagen] [varchar](max) NULL,
	[RegStreamImagen] [image] NULL,
	[RegDescripcion] [varchar](max) NULL,
	[RegFecha] [datetime] NULL,
	[AnioReg] [int] NULL,
	[MesReg] [int] NULL,
	[DiaReg] [int] NULL,
	[IsDel] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[RegWorksIdTNQ] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Anuncio] ON 
GO
INSERT [dbo].[Anuncio] ([RegAnuncioId], [RegId], [RegCodigoUnico], [RegAnuncioPalabraClave], [RegAnuncioAcercaDe], [RegAnuncioEstado], [RegAnuncioFecha], [AnioAnuncioReg], [MesAnuncioReg], [DiaAnuncioReg], [AnioAnuncioHastaId], [MesAnuncioHastaId], [DiaAnuncioHastaId], [RegRutaImagen1], [RegRutaImagen2], [RegRutaImagen3], [Titulo]) VALUES (1, 6, N'0cbc834f-4150-4b1f-bb8f-fb58725dd98f-637412282267396840', N'BUSCO', N'Para proyectos de software temporal, contratacion bajo servicios prestados', N'ACTIVO ', CAST(N'2021-01-23T09:48:52.857' AS DateTime), 2021, 1, 23, 2021, 5, 1, N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg2.jpg', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg2.jpg', N'Desarrolladores')
GO
INSERT [dbo].[Anuncio] ([RegAnuncioId], [RegId], [RegCodigoUnico], [RegAnuncioPalabraClave], [RegAnuncioAcercaDe], [RegAnuncioEstado], [RegAnuncioFecha], [AnioAnuncioReg], [MesAnuncioReg], [DiaAnuncioReg], [AnioAnuncioHastaId], [MesAnuncioHastaId], [DiaAnuncioHastaId], [RegRutaImagen1], [RegRutaImagen2], [RegRutaImagen3], [Titulo]) VALUES (2, 6, N'0cbc834f-4150-4b1f-bb8f-fb58725dd98f-637412282267396840', N'BUSCO', N'Para proyectos de software temporal, contratacion bajo servicios prestados', N'ACTIVO ', CAST(N'2021-01-23T09:48:52.857' AS DateTime), 2021, 1, 23, 2021, 5, 1, N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg2.jpg', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg2.jpg', N'Desarrolladores')
GO
INSERT [dbo].[Anuncio] ([RegAnuncioId], [RegId], [RegCodigoUnico], [RegAnuncioPalabraClave], [RegAnuncioAcercaDe], [RegAnuncioEstado], [RegAnuncioFecha], [AnioAnuncioReg], [MesAnuncioReg], [DiaAnuncioReg], [AnioAnuncioHastaId], [MesAnuncioHastaId], [DiaAnuncioHastaId], [RegRutaImagen1], [RegRutaImagen2], [RegRutaImagen3], [Titulo]) VALUES (3, 6, N'0cbc834f-4150-4b1f-bb8f-fb58725dd98f-637412282267396840', N'BUSCO', N'Para proyectos de software temporal, contratacion bajo servicios prestados', N'ACTIVO ', CAST(N'2021-01-23T09:48:52.857' AS DateTime), 2021, 1, 23, 2021, 5, 1, N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg2.jpg', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg2.jpg', N'Desarrolladores')
GO
INSERT [dbo].[Anuncio] ([RegAnuncioId], [RegId], [RegCodigoUnico], [RegAnuncioPalabraClave], [RegAnuncioAcercaDe], [RegAnuncioEstado], [RegAnuncioFecha], [AnioAnuncioReg], [MesAnuncioReg], [DiaAnuncioReg], [AnioAnuncioHastaId], [MesAnuncioHastaId], [DiaAnuncioHastaId], [RegRutaImagen1], [RegRutaImagen2], [RegRutaImagen3], [Titulo]) VALUES (4, 6, N'0cbc834f-4150-4b1f-bb8f-fb58725dd98f-637412282267396840', N'BUSCO', N'Para proyectos de software temporal, contratacion bajo servicios prestados', N'ACTIVO ', CAST(N'2021-01-23T09:48:52.857' AS DateTime), 2021, 1, 23, 2021, 5, 1, N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg2.jpg', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg2.jpg', N'Desarrolladores')
GO
INSERT [dbo].[Anuncio] ([RegAnuncioId], [RegId], [RegCodigoUnico], [RegAnuncioPalabraClave], [RegAnuncioAcercaDe], [RegAnuncioEstado], [RegAnuncioFecha], [AnioAnuncioReg], [MesAnuncioReg], [DiaAnuncioReg], [AnioAnuncioHastaId], [MesAnuncioHastaId], [DiaAnuncioHastaId], [RegRutaImagen1], [RegRutaImagen2], [RegRutaImagen3], [Titulo]) VALUES (5, 6, N'0cbc834f-4150-4b1f-bb8f-fb58725dd98f-637412282267396840', N'BUSCO', N'Para proyectos de software temporal, contratacion bajo servicios prestados', N'ACTIVO ', CAST(N'2021-01-23T09:48:52.857' AS DateTime), 2021, 1, 23, 2021, 5, 1, N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg2.jpg', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg2.jpg', N'Desarrolladores')
GO
INSERT [dbo].[Anuncio] ([RegAnuncioId], [RegId], [RegCodigoUnico], [RegAnuncioPalabraClave], [RegAnuncioAcercaDe], [RegAnuncioEstado], [RegAnuncioFecha], [AnioAnuncioReg], [MesAnuncioReg], [DiaAnuncioReg], [AnioAnuncioHastaId], [MesAnuncioHastaId], [DiaAnuncioHastaId], [RegRutaImagen1], [RegRutaImagen2], [RegRutaImagen3], [Titulo]) VALUES (6, 6, N'0cbc834f-4150-4b1f-bb8f-fb58725dd98f-637412282267396840', N'BUSCO', N'Para proyectos de software temporal, contratacion bajo servicios prestados', N'ACTIVO ', CAST(N'2021-01-23T09:48:52.857' AS DateTime), 2021, 1, 23, 2021, 5, 1, N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg2.jpg', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg2.jpg', N'Desarrolladores')
GO
INSERT [dbo].[Anuncio] ([RegAnuncioId], [RegId], [RegCodigoUnico], [RegAnuncioPalabraClave], [RegAnuncioAcercaDe], [RegAnuncioEstado], [RegAnuncioFecha], [AnioAnuncioReg], [MesAnuncioReg], [DiaAnuncioReg], [AnioAnuncioHastaId], [MesAnuncioHastaId], [DiaAnuncioHastaId], [RegRutaImagen1], [RegRutaImagen2], [RegRutaImagen3], [Titulo]) VALUES (7, 6, N'0cbc834f-4150-4b1f-bb8f-fb58725dd98f-637412282267396840', N'BUSCO', N'Para proyectos de software temporal, contratacion bajo servicios prestados', N'ACTIVO ', CAST(N'2021-01-23T09:48:52.857' AS DateTime), 2021, 1, 23, 2021, 5, 1, N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg2.jpg', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg2.jpg', N'Desarrolladores')
GO
INSERT [dbo].[Anuncio] ([RegAnuncioId], [RegId], [RegCodigoUnico], [RegAnuncioPalabraClave], [RegAnuncioAcercaDe], [RegAnuncioEstado], [RegAnuncioFecha], [AnioAnuncioReg], [MesAnuncioReg], [DiaAnuncioReg], [AnioAnuncioHastaId], [MesAnuncioHastaId], [DiaAnuncioHastaId], [RegRutaImagen1], [RegRutaImagen2], [RegRutaImagen3], [Titulo]) VALUES (8, 6, N'0cbc834f-4150-4b1f-bb8f-fb58725dd98f-637412282267396840', N'BUSCO', N'Para proyectos de software temporal, contratacion bajo servicios prestados', N'ACTIVO ', CAST(N'2021-01-23T09:48:52.857' AS DateTime), 2021, 1, 23, 2021, 5, 1, N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg2.jpg', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg2.jpg', N'Desarrolladores')
GO
INSERT [dbo].[Anuncio] ([RegAnuncioId], [RegId], [RegCodigoUnico], [RegAnuncioPalabraClave], [RegAnuncioAcercaDe], [RegAnuncioEstado], [RegAnuncioFecha], [AnioAnuncioReg], [MesAnuncioReg], [DiaAnuncioReg], [AnioAnuncioHastaId], [MesAnuncioHastaId], [DiaAnuncioHastaId], [RegRutaImagen1], [RegRutaImagen2], [RegRutaImagen3], [Titulo]) VALUES (9, 6, N'0cbc834f-4150-4b1f-bb8f-fb58725dd98f-637412282267396840', N'BUSCO', N'Para proyectos de software temporal, contratacion bajo servicios prestados', N'ACTIVO ', CAST(N'2021-01-23T09:48:52.857' AS DateTime), 2021, 1, 23, 2021, 5, 1, N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg2.jpg', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg2.jpg', N'Desarrolladores')
GO
INSERT [dbo].[Anuncio] ([RegAnuncioId], [RegId], [RegCodigoUnico], [RegAnuncioPalabraClave], [RegAnuncioAcercaDe], [RegAnuncioEstado], [RegAnuncioFecha], [AnioAnuncioReg], [MesAnuncioReg], [DiaAnuncioReg], [AnioAnuncioHastaId], [MesAnuncioHastaId], [DiaAnuncioHastaId], [RegRutaImagen1], [RegRutaImagen2], [RegRutaImagen3], [Titulo]) VALUES (10, 6, N'0cbc834f-4150-4b1f-bb8f-fb58725dd98f-637412282267396840', N'BUSCO', N'Para proyectos de software temporal, contratacion bajo servicios prestados', N'ACTIVO ', CAST(N'2021-01-23T09:48:52.857' AS DateTime), 2021, 1, 23, 2021, 5, 1, N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg2.jpg', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg2.jpg', N'Desarrolladores')
GO
INSERT [dbo].[Anuncio] ([RegAnuncioId], [RegId], [RegCodigoUnico], [RegAnuncioPalabraClave], [RegAnuncioAcercaDe], [RegAnuncioEstado], [RegAnuncioFecha], [AnioAnuncioReg], [MesAnuncioReg], [DiaAnuncioReg], [AnioAnuncioHastaId], [MesAnuncioHastaId], [DiaAnuncioHastaId], [RegRutaImagen1], [RegRutaImagen2], [RegRutaImagen3], [Titulo]) VALUES (11, 6, N'0cbc834f-4150-4b1f-bb8f-fb58725dd98f-637412282267396840', N'BUSCO', N'Para proyectos de software temporal, contratacion bajo servicios prestados', N'ACTIVO ', CAST(N'2021-01-23T09:48:52.857' AS DateTime), 2021, 1, 23, 2021, 5, 1, N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg2.jpg', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg2.jpg', N'Desarrolladores')
GO
INSERT [dbo].[Anuncio] ([RegAnuncioId], [RegId], [RegCodigoUnico], [RegAnuncioPalabraClave], [RegAnuncioAcercaDe], [RegAnuncioEstado], [RegAnuncioFecha], [AnioAnuncioReg], [MesAnuncioReg], [DiaAnuncioReg], [AnioAnuncioHastaId], [MesAnuncioHastaId], [DiaAnuncioHastaId], [RegRutaImagen1], [RegRutaImagen2], [RegRutaImagen3], [Titulo]) VALUES (12, 6, N'0cbc834f-4150-4b1f-bb8f-fb58725dd98f-637412282267396840', N'BUSCO', N'Para proyectos de software temporal, contratacion bajo servicios prestados', N'ACTIVO ', CAST(N'2021-01-23T09:48:52.857' AS DateTime), 2021, 1, 23, 2021, 5, 1, N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg2.jpg', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg2.jpg', N'Desarrolladores')
GO
INSERT [dbo].[Anuncio] ([RegAnuncioId], [RegId], [RegCodigoUnico], [RegAnuncioPalabraClave], [RegAnuncioAcercaDe], [RegAnuncioEstado], [RegAnuncioFecha], [AnioAnuncioReg], [MesAnuncioReg], [DiaAnuncioReg], [AnioAnuncioHastaId], [MesAnuncioHastaId], [DiaAnuncioHastaId], [RegRutaImagen1], [RegRutaImagen2], [RegRutaImagen3], [Titulo]) VALUES (13, 6, N'0cbc834f-4150-4b1f-bb8f-fb58725dd98f-637412282267396840', N'BUSCO', N'Para proyectos de software temporal, contratacion bajo servicios prestados', N'ACTIVO ', CAST(N'2021-01-23T09:48:52.857' AS DateTime), 2021, 1, 23, 2021, 5, 1, N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg2.jpg', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg2.jpg', N'Desarrolladores')
GO
INSERT [dbo].[Anuncio] ([RegAnuncioId], [RegId], [RegCodigoUnico], [RegAnuncioPalabraClave], [RegAnuncioAcercaDe], [RegAnuncioEstado], [RegAnuncioFecha], [AnioAnuncioReg], [MesAnuncioReg], [DiaAnuncioReg], [AnioAnuncioHastaId], [MesAnuncioHastaId], [DiaAnuncioHastaId], [RegRutaImagen1], [RegRutaImagen2], [RegRutaImagen3], [Titulo]) VALUES (14, 6, N'0cbc834f-4150-4b1f-bb8f-fb58725dd98f-637412282267396840', N'BUSCO', N'Para proyectos de software temporal, contratacion bajo servicios prestados', N'ACTIVO ', CAST(N'2021-01-23T09:48:52.857' AS DateTime), 2021, 1, 23, 2021, 5, 1, N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg2.jpg', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg2.jpg', N'Desarrolladores')
GO
INSERT [dbo].[Anuncio] ([RegAnuncioId], [RegId], [RegCodigoUnico], [RegAnuncioPalabraClave], [RegAnuncioAcercaDe], [RegAnuncioEstado], [RegAnuncioFecha], [AnioAnuncioReg], [MesAnuncioReg], [DiaAnuncioReg], [AnioAnuncioHastaId], [MesAnuncioHastaId], [DiaAnuncioHastaId], [RegRutaImagen1], [RegRutaImagen2], [RegRutaImagen3], [Titulo]) VALUES (15, 6, N'0cbc834f-4150-4b1f-bb8f-fb58725dd98f-637412282267396840', N'BUSCO', N'Para proyectos de software temporal, contratacion bajo servicios prestados', N'ACTIVO ', CAST(N'2021-01-23T09:48:52.857' AS DateTime), 2021, 1, 23, 2021, 5, 1, N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg2.jpg', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg2.jpg', N'Desarrolladores')
GO
INSERT [dbo].[Anuncio] ([RegAnuncioId], [RegId], [RegCodigoUnico], [RegAnuncioPalabraClave], [RegAnuncioAcercaDe], [RegAnuncioEstado], [RegAnuncioFecha], [AnioAnuncioReg], [MesAnuncioReg], [DiaAnuncioReg], [AnioAnuncioHastaId], [MesAnuncioHastaId], [DiaAnuncioHastaId], [RegRutaImagen1], [RegRutaImagen2], [RegRutaImagen3], [Titulo]) VALUES (16, 1, N'd27631a7-a7a2-44c8-91ab-c65ecef416f8-637369903862081580', N'SOLICITO', N'Programador .net c#', N'ACTIVO', CAST(N'2021-02-12T08:05:59.553' AS DateTime), 2021, 2, 12, 2021, 6, 30, N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/1/FotoAnuncio1637487137866807303duo1.JPG', N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/1/FotoAnuncio2637487138065399742duo1.JPG', N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/1/FotoAnuncio3637487139531167645duo1.JPG', N'Freelance')
GO
SET IDENTITY_INSERT [dbo].[Anuncio] OFF
GO
SET IDENTITY_INSERT [dbo].[Anuncio_03022021] ON 
GO
INSERT [dbo].[Anuncio_03022021] ([RegAnuncioId], [RegId], [RegCodigoUnico], [RegAnuncioPalabraClave], [RegAnuncioAcercaDe], [RegAnuncioEstado], [RegAnuncioFecha], [AnioAnuncioReg], [MesAnuncioReg], [DiaAnuncioReg], [AnioAnuncioHastaId], [MesAnuncioHastaId], [DiaAnuncioHastaId], [RegRutaImagen1], [RegRutaImagen2], [RegRutaImagen3], [Titulo]) VALUES (1, 1, N'd27631a7-a7a2-44c8-91ab-c65ecef416f8-637369903862081580', N'BUSCO', N'Con conoccimientos en .Net, base datos sql server 2016 en adelante, api rest y web services', N'ACTIVO', CAST(N'2020-10-24T09:48:52.857' AS DateTime), 2020, 10, 24, 2020, 12, 29, N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/1/FotoAnuncio1637391296731395122duo1.JPG', N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/1/FotoAnuncio2637391297022330630duo1.png', N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/1/FotoAnuncio3637391297257330424duo1.jpg', N'Developers')
GO
INSERT [dbo].[Anuncio_03022021] ([RegAnuncioId], [RegId], [RegCodigoUnico], [RegAnuncioPalabraClave], [RegAnuncioAcercaDe], [RegAnuncioEstado], [RegAnuncioFecha], [AnioAnuncioReg], [MesAnuncioReg], [DiaAnuncioReg], [AnioAnuncioHastaId], [MesAnuncioHastaId], [DiaAnuncioHastaId], [RegRutaImagen1], [RegRutaImagen2], [RegRutaImagen3], [Titulo]) VALUES (2, 1, N'd27631a7-a7a2-44c8-91ab-c65ecef416f8-637369903862081580', N'SOLICITO', N'Para proyectos de software temporal, contratacion bajo servicios prestados', N'ACTIVO', CAST(N'2020-10-24T09:55:28.840' AS DateTime), 2020, 10, 24, 2021, 1, 30, N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/1/FotoAnuncio1637391301135907577duo1.jpg', N'http://18.218.178.167/imagesemail/backApp.jpg', N'http://18.218.178.167/imagesemail/backApp.jpg', N'Profesionales')
GO
INSERT [dbo].[Anuncio_03022021] ([RegAnuncioId], [RegId], [RegCodigoUnico], [RegAnuncioPalabraClave], [RegAnuncioAcercaDe], [RegAnuncioEstado], [RegAnuncioFecha], [AnioAnuncioReg], [MesAnuncioReg], [DiaAnuncioReg], [AnioAnuncioHastaId], [MesAnuncioHastaId], [DiaAnuncioHastaId], [RegRutaImagen1], [RegRutaImagen2], [RegRutaImagen3], [Titulo]) VALUES (7, 2, N'ab5991b8-cf73-46fd-a759-fe80ab9e8dab-637369903730644300', N'BUSCO', N'Abogado con experiencia en casos intrafamiliares. Necesito para un caso urgente. Pago a tratar una vez hecho el primer contacto. ', N'ACTIVO', CAST(N'2020-11-08T20:30:53.180' AS DateTime), 2020, 11, 8, 2020, 11, 8, N'http://18.218.178.167/imagesemail/backApp.jpg', N'http://18.218.178.167/imagesemail/backApp.jpg', N'http://18.218.178.167/imagesemail/backApp.jpg', N'Abogado penal ')
GO
INSERT [dbo].[Anuncio_03022021] ([RegAnuncioId], [RegId], [RegCodigoUnico], [RegAnuncioPalabraClave], [RegAnuncioAcercaDe], [RegAnuncioEstado], [RegAnuncioFecha], [AnioAnuncioReg], [MesAnuncioReg], [DiaAnuncioReg], [AnioAnuncioHastaId], [MesAnuncioHastaId], [DiaAnuncioHastaId], [RegRutaImagen1], [RegRutaImagen2], [RegRutaImagen3], [Titulo]) VALUES (8, 5, N'537ce8a4-a837-4730-b1c5-f289f1635009-637404631507704950', N'PARA HOY', N'Se requiere servicio de catering para fiesta de grado', N'ACTIVO', CAST(N'2020-11-08T21:30:20.330' AS DateTime), 2020, 11, 8, 2020, 11, 8, N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/5/FotoAnuncio1637404678076114792duo5.jpg', N'http://18.218.178.167/imagesemail/backApp.jpg', N'http://18.218.178.167/imagesemail/backApp.jpg', N'Servicio de catering')
GO
INSERT [dbo].[Anuncio_03022021] ([RegAnuncioId], [RegId], [RegCodigoUnico], [RegAnuncioPalabraClave], [RegAnuncioAcercaDe], [RegAnuncioEstado], [RegAnuncioFecha], [AnioAnuncioReg], [MesAnuncioReg], [DiaAnuncioReg], [AnioAnuncioHastaId], [MesAnuncioHastaId], [DiaAnuncioHastaId], [RegRutaImagen1], [RegRutaImagen2], [RegRutaImagen3], [Titulo]) VALUES (9, 4, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'BUSCO', N'Conocedores de star wars', N'ACTIVO', CAST(N'2020-11-17T03:47:41.310' AS DateTime), 2020, 11, 17, 2020, 12, 30, N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/4/FotoAnuncio1637411815766352421duo4.JPG', N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/4/FotoAnuncio2637411816112456521duo4.JPG', N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/4/FotoAnuncio3637411816414650486duo4.JPG', N'Caricaturistas')
GO
INSERT [dbo].[Anuncio_03022021] ([RegAnuncioId], [RegId], [RegCodigoUnico], [RegAnuncioPalabraClave], [RegAnuncioAcercaDe], [RegAnuncioEstado], [RegAnuncioFecha], [AnioAnuncioReg], [MesAnuncioReg], [DiaAnuncioReg], [AnioAnuncioHastaId], [MesAnuncioHastaId], [DiaAnuncioHastaId], [RegRutaImagen1], [RegRutaImagen2], [RegRutaImagen3], [Titulo]) VALUES (10, 5, N'537ce8a4-a837-4730-b1c5-f289f1635009-637404631507704950', N'PARA HOY', N'Mi novia me terminó. Necesito un mariachi para el día de hoy', N'ACTIVO', CAST(N'2020-11-30T17:48:28.130' AS DateTime), 2020, 11, 30, 2020, 11, 30, N'http://18.218.178.167/imagesemail/backApp.jpg', N'http://18.218.178.167/imagesemail/backApp.jpg', N'http://18.218.178.167/imagesemail/backApp.jpg', N'Mariachi')
GO
INSERT [dbo].[Anuncio_03022021] ([RegAnuncioId], [RegId], [RegCodigoUnico], [RegAnuncioPalabraClave], [RegAnuncioAcercaDe], [RegAnuncioEstado], [RegAnuncioFecha], [AnioAnuncioReg], [MesAnuncioReg], [DiaAnuncioReg], [AnioAnuncioHastaId], [MesAnuncioHastaId], [DiaAnuncioHastaId], [RegRutaImagen1], [RegRutaImagen2], [RegRutaImagen3], [Titulo]) VALUES (11, 3, N'f7f88e2f-dad9-45bf-a4a2-af2aea3c532b-637374424183047540', N'SOLICITO', N'Para revistas comicas', N'ACTIVO', CAST(N'2020-12-02T01:41:07.103' AS DateTime), 2020, 12, 2, 2020, 12, 30, N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/3/FotoAnuncio1637424700502124853duo3.jpg', N'http://18.218.178.167/imagesemail/backApp.jpg', N'http://18.218.178.167/imagesemail/backApp.jpg', N'Dibujantes')
GO
INSERT [dbo].[Anuncio_03022021] ([RegAnuncioId], [RegId], [RegCodigoUnico], [RegAnuncioPalabraClave], [RegAnuncioAcercaDe], [RegAnuncioEstado], [RegAnuncioFecha], [AnioAnuncioReg], [MesAnuncioReg], [DiaAnuncioReg], [AnioAnuncioHastaId], [MesAnuncioHastaId], [DiaAnuncioHastaId], [RegRutaImagen1], [RegRutaImagen2], [RegRutaImagen3], [Titulo]) VALUES (12, 2, N'ab5991b8-cf73-46fd-a759-fe80ab9e8dab-637369903730644300', N'BUSCO', N'Para proyectos de software temporal, contratacion bajo servicios prestados', N'ACTIVO ', CAST(N'2021-01-23T09:48:52.857' AS DateTime), 2021, 1, 23, 2021, 5, 1, N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg2.jpg', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg2.jpg', N'Desarrolladores')
GO
INSERT [dbo].[Anuncio_03022021] ([RegAnuncioId], [RegId], [RegCodigoUnico], [RegAnuncioPalabraClave], [RegAnuncioAcercaDe], [RegAnuncioEstado], [RegAnuncioFecha], [AnioAnuncioReg], [MesAnuncioReg], [DiaAnuncioReg], [AnioAnuncioHastaId], [MesAnuncioHastaId], [DiaAnuncioHastaId], [RegRutaImagen1], [RegRutaImagen2], [RegRutaImagen3], [Titulo]) VALUES (13, 2, N'ab5991b8-cf73-46fd-a759-fe80ab9e8dab-637369903730644300', N'BUSCO', N'Para proyectos de software temporal, contratacion bajo servicios prestados', N'ACTIVO ', CAST(N'2021-01-23T09:48:52.857' AS DateTime), 2021, 1, 23, 2021, 5, 1, N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg2.jpg', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg2.jpg', N'Desarrolladores')
GO
INSERT [dbo].[Anuncio_03022021] ([RegAnuncioId], [RegId], [RegCodigoUnico], [RegAnuncioPalabraClave], [RegAnuncioAcercaDe], [RegAnuncioEstado], [RegAnuncioFecha], [AnioAnuncioReg], [MesAnuncioReg], [DiaAnuncioReg], [AnioAnuncioHastaId], [MesAnuncioHastaId], [DiaAnuncioHastaId], [RegRutaImagen1], [RegRutaImagen2], [RegRutaImagen3], [Titulo]) VALUES (14, 2, N'ab5991b8-cf73-46fd-a759-fe80ab9e8dab-637369903730644300', N'BUSCO', N'Para proyectos de software temporal, contratacion bajo servicios prestados', N'ACTIVO ', CAST(N'2021-01-23T09:48:52.857' AS DateTime), 2021, 1, 23, 2021, 5, 1, N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg2.jpg', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg2.jpg', N'Desarrolladores')
GO
INSERT [dbo].[Anuncio_03022021] ([RegAnuncioId], [RegId], [RegCodigoUnico], [RegAnuncioPalabraClave], [RegAnuncioAcercaDe], [RegAnuncioEstado], [RegAnuncioFecha], [AnioAnuncioReg], [MesAnuncioReg], [DiaAnuncioReg], [AnioAnuncioHastaId], [MesAnuncioHastaId], [DiaAnuncioHastaId], [RegRutaImagen1], [RegRutaImagen2], [RegRutaImagen3], [Titulo]) VALUES (15, 2, N'ab5991b8-cf73-46fd-a759-fe80ab9e8dab-637369903730644300', N'BUSCO', N'Para proyectos de software temporal, contratacion bajo servicios prestados', N'ACTIVO ', CAST(N'2021-01-23T09:48:52.857' AS DateTime), 2021, 1, 23, 2021, 5, 1, N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg2.jpg', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg2.jpg', N'Desarrolladores')
GO
INSERT [dbo].[Anuncio_03022021] ([RegAnuncioId], [RegId], [RegCodigoUnico], [RegAnuncioPalabraClave], [RegAnuncioAcercaDe], [RegAnuncioEstado], [RegAnuncioFecha], [AnioAnuncioReg], [MesAnuncioReg], [DiaAnuncioReg], [AnioAnuncioHastaId], [MesAnuncioHastaId], [DiaAnuncioHastaId], [RegRutaImagen1], [RegRutaImagen2], [RegRutaImagen3], [Titulo]) VALUES (16, 2, N'ab5991b8-cf73-46fd-a759-fe80ab9e8dab-637369903730644300', N'BUSCO', N'Para proyectos de software temporal, contratacion bajo servicios prestados', N'ACTIVO ', CAST(N'2021-01-23T09:48:52.857' AS DateTime), 2021, 1, 23, 2021, 5, 1, N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg2.jpg', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg2.jpg', N'Desarrolladores')
GO
INSERT [dbo].[Anuncio_03022021] ([RegAnuncioId], [RegId], [RegCodigoUnico], [RegAnuncioPalabraClave], [RegAnuncioAcercaDe], [RegAnuncioEstado], [RegAnuncioFecha], [AnioAnuncioReg], [MesAnuncioReg], [DiaAnuncioReg], [AnioAnuncioHastaId], [MesAnuncioHastaId], [DiaAnuncioHastaId], [RegRutaImagen1], [RegRutaImagen2], [RegRutaImagen3], [Titulo]) VALUES (17, 2, N'ab5991b8-cf73-46fd-a759-fe80ab9e8dab-637369903730644300', N'BUSCO', N'Para proyectos de software temporal, contratacion bajo servicios prestados', N'ACTIVO ', CAST(N'2021-01-23T09:48:52.857' AS DateTime), 2021, 1, 23, 2021, 5, 1, N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg2.jpg', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg2.jpg', N'Desarrolladores')
GO
INSERT [dbo].[Anuncio_03022021] ([RegAnuncioId], [RegId], [RegCodigoUnico], [RegAnuncioPalabraClave], [RegAnuncioAcercaDe], [RegAnuncioEstado], [RegAnuncioFecha], [AnioAnuncioReg], [MesAnuncioReg], [DiaAnuncioReg], [AnioAnuncioHastaId], [MesAnuncioHastaId], [DiaAnuncioHastaId], [RegRutaImagen1], [RegRutaImagen2], [RegRutaImagen3], [Titulo]) VALUES (18, 2, N'ab5991b8-cf73-46fd-a759-fe80ab9e8dab-637369903730644300', N'BUSCO', N'Para proyectos de software temporal, contratacion bajo servicios prestados', N'ACTIVO ', CAST(N'2021-01-23T09:48:52.857' AS DateTime), 2021, 1, 23, 2021, 5, 1, N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg2.jpg', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg2.jpg', N'Desarrolladores')
GO
INSERT [dbo].[Anuncio_03022021] ([RegAnuncioId], [RegId], [RegCodigoUnico], [RegAnuncioPalabraClave], [RegAnuncioAcercaDe], [RegAnuncioEstado], [RegAnuncioFecha], [AnioAnuncioReg], [MesAnuncioReg], [DiaAnuncioReg], [AnioAnuncioHastaId], [MesAnuncioHastaId], [DiaAnuncioHastaId], [RegRutaImagen1], [RegRutaImagen2], [RegRutaImagen3], [Titulo]) VALUES (19, 2, N'ab5991b8-cf73-46fd-a759-fe80ab9e8dab-637369903730644300', N'BUSCO', N'Para proyectos de software temporal, contratacion bajo servicios prestados', N'ACTIVO ', CAST(N'2021-01-23T09:48:52.857' AS DateTime), 2021, 1, 23, 2021, 5, 1, N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg2.jpg', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg2.jpg', N'Desarrolladores')
GO
INSERT [dbo].[Anuncio_03022021] ([RegAnuncioId], [RegId], [RegCodigoUnico], [RegAnuncioPalabraClave], [RegAnuncioAcercaDe], [RegAnuncioEstado], [RegAnuncioFecha], [AnioAnuncioReg], [MesAnuncioReg], [DiaAnuncioReg], [AnioAnuncioHastaId], [MesAnuncioHastaId], [DiaAnuncioHastaId], [RegRutaImagen1], [RegRutaImagen2], [RegRutaImagen3], [Titulo]) VALUES (20, 2, N'ab5991b8-cf73-46fd-a759-fe80ab9e8dab-637369903730644300', N'BUSCO', N'Para proyectos de software temporal, contratacion bajo servicios prestados', N'ACTIVO ', CAST(N'2021-01-23T09:48:52.857' AS DateTime), 2021, 1, 23, 2021, 5, 1, N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg2.jpg', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg2.jpg', N'Desarrolladores')
GO
INSERT [dbo].[Anuncio_03022021] ([RegAnuncioId], [RegId], [RegCodigoUnico], [RegAnuncioPalabraClave], [RegAnuncioAcercaDe], [RegAnuncioEstado], [RegAnuncioFecha], [AnioAnuncioReg], [MesAnuncioReg], [DiaAnuncioReg], [AnioAnuncioHastaId], [MesAnuncioHastaId], [DiaAnuncioHastaId], [RegRutaImagen1], [RegRutaImagen2], [RegRutaImagen3], [Titulo]) VALUES (21, 2, N'ab5991b8-cf73-46fd-a759-fe80ab9e8dab-637369903730644300', N'BUSCO', N'Para proyectos de software temporal, contratacion bajo servicios prestados', N'ACTIVO ', CAST(N'2021-01-23T09:48:52.857' AS DateTime), 2021, 1, 23, 2021, 5, 1, N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg2.jpg', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg2.jpg', N'Desarrolladores')
GO
INSERT [dbo].[Anuncio_03022021] ([RegAnuncioId], [RegId], [RegCodigoUnico], [RegAnuncioPalabraClave], [RegAnuncioAcercaDe], [RegAnuncioEstado], [RegAnuncioFecha], [AnioAnuncioReg], [MesAnuncioReg], [DiaAnuncioReg], [AnioAnuncioHastaId], [MesAnuncioHastaId], [DiaAnuncioHastaId], [RegRutaImagen1], [RegRutaImagen2], [RegRutaImagen3], [Titulo]) VALUES (22, 2, N'ab5991b8-cf73-46fd-a759-fe80ab9e8dab-637369903730644300', N'BUSCO', N'Para proyectos de software temporal, contratacion bajo servicios prestados', N'ACTIVO ', CAST(N'2021-01-23T09:48:52.857' AS DateTime), 2021, 1, 23, 2021, 5, 1, N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg2.jpg', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg2.jpg', N'Desarrolladores')
GO
INSERT [dbo].[Anuncio_03022021] ([RegAnuncioId], [RegId], [RegCodigoUnico], [RegAnuncioPalabraClave], [RegAnuncioAcercaDe], [RegAnuncioEstado], [RegAnuncioFecha], [AnioAnuncioReg], [MesAnuncioReg], [DiaAnuncioReg], [AnioAnuncioHastaId], [MesAnuncioHastaId], [DiaAnuncioHastaId], [RegRutaImagen1], [RegRutaImagen2], [RegRutaImagen3], [Titulo]) VALUES (23, 2, N'ab5991b8-cf73-46fd-a759-fe80ab9e8dab-637369903730644300', N'BUSCO', N'Para proyectos de software temporal, contratacion bajo servicios prestados', N'ACTIVO ', CAST(N'2021-01-23T09:48:52.857' AS DateTime), 2021, 1, 23, 2021, 5, 1, N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg2.jpg', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg2.jpg', N'Desarrolladores')
GO
INSERT [dbo].[Anuncio_03022021] ([RegAnuncioId], [RegId], [RegCodigoUnico], [RegAnuncioPalabraClave], [RegAnuncioAcercaDe], [RegAnuncioEstado], [RegAnuncioFecha], [AnioAnuncioReg], [MesAnuncioReg], [DiaAnuncioReg], [AnioAnuncioHastaId], [MesAnuncioHastaId], [DiaAnuncioHastaId], [RegRutaImagen1], [RegRutaImagen2], [RegRutaImagen3], [Titulo]) VALUES (24, 2, N'ab5991b8-cf73-46fd-a759-fe80ab9e8dab-637369903730644300', N'BUSCO', N'Para proyectos de software temporal, contratacion bajo servicios prestados', N'ACTIVO ', CAST(N'2021-01-23T09:48:52.857' AS DateTime), 2021, 1, 23, 2021, 5, 1, N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg2.jpg', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg2.jpg', N'Desarrolladores')
GO
INSERT [dbo].[Anuncio_03022021] ([RegAnuncioId], [RegId], [RegCodigoUnico], [RegAnuncioPalabraClave], [RegAnuncioAcercaDe], [RegAnuncioEstado], [RegAnuncioFecha], [AnioAnuncioReg], [MesAnuncioReg], [DiaAnuncioReg], [AnioAnuncioHastaId], [MesAnuncioHastaId], [DiaAnuncioHastaId], [RegRutaImagen1], [RegRutaImagen2], [RegRutaImagen3], [Titulo]) VALUES (25, 2, N'ab5991b8-cf73-46fd-a759-fe80ab9e8dab-637369903730644300', N'BUSCO', N'Para proyectos de software temporal, contratacion bajo servicios prestados', N'ACTIVO ', CAST(N'2021-01-23T09:48:52.857' AS DateTime), 2021, 1, 23, 2021, 5, 1, N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg2.jpg', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg2.jpg', N'Desarrolladores')
GO
INSERT [dbo].[Anuncio_03022021] ([RegAnuncioId], [RegId], [RegCodigoUnico], [RegAnuncioPalabraClave], [RegAnuncioAcercaDe], [RegAnuncioEstado], [RegAnuncioFecha], [AnioAnuncioReg], [MesAnuncioReg], [DiaAnuncioReg], [AnioAnuncioHastaId], [MesAnuncioHastaId], [DiaAnuncioHastaId], [RegRutaImagen1], [RegRutaImagen2], [RegRutaImagen3], [Titulo]) VALUES (26, 2, N'ab5991b8-cf73-46fd-a759-fe80ab9e8dab-637369903730644300', N'BUSCO', N'Para proyectos de software temporal, contratacion bajo servicios prestados', N'ACTIVO ', CAST(N'2021-01-23T09:48:52.857' AS DateTime), 2021, 1, 23, 2021, 5, 1, N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg2.jpg', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg2.jpg', N'Desarrolladores')
GO
INSERT [dbo].[Anuncio_03022021] ([RegAnuncioId], [RegId], [RegCodigoUnico], [RegAnuncioPalabraClave], [RegAnuncioAcercaDe], [RegAnuncioEstado], [RegAnuncioFecha], [AnioAnuncioReg], [MesAnuncioReg], [DiaAnuncioReg], [AnioAnuncioHastaId], [MesAnuncioHastaId], [DiaAnuncioHastaId], [RegRutaImagen1], [RegRutaImagen2], [RegRutaImagen3], [Titulo]) VALUES (27, 2, N'ab5991b8-cf73-46fd-a759-fe80ab9e8dab-637369903730644300', N'BUSCO', N'Para proyectos de software temporal, contratacion bajo servicios prestados', N'ACTIVO ', CAST(N'2021-01-23T09:48:52.857' AS DateTime), 2021, 1, 23, 2021, 5, 1, N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg2.jpg', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg2.jpg', N'Desarrolladores')
GO
INSERT [dbo].[Anuncio_03022021] ([RegAnuncioId], [RegId], [RegCodigoUnico], [RegAnuncioPalabraClave], [RegAnuncioAcercaDe], [RegAnuncioEstado], [RegAnuncioFecha], [AnioAnuncioReg], [MesAnuncioReg], [DiaAnuncioReg], [AnioAnuncioHastaId], [MesAnuncioHastaId], [DiaAnuncioHastaId], [RegRutaImagen1], [RegRutaImagen2], [RegRutaImagen3], [Titulo]) VALUES (28, 2, N'ab5991b8-cf73-46fd-a759-fe80ab9e8dab-637369903730644300', N'BUSCO', N'Para proyectos de software temporal, contratacion bajo servicios prestados', N'ACTIVO ', CAST(N'2021-01-23T09:48:52.857' AS DateTime), 2021, 1, 23, 2021, 5, 1, N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg2.jpg', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg2.jpg', N'Desarrolladores')
GO
INSERT [dbo].[Anuncio_03022021] ([RegAnuncioId], [RegId], [RegCodigoUnico], [RegAnuncioPalabraClave], [RegAnuncioAcercaDe], [RegAnuncioEstado], [RegAnuncioFecha], [AnioAnuncioReg], [MesAnuncioReg], [DiaAnuncioReg], [AnioAnuncioHastaId], [MesAnuncioHastaId], [DiaAnuncioHastaId], [RegRutaImagen1], [RegRutaImagen2], [RegRutaImagen3], [Titulo]) VALUES (29, 2, N'ab5991b8-cf73-46fd-a759-fe80ab9e8dab-637369903730644300', N'BUSCO', N'Para proyectos de software temporal, contratacion bajo servicios prestados', N'ACTIVO ', CAST(N'2021-01-23T09:48:52.857' AS DateTime), 2021, 1, 23, 2021, 5, 1, N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg2.jpg', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg2.jpg', N'Desarrolladores')
GO
SET IDENTITY_INSERT [dbo].[Anuncio_03022021] OFF
GO
SET IDENTITY_INSERT [dbo].[AnuncioImages] ON 
GO
INSERT [dbo].[AnuncioImages] ([RegAnuncioImagenId], [RegAnuncioId], [RegId], [RegRutaImagen], [RegAnuncioEstado], [RegAnuncioFecha]) VALUES (1, 16, 1, N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/1/FotoAnuncio1637487137866807303duo1.JPG', N'ACTIVO', CAST(N'2021-02-12T08:05:59.587' AS DateTime))
GO
INSERT [dbo].[AnuncioImages] ([RegAnuncioImagenId], [RegAnuncioId], [RegId], [RegRutaImagen], [RegAnuncioEstado], [RegAnuncioFecha]) VALUES (2, 16, 1, N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/1/FotoAnuncio2637487138065399742duo1.JPG', N'ACTIVO', CAST(N'2021-02-12T08:05:59.587' AS DateTime))
GO
INSERT [dbo].[AnuncioImages] ([RegAnuncioImagenId], [RegAnuncioId], [RegId], [RegRutaImagen], [RegAnuncioEstado], [RegAnuncioFecha]) VALUES (3, 16, 1, N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/1/FotoAnuncio3637487139531167645duo1.JPG', N'ACTIVO', CAST(N'2021-02-12T08:05:59.600' AS DateTime))
GO
INSERT [dbo].[AnuncioImages] ([RegAnuncioImagenId], [RegAnuncioId], [RegId], [RegRutaImagen], [RegAnuncioEstado], [RegAnuncioFecha]) VALUES (4, 17, 1, N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/1/FotoAnuncio1637487265006933887duo1.png', N'ACTIVO', CAST(N'2021-02-12T11:35:06.850' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[AnuncioImages] OFF
GO
SET IDENTITY_INSERT [dbo].[AnuncioImages_03022021] ON 
GO
INSERT [dbo].[AnuncioImages_03022021] ([RegAnuncioImagenId], [RegAnuncioId], [RegId], [RegRutaImagen], [RegAnuncioEstado], [RegAnuncioFecha]) VALUES (1, 1, 1, N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/1/FotoAnuncio1637391296731395122duo1.JPG', N'ACTIVO', CAST(N'2020-10-24T09:48:53.373' AS DateTime))
GO
INSERT [dbo].[AnuncioImages_03022021] ([RegAnuncioImagenId], [RegAnuncioId], [RegId], [RegRutaImagen], [RegAnuncioEstado], [RegAnuncioFecha]) VALUES (2, 1, 1, N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/1/FotoAnuncio2637391297022330630duo1.png', N'ACTIVO', CAST(N'2020-10-24T09:48:53.390' AS DateTime))
GO
INSERT [dbo].[AnuncioImages_03022021] ([RegAnuncioImagenId], [RegAnuncioId], [RegId], [RegRutaImagen], [RegAnuncioEstado], [RegAnuncioFecha]) VALUES (3, 1, 1, N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/1/FotoAnuncio3637391297257330424duo1.jpg', N'ACTIVO', CAST(N'2020-10-24T09:48:53.390' AS DateTime))
GO
INSERT [dbo].[AnuncioImages_03022021] ([RegAnuncioImagenId], [RegAnuncioId], [RegId], [RegRutaImagen], [RegAnuncioEstado], [RegAnuncioFecha]) VALUES (4, 2, 1, N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/1/FotoAnuncio1637391301135907577duo1.jpg', N'ACTIVO', CAST(N'2020-10-24T09:55:28.903' AS DateTime))
GO
INSERT [dbo].[AnuncioImages_03022021] ([RegAnuncioImagenId], [RegAnuncioId], [RegId], [RegRutaImagen], [RegAnuncioEstado], [RegAnuncioFecha]) VALUES (5, 3, 2, N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/2/FotoAnuncio1637391386971248836duo2.jpg', N'ACTIVO', CAST(N'2020-10-24T12:20:48.467' AS DateTime))
GO
INSERT [dbo].[AnuncioImages_03022021] ([RegAnuncioImagenId], [RegAnuncioId], [RegId], [RegRutaImagen], [RegAnuncioEstado], [RegAnuncioFecha]) VALUES (6, 3, 2, N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/2/FotoAnuncio2637391387220935003duo2.jpg', N'ACTIVO', CAST(N'2020-10-24T12:20:48.483' AS DateTime))
GO
INSERT [dbo].[AnuncioImages_03022021] ([RegAnuncioImagenId], [RegAnuncioId], [RegId], [RegRutaImagen], [RegAnuncioEstado], [RegAnuncioFecha]) VALUES (7, 3, 2, N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/2/FotoAnuncio3637391387534682838duo2.jpg', N'ACTIVO', CAST(N'2020-10-24T12:20:48.483' AS DateTime))
GO
INSERT [dbo].[AnuncioImages_03022021] ([RegAnuncioImagenId], [RegAnuncioId], [RegId], [RegRutaImagen], [RegAnuncioEstado], [RegAnuncioFecha]) VALUES (8, 4, 1, N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/1/FotoAnuncio1637397383280995357duo1.png', N'ACTIVO', CAST(N'2020-10-31T10:52:18.147' AS DateTime))
GO
INSERT [dbo].[AnuncioImages_03022021] ([RegAnuncioImagenId], [RegAnuncioId], [RegId], [RegRutaImagen], [RegAnuncioEstado], [RegAnuncioFecha]) VALUES (9, 5, 2, N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/2/FotoAnuncio1637397390564756010duo2.PNG', N'ACTIVO', CAST(N'2020-10-31T11:04:23.267' AS DateTime))
GO
INSERT [dbo].[AnuncioImages_03022021] ([RegAnuncioImagenId], [RegAnuncioId], [RegId], [RegRutaImagen], [RegAnuncioEstado], [RegAnuncioFecha]) VALUES (10, 6, 1, N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/1/FotoAnuncio1637397400136641246duo1.png', N'ACTIVO', CAST(N'2020-10-31T11:20:29.210' AS DateTime))
GO
INSERT [dbo].[AnuncioImages_03022021] ([RegAnuncioImagenId], [RegAnuncioId], [RegId], [RegRutaImagen], [RegAnuncioEstado], [RegAnuncioFecha]) VALUES (11, 8, 5, N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/5/FotoAnuncio1637404678076114792duo5.jpg', N'ACTIVO', CAST(N'2020-11-08T21:30:20.347' AS DateTime))
GO
INSERT [dbo].[AnuncioImages_03022021] ([RegAnuncioImagenId], [RegAnuncioId], [RegId], [RegRutaImagen], [RegAnuncioEstado], [RegAnuncioFecha]) VALUES (12, 9, 4, N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/4/FotoAnuncio1637411815766352421duo4.JPG', N'ACTIVO', CAST(N'2020-11-17T03:47:42.027' AS DateTime))
GO
INSERT [dbo].[AnuncioImages_03022021] ([RegAnuncioImagenId], [RegAnuncioId], [RegId], [RegRutaImagen], [RegAnuncioEstado], [RegAnuncioFecha]) VALUES (13, 9, 4, N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/4/FotoAnuncio2637411816112456521duo4.JPG', N'ACTIVO', CAST(N'2020-11-17T03:47:42.043' AS DateTime))
GO
INSERT [dbo].[AnuncioImages_03022021] ([RegAnuncioImagenId], [RegAnuncioId], [RegId], [RegRutaImagen], [RegAnuncioEstado], [RegAnuncioFecha]) VALUES (14, 9, 4, N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/4/FotoAnuncio3637411816414650486duo4.JPG', N'ACTIVO', CAST(N'2020-11-17T03:47:42.043' AS DateTime))
GO
INSERT [dbo].[AnuncioImages_03022021] ([RegAnuncioImagenId], [RegAnuncioId], [RegId], [RegRutaImagen], [RegAnuncioEstado], [RegAnuncioFecha]) VALUES (15, 11, 3, N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/3/FotoAnuncio1637424700502124853duo3.jpg', N'ACTIVO', CAST(N'2020-12-02T01:41:07.260' AS DateTime))
GO
INSERT [dbo].[AnuncioImages_03022021] ([RegAnuncioImagenId], [RegAnuncioId], [RegId], [RegRutaImagen], [RegAnuncioEstado], [RegAnuncioFecha]) VALUES (16, 7, 2, N'http://18.218.178.167/imagesemail/backApp.jpg', N'ACTIVO', CAST(N'2020-11-08T20:30:53.180' AS DateTime))
GO
INSERT [dbo].[AnuncioImages_03022021] ([RegAnuncioImagenId], [RegAnuncioId], [RegId], [RegRutaImagen], [RegAnuncioEstado], [RegAnuncioFecha]) VALUES (17, 10, 5, N'http://18.218.178.167/imagesemail/backApp.jpg', N'ACTIVO', CAST(N'2020-11-30T17:48:28.130' AS DateTime))
GO
INSERT [dbo].[AnuncioImages_03022021] ([RegAnuncioImagenId], [RegAnuncioId], [RegId], [RegRutaImagen], [RegAnuncioEstado], [RegAnuncioFecha]) VALUES (18, 12, 2, N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg2.jpg', N'ACTIVO ', CAST(N'2021-01-23T09:48:52.857' AS DateTime))
GO
INSERT [dbo].[AnuncioImages_03022021] ([RegAnuncioImagenId], [RegAnuncioId], [RegId], [RegRutaImagen], [RegAnuncioEstado], [RegAnuncioFecha]) VALUES (19, 13, 2, N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg2.jpg', N'ACTIVO ', CAST(N'2021-01-23T09:48:52.857' AS DateTime))
GO
INSERT [dbo].[AnuncioImages_03022021] ([RegAnuncioImagenId], [RegAnuncioId], [RegId], [RegRutaImagen], [RegAnuncioEstado], [RegAnuncioFecha]) VALUES (20, 14, 2, N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg2.jpg', N'ACTIVO ', CAST(N'2021-01-23T09:48:52.857' AS DateTime))
GO
INSERT [dbo].[AnuncioImages_03022021] ([RegAnuncioImagenId], [RegAnuncioId], [RegId], [RegRutaImagen], [RegAnuncioEstado], [RegAnuncioFecha]) VALUES (21, 15, 2, N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg2.jpg', N'ACTIVO ', CAST(N'2021-01-23T09:48:52.857' AS DateTime))
GO
INSERT [dbo].[AnuncioImages_03022021] ([RegAnuncioImagenId], [RegAnuncioId], [RegId], [RegRutaImagen], [RegAnuncioEstado], [RegAnuncioFecha]) VALUES (22, 16, 2, N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg2.jpg', N'ACTIVO ', CAST(N'2021-01-23T09:48:52.857' AS DateTime))
GO
INSERT [dbo].[AnuncioImages_03022021] ([RegAnuncioImagenId], [RegAnuncioId], [RegId], [RegRutaImagen], [RegAnuncioEstado], [RegAnuncioFecha]) VALUES (23, 17, 2, N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg2.jpg', N'ACTIVO ', CAST(N'2021-01-23T09:48:52.857' AS DateTime))
GO
INSERT [dbo].[AnuncioImages_03022021] ([RegAnuncioImagenId], [RegAnuncioId], [RegId], [RegRutaImagen], [RegAnuncioEstado], [RegAnuncioFecha]) VALUES (24, 18, 2, N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg2.jpg', N'ACTIVO ', CAST(N'2021-01-23T09:48:52.857' AS DateTime))
GO
INSERT [dbo].[AnuncioImages_03022021] ([RegAnuncioImagenId], [RegAnuncioId], [RegId], [RegRutaImagen], [RegAnuncioEstado], [RegAnuncioFecha]) VALUES (25, 19, 2, N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg2.jpg', N'ACTIVO ', CAST(N'2021-01-23T09:48:52.857' AS DateTime))
GO
INSERT [dbo].[AnuncioImages_03022021] ([RegAnuncioImagenId], [RegAnuncioId], [RegId], [RegRutaImagen], [RegAnuncioEstado], [RegAnuncioFecha]) VALUES (26, 20, 2, N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg2.jpg', N'ACTIVO ', CAST(N'2021-01-23T09:48:52.857' AS DateTime))
GO
INSERT [dbo].[AnuncioImages_03022021] ([RegAnuncioImagenId], [RegAnuncioId], [RegId], [RegRutaImagen], [RegAnuncioEstado], [RegAnuncioFecha]) VALUES (27, 21, 2, N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg2.jpg', N'ACTIVO ', CAST(N'2021-01-23T09:48:52.857' AS DateTime))
GO
INSERT [dbo].[AnuncioImages_03022021] ([RegAnuncioImagenId], [RegAnuncioId], [RegId], [RegRutaImagen], [RegAnuncioEstado], [RegAnuncioFecha]) VALUES (28, 22, 2, N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg2.jpg', N'ACTIVO ', CAST(N'2021-01-23T09:48:52.857' AS DateTime))
GO
INSERT [dbo].[AnuncioImages_03022021] ([RegAnuncioImagenId], [RegAnuncioId], [RegId], [RegRutaImagen], [RegAnuncioEstado], [RegAnuncioFecha]) VALUES (29, 23, 2, N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg2.jpg', N'ACTIVO ', CAST(N'2021-01-23T09:48:52.857' AS DateTime))
GO
INSERT [dbo].[AnuncioImages_03022021] ([RegAnuncioImagenId], [RegAnuncioId], [RegId], [RegRutaImagen], [RegAnuncioEstado], [RegAnuncioFecha]) VALUES (30, 24, 2, N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg2.jpg', N'ACTIVO ', CAST(N'2021-01-23T09:48:52.857' AS DateTime))
GO
INSERT [dbo].[AnuncioImages_03022021] ([RegAnuncioImagenId], [RegAnuncioId], [RegId], [RegRutaImagen], [RegAnuncioEstado], [RegAnuncioFecha]) VALUES (31, 25, 2, N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg2.jpg', N'ACTIVO ', CAST(N'2021-01-23T09:48:52.857' AS DateTime))
GO
INSERT [dbo].[AnuncioImages_03022021] ([RegAnuncioImagenId], [RegAnuncioId], [RegId], [RegRutaImagen], [RegAnuncioEstado], [RegAnuncioFecha]) VALUES (32, 26, 2, N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg2.jpg', N'ACTIVO ', CAST(N'2021-01-23T09:48:52.857' AS DateTime))
GO
INSERT [dbo].[AnuncioImages_03022021] ([RegAnuncioImagenId], [RegAnuncioId], [RegId], [RegRutaImagen], [RegAnuncioEstado], [RegAnuncioFecha]) VALUES (33, 27, 2, N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg2.jpg', N'ACTIVO ', CAST(N'2021-01-23T09:48:52.857' AS DateTime))
GO
INSERT [dbo].[AnuncioImages_03022021] ([RegAnuncioImagenId], [RegAnuncioId], [RegId], [RegRutaImagen], [RegAnuncioEstado], [RegAnuncioFecha]) VALUES (34, 28, 2, N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg2.jpg', N'ACTIVO ', CAST(N'2021-01-23T09:48:52.857' AS DateTime))
GO
INSERT [dbo].[AnuncioImages_03022021] ([RegAnuncioImagenId], [RegAnuncioId], [RegId], [RegRutaImagen], [RegAnuncioEstado], [RegAnuncioFecha]) VALUES (35, 29, 2, N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg2.jpg', N'ACTIVO ', CAST(N'2021-01-23T09:48:52.857' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[AnuncioImages_03022021] OFF
GO
SET IDENTITY_INSERT [dbo].[AnuncioTNQ] ON 
GO
INSERT [dbo].[AnuncioTNQ] ([RegAnuncioIdTnq], [RegAnuncioId], [RegId], [RegCodigoUnico], [RegAnuncioPalabraClave], [RegAnuncioAcercaDe], [RegAnuncioEstado], [RegAnuncioFecha], [AnioAnuncioReg], [MesAnuncioReg], [DiaAnuncioReg], [AnioAnuncioHastaId], [MesAnuncioHastaId], [DiaAnuncioHastaId], [RegRutaImagen1], [RegRutaImagen2], [RegRutaImagen3], [Titulo]) VALUES (1, 6, 1, N'd27631a7-a7a2-44c8-91ab-c65ecef416f8-637369903862081580', N'BUSCO', N'Ok vpr vpr vpr vpr vpr borrrar', N'ACTIVO', CAST(N'2020-10-31T11:20:29.197' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/1/FotoAnuncio1637397400136641246duo1.png', N'http://18.218.178.167/imagesemail/backApp.jpg', N'http://18.218.178.167/imagesemail/backApp.jpg', N'Vpr borrar')
GO
INSERT [dbo].[AnuncioTNQ] ([RegAnuncioIdTnq], [RegAnuncioId], [RegId], [RegCodigoUnico], [RegAnuncioPalabraClave], [RegAnuncioAcercaDe], [RegAnuncioEstado], [RegAnuncioFecha], [AnioAnuncioReg], [MesAnuncioReg], [DiaAnuncioReg], [AnioAnuncioHastaId], [MesAnuncioHastaId], [DiaAnuncioHastaId], [RegRutaImagen1], [RegRutaImagen2], [RegRutaImagen3], [Titulo]) VALUES (2, 5, 2, N'ab5991b8-cf73-46fd-a759-fe80ab9e8dab-637369903730644300', N'PARA HOY', N'Para proyecto de construcción de casa con experiencia mínima de 1 año para arriendo de lote y plataformas de construcción. Trabajador cumplir con 9 hora de trabajo y pago a contratar y consultar con el anunciante. ', N'ACTIVO', CAST(N'2020-10-31T11:04:23.267' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/2/FotoAnuncio1637397390564756010duo2.PNG', N'http://18.218.178.167/imagesemail/backApp.jpg', N'http://18.218.178.167/imagesemail/backApp.jpg', N'Busco trabajador ')
GO
INSERT [dbo].[AnuncioTNQ] ([RegAnuncioIdTnq], [RegAnuncioId], [RegId], [RegCodigoUnico], [RegAnuncioPalabraClave], [RegAnuncioAcercaDe], [RegAnuncioEstado], [RegAnuncioFecha], [AnioAnuncioReg], [MesAnuncioReg], [DiaAnuncioReg], [AnioAnuncioHastaId], [MesAnuncioHastaId], [DiaAnuncioHastaId], [RegRutaImagen1], [RegRutaImagen2], [RegRutaImagen3], [Titulo]) VALUES (3, 3, 2, N'ab5991b8-cf73-46fd-a759-fe80ab9e8dab-637369903730644300', N'SOLICITO', N'Necesito un especialista en el área de manejo de componentes eléctrico para un ensamble de una computadora de escritorio. Así también como el manejo de software para su instalación. Paga acorde al especialista. ', N'ACTIVO', CAST(N'2020-10-24T12:20:47.703' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/2/FotoAnuncio1637391386971248836duo2.jpg', N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/2/FotoAnuncio2637391387220935003duo2.jpg', N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/2/FotoAnuncio3637391387534682838duo2.jpg', N'Técnico en computación ')
GO
INSERT [dbo].[AnuncioTNQ] ([RegAnuncioIdTnq], [RegAnuncioId], [RegId], [RegCodigoUnico], [RegAnuncioPalabraClave], [RegAnuncioAcercaDe], [RegAnuncioEstado], [RegAnuncioFecha], [AnioAnuncioReg], [MesAnuncioReg], [DiaAnuncioReg], [AnioAnuncioHastaId], [MesAnuncioHastaId], [DiaAnuncioHastaId], [RegRutaImagen1], [RegRutaImagen2], [RegRutaImagen3], [Titulo]) VALUES (4, 17, 1, N'd27631a7-a7a2-44c8-91ab-c65ecef416f8-637369903862081580', N'PARA HOY', N'Borrar', N'ACTIVO', CAST(N'2021-02-12T11:35:06.820' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/1/FotoAnuncio1637487265006933887duo1.png', N'http://18.218.178.167/imagesemail/backApp.jpg', N'http://18.218.178.167/imagesemail/backApp.jpg', N'Borrado')
GO
SET IDENTITY_INSERT [dbo].[AnuncioTNQ] OFF
GO
SET IDENTITY_INSERT [dbo].[PerfilDuo] ON 
GO
INSERT [dbo].[PerfilDuo] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (1, 7, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team3.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDuo] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (2, 8, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team3.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDuo] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (3, 9, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team3.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDuo] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (4, 10, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team3.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDuo] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (5, 11, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team3.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDuo] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (6, 12, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team3.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDuo] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (7, 13, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team3.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDuo] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (8, 14, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team3.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDuo] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (9, 15, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team3.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDuo] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (10, 16, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team3.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDuo] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (11, 17, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team3.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDuo] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (12, 18, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team3.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDuo] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (13, 19, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team3.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDuo] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (14, 20, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team3.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDuo] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (15, 21, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team3.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDuo] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (16, 22, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team3.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDuo] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (17, 23, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team3.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDuo] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (18, 24, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team3.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDuo] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (19, 25, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team3.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDuo] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (20, 26, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team3.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDuo] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (21, 27, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team3.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDuo] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (22, 28, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team3.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDuo] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (23, 29, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team3.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDuo] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (24, 30, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team3.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDuo] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (25, 31, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team3.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDuo] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (26, 32, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team3.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDuo] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (27, 33, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team3.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDuo] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (28, 34, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team3.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDuo] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (29, 35, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team3.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDuo] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (30, 36, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team3.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDuo] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (31, 37, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team3.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDuo] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (32, 38, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team3.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDuo] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (33, 39, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team3.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDuo] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (34, 40, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team3.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDuo] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (35, 41, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team3.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDuo] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (36, 42, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team3.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDuo] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (37, 43, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team3.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDuo] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (38, 44, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team3.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDuo] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (39, 45, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team3.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDuo] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (40, 46, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team3.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDuo] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (41, 47, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team3.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDuo] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (42, 48, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team3.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDuo] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (43, 49, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team3.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDuo] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (44, 50, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team3.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDuo] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (45, 51, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team3.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDuo] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (46, 52, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team3.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDuo] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (47, 53, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team3.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDuo] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (48, 54, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team3.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDuo] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (49, 55, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team3.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDuo] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (50, 56, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team3.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDuo] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (51, 57, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team3.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDuo] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (52, 58, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team3.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDuo] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (53, 59, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team3.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDuo] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (54, 60, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team3.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDuo] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (55, 61, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team3.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDuo] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (56, 62, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team3.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDuo] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (57, 63, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team3.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDuo] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (58, 64, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team3.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDuo] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (59, 65, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team3.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDuo] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (60, 66, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team3.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDuo] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (61, 67, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team3.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDuo] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (62, 68, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team3.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDuo] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (63, 69, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team3.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDuo] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (64, 70, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team3.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDuo] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (65, 71, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team3.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDuo] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (66, 72, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team3.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDuo] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (70, 1, N'd27631a7-a7a2-44c8-91ab-c65ecef416f8-637369903862081580', N'https://admin-sysnnova.com/duoadmin/Imagenes/Fotos/duo/1/FotoPerfil637498198980318086duo1.jpg', NULL, N'vpr', N'portugal', N'vpr portugal', N'Developer Microsoft', N'Mcts - aws architect solutions - scrum developer', N'vidapogosoft@hotmail.com', N'0960574445', CAST(N'2021-02-25T03:24:21.793' AS DateTime), 2021, 2, 25, 1, 0, 0, 0, 1, 0, 0, 1)
GO
INSERT [dbo].[PerfilDuo] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (71, 4, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/duoadmin/Imagenes/Fotos/duo/4/FotoPerfil637498195407065392duo4.jpg', NULL, N'vidapogosoft', N'Portugal', N'vidapogosoft Portugal', N'Web developer', N'Html, bootstrap, angular, api rest', N'vidapogosoft@gmail.com', N'0960574445', CAST(N'2021-02-25T03:12:37.520' AS DateTime), 2021, 2, 25, 0, 0, 0, 0, 1, 0, 0, 1)
GO
INSERT [dbo].[PerfilDuo] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (72, 2, N'ab5991b8-cf73-46fd-a759-fe80ab9e8dab-637369903730644300', N'https://admin-sysnnova.com/duoadmin/Imagenes/Fotos/duo/2/FotoPerfil637487248104548351duo2.jpg', NULL, N'nagib', N'chalela', N'nagib chalela', N'Productor multimedia ', N'Graduado en producción y dirección en proyectos multimedia. Generador de proyectos entorno a resolver necesidades usando las tecnologías de la información como medio. Apasionado en crear proyectos para potenciar una sociedad más sostenible e inteligente. ', N'nagibborre@gmail.com', N'0981545176', CAST(N'2021-02-12T11:08:43.207' AS DateTime), 2021, 2, 12, 1, 0, 0, 0, 0, 0, 0, 1)
GO
INSERT [dbo].[PerfilDuo] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (76, 79, N'0c3d0921-2c18-4136-b356-066ade3064a4-637489912070772120', N'https://admin-sysnnova.com/duoadmin/Imagenes/Fotos/duo/79/FotoPerfil637489950500200778duo79.jpg', NULL, N'Victor Daniel', N'vpr', N'Victor Daniel vpr', N'SCRUM MASTER', N'SCRUM MASTER - PMP- PO-SCRUM DEVELOPER', N'vpr2@gmail.com', N'0960574445', CAST(N'2021-02-15T14:26:36.020' AS DateTime), 2021, 2, 15, 1, 0, 0, 0, 0, 1, 0, 1)
GO
INSERT [dbo].[PerfilDuo] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (77, 80, N'fcf71309-8738-416d-9ca6-1450e769bc41-637491060507968520', N'https://admin-sysnnova.com/duoadmin/Imagenes/Fotos/duo/80/FotoPerfil637491419906122641duo80.jpeg', NULL, N'Daniel', N'vpr', N'Daniel vpr', N'Web UI developer', N'Html-css-angular-react', N'vpr3@gmail.com', N'0960574445', CAST(N'2021-02-17T06:59:55.270' AS DateTime), 2021, 2, 17, 0, 0, 0, 0, 1, 0, 0, 1)
GO
INSERT [dbo].[PerfilDuo] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (78, 77, N'1f80dcdc-c568-4d11-9200-1c49839503ea-637487326688806720', N'https://admin-sysnnova.com/duoadmin/Imagenes/Fotos/duo/77/FotoPerfil637492842934920560duo77.jpg', NULL, N'carlos', N'Delgado ', N'carlos Delgado ', N'hola ', N'Hola ', N'nagibcompras3@hotmail.com', N'0981545176', CAST(N'2021-02-18T22:31:40.240' AS DateTime), 2021, 2, 18, 0, 0, 0, 0, 0, 0, 0, 1)
GO
INSERT [dbo].[PerfilDuo] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (79, 80, N'0000000000', N'https://admin-sysnnova.com/imagesemail/Profile.png', NULL, N'vpr', N'vidapogosoft 04', N'vpr', N'dev', N'Ok', N'vidapogosoft@hotmail.com ', N'0960574445', CAST(N'2021-04-06T13:15:50.773' AS DateTime), 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1)
GO
INSERT [dbo].[PerfilDuo] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (80, 80, N'0000000000', N'https://admin-sysnnova.com/imagesemail/Profile.png', NULL, N'jhjk', N'hjkh', N'jhjk', N'88798798787', N'65454', N'8', N'8', CAST(N'2021-04-06T13:16:49.900' AS DateTime), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1)
GO
INSERT [dbo].[PerfilDuo] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (81, 81, N'0000000000', N'https://admin-sysnnova.com/imagesemail/Profile.png', NULL, N'jose rodriguez', N'jhdfks', N'jose rodriguez', N'545', N'5454', N'454', N'4', CAST(N'2021-04-06T13:17:37.390' AS DateTime), 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 1)
GO
INSERT [dbo].[PerfilDuo] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (82, 82, N'0000000000', N'https://admin-sysnnova.com/imagesemail/Profile.png', NULL, N'676', N'989', N'676', N'9898', N'989', N'989', N'989', CAST(N'2021-04-06T13:18:20.773' AS DateTime), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1)
GO
INSERT [dbo].[PerfilDuo] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (83, 80, N'0000000000', N'https://admin-sysnnova.com/imagesemail/Profile.png', NULL, N'vpr', N'portugal', N'vpr', N'developer', N'Ok vpr', N'vidapogosoft@hotmail.com', N'0960574445', CAST(N'2021-04-06T13:20:03.920' AS DateTime), 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1)
GO
SET IDENTITY_INSERT [dbo].[PerfilDuo] OFF
GO
SET IDENTITY_INSERT [dbo].[PerfilDUO_03022021] ON 
GO
INSERT [dbo].[PerfilDUO_03022021] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (1, 1, N'd27631a7-a7a2-44c8-91ab-c65ecef416f8-637369903862081580', N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/1/FotoPerfil637377049649996834duo1.jpg', NULL, N'vpr', N'portugal', N'vpr portugal', N'Developer', N'.net developer - mobile developer xamarin and flutter - Sql Server Admin, dev and tunning', N'vidapogosoft@hotmail.com', N'0960574445', CAST(N'2021-02-01T18:05:03.127' AS DateTime), 2021, 2, 1, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDUO_03022021] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (2, 2, N'ab5991b8-cf73-46fd-a759-fe80ab9e8dab-637369903730644300', N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/2/FotoPerfil637478886634197222duo2.jpg', NULL, N'nagib', N'chalela', N'nagib chalela', N'Productor multimedia ', N'Productor proyectos multimedia enfocado en el sistema de gestión de comunicación. He trabajo en medios de comunicación tradicionales y digitales. Experiencia en manejo de marcas y asesoría de imagen ara empresas spots publicidad y economía ', N'nagibborre@gmail.com', N'0981545176', CAST(N'2021-02-02T18:51:11.013' AS DateTime), 2021, 2, 2, 0, 0, 0, 0, 0, 0, 1, 1)
GO
INSERT [dbo].[PerfilDUO_03022021] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (3, 3, N'f7f88e2f-dad9-45bf-a4a2-af2aea3c532b-637374424183047540', N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/FotoPerfil637374991705216282duo.jpg', NULL, N'Marla Elina', N'Arellano', N'Marla Elina Arellano', N'Comunity Manager', N'MANEJO DE REDES SOCIALES, PUBLICIDAD, DISEÑO GRAFICO, LOGOTIPOS, PAPELERIA DISEÑOS', N'marlaelina@hotmail.com', N'0992904402', CAST(N'2020-10-05T12:53:01.320' AS DateTime), 2020, 10, 5, 0, 0, 0, 1, 1, 0, 0, 1)
GO
INSERT [dbo].[PerfilDUO_03022021] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (4, 5, N'537ce8a4-a837-4730-b1c5-f289f1635009-637404631507704950', N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/5/FotoPerfil637404639066039588duo5.JPG', NULL, N'Sebastián ', N'Camacho', N'Sebastián  Camacho', N'Ingeniero Mecanico', N'Especialista en sistemas de agua caliente. Apasionado por el diseño mecánico.', N'Sebastian.camyol@gmail.com', N'0999321798', CAST(N'2020-11-08T20:27:42.227' AS DateTime), 2020, 11, 8, 1, 0, 0, 0, 0, 1, 0, 1)
GO
INSERT [dbo].[PerfilDUO_03022021] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (5, 4, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/4/FotoPerfil637411685844945691duo4.JPG', NULL, N'vidapogosoft', N'Portugal', N'vidapogosoft Portugal', N'Corredor de karting', N'Carting y formula 1', N'vidapogosoft@gmail.com', N'0960574445', CAST(N'2020-11-17T00:10:46.337' AS DateTime), 2020, 11, 17, 0, 0, 0, 0, 0, 1, 0, 1)
GO
INSERT [dbo].[PerfilDUO_03022021] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (6, 6, N'0cbc834f-4150-4b1f-bb8f-fb58725dd98f-637412282267396840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team1.jpg', NULL, N'eliana ', N'delgado', N'eliana  delgado', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'eli_delniev@hotmail.com', N'0998571388', CAST(N'2020-11-17T16:43:46.743' AS DateTime), 2020, 11, 17, 0, 0, 0, 0, 0, 0, 0, 1)
GO
INSERT [dbo].[PerfilDUO_03022021] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (7, 7, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team1.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'victor.portugal@sinergiass.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDUO_03022021] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (8, 8, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team1.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'victor.portugal@sinergiass.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDUO_03022021] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (9, 9, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team1.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'victor.portugal@sinergiass.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDUO_03022021] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (10, 10, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team1.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'victor.portugal@sinergiass.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDUO_03022021] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (11, 11, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team1.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'victor.portugal@sinergiass.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDUO_03022021] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (12, 12, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team1.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'victor.portugal@sinergiass.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDUO_03022021] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (13, 13, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team1.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'victor.portugal@sinergiass.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDUO_03022021] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (14, 14, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team1.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'victor.portugal@sinergiass.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDUO_03022021] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (15, 15, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team1.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'victor.portugal@sinergiass.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDUO_03022021] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (16, 16, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team1.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'victor.portugal@sinergiass.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDUO_03022021] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (17, 17, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team1.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'victor.portugal@sinergiass.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDUO_03022021] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (18, 18, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team1.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'victor.portugal@sinergiass.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDUO_03022021] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (19, 19, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team1.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'victor.portugal@sinergiass.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDUO_03022021] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (20, 20, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team1.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'victor.portugal@sinergiass.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDUO_03022021] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (21, 21, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team1.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'victor.portugal@sinergiass.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDUO_03022021] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (22, 22, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team1.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'victor.portugal@sinergiass.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDUO_03022021] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (23, 23, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team1.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'victor.portugal@sinergiass.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDUO_03022021] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (24, 24, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team1.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'victor.portugal@sinergiass.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDUO_03022021] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (25, 25, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team1.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'victor.portugal@sinergiass.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDUO_03022021] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (26, 26, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team1.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'victor.portugal@sinergiass.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDUO_03022021] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (27, 27, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team1.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'victor.portugal@sinergiass.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDUO_03022021] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (28, 28, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team1.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'victor.portugal@sinergiass.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDUO_03022021] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (29, 29, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team1.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'victor.portugal@sinergiass.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDUO_03022021] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (30, 30, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team1.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'victor.portugal@sinergiass.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDUO_03022021] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (31, 31, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team1.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'victor.portugal@sinergiass.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDUO_03022021] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (32, 32, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team1.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'victor.portugal@sinergiass.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDUO_03022021] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (33, 33, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team1.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'victor.portugal@sinergiass.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDUO_03022021] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (34, 34, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team1.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'victor.portugal@sinergiass.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDUO_03022021] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (35, 35, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team1.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'victor.portugal@sinergiass.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDUO_03022021] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (36, 36, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team1.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'victor.portugal@sinergiass.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDUO_03022021] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (37, 37, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team1.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'victor.portugal@sinergiass.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDUO_03022021] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (38, 38, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team1.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'victor.portugal@sinergiass.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDUO_03022021] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (39, 39, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team1.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'victor.portugal@sinergiass.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDUO_03022021] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (40, 40, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team1.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'victor.portugal@sinergiass.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDUO_03022021] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (41, 41, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team1.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'victor.portugal@sinergiass.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDUO_03022021] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (42, 42, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team1.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'victor.portugal@sinergiass.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDUO_03022021] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (43, 43, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team1.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'victor.portugal@sinergiass.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDUO_03022021] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (44, 44, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team1.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'victor.portugal@sinergiass.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDUO_03022021] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (45, 45, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team1.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'victor.portugal@sinergiass.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDUO_03022021] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (46, 46, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team1.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'victor.portugal@sinergiass.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDUO_03022021] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (47, 47, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team1.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'victor.portugal@sinergiass.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDUO_03022021] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (48, 48, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team1.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'victor.portugal@sinergiass.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDUO_03022021] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (49, 49, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team1.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'victor.portugal@sinergiass.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDUO_03022021] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (50, 50, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team1.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'victor.portugal@sinergiass.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDUO_03022021] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (51, 51, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team1.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'victor.portugal@sinergiass.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDUO_03022021] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (52, 52, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team1.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'victor.portugal@sinergiass.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDUO_03022021] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (53, 53, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team1.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'victor.portugal@sinergiass.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDUO_03022021] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (54, 54, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team1.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'victor.portugal@sinergiass.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDUO_03022021] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (55, 55, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team1.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'victor.portugal@sinergiass.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDUO_03022021] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (56, 56, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team1.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'victor.portugal@sinergiass.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDUO_03022021] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (57, 57, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team1.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'victor.portugal@sinergiass.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDUO_03022021] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (58, 58, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team1.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'victor.portugal@sinergiass.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDUO_03022021] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (59, 59, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team1.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'victor.portugal@sinergiass.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDUO_03022021] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (60, 60, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team1.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'victor.portugal@sinergiass.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDUO_03022021] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (61, 61, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team1.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'victor.portugal@sinergiass.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDUO_03022021] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (62, 62, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team1.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'victor.portugal@sinergiass.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDUO_03022021] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (63, 63, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team1.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'victor.portugal@sinergiass.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDUO_03022021] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (64, 64, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team1.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'victor.portugal@sinergiass.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDUO_03022021] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (65, 65, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team1.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'victor.portugal@sinergiass.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDUO_03022021] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (66, 66, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team1.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'victor.portugal@sinergiass.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDUO_03022021] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (67, 67, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team1.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'victor.portugal@sinergiass.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDUO_03022021] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (68, 68, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team1.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'victor.portugal@sinergiass.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDUO_03022021] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (69, 69, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team1.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'victor.portugal@sinergiass.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDUO_03022021] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (70, 70, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team1.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'victor.portugal@sinergiass.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDUO_03022021] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (71, 71, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team1.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'victor.portugal@sinergiass.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDUO_03022021] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (72, 72, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team1.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'victor.portugal@sinergiass.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDUO_03022021] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (73, 73, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team1.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'victor.portugal@sinergiass.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDUO_03022021] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (74, 74, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team1.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'victor.portugal@sinergiass.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[PerfilDUO_03022021] ([RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (75, 75, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/team/team1.jpg', NULL, N'Dato', N'Prueba', N'Dato Prueba', N'Product Designer', N'ARE YOU READY TO BUY THIS TEMPLATE! JUST CLICK BUTTON AND USE YOUR OWN', N'victor.portugal@sinergiass.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
SET IDENTITY_INSERT [dbo].[PerfilDUO_03022021] OFF
GO
SET IDENTITY_INSERT [dbo].[PerfilDuoTNQ] ON 
GO
INSERT [dbo].[PerfilDuoTNQ] ([RegPerfilIdTNQ], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (1, 0, 79, N'0c3d0921-2c18-4136-b356-066ade3064a4-637489912070772120', NULL, NULL, N'Victor Daniel', N'vpr', N'Victor Daniel vpr', N'Project Manager', N'SCRUM MASTER - PMP', N'vpr2@gmail.com', N'0960574445', CAST(N'2021-02-15T13:54:09.003' AS DateTime), 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 1)
GO
INSERT [dbo].[PerfilDuoTNQ] ([RegPerfilIdTNQ], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (2, 76, 79, N'0c3d0921-2c18-4136-b356-066ade3064a4-637489912070772120', NULL, NULL, N'Victor Daniel', N'vpr', N'Victor Daniel vpr', N'Scrum Master', N'SCRUM MASTER - PMP- PO', N'vpr2@gmail.com', N'0960574445', CAST(N'2021-02-15T14:11:46.120' AS DateTime), 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 1)
GO
INSERT [dbo].[PerfilDuoTNQ] ([RegPerfilIdTNQ], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (3, 76, 79, N'0c3d0921-2c18-4136-b356-066ade3064a4-637489912070772120', NULL, NULL, N'Victor Daniel', N'vpr', N'Victor Daniel vpr', N'Scrum Master', N'SCRUM MASTER - PMP- PO-SCRUM DEVELOPER', N'vpr2@gmail.com', N'0960574445', CAST(N'2021-02-15T14:22:42.997' AS DateTime), 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 1)
GO
INSERT [dbo].[PerfilDuoTNQ] ([RegPerfilIdTNQ], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (4, 76, 79, N'0c3d0921-2c18-4136-b356-066ade3064a4-637489912070772120', NULL, NULL, N'Victor Daniel', N'vpr', N'Victor Daniel vpr', N'Scrum Master', N'SCRUM MASTER - PMP- PO-SCRUM DEVELOPER', N'vpr2@gmail.com', N'0960574445', CAST(N'2021-02-15T14:25:45.367' AS DateTime), 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 1)
GO
INSERT [dbo].[PerfilDuoTNQ] ([RegPerfilIdTNQ], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (5, 76, 79, N'0c3d0921-2c18-4136-b356-066ade3064a4-637489912070772120', NULL, NULL, N'Victor Daniel', N'vpr', N'Victor Daniel vpr', N'SCRUM MASTER', N'SCRUM MASTER - PMP- PO-SCRUM DEVELOPER', N'vpr2@gmail.com', N'0960574445', CAST(N'2021-02-15T14:26:36.020' AS DateTime), 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 1)
GO
INSERT [dbo].[PerfilDuoTNQ] ([RegPerfilIdTNQ], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (6, 0, 80, N'fcf71309-8738-416d-9ca6-1450e769bc41-637491060507968520', NULL, NULL, N'Daniel', N'vpr', N'Daniel vpr', N'Web developer', N'Html-css-angular-react', N'vpr3@gmail.com', N'0960574445', CAST(N'2021-02-16T21:02:31.963' AS DateTime), 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1)
GO
INSERT [dbo].[PerfilDuoTNQ] ([RegPerfilIdTNQ], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (7, 77, 80, N'fcf71309-8738-416d-9ca6-1450e769bc41-637491060507968520', NULL, NULL, N'Daniel', N'vpr', N'Daniel vpr', N'Web UI developer', N'Html-css-angular-react', N'vpr3@gmail.com', N'0960574445', CAST(N'2021-02-16T21:04:52.760' AS DateTime), 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1)
GO
INSERT [dbo].[PerfilDuoTNQ] ([RegPerfilIdTNQ], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (8, 0, 77, N'1f80dcdc-c568-4d11-9200-1c49839503ea-637487326688806720', NULL, NULL, N'carlos', N'Delgado ', N'carlos Delgado ', N'hola ', N'Hola ', N'nagibcompras3@hotmail.com', N'0981545176', CAST(N'2021-02-17T22:37:23.787' AS DateTime), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1)
GO
INSERT [dbo].[PerfilDuoTNQ] ([RegPerfilIdTNQ], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (9, 78, 77, N'1f80dcdc-c568-4d11-9200-1c49839503ea-637487326688806720', NULL, NULL, N'carlos', N'Delgado ', N'carlos Delgado ', N'hola ', N'Hola ', N'nagibcompras3@hotmail.com', N'0981545176', CAST(N'2021-02-18T22:31:40.240' AS DateTime), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1)
GO
INSERT [dbo].[PerfilDuoTNQ] ([RegPerfilIdTNQ], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (10, 71, 4, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', NULL, NULL, N'vidapogosoft', N'Portugal', N'vidapogosoft Portugal', N'Web developer', N'Html, bootstrap, angular, api rest', N'vidapogosoft@gmail.com', N'0960574445', CAST(N'2021-02-25T03:00:49.043' AS DateTime), 0, 0, 0, 1, 0, 0, 1, 1, 0, 0, 1)
GO
INSERT [dbo].[PerfilDuoTNQ] ([RegPerfilIdTNQ], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (11, 71, 4, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', NULL, NULL, N'vidapogosoft', N'Portugal', N'vidapogosoft Portugal', N'Web developer', N'Html, bootstrap, angular, api rest', N'vidapogosoft@gmail.com', N'0960574445', CAST(N'2021-02-25T03:12:37.520' AS DateTime), 0, 0, 0, 1, 0, 1, 1, 1, 0, 0, 1)
GO
INSERT [dbo].[PerfilDuoTNQ] ([RegPerfilIdTNQ], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (12, 70, 1, N'd27631a7-a7a2-44c8-91ab-c65ecef416f8-637369903862081580', NULL, NULL, N'vpr', N'portugal', N'vpr portugal', N'Developer Microsoft', N'Mcts - aws architect solutions - scrum developer', N'vidapogosoft@hotmail.com', N'0960574445', CAST(N'2021-02-25T03:18:28.553' AS DateTime), 0, 0, 0, 1, 0, 0, 1, 1, 0, 0, 1)
GO
INSERT [dbo].[PerfilDuoTNQ] ([RegPerfilIdTNQ], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (13, 70, 1, N'd27631a7-a7a2-44c8-91ab-c65ecef416f8-637369903862081580', NULL, NULL, N'vpr', N'portugal', N'vpr portugal', N'Developer Microsoft', N'Mcts - aws architect solutions - scrum developer', N'vidapogosoft@hotmail.com', N'0960574445', CAST(N'2021-02-25T03:19:49.143' AS DateTime), 0, 0, 0, 1, 0, 1, 1, 1, 0, 0, 1)
GO
INSERT [dbo].[PerfilDuoTNQ] ([RegPerfilIdTNQ], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (14, 70, 1, N'd27631a7-a7a2-44c8-91ab-c65ecef416f8-637369903862081580', N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/1/FotoPerfil637498198980318086duo1.jpg', NULL, N'vpr', N'portugal', N'vpr portugal', N'Developer Microsoft', N'Mcts - aws architect solutions - scrum developer', N'vidapogosoft@hotmail.com', N'0960574445', CAST(N'2021-02-25T03:24:21.793' AS DateTime), 0, 0, 0, 1, 0, 0, 1, 1, 0, 0, 1)
GO
INSERT [dbo].[PerfilDuoTNQ] ([RegPerfilIdTNQ], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (15, 0, 80, N'0000000000', N'https://admin-sysnnova.com/sysnnovasite/images/team/team4.jpg', NULL, N'vpr', N'vidapogosoft 04', N'vpr vidapogosoft 04', N'dev', N'Ok', N'vidapogosoft@hotmail.com ', N'0960574445', CAST(N'2021-04-06T13:15:50.773' AS DateTime), 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1)
GO
INSERT [dbo].[PerfilDuoTNQ] ([RegPerfilIdTNQ], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (16, 0, 80, N'0000000000', N'https://admin-sysnnova.com/sysnnovasite/images/team/team4.jpg', NULL, N'jhjk', N'hjkh', N'jhjk hjkh', N'88798798787', N'65454', N'8', N'8', CAST(N'2021-04-06T13:16:49.900' AS DateTime), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1)
GO
INSERT [dbo].[PerfilDuoTNQ] ([RegPerfilIdTNQ], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (17, 0, 81, N'0000000000', N'https://admin-sysnnova.com/sysnnovasite/images/team/team4.jpg', NULL, N'jose rodriguez', N'jhdfks', N'jose rodriguez jhdfks', N'545', N'5454', N'454', N'4', CAST(N'2021-04-06T13:17:37.390' AS DateTime), 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 1)
GO
INSERT [dbo].[PerfilDuoTNQ] ([RegPerfilIdTNQ], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (18, 0, 82, N'0000000000', N'https://admin-sysnnova.com/sysnnovasite/images/team/team4.jpg', NULL, N'676', N'989', N'676 989', N'9898', N'989', N'989', N'989', CAST(N'2021-04-06T13:18:20.773' AS DateTime), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1)
GO
INSERT [dbo].[PerfilDuoTNQ] ([RegPerfilIdTNQ], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegNombres], [RegApellidos], [RegNombresCompletos], [RegProfesion], [RegAcercaDe], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (19, 0, 80, N'0000000000', N'https://admin-sysnnova.com/sysnnovasite/images/team/team4.jpg', NULL, N'vpr', N'portugal', N'vpr portugal', N'developer', N'Ok vpr', N'vidapogosoft@hotmail.com', N'0960574445', CAST(N'2021-04-06T13:20:03.920' AS DateTime), 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1)
GO
SET IDENTITY_INSERT [dbo].[PerfilDuoTNQ] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 
GO
INSERT [dbo].[Products] ([RegProductId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegTituloProducto], [RegDescripcionProducto], [RegPreciProducto], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsNew]) VALUES (2, 70, 1, N'd27631a7-a7a2-44c8-91ab-c65ecef416f8-637369903862081580', N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/1/FotoProducts637487128084091051duo1.jpg', NULL, N'Apps lectoras de qr', N'App para control de ingreso de garitas', N'100', CAST(N'2021-02-12T07:47:19.720' AS DateTime), 2021, 2, 12, 0)
GO
INSERT [dbo].[Products] ([RegProductId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegTituloProducto], [RegDescripcionProducto], [RegPreciProducto], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsNew]) VALUES (3, 70, 1, N'd27631a7-a7a2-44c8-91ab-c65ecef416f8-637369903862081580', N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/1/FotoProducts637487128627676530duo1.png', NULL, N'Conferencias virtuales', N'Charlas con temas para devs ', N'40', CAST(N'2021-02-12T07:48:17.190' AS DateTime), 2021, 2, 12, 0)
GO
INSERT [dbo].[Products] ([RegProductId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegTituloProducto], [RegDescripcionProducto], [RegPreciProducto], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsNew]) VALUES (4, 72, 2, N'ab5991b8-cf73-46fd-a759-fe80ab9e8dab-637369903730644300', N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/2/FotoProducts637487256441843147duo2.jpg', NULL, N'Micas de vidrio ', N'Para proteger tu celular ', N'6.00', CAST(N'2021-02-12T11:21:11.857' AS DateTime), 2021, 2, 12, 0)
GO
INSERT [dbo].[Products] ([RegProductId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegTituloProducto], [RegDescripcionProducto], [RegPreciProducto], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsNew]) VALUES (5, 72, 2, N'ab5991b8-cf73-46fd-a759-fe80ab9e8dab-637369903730644300', N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/2/FotoProducts637487256973401463duo2.jpg', NULL, N'Cuenta de netflix', N'Para un usuario ', N'10.00', CAST(N'2021-02-12T11:21:59.357' AS DateTime), 2021, 2, 12, 0)
GO
INSERT [dbo].[Products] ([RegProductId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegTituloProducto], [RegDescripcionProducto], [RegPreciProducto], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsNew]) VALUES (6, 77, 80, N'fcf71309-8738-416d-9ca6-1450e769bc41-637491060507968520', N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/80/FotoProducts637491274627180932duo80.jpg', NULL, N'slides publicitarios', N'Publicidad en banners y reutilizable para web sites', N'100', CAST(N'2021-02-17T02:57:46.717' AS DateTime), 2021, 2, 17, 0)
GO
INSERT [dbo].[Products] ([RegProductId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegTituloProducto], [RegDescripcionProducto], [RegPreciProducto], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsNew]) VALUES (8, 76, 79, N'0c3d0921-2c18-4136-b356-066ade3064a4-637489912070772120', N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/79/FotoProducts637491410894945321duo79.JPG', NULL, N'desarrollo web y movil', N'Sinergiass', N'600', CAST(N'2021-02-17T06:44:53.790' AS DateTime), 2021, 2, 17, 0)
GO
INSERT [dbo].[Products] ([RegProductId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegTituloProducto], [RegDescripcionProducto], [RegPreciProducto], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsNew]) VALUES (9, 76, 79, N'0c3d0921-2c18-4136-b356-066ade3064a4-637489912070772120', N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/79/FotoProducts637491412102274771duo79.png', NULL, N'apps multiplataforma', N'Xamarin apps', N'1500', CAST(N'2021-02-17T06:46:58.290' AS DateTime), 2021, 2, 17, 0)
GO
INSERT [dbo].[Products] ([RegProductId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegTituloProducto], [RegDescripcionProducto], [RegPreciProducto], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsNew]) VALUES (10, 71, 4, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/4/FotoProducts637491414525846509duo4.png', NULL, N'diseño de ui apps', N'Ui de apps Android - ios', N'200', CAST(N'2021-02-17T06:50:56.397' AS DateTime), 2021, 2, 17, 0)
GO
INSERT [dbo].[Products] ([RegProductId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegTituloProducto], [RegDescripcionProducto], [RegPreciProducto], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsNew]) VALUES (11, 78, 77, N'1f80dcdc-c568-4d11-9200-1c49839503ea-637487326688806720', N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/77/FotoProducts637491989222237275duo77.jpg', NULL, N'cuadro ', N'Cuadro de pintura ', N'100', CAST(N'2021-02-17T22:48:45.520' AS DateTime), 2021, 2, 17, 0)
GO
INSERT [dbo].[Products] ([RegProductId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegTituloProducto], [RegDescripcionProducto], [RegPreciProducto], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsNew]) VALUES (12, 70, 1, N'd27631a7-a7a2-44c8-91ab-c65ecef416f8-637369903862081580', N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/1/FotoProducts637494580616091496duo1.jpg', NULL, N' fotos', N'Sesión fotográfica', N'60', CAST(N'2021-02-20T22:47:45.500' AS DateTime), 2021, 2, 20, 0)
GO
INSERT [dbo].[Products] ([RegProductId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegTituloProducto], [RegDescripcionProducto], [RegPreciProducto], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsNew]) VALUES (13, 71, 4, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/4/FotoProducts637498147835844342duo4.jpg', NULL, N'curso de redux. js', N'Framework de desarrollo basado en react', N'150', CAST(N'2021-02-25T01:53:08.023' AS DateTime), 2021, 2, 25, 0)
GO
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[products_03022021] ON 
GO
INSERT [dbo].[products_03022021] ([RegProductId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegTituloProducto], [RegDescripcionProducto], [RegPreciProducto], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (1, 1, 1, N'd27631a7-a7a2-44c8-91ab-c65ecef416f8-637369903862081580', N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/FotoProducts637370198535022909duo.jpg', NULL, N'Diseño de apps', N'Diseño multipantalla para apps', N'100', CAST(N'2020-09-29T23:44:43.267' AS DateTime), 2020, 9, 29)
GO
INSERT [dbo].[products_03022021] ([RegProductId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegTituloProducto], [RegDescripcionProducto], [RegPreciProducto], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (2, 1, 1, N'd27631a7-a7a2-44c8-91ab-c65ecef416f8-637369903862081580', N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/FotoProducts637370204071703801duo.jpg', NULL, N'Protototipados', N'Curso de protototipados', N'100.30', CAST(N'2020-09-29T23:53:56.997' AS DateTime), 2020, 9, 29)
GO
INSERT [dbo].[products_03022021] ([RegProductId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegTituloProducto], [RegDescripcionProducto], [RegPreciProducto], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (3, 2, 2, N'ab5991b8-cf73-46fd-a759-fe80ab9e8dab-637369903730644300', N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/FotoProducts637370207133876981duo.jpg', NULL, N'Producto 1 ', N'Computadora gamer ', N'230.00 ', CAST(N'2020-09-29T23:58:59.123' AS DateTime), 2020, 9, 29)
GO
INSERT [dbo].[products_03022021] ([RegProductId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegTituloProducto], [RegDescripcionProducto], [RegPreciProducto], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (4, 1, 1, N'd27631a7-a7a2-44c8-91ab-c65ecef416f8-637369903862081580', N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/FotoProducts637370246610485776duo.jpg', NULL, N'Paginas web', N'Responsive para tablets y celulares', N'150', CAST(N'2020-09-30T01:04:51.720' AS DateTime), 2020, 9, 30)
GO
INSERT [dbo].[products_03022021] ([RegProductId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegTituloProducto], [RegDescripcionProducto], [RegPreciProducto], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (5, 3, 3, N'f7f88e2f-dad9-45bf-a4a2-af2aea3c532b-637374424183047540', N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/FotoProducts637374434423387204duo.jpg', NULL, N'logotipos', N'Diseño de logotipos', N'60', CAST(N'2020-10-04T21:24:23.870' AS DateTime), 2020, 10, 4)
GO
INSERT [dbo].[products_03022021] ([RegProductId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegTituloProducto], [RegDescripcionProducto], [RegPreciProducto], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (6, 2, 2, N'ab5991b8-cf73-46fd-a759-fe80ab9e8dab-637369903730644300', N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/FotoProducts637375119490038704duo.jpg', NULL, N'Cables', N'Cables para motherboard ', N'12.00', CAST(N'2020-10-05T16:26:15.360' AS DateTime), 2020, 10, 5)
GO
INSERT [dbo].[products_03022021] ([RegProductId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegTituloProducto], [RegDescripcionProducto], [RegPreciProducto], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (7, 1, 1, N'd27631a7-a7a2-44c8-91ab-c65ecef416f8-637369903862081580', N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo//FotoProducts637381083177196257duo.png', NULL, N'Eventos', N'Eventos online y presenciales', N'500', CAST(N'2020-10-12T14:06:00.860' AS DateTime), 2020, 10, 12)
GO
INSERT [dbo].[products_03022021] ([RegProductId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegTituloProducto], [RegDescripcionProducto], [RegPreciProducto], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (11, 1, 1, N'd27631a7-a7a2-44c8-91ab-c65ecef416f8-637369903862081580', N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/1/FotoProducts637381154448736009duo1.jpg', NULL, N'Diseño de marcas', N'Marcas para empresas', N'50', CAST(N'2020-10-12T16:04:31.217' AS DateTime), 2020, 10, 12)
GO
INSERT [dbo].[products_03022021] ([RegProductId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegTituloProducto], [RegDescripcionProducto], [RegPreciProducto], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (13, 2, 2, N'ab5991b8-cf73-46fd-a759-fe80ab9e8dab-637369903730644300', N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/2/FotoProducts637381742297022952duo2.PNG', NULL, N'Diseño de tarjeta ', N'Para todo tipo de eventos ', N'12.00', CAST(N'2020-10-13T08:24:14.170' AS DateTime), 2020, 10, 13)
GO
INSERT [dbo].[products_03022021] ([RegProductId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegTituloProducto], [RegDescripcionProducto], [RegPreciProducto], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (14, 2, 2, N'ab5991b8-cf73-46fd-a759-fe80ab9e8dab-637369903730644300', N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/2/FotoProducts637381742724520092duo2.jpg', NULL, N'Figura acción ', N'De varios personajes ', N'25.99', CAST(N'2020-10-13T08:24:51.483' AS DateTime), 2020, 10, 13)
GO
INSERT [dbo].[products_03022021] ([RegProductId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegTituloProducto], [RegDescripcionProducto], [RegPreciProducto], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (20, 2, 2, N'ab5991b8-cf73-46fd-a759-fe80ab9e8dab-637369903730644300', N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/2/FotoProducts637411628686268889duo2.jpg', NULL, N'Figura acción ', N'Figura de acción ', N'25.90', CAST(N'2020-11-16T22:35:05.673' AS DateTime), 2020, 11, 16)
GO
INSERT [dbo].[products_03022021] ([RegProductId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegTituloProducto], [RegDescripcionProducto], [RegPreciProducto], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (21, 2, 2, N'ab5991b8-cf73-46fd-a759-fe80ab9e8dab-637369903730644300', N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/2/FotoProducts637411629764543251duo2.jpg', NULL, N'Diseño de logotipo', N'Estudio de diseño de logotipos ', N'40.00', CAST(N'2020-11-16T22:37:46.360' AS DateTime), 2020, 11, 16)
GO
INSERT [dbo].[products_03022021] ([RegProductId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegTituloProducto], [RegDescripcionProducto], [RegPreciProducto], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (28, 5, 4, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/4/FotoProducts637411797144586664duo4.JPG', NULL, N'Escrnarios de star wars', N'Creacion de escenografias', N'500', CAST(N'2020-11-17T03:15:45.007' AS DateTime), 2020, 11, 17)
GO
INSERT [dbo].[products_03022021] ([RegProductId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegTituloProducto], [RegDescripcionProducto], [RegPreciProducto], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (29, 5, 4, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/4/FotoProducts637411802030603982duo4.JPG', NULL, N'Replicas de star wars', N'Star wars halcon milenario', N'5000', CAST(N'2020-11-17T03:24:05.937' AS DateTime), 2020, 11, 17)
GO
INSERT [dbo].[products_03022021] ([RegProductId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegTituloProducto], [RegDescripcionProducto], [RegPreciProducto], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (31, 4, 5, N'537ce8a4-a837-4730-b1c5-f289f1635009-637404631507704950', N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/5/FotoProducts637412386364411048duo5.JPG', NULL, N'Medidor de PH', N'', N'$250', CAST(N'2020-11-17T19:37:59.643' AS DateTime), 2020, 11, 17)
GO
INSERT [dbo].[products_03022021] ([RegProductId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegTituloProducto], [RegDescripcionProducto], [RegPreciProducto], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (32, 4, 5, N'537ce8a4-a837-4730-b1c5-f289f1635009-637404631507704950', N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/5/FotoProducts637424605367911112duo5.JPG', NULL, N'Moneda de $1', N'', N'$8', CAST(N'2020-12-01T23:03:06.823' AS DateTime), 2020, 12, 1)
GO
INSERT [dbo].[products_03022021] ([RegProductId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegTituloProducto], [RegDescripcionProducto], [RegPreciProducto], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (33, 4, 5, N'537ce8a4-a837-4730-b1c5-f289f1635009-637404631507704950', N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/5/FotoProducts637424606915865164duo5.JPG', NULL, N'Caramelos', N'', N'$20', CAST(N'2020-12-01T23:05:10.913' AS DateTime), 2020, 12, 1)
GO
SET IDENTITY_INSERT [dbo].[products_03022021] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductsTNQ] ON 
GO
INSERT [dbo].[ProductsTNQ] ([RegProductIdTNQ], [RegProductId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegTituloProducto], [RegDescripcionProducto], [RegPreciProducto], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsDel]) VALUES (1, 6, 77, 80, N'fcf71309-8738-416d-9ca6-1450e769bc41-637491060507968520', NULL, NULL, N'slides publicitarios', N'Publicidad en banners y reutilizable para web sites', N'100', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[ProductsTNQ] ([RegProductIdTNQ], [RegProductId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegTituloProducto], [RegDescripcionProducto], [RegPreciProducto], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsDel]) VALUES (2, 7, 77, 80, N'fcf71309-8738-416d-9ca6-1450e769bc41-637491060507968520', NULL, NULL, N'codigo', N'Inspecciones de código : precio por hora', N'20', CAST(N'2021-02-17T03:55:50.673' AS DateTime), 2021, 2, 17, NULL)
GO
INSERT [dbo].[ProductsTNQ] ([RegProductIdTNQ], [RegProductId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegTituloProducto], [RegDescripcionProducto], [RegPreciProducto], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsDel]) VALUES (3, 7, 77, 80, N'fcf71309-8738-416d-9ca6-1450e769bc41-637491060507968520', N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/80/FotoProducts637491309465403338duo80.jpg', NULL, N'codigo', N'Inspecciones de código : precio por hora', N'20', CAST(N'2021-02-17T03:55:50.673' AS DateTime), 2021, 2, 17, 1)
GO
INSERT [dbo].[ProductsTNQ] ([RegProductIdTNQ], [RegProductId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegTituloProducto], [RegDescripcionProducto], [RegPreciProducto], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsDel]) VALUES (4, 8, 76, 79, N'0c3d0921-2c18-4136-b356-066ade3064a4-637489912070772120', NULL, NULL, N'desarrollo web y movil', N'Sinergiass', N'600', NULL, NULL, NULL, NULL, 0)
GO
INSERT [dbo].[ProductsTNQ] ([RegProductIdTNQ], [RegProductId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegTituloProducto], [RegDescripcionProducto], [RegPreciProducto], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsDel]) VALUES (5, 9, 76, 79, N'0c3d0921-2c18-4136-b356-066ade3064a4-637489912070772120', NULL, NULL, N'apps multiplataforma', N'Xamarin apps', N'1500', NULL, NULL, NULL, NULL, 0)
GO
INSERT [dbo].[ProductsTNQ] ([RegProductIdTNQ], [RegProductId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegTituloProducto], [RegDescripcionProducto], [RegPreciProducto], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsDel]) VALUES (6, 10, 71, 4, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', NULL, NULL, N'diseño de ui apps', N'Ui de apps Android - ios', N'200', NULL, NULL, NULL, NULL, 0)
GO
INSERT [dbo].[ProductsTNQ] ([RegProductIdTNQ], [RegProductId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegTituloProducto], [RegDescripcionProducto], [RegPreciProducto], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsDel]) VALUES (7, 11, 78, 77, N'1f80dcdc-c568-4d11-9200-1c49839503ea-637487326688806720', NULL, NULL, N'cuadro ', N'Cuadro de pintura ', N'100', NULL, NULL, NULL, NULL, 0)
GO
INSERT [dbo].[ProductsTNQ] ([RegProductIdTNQ], [RegProductId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegTituloProducto], [RegDescripcionProducto], [RegPreciProducto], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsDel]) VALUES (8, 12, 70, 1, N'd27631a7-a7a2-44c8-91ab-c65ecef416f8-637369903862081580', NULL, NULL, N' fotos', N'Sesión fotográfica', N'60', NULL, NULL, NULL, NULL, 0)
GO
INSERT [dbo].[ProductsTNQ] ([RegProductIdTNQ], [RegProductId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegTituloProducto], [RegDescripcionProducto], [RegPreciProducto], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsDel]) VALUES (9, 13, 71, 4, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', NULL, NULL, N'curso de redux. js', N'Framework de desarrollo basado en react', N'150', NULL, NULL, NULL, NULL, 0)
GO
SET IDENTITY_INSERT [dbo].[ProductsTNQ] OFF
GO
SET IDENTITY_INSERT [dbo].[Registrado] ON 
GO
INSERT [dbo].[Registrado] ([RegId], [RegCodigoUnico], [RegNombres], [RegApellidos], [RegNombreCompleto], [RegContrasenia], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (1, N'd27631a7-a7a2-44c8-91ab-c65ecef416f8-637369903862081580', N'vpr', N'portugal', N'vpr portugal', N'123', N'vidapogosoft@hotmail.com', N'0960574445', CAST(N'2020-09-29T15:33:06.210' AS DateTime), 2020, 9, 29, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[Registrado] ([RegId], [RegCodigoUnico], [RegNombres], [RegApellidos], [RegNombreCompleto], [RegContrasenia], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (2, N'ab5991b8-cf73-46fd-a759-fe80ab9e8dab-637369903730644300', N'nagib', N'chalela', N'nagib chalela', N'DUOchalela', N'nagibborre@gmail.com', N'0981545176', CAST(N'2020-09-29T15:32:53.067' AS DateTime), 2020, 9, 29, 0, 0, 0, 0, 0, 0, 0, 1)
GO
INSERT [dbo].[Registrado] ([RegId], [RegCodigoUnico], [RegNombres], [RegApellidos], [RegNombreCompleto], [RegContrasenia], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (3, N'f7f88e2f-dad9-45bf-a4a2-af2aea3c532b-637374424183047540', N'Marla Elina', N'Arellano', N'Marla Elina Arellano', N'123', N'marlaelina@hotmail.com', N'0992904402', CAST(N'2020-10-04T21:06:58.310' AS DateTime), 2020, 10, 4, 0, 0, 0, 1, 1, 0, 0, 1)
GO
INSERT [dbo].[Registrado] ([RegId], [RegCodigoUnico], [RegNombres], [RegApellidos], [RegNombreCompleto], [RegContrasenia], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (4, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'vidapogosoft', N'Portugal', N'vidapogosoft Portugal', N'123', N'vidapogosoft@gmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2020, 10, 13, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[Registrado] ([RegId], [RegCodigoUnico], [RegNombres], [RegApellidos], [RegNombreCompleto], [RegContrasenia], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (5, N'537ce8a4-a837-4730-b1c5-f289f1635009-637404631507704950', N'Sebastián ', N'Camacho', N'Sebastián  Camacho', N'Dumbledore69', N'Sebastian.camyol@gmail.com', N'0999321798', CAST(N'2020-11-08T20:12:30.773' AS DateTime), 2020, 11, 8, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[Registrado] ([RegId], [RegCodigoUnico], [RegNombres], [RegApellidos], [RegNombreCompleto], [RegContrasenia], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (6, N'0cbc834f-4150-4b1f-bb8f-fb58725dd98f-637412282267396840', N'eliana ', N'delgado', N'eliana  delgado', N'123456', N'eli_delniev@hotmail.com', N'0998571388', CAST(N'2020-11-17T16:43:46.743' AS DateTime), 2020, 11, 17, 0, 0, 0, 0, 0, 0, 0, 1)
GO
INSERT [dbo].[Registrado] ([RegId], [RegCodigoUnico], [RegNombres], [RegApellidos], [RegNombreCompleto], [RegContrasenia], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (7, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'Dato', N'Prueba', N'Dato Prueba', N'123', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[Registrado] ([RegId], [RegCodigoUnico], [RegNombres], [RegApellidos], [RegNombreCompleto], [RegContrasenia], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (8, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'Dato', N'Prueba', N'Dato Prueba', N'123', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[Registrado] ([RegId], [RegCodigoUnico], [RegNombres], [RegApellidos], [RegNombreCompleto], [RegContrasenia], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (9, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'Dato', N'Prueba', N'Dato Prueba', N'123', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[Registrado] ([RegId], [RegCodigoUnico], [RegNombres], [RegApellidos], [RegNombreCompleto], [RegContrasenia], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (10, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'Dato', N'Prueba', N'Dato Prueba', N'123', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[Registrado] ([RegId], [RegCodigoUnico], [RegNombres], [RegApellidos], [RegNombreCompleto], [RegContrasenia], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (11, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'Dato', N'Prueba', N'Dato Prueba', N'123', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[Registrado] ([RegId], [RegCodigoUnico], [RegNombres], [RegApellidos], [RegNombreCompleto], [RegContrasenia], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (12, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'Dato', N'Prueba', N'Dato Prueba', N'123', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[Registrado] ([RegId], [RegCodigoUnico], [RegNombres], [RegApellidos], [RegNombreCompleto], [RegContrasenia], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (13, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'Dato', N'Prueba', N'Dato Prueba', N'123', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[Registrado] ([RegId], [RegCodigoUnico], [RegNombres], [RegApellidos], [RegNombreCompleto], [RegContrasenia], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (14, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'Dato', N'Prueba', N'Dato Prueba', N'123', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[Registrado] ([RegId], [RegCodigoUnico], [RegNombres], [RegApellidos], [RegNombreCompleto], [RegContrasenia], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (15, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'Dato', N'Prueba', N'Dato Prueba', N'123', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[Registrado] ([RegId], [RegCodigoUnico], [RegNombres], [RegApellidos], [RegNombreCompleto], [RegContrasenia], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (16, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'Dato', N'Prueba', N'Dato Prueba', N'123', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[Registrado] ([RegId], [RegCodigoUnico], [RegNombres], [RegApellidos], [RegNombreCompleto], [RegContrasenia], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (17, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'Dato', N'Prueba', N'Dato Prueba', N'123', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[Registrado] ([RegId], [RegCodigoUnico], [RegNombres], [RegApellidos], [RegNombreCompleto], [RegContrasenia], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (18, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'Dato', N'Prueba', N'Dato Prueba', N'123', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[Registrado] ([RegId], [RegCodigoUnico], [RegNombres], [RegApellidos], [RegNombreCompleto], [RegContrasenia], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (19, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'Dato', N'Prueba', N'Dato Prueba', N'123', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[Registrado] ([RegId], [RegCodigoUnico], [RegNombres], [RegApellidos], [RegNombreCompleto], [RegContrasenia], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (20, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'Dato', N'Prueba', N'Dato Prueba', N'123', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[Registrado] ([RegId], [RegCodigoUnico], [RegNombres], [RegApellidos], [RegNombreCompleto], [RegContrasenia], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (21, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'Dato', N'Prueba', N'Dato Prueba', N'123', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[Registrado] ([RegId], [RegCodigoUnico], [RegNombres], [RegApellidos], [RegNombreCompleto], [RegContrasenia], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (22, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'Dato', N'Prueba', N'Dato Prueba', N'123', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[Registrado] ([RegId], [RegCodigoUnico], [RegNombres], [RegApellidos], [RegNombreCompleto], [RegContrasenia], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (23, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'Dato', N'Prueba', N'Dato Prueba', N'123', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[Registrado] ([RegId], [RegCodigoUnico], [RegNombres], [RegApellidos], [RegNombreCompleto], [RegContrasenia], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (24, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'Dato', N'Prueba', N'Dato Prueba', N'123', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[Registrado] ([RegId], [RegCodigoUnico], [RegNombres], [RegApellidos], [RegNombreCompleto], [RegContrasenia], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (25, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'Dato', N'Prueba', N'Dato Prueba', N'123', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[Registrado] ([RegId], [RegCodigoUnico], [RegNombres], [RegApellidos], [RegNombreCompleto], [RegContrasenia], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (26, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'Dato', N'Prueba', N'Dato Prueba', N'123', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[Registrado] ([RegId], [RegCodigoUnico], [RegNombres], [RegApellidos], [RegNombreCompleto], [RegContrasenia], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (27, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'Dato', N'Prueba', N'Dato Prueba', N'123', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[Registrado] ([RegId], [RegCodigoUnico], [RegNombres], [RegApellidos], [RegNombreCompleto], [RegContrasenia], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (28, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'Dato', N'Prueba', N'Dato Prueba', N'123', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[Registrado] ([RegId], [RegCodigoUnico], [RegNombres], [RegApellidos], [RegNombreCompleto], [RegContrasenia], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (29, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'Dato', N'Prueba', N'Dato Prueba', N'123', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[Registrado] ([RegId], [RegCodigoUnico], [RegNombres], [RegApellidos], [RegNombreCompleto], [RegContrasenia], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (30, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'Dato', N'Prueba', N'Dato Prueba', N'123', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[Registrado] ([RegId], [RegCodigoUnico], [RegNombres], [RegApellidos], [RegNombreCompleto], [RegContrasenia], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (31, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'Dato', N'Prueba', N'Dato Prueba', N'123', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[Registrado] ([RegId], [RegCodigoUnico], [RegNombres], [RegApellidos], [RegNombreCompleto], [RegContrasenia], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (32, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'Dato', N'Prueba', N'Dato Prueba', N'123', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[Registrado] ([RegId], [RegCodigoUnico], [RegNombres], [RegApellidos], [RegNombreCompleto], [RegContrasenia], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (33, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'Dato', N'Prueba', N'Dato Prueba', N'123', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[Registrado] ([RegId], [RegCodigoUnico], [RegNombres], [RegApellidos], [RegNombreCompleto], [RegContrasenia], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (34, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'Dato', N'Prueba', N'Dato Prueba', N'123', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[Registrado] ([RegId], [RegCodigoUnico], [RegNombres], [RegApellidos], [RegNombreCompleto], [RegContrasenia], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (35, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'Dato', N'Prueba', N'Dato Prueba', N'123', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[Registrado] ([RegId], [RegCodigoUnico], [RegNombres], [RegApellidos], [RegNombreCompleto], [RegContrasenia], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (36, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'Dato', N'Prueba', N'Dato Prueba', N'123', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[Registrado] ([RegId], [RegCodigoUnico], [RegNombres], [RegApellidos], [RegNombreCompleto], [RegContrasenia], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (37, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'Dato', N'Prueba', N'Dato Prueba', N'123', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[Registrado] ([RegId], [RegCodigoUnico], [RegNombres], [RegApellidos], [RegNombreCompleto], [RegContrasenia], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (38, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'Dato', N'Prueba', N'Dato Prueba', N'123', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[Registrado] ([RegId], [RegCodigoUnico], [RegNombres], [RegApellidos], [RegNombreCompleto], [RegContrasenia], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (39, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'Dato', N'Prueba', N'Dato Prueba', N'123', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[Registrado] ([RegId], [RegCodigoUnico], [RegNombres], [RegApellidos], [RegNombreCompleto], [RegContrasenia], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (40, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'Dato', N'Prueba', N'Dato Prueba', N'123', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[Registrado] ([RegId], [RegCodigoUnico], [RegNombres], [RegApellidos], [RegNombreCompleto], [RegContrasenia], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (41, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'Dato', N'Prueba', N'Dato Prueba', N'123', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[Registrado] ([RegId], [RegCodigoUnico], [RegNombres], [RegApellidos], [RegNombreCompleto], [RegContrasenia], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (42, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'Dato', N'Prueba', N'Dato Prueba', N'123', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[Registrado] ([RegId], [RegCodigoUnico], [RegNombres], [RegApellidos], [RegNombreCompleto], [RegContrasenia], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (43, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'Dato', N'Prueba', N'Dato Prueba', N'123', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[Registrado] ([RegId], [RegCodigoUnico], [RegNombres], [RegApellidos], [RegNombreCompleto], [RegContrasenia], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (44, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'Dato', N'Prueba', N'Dato Prueba', N'123', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[Registrado] ([RegId], [RegCodigoUnico], [RegNombres], [RegApellidos], [RegNombreCompleto], [RegContrasenia], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (45, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'Dato', N'Prueba', N'Dato Prueba', N'123', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[Registrado] ([RegId], [RegCodigoUnico], [RegNombres], [RegApellidos], [RegNombreCompleto], [RegContrasenia], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (46, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'Dato', N'Prueba', N'Dato Prueba', N'123', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[Registrado] ([RegId], [RegCodigoUnico], [RegNombres], [RegApellidos], [RegNombreCompleto], [RegContrasenia], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (47, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'Dato', N'Prueba', N'Dato Prueba', N'123', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[Registrado] ([RegId], [RegCodigoUnico], [RegNombres], [RegApellidos], [RegNombreCompleto], [RegContrasenia], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (48, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'Dato', N'Prueba', N'Dato Prueba', N'123', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[Registrado] ([RegId], [RegCodigoUnico], [RegNombres], [RegApellidos], [RegNombreCompleto], [RegContrasenia], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (49, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'Dato', N'Prueba', N'Dato Prueba', N'123', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[Registrado] ([RegId], [RegCodigoUnico], [RegNombres], [RegApellidos], [RegNombreCompleto], [RegContrasenia], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (50, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'Dato', N'Prueba', N'Dato Prueba', N'123', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[Registrado] ([RegId], [RegCodigoUnico], [RegNombres], [RegApellidos], [RegNombreCompleto], [RegContrasenia], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (51, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'Dato', N'Prueba', N'Dato Prueba', N'123', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[Registrado] ([RegId], [RegCodigoUnico], [RegNombres], [RegApellidos], [RegNombreCompleto], [RegContrasenia], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (52, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'Dato', N'Prueba', N'Dato Prueba', N'123', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[Registrado] ([RegId], [RegCodigoUnico], [RegNombres], [RegApellidos], [RegNombreCompleto], [RegContrasenia], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (53, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'Dato', N'Prueba', N'Dato Prueba', N'123', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[Registrado] ([RegId], [RegCodigoUnico], [RegNombres], [RegApellidos], [RegNombreCompleto], [RegContrasenia], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (54, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'Dato', N'Prueba', N'Dato Prueba', N'123', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[Registrado] ([RegId], [RegCodigoUnico], [RegNombres], [RegApellidos], [RegNombreCompleto], [RegContrasenia], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (55, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'Dato', N'Prueba', N'Dato Prueba', N'123', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[Registrado] ([RegId], [RegCodigoUnico], [RegNombres], [RegApellidos], [RegNombreCompleto], [RegContrasenia], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (56, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'Dato', N'Prueba', N'Dato Prueba', N'123', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[Registrado] ([RegId], [RegCodigoUnico], [RegNombres], [RegApellidos], [RegNombreCompleto], [RegContrasenia], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (57, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'Dato', N'Prueba', N'Dato Prueba', N'123', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[Registrado] ([RegId], [RegCodigoUnico], [RegNombres], [RegApellidos], [RegNombreCompleto], [RegContrasenia], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (58, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'Dato', N'Prueba', N'Dato Prueba', N'123', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[Registrado] ([RegId], [RegCodigoUnico], [RegNombres], [RegApellidos], [RegNombreCompleto], [RegContrasenia], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (59, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'Dato', N'Prueba', N'Dato Prueba', N'123', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[Registrado] ([RegId], [RegCodigoUnico], [RegNombres], [RegApellidos], [RegNombreCompleto], [RegContrasenia], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (60, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'Dato', N'Prueba', N'Dato Prueba', N'123', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[Registrado] ([RegId], [RegCodigoUnico], [RegNombres], [RegApellidos], [RegNombreCompleto], [RegContrasenia], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (61, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'Dato', N'Prueba', N'Dato Prueba', N'123', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[Registrado] ([RegId], [RegCodigoUnico], [RegNombres], [RegApellidos], [RegNombreCompleto], [RegContrasenia], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (62, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'Dato', N'Prueba', N'Dato Prueba', N'123', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[Registrado] ([RegId], [RegCodigoUnico], [RegNombres], [RegApellidos], [RegNombreCompleto], [RegContrasenia], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (63, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'Dato', N'Prueba', N'Dato Prueba', N'123', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[Registrado] ([RegId], [RegCodigoUnico], [RegNombres], [RegApellidos], [RegNombreCompleto], [RegContrasenia], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (64, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'Dato', N'Prueba', N'Dato Prueba', N'123', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[Registrado] ([RegId], [RegCodigoUnico], [RegNombres], [RegApellidos], [RegNombreCompleto], [RegContrasenia], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (65, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'Dato', N'Prueba', N'Dato Prueba', N'123', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[Registrado] ([RegId], [RegCodigoUnico], [RegNombres], [RegApellidos], [RegNombreCompleto], [RegContrasenia], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (66, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'Dato', N'Prueba', N'Dato Prueba', N'123', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[Registrado] ([RegId], [RegCodigoUnico], [RegNombres], [RegApellidos], [RegNombreCompleto], [RegContrasenia], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (67, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'Dato', N'Prueba', N'Dato Prueba', N'123', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[Registrado] ([RegId], [RegCodigoUnico], [RegNombres], [RegApellidos], [RegNombreCompleto], [RegContrasenia], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (68, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'Dato', N'Prueba', N'Dato Prueba', N'123', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[Registrado] ([RegId], [RegCodigoUnico], [RegNombres], [RegApellidos], [RegNombreCompleto], [RegContrasenia], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (69, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'Dato', N'Prueba', N'Dato Prueba', N'123', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[Registrado] ([RegId], [RegCodigoUnico], [RegNombres], [RegApellidos], [RegNombreCompleto], [RegContrasenia], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (70, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'Dato', N'Prueba', N'Dato Prueba', N'123', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[Registrado] ([RegId], [RegCodigoUnico], [RegNombres], [RegApellidos], [RegNombreCompleto], [RegContrasenia], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (71, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'Dato', N'Prueba', N'Dato Prueba', N'123', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[Registrado] ([RegId], [RegCodigoUnico], [RegNombres], [RegApellidos], [RegNombreCompleto], [RegContrasenia], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (72, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'Dato', N'Prueba', N'Dato Prueba', N'123', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[Registrado] ([RegId], [RegCodigoUnico], [RegNombres], [RegApellidos], [RegNombreCompleto], [RegContrasenia], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (73, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'Dato', N'Prueba', N'Dato Prueba', N'123', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[Registrado] ([RegId], [RegCodigoUnico], [RegNombres], [RegApellidos], [RegNombreCompleto], [RegContrasenia], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (74, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'Dato', N'Prueba', N'Dato Prueba', N'123', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[Registrado] ([RegId], [RegCodigoUnico], [RegNombres], [RegApellidos], [RegNombreCompleto], [RegContrasenia], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (75, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'Dato', N'Prueba', N'Dato Prueba', N'123', N'portugalarellano@hotmail.com', N'0960574445', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 1, 0, 0, 0, 1, 1, 0, 1)
GO
INSERT [dbo].[Registrado] ([RegId], [RegCodigoUnico], [RegNombres], [RegApellidos], [RegNombreCompleto], [RegContrasenia], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (77, N'1f80dcdc-c568-4d11-9200-1c49839503ea-637487326688806720', N'carlos', N'Delgado ', N'carlos Delgado ', N'1234', N'nagibcompras3@hotmail.com', N'0981545176', CAST(N'2021-02-12T13:17:48.953' AS DateTime), 2021, 2, 12, 0, 0, 0, 0, 0, 0, 0, 1)
GO
INSERT [dbo].[Registrado] ([RegId], [RegCodigoUnico], [RegNombres], [RegApellidos], [RegNombreCompleto], [RegContrasenia], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (79, N'0c3d0921-2c18-4136-b356-066ade3064a4-637489912070772120', N'Victor Daniel', N'vpr', N'Victor Daniel vpr', N'123', N'vpr2@gmail.com', N'0960574445', CAST(N'2021-02-15T13:06:47.083' AS DateTime), 2021, 2, 15, 0, 0, 0, 0, 0, 0, 0, 1)
GO
INSERT [dbo].[Registrado] ([RegId], [RegCodigoUnico], [RegNombres], [RegApellidos], [RegNombreCompleto], [RegContrasenia], [RegEmail], [RegNumeroCelular], [RegFecha], [AnioReg], [MesReg], [DiaReg], [Tecnologia], [Legales], [Comunicacion], [Comercio], [ArteDiseno], [ServiciosTecnicos], [Urbanismo], [Emprendimientos]) VALUES (80, N'fcf71309-8738-416d-9ca6-1450e769bc41-637491060507968520', N'Daniel', N'vpr', N'Daniel vpr', N'123', N'vpr3@gmail.com', N'0960574445', CAST(N'2021-02-16T21:00:50.803' AS DateTime), 2021, 2, 16, 0, 0, 0, 0, 1, 0, 0, 1)
GO
SET IDENTITY_INSERT [dbo].[Registrado] OFF
GO
SET IDENTITY_INSERT [dbo].[works] ON 
GO
INSERT [dbo].[works] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsNew]) VALUES (1, 1, 7, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 0)
GO
INSERT [dbo].[works] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsNew]) VALUES (2, 2, 8, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 0)
GO
INSERT [dbo].[works] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsNew]) VALUES (3, 3, 9, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 0)
GO
INSERT [dbo].[works] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsNew]) VALUES (4, 4, 10, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 0)
GO
INSERT [dbo].[works] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsNew]) VALUES (5, 5, 11, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 0)
GO
INSERT [dbo].[works] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsNew]) VALUES (6, 6, 12, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 0)
GO
INSERT [dbo].[works] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsNew]) VALUES (7, 7, 13, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 0)
GO
INSERT [dbo].[works] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsNew]) VALUES (8, 8, 14, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 0)
GO
INSERT [dbo].[works] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsNew]) VALUES (9, 9, 15, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 0)
GO
INSERT [dbo].[works] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsNew]) VALUES (10, 10, 16, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 0)
GO
INSERT [dbo].[works] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsNew]) VALUES (11, 11, 17, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 0)
GO
INSERT [dbo].[works] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsNew]) VALUES (12, 12, 18, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 0)
GO
INSERT [dbo].[works] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsNew]) VALUES (13, 13, 19, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 0)
GO
INSERT [dbo].[works] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsNew]) VALUES (14, 14, 20, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 0)
GO
INSERT [dbo].[works] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsNew]) VALUES (15, 15, 21, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 0)
GO
INSERT [dbo].[works] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsNew]) VALUES (16, 16, 22, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 0)
GO
INSERT [dbo].[works] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsNew]) VALUES (17, 17, 23, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 0)
GO
INSERT [dbo].[works] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsNew]) VALUES (18, 18, 24, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 0)
GO
INSERT [dbo].[works] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsNew]) VALUES (19, 19, 25, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 0)
GO
INSERT [dbo].[works] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsNew]) VALUES (20, 20, 26, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 0)
GO
INSERT [dbo].[works] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsNew]) VALUES (21, 21, 27, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 0)
GO
INSERT [dbo].[works] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsNew]) VALUES (22, 22, 28, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 0)
GO
INSERT [dbo].[works] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsNew]) VALUES (23, 23, 29, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 0)
GO
INSERT [dbo].[works] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsNew]) VALUES (24, 24, 30, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 0)
GO
INSERT [dbo].[works] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsNew]) VALUES (25, 25, 31, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 0)
GO
INSERT [dbo].[works] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsNew]) VALUES (26, 26, 32, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 0)
GO
INSERT [dbo].[works] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsNew]) VALUES (27, 27, 33, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 0)
GO
INSERT [dbo].[works] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsNew]) VALUES (28, 28, 34, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 0)
GO
INSERT [dbo].[works] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsNew]) VALUES (29, 29, 35, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 0)
GO
INSERT [dbo].[works] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsNew]) VALUES (30, 30, 36, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 0)
GO
INSERT [dbo].[works] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsNew]) VALUES (31, 31, 37, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 0)
GO
INSERT [dbo].[works] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsNew]) VALUES (32, 32, 38, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 0)
GO
INSERT [dbo].[works] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsNew]) VALUES (33, 33, 39, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 0)
GO
INSERT [dbo].[works] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsNew]) VALUES (34, 34, 40, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 0)
GO
INSERT [dbo].[works] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsNew]) VALUES (35, 35, 41, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 0)
GO
INSERT [dbo].[works] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsNew]) VALUES (36, 36, 42, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 0)
GO
INSERT [dbo].[works] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsNew]) VALUES (37, 37, 43, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 0)
GO
INSERT [dbo].[works] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsNew]) VALUES (38, 38, 44, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 0)
GO
INSERT [dbo].[works] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsNew]) VALUES (39, 39, 45, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 0)
GO
INSERT [dbo].[works] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsNew]) VALUES (40, 40, 46, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 0)
GO
INSERT [dbo].[works] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsNew]) VALUES (41, 41, 47, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 0)
GO
INSERT [dbo].[works] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsNew]) VALUES (42, 42, 48, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 0)
GO
INSERT [dbo].[works] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsNew]) VALUES (43, 43, 49, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 0)
GO
INSERT [dbo].[works] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsNew]) VALUES (44, 44, 50, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 0)
GO
INSERT [dbo].[works] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsNew]) VALUES (45, 45, 51, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 0)
GO
INSERT [dbo].[works] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsNew]) VALUES (46, 46, 52, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 0)
GO
INSERT [dbo].[works] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsNew]) VALUES (47, 47, 53, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 0)
GO
INSERT [dbo].[works] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsNew]) VALUES (48, 48, 54, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 0)
GO
INSERT [dbo].[works] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsNew]) VALUES (49, 49, 55, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 0)
GO
INSERT [dbo].[works] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsNew]) VALUES (50, 50, 56, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 0)
GO
INSERT [dbo].[works] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsNew]) VALUES (51, 51, 57, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 0)
GO
INSERT [dbo].[works] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsNew]) VALUES (52, 52, 58, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 0)
GO
INSERT [dbo].[works] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsNew]) VALUES (53, 53, 59, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 0)
GO
INSERT [dbo].[works] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsNew]) VALUES (54, 54, 60, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 0)
GO
INSERT [dbo].[works] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsNew]) VALUES (55, 55, 61, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 0)
GO
INSERT [dbo].[works] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsNew]) VALUES (56, 56, 62, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 0)
GO
INSERT [dbo].[works] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsNew]) VALUES (57, 57, 63, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 0)
GO
INSERT [dbo].[works] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsNew]) VALUES (58, 58, 64, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 0)
GO
INSERT [dbo].[works] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsNew]) VALUES (59, 59, 65, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 0)
GO
INSERT [dbo].[works] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsNew]) VALUES (60, 60, 66, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 0)
GO
INSERT [dbo].[works] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsNew]) VALUES (61, 61, 67, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 0)
GO
INSERT [dbo].[works] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsNew]) VALUES (62, 62, 68, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 0)
GO
INSERT [dbo].[works] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsNew]) VALUES (63, 63, 69, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 0)
GO
INSERT [dbo].[works] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsNew]) VALUES (64, 64, 70, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 0)
GO
INSERT [dbo].[works] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsNew]) VALUES (65, 65, 71, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 0)
GO
INSERT [dbo].[works] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsNew]) VALUES (66, 66, 72, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 0)
GO
INSERT [dbo].[works] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsNew]) VALUES (67, 67, 73, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 0)
GO
INSERT [dbo].[works] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsNew]) VALUES (68, 68, 74, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 0)
GO
INSERT [dbo].[works] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsNew]) VALUES (69, 69, 75, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23, 0)
GO
INSERT [dbo].[works] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsNew]) VALUES (71, 70, 1, N'd27631a7-a7a2-44c8-91ab-c65ecef416f8-637369903862081580', N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/1/FotoTrabajo637487127102855464duo1.jpg', NULL, N'Cursos online', CAST(N'2021-02-12T07:45:19.567' AS DateTime), 2021, 2, 12, 0)
GO
INSERT [dbo].[works] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsNew]) VALUES (72, 0, 2, N'ab5991b8-cf73-46fd-a759-fe80ab9e8dab-637369903730644300', N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/2/FotoTrabajo637487250130330765duo2.jpg', NULL, N'Diseño de aplicativo ', CAST(N'2021-02-12T11:10:26.063' AS DateTime), 2021, 2, 12, 0)
GO
INSERT [dbo].[works] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsNew]) VALUES (73, 0, 2, N'ab5991b8-cf73-46fd-a759-fe80ab9e8dab-637369903730644300', N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/2/FotoTrabajo637487251001104871duo2.jpeg', NULL, N'Comando estelar ', CAST(N'2021-02-12T11:11:55.033' AS DateTime), 2021, 2, 12, 0)
GO
INSERT [dbo].[works] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsNew]) VALUES (74, 0, 2, N'ab5991b8-cf73-46fd-a759-fe80ab9e8dab-637369903730644300', N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/2/FotoTrabajo637487251723286735duo2.jpg', NULL, N'Videojuegos ', CAST(N'2021-02-12T11:12:59.283' AS DateTime), 2021, 2, 12, 0)
GO
INSERT [dbo].[works] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsNew]) VALUES (75, 70, 1, N'd27631a7-a7a2-44c8-91ab-c65ecef416f8-637369903862081580', N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/1/FotoTrabajo637487252159064656duo1.JPG', NULL, N'Publicidad', CAST(N'2021-02-12T11:13:47.343' AS DateTime), 2021, 2, 12, 0)
GO
INSERT [dbo].[works] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsNew]) VALUES (76, 72, 2, N'ab5991b8-cf73-46fd-a759-fe80ab9e8dab-637369903730644300', N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/2/FotoTrabajo637487253967175339duo2.jpeg', NULL, N'Toffee ', CAST(N'2021-02-12T11:16:47.357' AS DateTime), 2021, 2, 12, 0)
GO
INSERT [dbo].[works] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsNew]) VALUES (77, 72, 2, N'ab5991b8-cf73-46fd-a759-fe80ab9e8dab-637369903730644300', N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/2/FotoTrabajo637487254685607098duo2.jpeg', NULL, N'Comando', CAST(N'2021-02-12T11:17:59.280' AS DateTime), 2021, 2, 12, 0)
GO
INSERT [dbo].[works] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsNew]) VALUES (80, 77, 80, N'fcf71309-8738-416d-9ca6-1450e769bc41-637491060507968520', N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/80/FotoTrabajo637491256204190022duo80.jpg', NULL, N'Diseño de banner para web sites', CAST(N'2021-02-17T02:27:05.637' AS DateTime), 2021, 2, 17, 0)
GO
INSERT [dbo].[works] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsNew]) VALUES (81, 77, 80, N'fcf71309-8738-416d-9ca6-1450e769bc41-637491060507968520', N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/80/FotoTrabajo637491260157750529duo80.jpg', NULL, N'Fotografía para web sites', CAST(N'2021-02-17T02:33:38.430' AS DateTime), 2021, 2, 17, 0)
GO
INSERT [dbo].[works] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsNew]) VALUES (84, 76, 79, N'0c3d0921-2c18-4136-b356-066ade3064a4-637489912070772120', N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/79/FotoTrabajo637491409156377624duo79.jpg', NULL, N'Fotografia', CAST(N'2021-02-17T06:41:59.577' AS DateTime), 2021, 2, 17, 0)
GO
INSERT [dbo].[works] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsNew]) VALUES (85, 76, 79, N'0c3d0921-2c18-4136-b356-066ade3064a4-637489912070772120', N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/79/FotoTrabajo637491410196362317duo79.jpg', NULL, N'Diseño de interfaces', CAST(N'2021-02-17T06:43:43.480' AS DateTime), 2021, 2, 17, 0)
GO
INSERT [dbo].[works] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsNew]) VALUES (86, 71, 4, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/4/FotoTrabajo637491416869898635duo4.jpg', NULL, N'Código fuente Net c#', CAST(N'2021-02-17T06:54:52.380' AS DateTime), 2021, 2, 17, 0)
GO
INSERT [dbo].[works] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsNew]) VALUES (87, 72, 2, N'ab5991b8-cf73-46fd-a759-fe80ab9e8dab-637369903730644300', N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/2/FotoTrabajo637491980268081320duo2.jpg', NULL, NULL, CAST(N'2021-02-17T22:33:50.153' AS DateTime), 2021, 2, 17, 1)
GO
INSERT [dbo].[works] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsNew]) VALUES (88, 72, 2, N'ab5991b8-cf73-46fd-a759-fe80ab9e8dab-637369903730644300', N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/2/FotoTrabajo637491981257604396duo2.jpg', NULL, NULL, CAST(N'2021-02-17T22:35:28.697' AS DateTime), 2021, 2, 17, 1)
GO
INSERT [dbo].[works] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsNew]) VALUES (89, 72, 2, N'ab5991b8-cf73-46fd-a759-fe80ab9e8dab-637369903730644300', N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/2/FotoTrabajo637491981817756654duo2.jpeg', NULL, NULL, CAST(N'2021-02-17T22:36:24.463' AS DateTime), 2021, 2, 17, 1)
GO
INSERT [dbo].[works] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsNew]) VALUES (90, 78, 77, N'1f80dcdc-c568-4d11-9200-1c49839503ea-637487326688806720', N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/77/FotoTrabajo637491982772905833duo77.jpg', NULL, N'Trabajo 1', CAST(N'2021-02-17T22:38:00.337' AS DateTime), 2021, 2, 17, 0)
GO
INSERT [dbo].[works] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsNew]) VALUES (91, 78, 77, N'1f80dcdc-c568-4d11-9200-1c49839503ea-637487326688806720', N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/77/FotoTrabajo637491986416626896duo77.jpg', NULL, NULL, CAST(N'2021-02-17T22:44:04.380' AS DateTime), 2021, 2, 17, 1)
GO
INSERT [dbo].[works] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsNew]) VALUES (92, 78, 77, N'1f80dcdc-c568-4d11-9200-1c49839503ea-637487326688806720', N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/77/FotoTrabajo637491987308182417duo77.jpg', NULL, N'Trabajo 2 ', CAST(N'2021-02-17T22:45:34.117' AS DateTime), 2021, 2, 17, 0)
GO
INSERT [dbo].[works] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsNew]) VALUES (93, 78, 77, N'1f80dcdc-c568-4d11-9200-1c49839503ea-637487326688806720', N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/77/FotoTrabajo637491987613492971duo77.jpg', NULL, N'Trabajo 3', CAST(N'2021-02-17T22:46:03.413' AS DateTime), 2021, 2, 17, 0)
GO
INSERT [dbo].[works] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsNew]) VALUES (94, 78, 77, N'1f80dcdc-c568-4d11-9200-1c49839503ea-637487326688806720', N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/77/FotoTrabajo637491988274737740duo77.jpg', NULL, N'Trabajo 5', CAST(N'2021-02-17T22:47:10.223' AS DateTime), 2021, 2, 17, 0)
GO
INSERT [dbo].[works] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsNew]) VALUES (95, 78, 77, N'1f80dcdc-c568-4d11-9200-1c49839503ea-637487326688806720', N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/77/FotoTrabajo637492461782521263duo77.jpg', NULL, NULL, CAST(N'2021-02-18T11:56:22.893' AS DateTime), 2021, 2, 18, 1)
GO
INSERT [dbo].[works] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsNew]) VALUES (96, 78, 77, N'1f80dcdc-c568-4d11-9200-1c49839503ea-637487326688806720', N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/77/FotoTrabajo637492462083612948duo77.jpg', NULL, NULL, CAST(N'2021-02-18T11:56:51.533' AS DateTime), 2021, 2, 18, 1)
GO
INSERT [dbo].[works] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsNew]) VALUES (97, 78, 77, N'1f80dcdc-c568-4d11-9200-1c49839503ea-637487326688806720', N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/77/FotoTrabajo637492842386175265duo77.jpg', NULL, NULL, CAST(N'2021-02-18T22:30:40.977' AS DateTime), 2021, 2, 18, 0)
GO
INSERT [dbo].[works] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsNew]) VALUES (98, 78, 77, N'1f80dcdc-c568-4d11-9200-1c49839503ea-637487326688806720', N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/77/FotoTrabajo637494491585258113duo77.jpg', NULL, NULL, CAST(N'2021-02-20T20:19:26.697' AS DateTime), 2021, 2, 20, 0)
GO
INSERT [dbo].[works] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsNew]) VALUES (99, 78, 77, N'1f80dcdc-c568-4d11-9200-1c49839503ea-637487326688806720', N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/77/FotoTrabajo637494492629156315duo77.jpg', NULL, N'', CAST(N'2021-02-20T20:21:06.057' AS DateTime), 2021, 2, 20, 0)
GO
INSERT [dbo].[works] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsNew]) VALUES (100, 71, 4, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/4/FotoTrabajo637498130678312171duo4.jpg', NULL, N'Pc hdmi infocus', CAST(N'2021-02-25T01:24:33.423' AS DateTime), 2021, 2, 25, 0)
GO
INSERT [dbo].[works] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsNew]) VALUES (101, 71, 4, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/4/FotoTrabajo637498139933089060duo4.jpg', NULL, N'Código clases de react', CAST(N'2021-02-25T01:39:58.247' AS DateTime), 2021, 2, 25, 0)
GO
SET IDENTITY_INSERT [dbo].[works] OFF
GO
SET IDENTITY_INSERT [dbo].[works_03022021] ON 
GO
INSERT [dbo].[works_03022021] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (1, 1, 1, N'd27631a7-a7a2-44c8-91ab-c65ecef416f8-637369903862081580', N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/FotoTrabajo637369927823302830duo.png', NULL, N'Desarrollo de apps', CAST(N'2020-09-29T16:13:11.313' AS DateTime), 2020, 9, 29)
GO
INSERT [dbo].[works_03022021] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (3, 1, 1, N'd27631a7-a7a2-44c8-91ab-c65ecef416f8-637369903862081580', N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/FotoTrabajo637369935844971865duo.jpg', NULL, N'Publicidad', CAST(N'2020-09-29T16:26:33.403' AS DateTime), 2020, 9, 29)
GO
INSERT [dbo].[works_03022021] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (5, 2, 2, N'ab5991b8-cf73-46fd-a759-fe80ab9e8dab-637369903730644300', N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/FotoTrabajo637369940140256126duo.jpg', NULL, N'Diseño app ', CAST(N'2020-09-29T16:33:43.633' AS DateTime), 2020, 9, 29)
GO
INSERT [dbo].[works_03022021] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (6, 2, 2, N'ab5991b8-cf73-46fd-a759-fe80ab9e8dab-637369903730644300', N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/FotoTrabajo637369941131659619duo.jpeg', NULL, N'Diseño gráfico ', CAST(N'2020-09-29T16:35:26.027' AS DateTime), 2020, 9, 29)
GO
INSERT [dbo].[works_03022021] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (7, 2, 2, N'ab5991b8-cf73-46fd-a759-fe80ab9e8dab-637369903730644300', N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/FotoTrabajo637369947316931827duo.PNG', NULL, N'Dio ', CAST(N'2020-09-29T16:45:48.677' AS DateTime), 2020, 9, 29)
GO
INSERT [dbo].[works_03022021] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (8, 1, 1, N'd27631a7-a7a2-44c8-91ab-c65ecef416f8-637369903862081580', N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/FotoTrabajo637369949181613582duo.jpg', NULL, N'App', CAST(N'2020-09-29T16:48:48.757' AS DateTime), 2020, 9, 29)
GO
INSERT [dbo].[works_03022021] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (9, 1, 1, N'd27631a7-a7a2-44c8-91ab-c65ecef416f8-637369903862081580', N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/FotoTrabajo637369963506834196duo.jpg', NULL, N'Cv', CAST(N'2020-09-29T17:12:57.200' AS DateTime), 2020, 9, 29)
GO
INSERT [dbo].[works_03022021] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (10, 1, 1, N'd27631a7-a7a2-44c8-91ab-c65ecef416f8-637369903862081580', N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/FotoTrabajo637370265687814217duo.jpg', NULL, N'Etiquetas', CAST(N'2020-09-30T01:36:21.313' AS DateTime), 2020, 9, 30)
GO
INSERT [dbo].[works_03022021] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (11, 3, 3, N'f7f88e2f-dad9-45bf-a4a2-af2aea3c532b-637374424183047540', N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/FotoTrabajo637374433099958307duo.jpg', NULL, N'Diseño de logotipos para fundas de papel', CAST(N'2020-10-04T21:22:30.653' AS DateTime), 2020, 10, 4)
GO
INSERT [dbo].[works_03022021] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (12, 2, 2, N'ab5991b8-cf73-46fd-a759-fe80ab9e8dab-637369903730644300', N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/FotoTrabajo637375112061618299duo.jpeg', NULL, N'Programa ', CAST(N'2020-10-05T16:13:35.927' AS DateTime), 2020, 10, 5)
GO
INSERT [dbo].[works_03022021] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (15, 2, 2, N'ab5991b8-cf73-46fd-a759-fe80ab9e8dab-637369903730644300', N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/2/FotoTrabajo637381372798811436duo2.jpg', NULL, N'Pc gamer ', CAST(N'2020-10-12T22:08:10.977' AS DateTime), 2020, 10, 12)
GO
INSERT [dbo].[works_03022021] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (16, 2, 2, N'ab5991b8-cf73-46fd-a759-fe80ab9e8dab-637369903730644300', N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/2/FotoTrabajo637381373161154003duo2.jpg', NULL, N'Sistema planta ', CAST(N'2020-10-12T22:08:46.223' AS DateTime), 2020, 10, 12)
GO
INSERT [dbo].[works_03022021] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (17, 1, 1, N'd27631a7-a7a2-44c8-91ab-c65ecef416f8-637369903862081580', N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/1/FotoTrabajo637381542440390816duo1.jpg', NULL, N'diseños de marketing para nuevos productos', CAST(N'2020-10-13T02:51:14.087' AS DateTime), 2020, 10, 13)
GO
INSERT [dbo].[works_03022021] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (18, 2, 2, N'ab5991b8-cf73-46fd-a759-fe80ab9e8dab-637369903730644300', N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/2/FotoTrabajo637381739263450524duo2.jpg', NULL, N'Juegos ', CAST(N'2020-10-13T08:19:08.250' AS DateTime), 2020, 10, 13)
GO
INSERT [dbo].[works_03022021] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (19, 2, 2, N'ab5991b8-cf73-46fd-a759-fe80ab9e8dab-637369903730644300', N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/2/FotoTrabajo637381739694541252duo2.jpg', NULL, N'Juegos ', CAST(N'2020-10-13T08:19:38.360' AS DateTime), 2020, 10, 13)
GO
INSERT [dbo].[works_03022021] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (20, 2, 2, N'ab5991b8-cf73-46fd-a759-fe80ab9e8dab-637369903730644300', N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/2/FotoTrabajo637381740069226029duo2.jpg', NULL, N'Diseño banner ', CAST(N'2020-10-13T08:20:51.783' AS DateTime), 2020, 10, 13)
GO
INSERT [dbo].[works_03022021] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (21, 2, 2, N'ab5991b8-cf73-46fd-a759-fe80ab9e8dab-637369903730644300', N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/2/FotoTrabajo637381740867657932duo2.jpeg', NULL, N'Naturaleza ', CAST(N'2020-10-13T08:21:44.437' AS DateTime), 2020, 10, 13)
GO
INSERT [dbo].[works_03022021] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (22, 2, 2, N'ab5991b8-cf73-46fd-a759-fe80ab9e8dab-637369903730644300', N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/2/FotoTrabajo637404640298063877duo2.jpg', NULL, N'', CAST(N'2020-11-08T20:27:13.103' AS DateTime), 2020, 11, 8)
GO
INSERT [dbo].[works_03022021] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (23, 2, 2, N'ab5991b8-cf73-46fd-a759-fe80ab9e8dab-637369903730644300', N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/2/FotoTrabajo637404646503805858duo2.jpg', NULL, N'', CAST(N'2020-11-08T20:37:35.113' AS DateTime), 2020, 11, 8)
GO
INSERT [dbo].[works_03022021] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (24, 0, 5, N'537ce8a4-a837-4730-b1c5-f289f1635009-637404631507704950', N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/5/FotoTrabajo637404647888641934duo5.png', NULL, N'DUO', CAST(N'2020-11-08T20:40:13.850' AS DateTime), 2020, 11, 8)
GO
INSERT [dbo].[works_03022021] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (26, 2, 2, N'ab5991b8-cf73-46fd-a759-fe80ab9e8dab-637369903730644300', N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/2/FotoTrabajo637404654186100531duo2.jpeg', NULL, N'Holaa', CAST(N'2020-11-08T20:50:42.890' AS DateTime), 2020, 11, 8)
GO
INSERT [dbo].[works_03022021] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (36, 1, 1, N'd27631a7-a7a2-44c8-91ab-c65ecef416f8-637369903862081580', N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/1/FotoTrabajo637411231673288664duo1.jpg', NULL, N'Fotografia', CAST(N'2020-11-16T11:33:03.703' AS DateTime), 2020, 11, 16)
GO
INSERT [dbo].[works_03022021] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (37, 1, 1, N'd27631a7-a7a2-44c8-91ab-c65ecef416f8-637369903862081580', N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/1/FotoTrabajo637411234942481863duo1.jpeg', NULL, N'Impresoras', CAST(N'2020-11-16T11:38:37.043' AS DateTime), 2020, 11, 16)
GO
INSERT [dbo].[works_03022021] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (38, 2, 2, N'ab5991b8-cf73-46fd-a759-fe80ab9e8dab-637369903730644300', N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/2/FotoTrabajo637411565917784601duo2.jpg', NULL, N'Trabajo oficina', CAST(N'2020-11-16T20:50:16.090' AS DateTime), 2020, 11, 16)
GO
INSERT [dbo].[works_03022021] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (44, 2, 2, N'ab5991b8-cf73-46fd-a759-fe80ab9e8dab-637369903730644300', N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/2/FotoTrabajo637411631281095517duo2.jpg', NULL, N'Foto de ensamble ', CAST(N'2020-11-16T22:39:19.687' AS DateTime), 2020, 11, 16)
GO
INSERT [dbo].[works_03022021] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (47, 0, 4, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/4/FotoTrabajo637411687310404173duo4.JPG', NULL, N'Diseño de naves', CAST(N'2020-11-17T00:12:46.883' AS DateTime), 2020, 11, 17)
GO
INSERT [dbo].[works_03022021] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (48, 0, 4, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/4/FotoTrabajo637411688023836605duo4.JPG', NULL, N'Diseño de camisetas', CAST(N'2020-11-17T00:13:49.057' AS DateTime), 2020, 11, 17)
GO
INSERT [dbo].[works_03022021] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (50, 5, 4, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/4/FotoTrabajo637411698447045287duo4.JPG', NULL, N'Diseño de karts', CAST(N'2020-11-17T00:31:08.440' AS DateTime), 2020, 11, 17)
GO
INSERT [dbo].[works_03022021] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (51, 5, 4, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/4/FotoTrabajo637411702166842275duo4.JPG', NULL, N'Diseño de pistas de kart', CAST(N'2020-11-17T00:38:13.357' AS DateTime), 2020, 11, 17)
GO
INSERT [dbo].[works_03022021] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (52, 5, 4, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/4/FotoTrabajo637411799077212495duo4.JPG', NULL, N'Escenarios tipo disney', CAST(N'2020-11-17T03:19:02.517' AS DateTime), 2020, 11, 17)
GO
INSERT [dbo].[works_03022021] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (53, 5, 4, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/4/FotoTrabajo637411799744232494duo4.JPG', NULL, N'Camisetas con graficos marvel', CAST(N'2020-11-17T03:20:28.877' AS DateTime), 2020, 11, 17)
GO
INSERT [dbo].[works_03022021] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (54, 5, 4, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/4/FotoTrabajo637411805007816847duo4.JPG', NULL, N'Decoraciones', CAST(N'2020-11-17T03:28:43.813' AS DateTime), 2020, 11, 17)
GO
INSERT [dbo].[works_03022021] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (60, 4, 5, N'537ce8a4-a837-4730-b1c5-f289f1635009-637404631507704950', N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/5/FotoTrabajo637412389008765663duo5.JPG', NULL, N'Calefon a Gas', CAST(N'2020-11-17T19:42:05.250' AS DateTime), 2020, 11, 17)
GO
INSERT [dbo].[works_03022021] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (61, 4, 5, N'537ce8a4-a837-4730-b1c5-f289f1635009-637404631507704950', N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/5/FotoTrabajo637412389600167398duo5.JPG', NULL, N'Bomba de calor', CAST(N'2020-11-17T19:43:05.953' AS DateTime), 2020, 11, 17)
GO
INSERT [dbo].[works_03022021] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (62, 4, 5, N'537ce8a4-a837-4730-b1c5-f289f1635009-637404631507704950', N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/5/FotoTrabajo637412390169225457duo5.JPG', NULL, N'', CAST(N'2020-11-17T19:43:51.330' AS DateTime), 2020, 11, 17)
GO
INSERT [dbo].[works_03022021] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (64, 6, 6, N'0cbc834f-4150-4b1f-bb8f-fb58725dd98f-637412282267396840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-11-17T16:43:46.743' AS DateTime), 2020, 11, 17)
GO
INSERT [dbo].[works_03022021] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (65, 7, 7, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23)
GO
INSERT [dbo].[works_03022021] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (66, 8, 8, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23)
GO
INSERT [dbo].[works_03022021] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (67, 9, 9, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23)
GO
INSERT [dbo].[works_03022021] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (68, 10, 10, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23)
GO
INSERT [dbo].[works_03022021] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (69, 11, 11, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23)
GO
INSERT [dbo].[works_03022021] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (70, 12, 12, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23)
GO
INSERT [dbo].[works_03022021] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (71, 13, 13, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23)
GO
INSERT [dbo].[works_03022021] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (72, 14, 14, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23)
GO
INSERT [dbo].[works_03022021] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (73, 15, 15, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23)
GO
INSERT [dbo].[works_03022021] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (74, 16, 16, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23)
GO
INSERT [dbo].[works_03022021] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (75, 17, 17, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23)
GO
INSERT [dbo].[works_03022021] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (76, 18, 18, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23)
GO
INSERT [dbo].[works_03022021] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (77, 19, 19, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23)
GO
INSERT [dbo].[works_03022021] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (78, 20, 20, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23)
GO
INSERT [dbo].[works_03022021] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (79, 21, 21, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23)
GO
INSERT [dbo].[works_03022021] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (80, 22, 22, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23)
GO
INSERT [dbo].[works_03022021] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (81, 23, 23, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23)
GO
INSERT [dbo].[works_03022021] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (82, 24, 24, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23)
GO
INSERT [dbo].[works_03022021] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (83, 25, 25, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23)
GO
INSERT [dbo].[works_03022021] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (84, 26, 26, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23)
GO
INSERT [dbo].[works_03022021] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (85, 27, 27, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23)
GO
INSERT [dbo].[works_03022021] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (86, 28, 28, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23)
GO
INSERT [dbo].[works_03022021] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (87, 29, 29, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23)
GO
INSERT [dbo].[works_03022021] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (88, 30, 30, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23)
GO
INSERT [dbo].[works_03022021] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (89, 31, 31, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23)
GO
INSERT [dbo].[works_03022021] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (90, 32, 32, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23)
GO
INSERT [dbo].[works_03022021] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (91, 33, 33, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23)
GO
INSERT [dbo].[works_03022021] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (92, 34, 34, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23)
GO
INSERT [dbo].[works_03022021] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (93, 35, 35, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23)
GO
INSERT [dbo].[works_03022021] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (94, 36, 36, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23)
GO
INSERT [dbo].[works_03022021] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (95, 37, 37, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23)
GO
INSERT [dbo].[works_03022021] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (96, 38, 38, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23)
GO
INSERT [dbo].[works_03022021] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (97, 39, 39, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23)
GO
INSERT [dbo].[works_03022021] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (98, 40, 40, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23)
GO
INSERT [dbo].[works_03022021] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (99, 41, 41, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23)
GO
INSERT [dbo].[works_03022021] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (100, 42, 42, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23)
GO
INSERT [dbo].[works_03022021] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (101, 43, 43, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23)
GO
INSERT [dbo].[works_03022021] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (102, 44, 44, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23)
GO
INSERT [dbo].[works_03022021] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (103, 45, 45, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23)
GO
INSERT [dbo].[works_03022021] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (104, 46, 46, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23)
GO
INSERT [dbo].[works_03022021] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (105, 47, 47, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23)
GO
INSERT [dbo].[works_03022021] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (106, 48, 48, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23)
GO
INSERT [dbo].[works_03022021] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (107, 49, 49, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23)
GO
INSERT [dbo].[works_03022021] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (108, 50, 50, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23)
GO
INSERT [dbo].[works_03022021] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (109, 51, 51, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23)
GO
INSERT [dbo].[works_03022021] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (110, 52, 52, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23)
GO
INSERT [dbo].[works_03022021] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (111, 53, 53, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23)
GO
INSERT [dbo].[works_03022021] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (112, 54, 54, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23)
GO
INSERT [dbo].[works_03022021] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (113, 55, 55, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23)
GO
INSERT [dbo].[works_03022021] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (114, 56, 56, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23)
GO
INSERT [dbo].[works_03022021] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (115, 57, 57, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23)
GO
INSERT [dbo].[works_03022021] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (116, 58, 58, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23)
GO
INSERT [dbo].[works_03022021] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (117, 59, 59, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23)
GO
INSERT [dbo].[works_03022021] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (118, 60, 60, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23)
GO
INSERT [dbo].[works_03022021] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (119, 61, 61, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23)
GO
INSERT [dbo].[works_03022021] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (120, 62, 62, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23)
GO
INSERT [dbo].[works_03022021] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (121, 63, 63, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23)
GO
INSERT [dbo].[works_03022021] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (122, 64, 64, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23)
GO
INSERT [dbo].[works_03022021] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (123, 65, 65, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23)
GO
INSERT [dbo].[works_03022021] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (124, 66, 66, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23)
GO
INSERT [dbo].[works_03022021] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (125, 67, 67, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23)
GO
INSERT [dbo].[works_03022021] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (126, 68, 68, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23)
GO
INSERT [dbo].[works_03022021] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (127, 69, 69, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23)
GO
INSERT [dbo].[works_03022021] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (128, 70, 70, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23)
GO
INSERT [dbo].[works_03022021] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (129, 71, 71, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23)
GO
INSERT [dbo].[works_03022021] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (130, 72, 72, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23)
GO
INSERT [dbo].[works_03022021] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (131, 73, 73, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23)
GO
INSERT [dbo].[works_03022021] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (132, 74, 74, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23)
GO
INSERT [dbo].[works_03022021] ([RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg]) VALUES (133, 75, 75, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'https://admin-sysnnova.com/sysnnovasite/images/portfolio/portfolio-bg1.jpg', NULL, N'POWERPACK THEME', CAST(N'2020-10-13T04:34:13.843' AS DateTime), 2021, 1, 23)
GO
SET IDENTITY_INSERT [dbo].[works_03022021] OFF
GO
SET IDENTITY_INSERT [dbo].[worksTNQ] ON 
GO
INSERT [dbo].[worksTNQ] ([RegWorksIdTNQ], [RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsDel]) VALUES (1, 79, 77, 80, N'fcf71309-8738-416d-9ca6-1450e769bc41-637491060507968520', NULL, NULL, N'Diseño de landing pages', CAST(N'2021-02-17T01:10:05.177' AS DateTime), 2021, 2, 17, NULL)
GO
INSERT [dbo].[worksTNQ] ([RegWorksIdTNQ], [RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsDel]) VALUES (2, 80, 77, 80, N'fcf71309-8738-416d-9ca6-1450e769bc41-637491060507968520', NULL, NULL, N'Diseño de banner para web sites', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[worksTNQ] ([RegWorksIdTNQ], [RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsDel]) VALUES (3, 81, 77, 80, N'fcf71309-8738-416d-9ca6-1450e769bc41-637491060507968520', NULL, NULL, N'Fotografía para web sites', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[worksTNQ] ([RegWorksIdTNQ], [RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsDel]) VALUES (4, 79, 77, 80, N'fcf71309-8738-416d-9ca6-1450e769bc41-637491060507968520', N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/80/FotoTrabajo637491210017406827duo80.jpg', NULL, N'Diseño de landing pages', CAST(N'2021-02-17T01:10:05.177' AS DateTime), 2021, 2, 17, 1)
GO
INSERT [dbo].[worksTNQ] ([RegWorksIdTNQ], [RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsDel]) VALUES (5, 84, 76, 79, N'0c3d0921-2c18-4136-b356-066ade3064a4-637489912070772120', NULL, NULL, N'Fotografia', NULL, NULL, NULL, NULL, 0)
GO
INSERT [dbo].[worksTNQ] ([RegWorksIdTNQ], [RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsDel]) VALUES (6, 83, 76, 79, N'0c3d0921-2c18-4136-b356-066ade3064a4-637489912070772120', NULL, NULL, N'Error', CAST(N'2021-02-17T06:33:46.817' AS DateTime), 2021, 2, 17, 0)
GO
INSERT [dbo].[worksTNQ] ([RegWorksIdTNQ], [RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsDel]) VALUES (7, 83, 76, 79, N'0c3d0921-2c18-4136-b356-066ade3064a4-637489912070772120', N'http://18.218.178.167/imagesemail/Works.png', NULL, N'Error', CAST(N'2021-02-17T06:33:46.817' AS DateTime), 2021, 2, 17, 1)
GO
INSERT [dbo].[worksTNQ] ([RegWorksIdTNQ], [RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsDel]) VALUES (8, 85, 76, 79, N'0c3d0921-2c18-4136-b356-066ade3064a4-637489912070772120', NULL, NULL, N'Diseño de interfaces', NULL, NULL, NULL, NULL, 0)
GO
INSERT [dbo].[worksTNQ] ([RegWorksIdTNQ], [RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsDel]) VALUES (9, 86, 71, 4, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', NULL, NULL, N'Código fuente Net c#', NULL, NULL, NULL, NULL, 0)
GO
INSERT [dbo].[worksTNQ] ([RegWorksIdTNQ], [RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsDel]) VALUES (10, 78, 72, 2, NULL, N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/2/FotoTrabajo637487255838879310duo2.jpg', NULL, NULL, CAST(N'2021-02-12T11:19:53.480' AS DateTime), 2021, 2, 12, 1)
GO
INSERT [dbo].[worksTNQ] ([RegWorksIdTNQ], [RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsDel]) VALUES (11, 90, 78, 77, N'1f80dcdc-c568-4d11-9200-1c49839503ea-637487326688806720', NULL, NULL, N'Trabajo 1', NULL, NULL, NULL, NULL, 0)
GO
INSERT [dbo].[worksTNQ] ([RegWorksIdTNQ], [RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsDel]) VALUES (12, 92, 78, 77, N'1f80dcdc-c568-4d11-9200-1c49839503ea-637487326688806720', NULL, NULL, N'Trabajo 2 ', NULL, NULL, NULL, NULL, 0)
GO
INSERT [dbo].[worksTNQ] ([RegWorksIdTNQ], [RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsDel]) VALUES (13, 93, 78, 77, N'1f80dcdc-c568-4d11-9200-1c49839503ea-637487326688806720', NULL, NULL, N'Trabajo 3', NULL, NULL, NULL, NULL, 0)
GO
INSERT [dbo].[worksTNQ] ([RegWorksIdTNQ], [RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsDel]) VALUES (14, 94, 78, 77, N'1f80dcdc-c568-4d11-9200-1c49839503ea-637487326688806720', NULL, NULL, N'Trabajo 5', NULL, NULL, NULL, NULL, 0)
GO
INSERT [dbo].[worksTNQ] ([RegWorksIdTNQ], [RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsDel]) VALUES (15, 97, 78, 77, N'1f80dcdc-c568-4d11-9200-1c49839503ea-637487326688806720', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
GO
INSERT [dbo].[worksTNQ] ([RegWorksIdTNQ], [RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsDel]) VALUES (16, 98, 78, 77, N'1f80dcdc-c568-4d11-9200-1c49839503ea-637487326688806720', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
GO
INSERT [dbo].[worksTNQ] ([RegWorksIdTNQ], [RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsDel]) VALUES (17, 99, 78, 77, N'1f80dcdc-c568-4d11-9200-1c49839503ea-637487326688806720', NULL, NULL, N'', NULL, NULL, NULL, NULL, 0)
GO
INSERT [dbo].[worksTNQ] ([RegWorksIdTNQ], [RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsDel]) VALUES (18, 100, 71, 4, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', NULL, NULL, N'Pc hdmi infocus', NULL, NULL, NULL, NULL, 0)
GO
INSERT [dbo].[worksTNQ] ([RegWorksIdTNQ], [RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsDel]) VALUES (19, 101, 71, 4, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', NULL, NULL, N'Código clases de react', NULL, NULL, NULL, NULL, 0)
GO
INSERT [dbo].[worksTNQ] ([RegWorksIdTNQ], [RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsDel]) VALUES (20, 102, 71, 4, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', NULL, NULL, N'Borrar', CAST(N'2021-02-25T02:27:19.867' AS DateTime), 2021, 2, 25, 0)
GO
INSERT [dbo].[worksTNQ] ([RegWorksIdTNQ], [RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsDel]) VALUES (21, 102, 71, 4, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/4/FotoTrabajo637498168358832908duo4.jpg', NULL, N'Borrar', CAST(N'2021-02-25T02:27:19.867' AS DateTime), 2021, 2, 25, 1)
GO
INSERT [dbo].[worksTNQ] ([RegWorksIdTNQ], [RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsDel]) VALUES (22, 103, 71, 4, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', NULL, NULL, N'Ok', CAST(N'2021-02-25T02:29:02.553' AS DateTime), 2021, 2, 25, 0)
GO
INSERT [dbo].[worksTNQ] ([RegWorksIdTNQ], [RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsDel]) VALUES (23, 103, 71, 4, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/4/FotoTrabajo637498169406637463duo4.jpg', NULL, N'Ok', CAST(N'2021-02-25T02:29:02.553' AS DateTime), 2021, 2, 25, 1)
GO
INSERT [dbo].[worksTNQ] ([RegWorksIdTNQ], [RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsDel]) VALUES (24, 104, 71, 4, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', NULL, NULL, N'Ok', CAST(N'2021-02-25T02:30:57.320' AS DateTime), 2021, 2, 25, 0)
GO
INSERT [dbo].[worksTNQ] ([RegWorksIdTNQ], [RegWorksId], [RegPerfilId], [RegId], [RegCodigoUnico], [RegRutaImagen], [RegStreamImagen], [RegDescripcion], [RegFecha], [AnioReg], [MesReg], [DiaReg], [IsDel]) VALUES (25, 104, 71, 4, N'dc8928ec-1106-4e9b-90e0-2ca381c41f2c-637381604538398840', N'http://18.218.178.167/duoadmin/Imagenes/Fotos/duo/4/FotoTrabajo637498170523191979duo4.jpg', NULL, N'Ok', CAST(N'2021-02-25T02:30:57.320' AS DateTime), 2021, 2, 25, 1)
GO
SET IDENTITY_INSERT [dbo].[worksTNQ] OFF
GO
/****** Object:  Trigger [dbo].[DelAnuncio]    Script Date: 2/9/2021 13:39:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create TRIGGER [dbo].[DelAnuncio]
on [dbo].[AnuncioTNQ]
for insert 
as
BEGIN
        declare @IdAnuncioDel int
        
        select @IdAnuncioDel = RegAnuncioId from inserted

        update a
        set a.RegCodigoUnico = b.RegCodigoUnico,
            a.RegAnuncioPalabraClave = b.RegAnuncioPalabraClave,
            a.RegAnuncioAcercaDe = b.RegAnuncioAcercaDe,
            a.RegAnuncioEstado = b.RegAnuncioEstado,
            a.RegAnuncioFecha = b.RegAnuncioFecha,
            a.RegRutaImagen1 = b.RegRutaImagen1,
            a.RegRutaImagen2 = b.RegRutaImagen2,
            a.RegRutaImagen3 = b.RegRutaImagen3,
            a.Titulo = b.Titulo
        from duo..AnuncioTNQ a
        join duo..Anuncio b on b.RegAnuncioId = a.RegAnuncioId
        where a.RegAnuncioId = @IdAnuncioDel

        delete from duo..Anuncio where RegAnuncioId = @IdAnuncioDel

END
GO
ALTER TABLE [dbo].[AnuncioTNQ] ENABLE TRIGGER [DelAnuncio]
GO
/****** Object:  Trigger [dbo].[InsPerfilDUO]    Script Date: 2/9/2021 13:39:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[InsPerfilDUO]
on [dbo].[PerfilDuoTNQ]
for insert 
as
BEGIN

   declare @RegPerfilId int, @RegId int, @RegPerfilIdTNQ int

    select @RegPerfilIdTNQ = RegPerfilIdTNQ,  @RegPerfilId = RegPerfilId, @RegId = RegId from inserted

    if (@RegPerfilId = 0) 
    BEGIN
        insert into duo..PerfilDUO
        (
        RegId ,
        RegCodigoUnico ,
        RegRutaImagen ,
        RegStreamImagen ,
        RegNombres ,
        RegApellidos ,
        RegNombresCompletos ,
        RegProfesion ,
        RegAcercaDe ,
        RegEmail ,
        RegNumeroCelular ,
        RegFecha ,
        AnioReg ,
        MesReg ,
        DiaReg ,
        Tecnologia ,
        Legales ,
        Comunicacion ,
        Comercio ,
        ArteDiseno ,
        ServiciosTecnicos ,
        Urbanismo ,
        Emprendimientos 
        )
        select 
        a.RegId
        ,a.[RegCodigoUnico]
        ,'https://admin-sysnnova.com/imagesemail/Profile.png' [RegRutaImagen]
        ,null [RegStreamImagen]
        ,a.[RegNombres]
        ,a.[RegApellidos]
        ,a.RegNombres
        ,a.RegProfesion [RegProfesion]
        ,a.RegAcercaDe [RegAcercaDe]
        ,a.[RegEmail]
        ,a.[RegNumeroCelular]
        ,a.[RegFecha]
        ,a.[AnioReg]
        ,a.[MesReg]
        ,a.[DiaReg]
        ,a.[Tecnologia]
        ,a.[Legales]
        ,a.[Comunicacion]
        ,a.[Comercio]
        ,a.[ArteDiseno]
        ,a.[ServiciosTecnicos]
        ,a.[Urbanismo]
        ,a.[Emprendimientos] 
        from duo..PerfilDuoTNQ a
        where a.RegId = @RegId and a.RegPerfilIdTNQ = @RegPerfilIdTNQ
    END
    ELSE
    BEGIN
        update a
        set a.RegNombres = b.RegNombres, a.RegApellidos = b.RegApellidos, a.RegNombresCompletos = b.RegNombresCompletos,
        a.RegProfesion = b.RegProfesion, a.RegAcercaDe = b.RegAcercaDe, a.RegEmail = b.RegEmail, a.RegNumeroCelular = b.RegNumeroCelular,
        a.RegFecha = b.RegFecha
        from duo..PerfilDUO a
        join duo..PerfilDuoTNQ b on a.RegPerfilId = b.RegPerfilId and a.RegId = b.RegId
        where b.RegId = @RegId and b.RegPerfilId = @RegPerfilId
        and b.RegPerfilIdTNQ = @RegPerfilIdTNQ
    END 

END
GO
ALTER TABLE [dbo].[PerfilDuoTNQ] ENABLE TRIGGER [InsPerfilDUO]
GO
/****** Object:  Trigger [dbo].[DelProducts]    Script Date: 2/9/2021 13:39:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[DelProducts]
on [dbo].[ProductsTNQ]
for insert 
as
BEGIN
        declare @IdProductDel int, @IsDel int
        
        select @IdProductDel = RegProductId, @IsDel = IsDel  from inserted

        if(@IsDel = 1)
        BEGIN
            update a
            set a.RegCodigoUnico = b.RegCodigoUnico,
                a.RegTituloProducto = b.RegTituloProducto,
                a.RegDescripcionProducto = b.RegDescripcionProducto,
                a.RegPreciProducto = b.RegPreciProducto,
                a.RegFecha = b.RegFecha,
                a.AnioReg = b.AnioReg,
                a.MesReg = b.MesReg,
                a.DiaReg = b.DiaReg
            from duo..ProductsTNQ a
            join duo..Products b on b.RegProductId = a.RegProductId
            where a.RegProductId = @IdProductDel

            delete from duo..Products where RegProductId = @IdProductDel
        END
END
GO
ALTER TABLE [dbo].[ProductsTNQ] ENABLE TRIGGER [DelProducts]
GO
/****** Object:  Trigger [dbo].[InsProducts]    Script Date: 2/9/2021 13:39:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[InsProducts]
on [dbo].[ProductsTNQ]
for insert 
as
BEGIN
        declare @IdWorkDel int
        
        select @IdWorkDel = RegProductId from inserted

        update b
        set b.RegCodigoUnico = a.RegCodigoUnico,
            b.RegTituloProducto = a.RegTituloProducto,
            b.RegDescripcionProducto = a.RegDescripcionProducto,
            b.RegPreciProducto = a.RegPreciProducto,
            b.IsNew = 0
        from duo..productsTNQ a
        join duo..products b on b.RegProductId = a.RegProductId
        where b.RegProductId = @IdWorkDel
END
GO
ALTER TABLE [dbo].[ProductsTNQ] ENABLE TRIGGER [InsProducts]
GO
/****** Object:  Trigger [dbo].[DelWorks]    Script Date: 2/9/2021 13:39:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[DelWorks]
on [dbo].[worksTNQ]
for insert 
as
BEGIN
        declare @IdWorkDel int, @IsDel int
        
        select @IdWorkDel = RegWorksId, @IsDel = IsDel from inserted

        if(@IsDel = 1)
        BEGIN
            update a
            set a.RegCodigoUnico = b.RegCodigoUnico,
                a.RegDescripcion = b.RegDescripcion,
                a.RegFecha = b.RegFecha,
                a.AnioReg = b.AnioReg,
                a.MesReg = b.MesReg,
                a.DiaReg = b.DiaReg
            from duo..worksTNQ a
            join duo..works b on b.RegWorksId = a.RegWorksId
            where a.RegWorksId = @IdWorkDel

            delete from duo..works where RegWorksId = @IdWorkDel
        END
END
GO
ALTER TABLE [dbo].[worksTNQ] ENABLE TRIGGER [DelWorks]
GO
/****** Object:  Trigger [dbo].[InsWorks]    Script Date: 2/9/2021 13:39:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create TRIGGER [dbo].[InsWorks]
on [dbo].[worksTNQ]
for insert 
as
BEGIN
        declare @IdWorkDel int, @IsDel int
        
        select @IdWorkDel = RegWorksId from inserted

        update b
        set b.RegCodigoUnico = a.RegCodigoUnico,
            b.RegDescripcion = a.RegDescripcion,
            b.IsNew = 0
        from duo..worksTNQ a
        join duo..works b on b.RegWorksId = a.RegWorksId
        where b.RegWorksId = @IdWorkDel
END
GO
ALTER TABLE [dbo].[worksTNQ] ENABLE TRIGGER [InsWorks]
GO
