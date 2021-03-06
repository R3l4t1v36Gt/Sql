USE [Destination]
GO
/****** Object:  Table [dbo].[venta_mh]    Script Date: 9/22/2016 2:06:49 PM ******/
DROP TABLE [dbo].[venta_mh]
GO
/****** Object:  Table [dbo].[venta]    Script Date: 9/22/2016 2:06:49 PM ******/
DROP TABLE [dbo].[venta]
GO
/****** Object:  Table [dbo].[pmixAdv_mh]    Script Date: 9/22/2016 2:06:49 PM ******/
DROP TABLE [dbo].[pmixAdv_mh]
GO
/****** Object:  Table [dbo].[pmixAdv]    Script Date: 9/22/2016 2:06:49 PM ******/
DROP TABLE [dbo].[pmixAdv]
GO
/****** Object:  Table [dbo].[pmix_mh]    Script Date: 9/22/2016 2:06:49 PM ******/
DROP TABLE [dbo].[pmix_mh]
GO
/****** Object:  Table [dbo].[pmix]    Script Date: 9/22/2016 2:06:49 PM ******/
DROP TABLE [dbo].[pmix]
GO
/****** Object:  Table [dbo].[formaPago_mh]    Script Date: 9/22/2016 2:06:49 PM ******/
DROP TABLE [dbo].[formaPago_mh]
GO
/****** Object:  Table [dbo].[formaPago]    Script Date: 9/22/2016 2:06:49 PM ******/
DROP TABLE [dbo].[formaPago]
GO
/****** Object:  Table [dbo].[especiales]    Script Date: 9/22/2016 2:06:49 PM ******/
DROP TABLE [dbo].[especiales]
GO
/****** Object:  Table [dbo].[especiales]    Script Date: 9/22/2016 2:06:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[especiales](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[trackNumber] [bigint] NOT NULL,
	[idStore] [int] NOT NULL,
	[nameStore] [nvarchar](50) NOT NULL,
	[dob] [date] NOT NULL,
	[fecha_hora] [datetime2](7) NOT NULL,
	[idItm] [int] NOT NULL,
	[nameItem] [nvarchar](50) NOT NULL,
	[idEmp] [int] NOT NULL,
	[nameEmp] [nvarchar](130) NOT NULL,
	[idOrder] [int] NOT NULL,
	[nameOrder] [nvarchar](50) NOT NULL,
	[idPeriodo] [int] NOT NULL,
	[namePeriodo] [nvarchar](50) NOT NULL,
	[idTerm] [int] NOT NULL,
	[nameTerm] [nvarchar](50) NOT NULL,
	[idRev] [int] NOT NULL,
	[nameRev] [nvarchar](50) NOT NULL,
	[tipoTicketEspecial] [int] NOT NULL,
	[importe] [float] NOT NULL,
	[precio] [float] NOT NULL,
 CONSTRAINT [PK_especiales] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[formaPago]    Script Date: 9/22/2016 2:06:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[formaPago](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[trackNumber] [bigint] NOT NULL,
	[idStore] [int] NOT NULL,
	[nameStore] [nvarchar](50) NOT NULL,
	[dob] [date] NOT NULL,
	[tipoFormaPago] [int] NOT NULL,
	[idFormaPago] [int] NOT NULL,
	[nameFormaPago] [nvarchar](50) NOT NULL,
	[importe] [float] NOT NULL,
 CONSTRAINT [PK_formaPago] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[formaPago_mh]    Script Date: 9/22/2016 2:06:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[formaPago_mh](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[trackNumber] [bigint] NOT NULL,
	[idStore] [int] NOT NULL,
	[nameStore] [nvarchar](50) NOT NULL,
	[dob] [date] NOT NULL,
	[fecha_hora] [datetime2](7) NOT NULL,
	[tipoFormaPago] [int] NOT NULL,
	[idFormaPago] [int] NOT NULL,
	[nameFormaPago] [nvarchar](50) NOT NULL,
	[importe] [float] NOT NULL,
 CONSTRAINT [PK_formaPago_mh] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[pmix]    Script Date: 9/22/2016 2:06:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pmix](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[trackNumber] [bigint] NOT NULL,
	[idStore] [int] NOT NULL,
	[nameStore] [nvarchar](50) NOT NULL,
	[dob] [date] NOT NULL,
	[idItm] [int] NOT NULL,
	[nameItem] [nvarchar](50) NOT NULL,
	[idEmp] [int] NOT NULL,
	[nameEmp] [nvarchar](130) NOT NULL,
	[idOrder] [int] NOT NULL,
	[nameOrder] [nvarchar](50) NOT NULL,
	[idPeriodo] [int] NOT NULL,
	[namePeriodo] [nvarchar](50) NOT NULL,
	[idTerm] [int] NOT NULL,
	[nameTerm] [nvarchar](50) NOT NULL,
	[idRev] [int] NOT NULL,
	[nameRev] [nvarchar](50) NOT NULL,
	[idCat] [int] NOT NULL,
	[nameCat] [nvarchar](50) NOT NULL,
	[cant] [int] NOT NULL,
	[venta_neta] [float] NOT NULL,
	[tax] [float] NOT NULL,
	[coste_teorico] [float] NOT NULL,
	[PVP_item] [float] NOT NULL,
 CONSTRAINT [PK_pmix] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[pmix_mh]    Script Date: 9/22/2016 2:06:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pmix_mh](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[trackNumber] [bigint] NOT NULL,
	[idStore] [int] NOT NULL,
	[nameStore] [nvarchar](50) NOT NULL,
	[dob] [date] NOT NULL,
	[fecha_hora] [datetime2](7) NOT NULL,
	[idItm] [int] NOT NULL,
	[nameItem] [nvarchar](50) NOT NULL,
	[idEmp] [int] NOT NULL,
	[nameEmp] [nvarchar](130) NOT NULL,
	[idOrder] [int] NOT NULL,
	[nameOrder] [nvarchar](50) NOT NULL,
	[idPeriodo] [int] NOT NULL,
	[namePeriodo] [nvarchar](50) NOT NULL,
	[idTerm] [int] NOT NULL,
	[nameTerm] [nvarchar](50) NOT NULL,
	[idRev] [int] NOT NULL,
	[nameRev] [nvarchar](50) NOT NULL,
	[idCat] [int] NOT NULL,
	[nameCat] [nvarchar](50) NOT NULL,
	[cant] [int] NOT NULL,
	[venta_neta] [float] NOT NULL,
	[tax] [float] NOT NULL,
	[coste_teorico] [float] NOT NULL,
	[PVP_item] [float] NOT NULL,
 CONSTRAINT [PK_pmix_mh] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[pmixAdv]    Script Date: 9/22/2016 2:06:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pmixAdv](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[trackNumber] [bigint] NOT NULL,
	[idStore] [int] NOT NULL,
	[nameStore] [nvarchar](50) NOT NULL,
	[dob] [date] NOT NULL,
	[idItm] [int] NOT NULL,
	[nameItem] [nvarchar](50) NOT NULL,
	[idEmp] [int] NOT NULL,
	[nameEmp] [nvarchar](130) NOT NULL,
	[idOrder] [int] NOT NULL,
	[nameOrder] [nvarchar](50) NOT NULL,
	[idPeriodo] [int] NOT NULL,
	[namePeriodo] [nvarchar](50) NOT NULL,
	[idTerm] [int] NOT NULL,
	[nameTerm] [nvarchar](50) NOT NULL,
	[idRev] [int] NOT NULL,
	[nameRev] [nvarchar](50) NOT NULL,
	[idCat] [int] NOT NULL,
	[nameCat] [nvarchar](50) NOT NULL,
	[tipoVenta] [int] NOT NULL,
	[idPromo] [int] NULL,
	[namePromo] [nvarchar](50) NULL,
	[sizePromo] [nvarchar](50) NULL,
	[numCompntsPromo] [int] NULL,
	[cant] [int] NOT NULL,
	[venta_neta] [float] NOT NULL,
	[tax] [float] NOT NULL,
	[coste_teorico] [float] NULL,
	[PVP_item] [float] NOT NULL,
 CONSTRAINT [PK_pmixAdv] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[pmixAdv_mh]    Script Date: 9/22/2016 2:06:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pmixAdv_mh](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[trackNumber] [bigint] NOT NULL,
	[idStore] [int] NOT NULL,
	[nameStore] [nvarchar](50) NOT NULL,
	[dob] [date] NOT NULL,
	[fecha_hora] [datetime2](7) NOT NULL,
	[idItm] [int] NOT NULL,
	[nameItem] [nvarchar](50) NOT NULL,
	[idEmp] [int] NOT NULL,
	[nameEmp] [nvarchar](100) NOT NULL,
	[idOrder] [int] NOT NULL,
	[nameOrder] [nvarchar](50) NOT NULL,
	[idPeriodo] [int] NOT NULL,
	[namePeriodo] [nvarchar](50) NOT NULL,
	[idTerm] [int] NOT NULL,
	[nameTerm] [nvarchar](50) NOT NULL,
	[idRev] [int] NOT NULL,
	[nameRev] [nvarchar](50) NOT NULL,
	[idCat] [int] NOT NULL,
	[nameCat] [nvarchar](50) NOT NULL,
	[tipoVenta] [int] NOT NULL,
	[idPromo] [int] NULL,
	[namePromo] [nvarchar](50) NULL,
	[sizePromo] [nvarchar](50) NULL,
	[numCompntsPromo] [int] NULL,
	[cant] [int] NOT NULL,
	[venta_neta] [float] NOT NULL,
	[tax] [float] NOT NULL,
	[coste_teorico] [float] NOT NULL,
	[PVP_item] [float] NOT NULL,
 CONSTRAINT [PK_pmixAdv_mh] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[venta]    Script Date: 9/22/2016 2:06:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[venta](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[trackNumber] [bigint] NOT NULL,
	[idStore] [int] NOT NULL,
	[nameStore] [nvarchar](50) NOT NULL,
	[dob] [date] NOT NULL,
	[idEmp] [int] NOT NULL,
	[nameEmp] [nvarchar](130) NOT NULL,
	[idOrder] [int] NOT NULL,
	[nameOrder] [nvarchar](50) NOT NULL,
	[idPeriodo] [int] NOT NULL,
	[namePeriodo] [nvarchar](50) NOT NULL,
	[idTerm] [int] NOT NULL,
	[nameTerm] [nvarchar](50) NOT NULL,
	[idRev] [int] NOT NULL,
	[nameRev] [nvarchar](50) NOT NULL,
	[nTickets] [int] NOT NULL,
	[venta_neta] [float] NOT NULL,
	[tax] [float] NOT NULL,
 CONSTRAINT [PK_venta] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[venta_mh]    Script Date: 9/22/2016 2:06:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[venta_mh](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[trackNumber] [bigint] NOT NULL,
	[idStore] [int] NOT NULL,
	[nameStore] [nvarchar](50) NOT NULL,
	[dob] [date] NOT NULL,
	[fecha_hora] [datetime2](7) NOT NULL,
	[idEmp] [int] NOT NULL,
	[nameEmp] [nvarchar](130) NOT NULL,
	[idOrder] [int] NOT NULL,
	[nameOrder] [nvarchar](50) NOT NULL,
	[idPeriodo] [int] NOT NULL,
	[namePeriodo] [nvarchar](50) NOT NULL,
	[idTerm] [int] NOT NULL,
	[nameTerm] [nvarchar](50) NOT NULL,
	[idRev] [int] NOT NULL,
	[nameRev] [nvarchar](50) NOT NULL,
	[nTickets] [int] NOT NULL,
	[venta_neta] [float] NOT NULL,
	[tax] [float] NOT NULL,
 CONSTRAINT [PK_venta_mh] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
