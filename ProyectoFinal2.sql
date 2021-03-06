

/*Nombre: Cristian Vilchez         Matricula: 16-SIIT-1-051        Seccion: 0541*/
/*Nombre: Tommy Perez              Matricula: 16-SIIT-1-010        Seccion: 0541*/
/*Nombre: Hansel Isabel            Matricula: 16-SIIT-1-064        Seccion: 0541*/


USE [master]
GO
/****** Object:  Database [ProyectoFinal2]    Script Date: 06/04/2018 3:18:32 ******/
CREATE DATABASE [ProyectoFinal2]

USE [ProyectoFinal2]
GO
/****** Object:  Table [dbo].[Peliculas]    Script Date: 06/04/2018 3:18:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Peliculas](
	[Codigo] [int] NOT NULL,
	[Nombre] [nvarchar](100) NULL,
	[CalificacionEdad] [int] NULL,
 CONSTRAINT [PK_Peliculas] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Salas]    Script Date: 06/04/2018 3:18:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Salas](
	[Codigo] [int] NOT NULL,
	[Nombre] [nvarchar](100) NULL,
	[Pelicula] [int] NULL,
 CONSTRAINT [PK_Salas] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[Peliculas] ([Codigo], [Nombre], [CalificacionEdad]) VALUES (1, N'La Pantera', 14)
INSERT [dbo].[Peliculas] ([Codigo], [Nombre], [CalificacionEdad]) VALUES (2, N'Pobres Millonarios', 12)
INSERT [dbo].[Peliculas] ([Codigo], [Nombre], [CalificacionEdad]) VALUES (3, N'Batman', 15)
INSERT [dbo].[Peliculas] ([Codigo], [Nombre], [CalificacionEdad]) VALUES (4, N'Super Man', 15)
INSERT [dbo].[Peliculas] ([Codigo], [Nombre], [CalificacionEdad]) VALUES (5, N'Spiderman', 15)
INSERT [dbo].[Peliculas] ([Codigo], [Nombre], [CalificacionEdad]) VALUES (6, N'Piratas del Caribe', 17)
INSERT [dbo].[Peliculas] ([Codigo], [Nombre], [CalificacionEdad]) VALUES (7, N'Sanky Panky', 10)
INSERT [dbo].[Peliculas] ([Codigo], [Nombre], [CalificacionEdad]) VALUES (8, N'Lotoman', 10)
INSERT [dbo].[Peliculas] ([Codigo], [Nombre], [CalificacionEdad]) VALUES (9, N'King Kong', 17)
INSERT [dbo].[Peliculas] ([Codigo], [Nombre], [CalificacionEdad]) VALUES (10, N'Viernes 13', 18)
INSERT [dbo].[Salas] ([Codigo], [Nombre], [Pelicula]) VALUES (1, N'Sala1', 1)
INSERT [dbo].[Salas] ([Codigo], [Nombre], [Pelicula]) VALUES (2, N'Sala2', 2)
INSERT [dbo].[Salas] ([Codigo], [Nombre], [Pelicula]) VALUES (3, N'Sala3', 3)
INSERT [dbo].[Salas] ([Codigo], [Nombre], [Pelicula]) VALUES (4, N'Sala4', 4)
INSERT [dbo].[Salas] ([Codigo], [Nombre], [Pelicula]) VALUES (5, N'Sala5', 5)
INSERT [dbo].[Salas] ([Codigo], [Nombre], [Pelicula]) VALUES (6, N'Sala6', 6)
INSERT [dbo].[Salas] ([Codigo], [Nombre], [Pelicula]) VALUES (7, N'Sala7', 7)
INSERT [dbo].[Salas] ([Codigo], [Nombre], [Pelicula]) VALUES (8, N'Sala8', 8)
INSERT [dbo].[Salas] ([Codigo], [Nombre], [Pelicula]) VALUES (9, N'Sala9', 9)
INSERT [dbo].[Salas] ([Codigo], [Nombre], [Pelicula]) VALUES (10, N'Sala10', 10)
ALTER TABLE [dbo].[Salas]  WITH CHECK ADD  CONSTRAINT [FK_Salas_Peliculas] FOREIGN KEY([Pelicula])
REFERENCES [dbo].[Peliculas] ([Codigo])
GO
ALTER TABLE [dbo].[Salas] CHECK CONSTRAINT [FK_Salas_Peliculas]
GO
USE [master]
GO
ALTER DATABASE [ProyectoFinal2] SET  READ_WRITE 
GO
