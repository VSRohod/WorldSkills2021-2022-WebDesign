USE [ModuloWeb]
GO
/****** Object:  Table [dbo].[Acesso]    Script Date: 29/10/2021 07:00:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Acesso](
	[idAcesso] [int] IDENTITY(1,1) NOT NULL,
	[email] [varchar](50) NULL,
	[senhaAcesso] [varchar](10) NULL,
	[nome] [varchar](50) NULL,
 CONSTRAINT [PK_Acesso] PRIMARY KEY CLUSTERED 
(
	[idAcesso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Competidor]    Script Date: 29/10/2021 07:00:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Competidor](
	[idCompetidor] [int] IDENTITY(1,1) NOT NULL,
	[idModalidade] [varchar](6) NULL,
	[Nome] [varchar](255) NULL,
	[Estado] [char](2) NULL,
	[dataNascimento] [date] NULL,
 CONSTRAINT [PK_Competidor] PRIMARY KEY CLUSTERED 
(
	[idCompetidor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DataNacional]    Script Date: 29/10/2021 07:00:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DataNacional](
	[idNacional] [int] IDENTITY(1,1) NOT NULL,
	[anoMundial] [smallint] NULL,
	[idModalidade] [varchar](6) NULL,
	[iniCompeticao] [smalldatetime] NULL,
	[terminoCompeticao] [smalldatetime] NULL,
	[localCompeticao] [varchar](50) NULL,
 CONSTRAINT [PK_DataNacional] PRIMARY KEY CLUSTERED 
(
	[idNacional] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estados]    Script Date: 29/10/2021 07:00:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estados](
	[Sigla] [char](2) NOT NULL,
	[Estado] [varchar](255) NULL,
 CONSTRAINT [PK_Estados] PRIMARY KEY CLUSTERED 
(
	[Sigla] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LogAcesso]    Script Date: 29/10/2021 07:00:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LogAcesso](
	[idlog] [int] IDENTITY(1,1) NOT NULL,
	[idusuario] [int] NULL,
	[dataHoraAcesso] [datetime] NULL,
	[DataHoraSaida] [datetime] NULL,
 CONSTRAINT [PK_LogAcesso] PRIMARY KEY CLUSTERED 
(
	[idlog] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Modalidade]    Script Date: 29/10/2021 07:00:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Modalidade](
	[idModalidade] [varchar](6) NOT NULL,
	[nomeModalidade] [varchar](60) NULL,
	[descModalidade] [ntext] NULL,
 CONSTRAINT [PK_Modalidade] PRIMARY KEY CLUSTERED 
(
	[idModalidade] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Notas]    Script Date: 29/10/2021 07:00:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notas](
	[idNota] [int] IDENTITY(1,1) NOT NULL,
	[idCompetidor] [int] NULL,
	[s1] [int] NULL,
	[s2] [int] NULL,
	[s3] [int] NULL,
	[s4] [int] NULL,
	[s5] [int] NULL,
	[s6] [int] NULL,
 CONSTRAINT [PK_Notas] PRIMARY KEY CLUSTERED 
(
	[idNota] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Noticia]    Script Date: 29/10/2021 07:00:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Noticia](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[data] [date] NULL,
	[titulo] [varchar](250) NULL,
	[noticia] [text] NULL,
	[status] [char](1) NULL,
 CONSTRAINT [PK_Noticia] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Parceiro]    Script Date: 29/10/2021 07:00:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Parceiro](
	[idParceiro] [int] IDENTITY(1,1) NOT NULL,
	[logo] [image] NULL,
	[Nome] [varchar](50) NULL,
	[Descricao] [text] NULL,
 CONSTRAINT [PK_Parceiro] PRIMARY KEY CLUSTERED 
(
	[idParceiro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SkillModalidade]    Script Date: 29/10/2021 07:00:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SkillModalidade](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idskill] [int] NULL,
	[idmodalidade] [varchar](6) NULL,
 CONSTRAINT [PK_SkillModalidade] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Skills]    Script Date: 29/10/2021 07:00:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Skills](
	[idSkill] [int] IDENTITY(1,1) NOT NULL,
	[descricao] [varchar](50) NULL,
 CONSTRAINT [PK_Skills] PRIMARY KEY CLUSTERED 
(
	[idSkill] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Acesso] ON 
GO
INSERT [dbo].[Acesso] ([idAcesso], [email], [senhaAcesso], [nome]) VALUES (1, N'usuario1@gmail.com', N'123', N'Rodrigo Machado')
GO
INSERT [dbo].[Acesso] ([idAcesso], [email], [senhaAcesso], [nome]) VALUES (2, N'usuario2@gmail.com', N'456', N'Manoel Silva')
GO
INSERT [dbo].[Acesso] ([idAcesso], [email], [senhaAcesso], [nome]) VALUES (3, N'email1@email.br', N'abc', N'Pedro Paulo')
GO
INSERT [dbo].[Acesso] ([idAcesso], [email], [senhaAcesso], [nome]) VALUES (4, N'fernanda@gmail.com', N'ksd', N'Fenanda Rudolf')
GO
INSERT [dbo].[Acesso] ([idAcesso], [email], [senhaAcesso], [nome]) VALUES (5, N'maria@gmail.om', N'1234', N'Maria Paula')
GO
SET IDENTITY_INSERT [dbo].[Acesso] OFF
GO
SET IDENTITY_INSERT [dbo].[Competidor] ON 
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (1, N'01', N'Matheus C. Santos', N'AL', CAST(N'2001-09-06' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (2, N'01', N'Bruno W. Ribeiro', N'BA', CAST(N'2001-04-08' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (3, N'01', N'Lucas Santos', N'MG', CAST(N'2000-10-19' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (4, N'01', N'Vinicius A. Neves', N'PE', CAST(N'2000-10-17' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (5, N'01', N'Christian Querque', N'RJ', CAST(N'2000-01-19' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (6, N'01', N'Wellington M. Lopes', N'SC', CAST(N'1999-11-29' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (7, N'01', N'Ezequiel G. Filho', N'SP', CAST(N'2000-03-29' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (8, N'01', N'Rafael R. Teixeira', N'DF', CAST(N'2001-02-20' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (9, N'02', N'Osmar F. Costa', N'AL', CAST(N'2002-08-29' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (10, N'02', N'Lucas S.  Santos', N'BA', CAST(N'2002-08-15' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (11, N'02', N'Alex G. Costa', N'MG', CAST(N'2002-08-01' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (12, N'02', N'Lucas S. Silva', N'PE', CAST(N'1999-06-04' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (13, N'02', N'Gabriel R. Anelli', N'RJ', CAST(N'2002-04-13' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (14, N'02', N'Douglas A. Alves', N'SC', CAST(N'2002-07-01' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (15, N'02', N'Breno Santos', N'TO', CAST(N'2002-01-22' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (16, N'02', N'Abner de Souza', N'SP', CAST(N'2001-07-17' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (17, N'02', N'Camila V. Couto', N'AL', CAST(N'2002-10-17' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (18, N'03', N'Lucas K. Neto', N'BA', CAST(N'2002-02-01' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (19, N'03', N'Leonardo F. Rodrigues', N'MG', CAST(N'2001-06-21' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (20, N'03', N'João C. Dias', N'PE', CAST(N'2003-05-12' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (21, N'03', N'Matheus Valentim', N'SP', CAST(N'2001-06-17' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (22, N'03', N'Leonardo R. Almeida', N'SC', CAST(N'2000-10-14' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (23, N'03', N'Isabella A. a Alves', N'TO', CAST(N'2001-04-03' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (24, N'03', N'Eli B. Cazello', N'DF', CAST(N'2002-01-30' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (25, N'05', N'Lucas A. Ambardi', N'AL', CAST(N'2001-04-15' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (26, N'05', N'Luiz L. Captista', N'SP', CAST(N'2001-10-29' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (27, N'05', N'Hugo F. Rodrigues', N'GO', CAST(N'2001-10-04' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (28, N'05', N'Nathan H.  Grando', N'MG', CAST(N'2002-06-08' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (29, N'05', N'Gustavo C. Rochetti', N'RJ', CAST(N'1999-11-01' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (30, N'05', N'Thauane G. Silveira', N'RS', CAST(N'2003-07-09' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (31, N'05', N'Matheus d.  Júnior', N'SC', CAST(N'2001-08-11' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (32, N'05', N'Lucas A.  Heleno', N'TO', CAST(N'2000-05-31' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (33, N'05', N'Luis G. Oliveira', N'DF', CAST(N'2002-09-16' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (34, N'06', N'Henrique S. Canho', N'AL', CAST(N'2002-10-10' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (35, N'06', N'Gabriel C. Ramos', N'BA', CAST(N'2000-08-27' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (36, N'06', N'Guilherme Santos ', N'SP', CAST(N'2001-03-23' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (37, N'06', N'Bruno E.  Santos', N'MG', CAST(N'2000-11-09' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (38, N'06', N'Guilherme S. Cruz ', N'RJ', CAST(N'1999-06-17' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (39, N'06', N'Victoria A. a Brito', N'RS', CAST(N'2000-07-23' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (40, N'06', N'Emanuel Silva', N'SC', CAST(N'1999-10-11' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (41, N'06', N'Larissa H. Silva', N'TO', CAST(N'2000-08-22' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (42, N'06', N'Bruno C. Rodrigues', N'DF', CAST(N'2002-09-30' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (43, N'07', N'Gabriel Fernandes', N'AL', CAST(N'2002-06-24' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (44, N'07', N'Vinícius R.  Vieira', N'BA', CAST(N'2001-07-30' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (45, N'07', N'Mayara A. Madeira', N'SP', CAST(N'2003-05-05' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (46, N'07', N'Gabriel H. Souza', N'RJ', CAST(N'1998-10-14' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (47, N'07', N'Rodrigo D. Dinardo', N'RS', CAST(N'1996-07-19' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (48, N'07', N'Juliana L.  Santos', N'SC', CAST(N'1996-06-24' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (49, N'07', N'Lívia E. Toratto', N'DF', CAST(N'2001-01-11' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (50, N'09', N'Alessandro V. Desquita', N'AL', CAST(N'2001-09-21' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (51, N'09', N'João O. Martins', N'BA', CAST(N'2001-06-25' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (52, N'09', N'Diogo M. Filho', N'ES', CAST(N'2001-11-20' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (53, N'09', N'Larissa C. e Alves', N'SP', CAST(N'2004-04-15' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (54, N'09', N'Marcos J. Catharino', N'MG', CAST(N'2001-02-12' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (55, N'09', N'Vinicius d. a Cinto', N'RJ', CAST(N'2000-06-12' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (56, N'09', N'Guilherme d. Oliveira', N'RS', CAST(N'2000-10-21' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (57, N'09', N'Gabriel M. Martins', N'SC', CAST(N'2001-02-11' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (58, N'09', N'Matheus A. Talmagro', N'DF', CAST(N'1999-03-26' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (59, N'10', N'Bruno G. Pereira', N'AL', CAST(N'2001-11-23' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (60, N'10', N'Roger H. Santos', N'SP', CAST(N'2000-01-24' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (61, N'10', N'Gabriel Fagundes', N'ES', CAST(N'2000-02-10' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (62, N'10', N'Murilo Marques', N'MT', CAST(N'2000-03-23' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (63, N'10', N'Ana Lúcia Mendes', N'MG', CAST(N'2001-10-01' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (64, N'10', N'Ana Paula Picoli', N'RJ', CAST(N'2001-05-03' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (65, N'10', N'Anaor Mendonça', N'RS', CAST(N'2000-11-13' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (66, N'10', N'Andréia Piccoli Gonzales', N'SC', CAST(N'2000-11-11' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (67, N'10', N'Antonio Luiz Silva', N'DF', CAST(N'2000-02-13' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (68, N'11', N'Beatriz Azevedo', N'AL', CAST(N'1999-12-24' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (69, N'11', N'Cecília Teresa', N'ES', CAST(N'2000-04-23' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (70, N'11', N'Clara de Assis', N'MA', CAST(N'2001-03-17' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (71, N'11', N'Conceição de Torres', N'MT', CAST(N'2002-09-23' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (72, N'11', N'Djanir Mendes', N'SP', CAST(N'2002-09-09' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (73, N'11', N'Douglas Francisco Piccoli', N'PB', CAST(N'2002-08-26' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (74, N'11', N'Elzita das Neves', N'RJ', CAST(N'1999-06-29' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (75, N'11', N'Francisco Gonzales', N'SC', CAST(N'2002-05-08' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (76, N'11', N'Giovana Moda', N'DF', CAST(N'2002-07-26' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (77, N'12', N'Gustavo Moda', N'AL', CAST(N'2002-02-16' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (78, N'12', N'Henrique Olinto Piccoli', N'BA', CAST(N'2001-08-11' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (79, N'12', N'José Luiz Cabrera', N'ES', CAST(N'2002-11-11' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (80, N'12', N'Lourival Picoli Junior', N'SP', CAST(N'2002-02-26' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (81, N'12', N'Luíza Piccoli', N'MG', CAST(N'2001-07-16' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (82, N'12', N'Marcia Fernandez', N'RJ', CAST(N'2003-06-06' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (83, N'12', N'Maria Antonia Teresa', N'RS', CAST(N'2001-07-12' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (84, N'12', N'Maria Aparecida Piccoli', N'SC', CAST(N'2000-11-08' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (85, N'12', N'Maria Augusta', N'DF', CAST(N'2001-04-28' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (86, N'13', N'Maria Clara', N'AL', CAST(N'2002-02-24' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (87, N'13', N'Maria Fernanda', N'ES', CAST(N'2001-05-10' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (88, N'13', N'Maria Isabel', N'MA', CAST(N'2001-11-23' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (89, N'13', N'Rafael Azevedo', N'MT', CAST(N'2001-10-29' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (90, N'13', N'Renata Helena', N'SP', CAST(N'2002-07-03' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (91, N'13', N'Renata Moda', N'PB', CAST(N'1999-11-26' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (92, N'13', N'Ricardo Castro', N'RJ', CAST(N'2003-08-03' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (93, N'13', N'Rodrigo Antonio Picoli', N'SC', CAST(N'2001-09-05' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (94, N'13', N'Silvia Maria de Sousa', N'DF', CAST(N'2000-06-25' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (95, N'14', N'Tania Cabrera', N'AL', CAST(N'2002-10-11' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (96, N'14', N'Teresa Raquel', N'ES', CAST(N'2002-11-04' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (97, N'14', N'Valéria Piccoli Gonzales', N'MA', CAST(N'2000-09-21' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (98, N'14', N'Victor Hugo', N'MT', CAST(N'2001-04-17' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (99, N'14', N'Vitória Maria', N'MG', CAST(N'2000-12-04' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (100, N'14', N'Luís Murilo Souza', N'SP', CAST(N'1999-07-12' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (101, N'15', N'Maria Isabel Silva', N'AL', CAST(N'2000-08-17' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (102, N'15', N'Luís Augusto Amaral', N'ES', CAST(N'1999-11-05' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (103, N'15', N'Augusto Fernanda Rodrigues', N'MA', CAST(N'2000-09-16' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (104, N'15', N'Fernanda MuriloBranco', N'MT', CAST(N'2002-10-25' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (105, N'15', N'Murilo Francisco Preto', N'MG', CAST(N'2002-07-19' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (106, N'15', N'Francisco Mariana Souza', N'SP', CAST(N'2001-08-24' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (107, N'16', N'Silvia Maria de Sousa Silva', N'AL', CAST(N'2003-05-30' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (108, N'16', N'Estela Fernanda Amaral', N'ES', CAST(N'1998-11-08' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (109, N'16', N'Fernanda Augusto Rodrigues', N'MA', CAST(N'1996-08-13' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (110, N'16', N'Augusto LuísBranco', N'MT', CAST(N'1996-07-19' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (111, N'16', N'Luís Francisco Preto', N'SP', CAST(N'2001-02-05' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (112, N'16', N'Francisco Murilo Souza', N'PB', CAST(N'2001-10-16' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (113, N'16', N'Luís Murilo Silva', N'RJ', CAST(N'2001-07-20' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (114, N'17', N'Estela Luís Amaral', N'AL', CAST(N'2001-12-15' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (115, N'17', N'Luís Murilo Rodrigues', N'ES', CAST(N'2004-05-10' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (116, N'17', N'Murilo EstelaBranco', N'MA', CAST(N'2001-11-05' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (117, N'17', N'Estela Mariana Preto', N'MT', CAST(N'2001-06-07' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (118, N'17', N'Mariana Luís Souza', N'SP', CAST(N'2000-12-18' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (119, N'17', N'Francisco Mariana Silva', N'PB', CAST(N'2000-12-16' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (120, N'17', N'Mariana Augusto Amaral', N'RJ', CAST(N'2000-03-19' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (121, N'18', N'Augusto Estela Rodrigues', N'AL', CAST(N'2000-01-28' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (122, N'18', N'Estela MuriloBranco', N'ES', CAST(N'2000-05-28' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (123, N'18', N'Murilo Fernanda Preto', N'MA', CAST(N'2001-04-21' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (124, N'18', N'Fernanda Murilo Souza', N'MT', CAST(N'2002-10-28' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (125, N'18', N'Francisco Murilo Silva', N'SP', CAST(N'2002-10-14' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (126, N'18', N'Francisco Estela Amaral', N'PB', CAST(N'2002-09-30' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (127, N'18', N'Estela Luís Rodrigues', N'RJ', CAST(N'1999-08-03' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (128, N'19', N'Luís AugustoBranco', N'AL', CAST(N'2002-06-12' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (129, N'19', N'Augusto Estela Preto', N'ES', CAST(N'2002-08-30' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (130, N'19', N'Estela Augusto Souza', N'BA', CAST(N'2002-03-23' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (131, N'19', N'Mariana Luís Silva', N'MT', CAST(N'2001-09-15' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (132, N'19', N'Murilo Mariana Amaral', N'SP', CAST(N'2002-12-16' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (133, N'19', N'Mariana Luís Rodrigues', N'PB', CAST(N'2002-04-02' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (134, N'19', N'Luís FranciscoBranco', N'RJ', CAST(N'2001-08-20' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (135, N'20', N'Francisco Augusto Preto', N'AL', CAST(N'2003-07-11' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (136, N'20', N'Augusto Fernanda Souza', N'ES', CAST(N'2001-08-16' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (137, N'20', N'Fernanda Murilo Silva', N'MA', CAST(N'2000-12-13' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (138, N'20', N'Mariana Augusto Amaral', N'MT', CAST(N'2001-06-02' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (139, N'20', N'Augusto Fernanda Rodrigues', N'SP', CAST(N'2002-03-31' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (140, N'20', N'Fernanda LuísBranco', N'PB', CAST(N'2001-06-14' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (141, N'20', N'Luís Mariana Preto', N'RJ', CAST(N'2001-12-28' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (142, N'21', N'Mariana Francisco Raniere', N'AL', CAST(N'2001-12-03' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (143, N'21', N'Francisco Francisco Farias', N'ES', CAST(N'2002-08-07' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (144, N'21', N'Francisco Fernanda Amaral', N'BA', CAST(N'1999-12-31' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (145, N'21', N'Fernanda Francisco Rodrigues', N'MT', CAST(N'2003-09-07' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (146, N'21', N'Francisco GiseleBranco', N'SP', CAST(N'2001-10-10' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (147, N'22', N'Gisele Augusto Preto', N'AL', CAST(N'2000-07-30' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (148, N'22', N'Augusto Gisele Raniere', N'ES', CAST(N'2002-11-15' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (149, N'22', N'Gisele Murilo Farias', N'BA', CAST(N'2002-12-09' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (150, N'22', N'Murilo Francisco Amaral', N'PB', CAST(N'2000-10-26' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (151, N'22', N'Francisco Fernanda Rodrigues', N'SP', CAST(N'2001-05-22' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (152, N'23', N'Fernanda MuriloBranco', N'AL', CAST(N'2001-01-08' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (153, N'23', N'Murilo Mariana Preto', N'ES', CAST(N'1999-08-16' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (154, N'23', N'Mariana Gisele Raniere', N'PE', CAST(N'2000-09-21' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (155, N'23', N'Gisele Augusto Farias', N'MT', CAST(N'1999-12-10' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (156, N'23', N'Augusto Gisele Amaral', N'SP', CAST(N'2000-10-21' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (157, N'24', N'Gisele Luís Rodrigues', N'AL', CAST(N'2002-11-29' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (158, N'24', N'Luís GiseleBranco', N'ES', CAST(N'2002-08-23' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (159, N'24', N'Gisele Luís Preto', N'RJ', CAST(N'2001-09-28' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (160, N'24', N'Luís Murilo Raniere', N'MT', CAST(N'2003-07-04' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (161, N'24', N'Murilo Mariana Farias', N'SP', CAST(N'1998-12-13' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (162, N'25', N'Mariana Fernanda Amaral', N'AL', CAST(N'1996-09-17' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (163, N'25', N'Fernanda Mariana Rodrigues', N'BA', CAST(N'1996-08-23' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (164, N'25', N'Mariana MuriloBranco', N'MG', CAST(N'2001-03-12' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (165, N'25', N'Murilo Luís Preto', N'PE', CAST(N'2001-11-20' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (166, N'25', N'Luís Gisele Raniere', N'SP', CAST(N'2001-08-24' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (167, N'25', N'Gisele Murilo Farias', N'SC', CAST(N'2002-01-19' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (168, N'25', N'Murilo Francisco', N'TO', CAST(N'2004-06-14' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (169, N'31', N'Francisco Gisele', N'AL', CAST(N'2001-04-13' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (170, N'31', N'Gisele Mariana', N'BA', CAST(N'2000-08-11' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (171, N'31', N'Mariana Murilo', N'MG', CAST(N'2000-12-20' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (172, N'31', N'Murilo Luís', N'PE', CAST(N'2001-04-12' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (173, N'31', N'Luís Augusto', N'SP', CAST(N'1999-05-25' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (174, N'31', N'Augusto Francisco', N'SC', CAST(N'2002-01-22' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (175, N'27', N'Francisco Francisco', N'AL', CAST(N'2000-03-24' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (176, N'27', N'Francisco Augusto', N'BA', CAST(N'2000-04-10' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (177, N'27', N'Augusto Gisele', N'MG', CAST(N'2000-05-22' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (178, N'27', N'Gisele Gisele', N'PE', CAST(N'2001-11-30' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (179, N'27', N'Gisele Luís', N'SP', CAST(N'2001-07-02' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (180, N'27', N'Luís Murilo', N'SC', CAST(N'2001-01-12' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (181, N'32', N'Murilo Mariana', N'AL', CAST(N'2001-01-10' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (182, N'32', N'Mariana Gisele', N'BA', CAST(N'2000-04-13' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (183, N'32', N'Gisele Augusto', N'MG', CAST(N'2000-02-22' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (184, N'32', N'Augusto Francisco', N'PE', CAST(N'2000-06-22' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (185, N'32', N'Francisco Luís', N'SP', CAST(N'2001-05-16' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (186, N'32', N'Luís Luís', N'SC', CAST(N'2002-11-22' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (187, N'33', N'Luís Luís', N'AL', CAST(N'2002-11-08' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (188, N'33', N'Luís Francisco', N'BA', CAST(N'2002-10-25' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (189, N'33', N'Francisco Francisco', N'MG', CAST(N'1999-08-28' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (190, N'33', N'Francisco Luís', N'PE', CAST(N'2002-07-07' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (191, N'33', N'Luís Augusto', N'SP', CAST(N'2002-09-24' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (192, N'33', N'Augusto Francisco', N'SC', CAST(N'2002-04-17' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (193, N'36', N'Francisco Luís', N'AL', CAST(N'2001-10-10' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (194, N'36', N'Luís Gisele', N'BA', CAST(N'2003-01-10' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (195, N'36', N'Gisele Augusto', N'MG', CAST(N'2002-04-27' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (196, N'36', N'Augusto Luís', N'PE', CAST(N'2001-09-14' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (197, N'36', N'Luís Augusto', N'SP', CAST(N'2003-08-05' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (198, N'36', N'Augusto Murilo', N'SC', CAST(N'2001-09-10' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (199, N'38', N'Murilo Gisele', N'AL', CAST(N'2001-01-07' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (200, N'38', N'Gisele Luís', N'BA', CAST(N'2001-06-27' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (201, N'38', N'Luís Gisele', N'MG', CAST(N'2002-04-25' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (202, N'38', N'Gisele Murilo', N'PE', CAST(N'2001-07-09' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (203, N'38', N'Murilo Augusto', N'SP', CAST(N'2002-01-22' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (204, N'38', N'Augusto Gisele', N'SC', CAST(N'2001-12-28' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (205, N'39', N'Gisele Luís', N'CE', CAST(N'2002-09-01' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (206, N'39', N'Luís Luís', N'GO', CAST(N'2000-01-25' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (207, N'39', N'Luís Estela', N'MS', CAST(N'2003-10-02' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (208, N'39', N'Estela Augusto', N'PA', CAST(N'2001-11-04' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (209, N'39', N'Augusto Augusto', N'RJ', CAST(N'2000-08-24' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (210, N'39', N'Augusto Estela', N'SP', CAST(N'2002-12-10' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (211, N'40', N'Estela Augusto', N'CE', CAST(N'2003-01-03' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (212, N'40', N'Augusto Gisele', N'GO', CAST(N'2000-11-20' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (213, N'40', N'Gisele Mariana', N'MS', CAST(N'2001-06-16' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (214, N'40', N'Mariana Estela', N'PA', CAST(N'2001-02-02' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (215, N'42', N'Estela Gisele', N'CE', CAST(N'1999-09-10' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (216, N'42', N'Gisele Luís', N'GO', CAST(N'2000-10-16' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (217, N'42', N'Luís Mariana', N'MS', CAST(N'2000-01-04' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (218, N'42', N'Mariana Augusto', N'PA', CAST(N'2000-11-15' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (219, N'42', N'Augusto Murilo', N'RJ', CAST(N'2002-12-24' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (220, N'42', N'Murilo Luís', N'SP', CAST(N'2002-09-17' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (221, N'42', N'Augusto Gisele', N'RJ', CAST(N'2001-10-23' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (222, N'42', N'Gisele Mariana', N'SP', CAST(N'2003-07-29' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (223, N'43', N'Mariana Estela', N'CE', CAST(N'1999-01-07' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (224, N'43', N'Estela Fernanda', N'GO', CAST(N'1996-10-12' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (225, N'43', N'Fernanda Fernanda', N'MS', CAST(N'1996-09-17' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (226, N'43', N'Fernanda Luís', N'PA', CAST(N'2001-04-06' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (227, N'43', N'Luís Mariana', N'RJ', CAST(N'2001-12-15' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (228, N'43', N'Mariana Murilo', N'SP', CAST(N'2001-09-18' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (229, N'44', N'Murilo Estela', N'PA', CAST(N'2002-02-13' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (230, N'44', N'Estela Luís', N'PE', CAST(N'2004-07-09' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (231, N'44', N'Luís Augusto', N'RO', CAST(N'2002-01-04' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (232, N'44', N'Augusto Fernanda', N'SP', CAST(N'2001-08-06' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (233, N'44', N'Fernanda Estela', N'SE', CAST(N'2001-02-16' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (234, N'45', N'Estela Augusto', N'PA', CAST(N'2001-02-14' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (235, N'45', N'Augusto Mariana', N'PI', CAST(N'2000-05-18' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (236, N'45', N'Mariana Murilo', N'RJ', CAST(N'2000-03-28' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (237, N'45', N'Murilo Gisele', N'SP', CAST(N'2000-07-27' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (238, N'45', N'Gisele Francisco', N'SE', CAST(N'2001-06-20' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (239, N'47', N'Francisco Francisco', N'PA', CAST(N'2002-12-27' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (240, N'47', N'Francisco Murilo', N'PE', CAST(N'2002-12-13' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (241, N'47', N'Murilo Mariana', N'RO', CAST(N'2002-11-29' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (242, N'47', N'Mariana Francisco', N'SP', CAST(N'1999-10-02' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (243, N'47', N'Francisco Luís', N'SE', CAST(N'2002-08-11' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (244, N'49', N'Luís Luís', N'PA', CAST(N'2002-10-29' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (245, N'49', N'Luís Gisele', N'PE', CAST(N'2002-05-22' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (246, N'49', N'Gisele Murilo', N'RO', CAST(N'2001-11-14' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (247, N'49', N'Murilo Luís', N'SP', CAST(N'2003-02-14' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (248, N'49', N'Luís Luís', N'RO', CAST(N'2002-06-01' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (249, N'51', N'Luís Augusto', N'AL', CAST(N'2001-10-19' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (250, N'51', N'Augusto Augusto', N'BA', CAST(N'2003-09-09' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (251, N'51', N'Augusto Fernanda', N'MG', CAST(N'2001-10-15' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (252, N'51', N'Fernanda Fernanda', N'PE', CAST(N'2001-02-11' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (253, N'51', N'Fernanda Luís', N'SP', CAST(N'2001-08-01' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (254, N'51', N'Luís Luís', N'SC', CAST(N'2002-05-30' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (255, N'52', N'Luís Murilo', N'AL', CAST(N'2001-08-13' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (256, N'52', N'Murilo Luís', N'BA', CAST(N'2002-02-26' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (257, N'52', N'Luís Luís', N'MG', CAST(N'2002-02-01' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (258, N'52', N'Luís Estela', N'PE', CAST(N'2002-10-06' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (259, N'52', N'Estela Augusto', N'SP', CAST(N'2000-02-29' AS Date))
GO
INSERT [dbo].[Competidor] ([idCompetidor], [idModalidade], [Nome], [Estado], [dataNascimento]) VALUES (260, N'52', N'Augusto Augusto', N'SC', CAST(N'2003-11-06' AS Date))
GO
SET IDENTITY_INSERT [dbo].[Competidor] OFF
GO
SET IDENTITY_INSERT [dbo].[DataNacional] ON 
GO
INSERT [dbo].[DataNacional] ([idNacional], [anoMundial], [idModalidade], [iniCompeticao], [terminoCompeticao], [localCompeticao]) VALUES (1, 2021, N'01', CAST(N'2022-01-31T00:00:00' AS SmallDateTime), CAST(N'2022-02-05T00:00:00' AS SmallDateTime), N'RJ Res')
GO
INSERT [dbo].[DataNacional] ([idNacional], [anoMundial], [idModalidade], [iniCompeticao], [terminoCompeticao], [localCompeticao]) VALUES (2, 2021, N'02', CAST(N'2022-01-24T00:00:00' AS SmallDateTime), CAST(N'2022-01-29T00:00:00' AS SmallDateTime), N'PE')
GO
INSERT [dbo].[DataNacional] ([idNacional], [anoMundial], [idModalidade], [iniCompeticao], [terminoCompeticao], [localCompeticao]) VALUES (3, 2021, N'03', CAST(N'2022-03-14T00:00:00' AS SmallDateTime), CAST(N'2022-03-19T00:00:00' AS SmallDateTime), N'PR')
GO
INSERT [dbo].[DataNacional] ([idNacional], [anoMundial], [idModalidade], [iniCompeticao], [terminoCompeticao], [localCompeticao]) VALUES (4, 2021, N'04', CAST(N'2021-12-06T00:00:00' AS SmallDateTime), CAST(N'2021-12-11T00:00:00' AS SmallDateTime), N'FESTO')
GO
INSERT [dbo].[DataNacional] ([idNacional], [anoMundial], [idModalidade], [iniCompeticao], [terminoCompeticao], [localCompeticao]) VALUES (5, 2021, N'05', CAST(N'2022-03-21T00:00:00' AS SmallDateTime), CAST(N'2022-03-26T00:00:00' AS SmallDateTime), N'PB')
GO
INSERT [dbo].[DataNacional] ([idNacional], [anoMundial], [idModalidade], [iniCompeticao], [terminoCompeticao], [localCompeticao]) VALUES (6, 2021, N'06', CAST(N'2022-03-07T00:00:00' AS SmallDateTime), CAST(N'2022-03-12T00:00:00' AS SmallDateTime), N'MG')
GO
INSERT [dbo].[DataNacional] ([idNacional], [anoMundial], [idModalidade], [iniCompeticao], [terminoCompeticao], [localCompeticao]) VALUES (7, 2021, N'07', CAST(N'2022-01-31T00:00:00' AS SmallDateTime), CAST(N'2022-02-05T00:00:00' AS SmallDateTime), N'RS')
GO
INSERT [dbo].[DataNacional] ([idNacional], [anoMundial], [idModalidade], [iniCompeticao], [terminoCompeticao], [localCompeticao]) VALUES (8, 2021, N'09', CAST(N'2022-01-31T00:00:00' AS SmallDateTime), CAST(N'2022-02-05T00:00:00' AS SmallDateTime), N'TO')
GO
INSERT [dbo].[DataNacional] ([idNacional], [anoMundial], [idModalidade], [iniCompeticao], [terminoCompeticao], [localCompeticao]) VALUES (9, 2021, N'10', CAST(N'2022-03-14T00:00:00' AS SmallDateTime), CAST(N'2022-03-19T00:00:00' AS SmallDateTime), N'SP OSC')
GO
INSERT [dbo].[DataNacional] ([idNacional], [anoMundial], [idModalidade], [iniCompeticao], [terminoCompeticao], [localCompeticao]) VALUES (10, 2021, N'11', CAST(N'2021-12-06T00:00:00' AS SmallDateTime), CAST(N'2021-12-11T00:00:00' AS SmallDateTime), N'RS')
GO
INSERT [dbo].[DataNacional] ([idNacional], [anoMundial], [idModalidade], [iniCompeticao], [terminoCompeticao], [localCompeticao]) VALUES (11, 2021, N'12', CAST(N'2022-03-07T00:00:00' AS SmallDateTime), CAST(N'2022-03-12T00:00:00' AS SmallDateTime), N'MG')
GO
INSERT [dbo].[DataNacional] ([idNacional], [anoMundial], [idModalidade], [iniCompeticao], [terminoCompeticao], [localCompeticao]) VALUES (12, 2021, N'13', CAST(N'2021-12-06T00:00:00' AS SmallDateTime), CAST(N'2021-12-11T00:00:00' AS SmallDateTime), N'DF')
GO
INSERT [dbo].[DataNacional] ([idNacional], [anoMundial], [idModalidade], [iniCompeticao], [terminoCompeticao], [localCompeticao]) VALUES (13, 2021, N'14', CAST(N'2021-12-06T00:00:00' AS SmallDateTime), CAST(N'2021-12-11T00:00:00' AS SmallDateTime), N'SC')
GO
INSERT [dbo].[DataNacional] ([idNacional], [anoMundial], [idModalidade], [iniCompeticao], [terminoCompeticao], [localCompeticao]) VALUES (14, 2021, N'15', CAST(N'2022-01-24T00:00:00' AS SmallDateTime), CAST(N'2022-01-29T00:00:00' AS SmallDateTime), N'MG')
GO
INSERT [dbo].[DataNacional] ([idNacional], [anoMundial], [idModalidade], [iniCompeticao], [terminoCompeticao], [localCompeticao]) VALUES (15, 2021, N'16', CAST(N'2021-12-06T00:00:00' AS SmallDateTime), CAST(N'2021-12-11T00:00:00' AS SmallDateTime), N'MT')
GO
INSERT [dbo].[DataNacional] ([idNacional], [anoMundial], [idModalidade], [iniCompeticao], [terminoCompeticao], [localCompeticao]) VALUES (16, 2021, N'17', CAST(N'2022-03-07T00:00:00' AS SmallDateTime), CAST(N'2022-03-12T00:00:00' AS SmallDateTime), N'AL')
GO
INSERT [dbo].[DataNacional] ([idNacional], [anoMundial], [idModalidade], [iniCompeticao], [terminoCompeticao], [localCompeticao]) VALUES (17, 2021, N'18', CAST(N'2022-03-21T00:00:00' AS SmallDateTime), CAST(N'2022-03-26T00:00:00' AS SmallDateTime), N'ES')
GO
INSERT [dbo].[DataNacional] ([idNacional], [anoMundial], [idModalidade], [iniCompeticao], [terminoCompeticao], [localCompeticao]) VALUES (18, 2021, N'19', CAST(N'2022-03-07T00:00:00' AS SmallDateTime), CAST(N'2022-03-12T00:00:00' AS SmallDateTime), N'MS')
GO
INSERT [dbo].[DataNacional] ([idNacional], [anoMundial], [idModalidade], [iniCompeticao], [terminoCompeticao], [localCompeticao]) VALUES (19, 2021, N'20', CAST(N'2022-03-21T00:00:00' AS SmallDateTime), CAST(N'2022-03-26T00:00:00' AS SmallDateTime), N'MG')
GO
INSERT [dbo].[DataNacional] ([idNacional], [anoMundial], [idModalidade], [iniCompeticao], [terminoCompeticao], [localCompeticao]) VALUES (20, 2021, N'21', CAST(N'2021-12-06T00:00:00' AS SmallDateTime), CAST(N'2021-12-11T00:00:00' AS SmallDateTime), N'MG')
GO
INSERT [dbo].[DataNacional] ([idNacional], [anoMundial], [idModalidade], [iniCompeticao], [terminoCompeticao], [localCompeticao]) VALUES (21, 2021, N'22', CAST(N'2022-01-24T00:00:00' AS SmallDateTime), CAST(N'2022-01-29T00:00:00' AS SmallDateTime), N'AP')
GO
INSERT [dbo].[DataNacional] ([idNacional], [anoMundial], [idModalidade], [iniCompeticao], [terminoCompeticao], [localCompeticao]) VALUES (22, 2021, N'23', CAST(N'2022-01-31T00:00:00' AS SmallDateTime), CAST(N'2022-02-05T00:00:00' AS SmallDateTime), N'BA')
GO
INSERT [dbo].[DataNacional] ([idNacional], [anoMundial], [idModalidade], [iniCompeticao], [terminoCompeticao], [localCompeticao]) VALUES (23, 2021, N'24', CAST(N'2022-03-14T00:00:00' AS SmallDateTime), CAST(N'2022-03-19T00:00:00' AS SmallDateTime), N'AC')
GO
INSERT [dbo].[DataNacional] ([idNacional], [anoMundial], [idModalidade], [iniCompeticao], [terminoCompeticao], [localCompeticao]) VALUES (24, 2021, N'25', CAST(N'2021-12-06T00:00:00' AS SmallDateTime), CAST(N'2021-12-11T00:00:00' AS SmallDateTime), N'DF')
GO
INSERT [dbo].[DataNacional] ([idNacional], [anoMundial], [idModalidade], [iniCompeticao], [terminoCompeticao], [localCompeticao]) VALUES (25, 2021, N'26', CAST(N'2021-12-06T00:00:00' AS SmallDateTime), CAST(N'2021-12-11T00:00:00' AS SmallDateTime), N'RS')
GO
INSERT [dbo].[DataNacional] ([idNacional], [anoMundial], [idModalidade], [iniCompeticao], [terminoCompeticao], [localCompeticao]) VALUES (26, 2021, N'27', CAST(N'2022-03-14T00:00:00' AS SmallDateTime), CAST(N'2022-03-19T00:00:00' AS SmallDateTime), N'RJ')
GO
INSERT [dbo].[DataNacional] ([idNacional], [anoMundial], [idModalidade], [iniCompeticao], [terminoCompeticao], [localCompeticao]) VALUES (27, 2021, N'31', CAST(N'2022-03-21T00:00:00' AS SmallDateTime), CAST(N'2022-03-26T00:00:00' AS SmallDateTime), N'ES')
GO
INSERT [dbo].[DataNacional] ([idNacional], [anoMundial], [idModalidade], [iniCompeticao], [terminoCompeticao], [localCompeticao]) VALUES (28, 2021, N'32', CAST(N'2022-01-24T00:00:00' AS SmallDateTime), CAST(N'2022-01-29T00:00:00' AS SmallDateTime), N'DF')
GO
INSERT [dbo].[DataNacional] ([idNacional], [anoMundial], [idModalidade], [iniCompeticao], [terminoCompeticao], [localCompeticao]) VALUES (29, 2021, N'33', CAST(N'2022-01-24T00:00:00' AS SmallDateTime), CAST(N'2022-01-29T00:00:00' AS SmallDateTime), N'DF')
GO
INSERT [dbo].[DataNacional] ([idNacional], [anoMundial], [idModalidade], [iniCompeticao], [terminoCompeticao], [localCompeticao]) VALUES (30, 2021, N'36', CAST(N'2022-01-24T00:00:00' AS SmallDateTime), CAST(N'2022-01-29T00:00:00' AS SmallDateTime), N'DF')
GO
INSERT [dbo].[DataNacional] ([idNacional], [anoMundial], [idModalidade], [iniCompeticao], [terminoCompeticao], [localCompeticao]) VALUES (31, 2021, N'38', CAST(N'2022-01-24T00:00:00' AS SmallDateTime), CAST(N'2022-01-29T00:00:00' AS SmallDateTime), N'PE')
GO
INSERT [dbo].[DataNacional] ([idNacional], [anoMundial], [idModalidade], [iniCompeticao], [terminoCompeticao], [localCompeticao]) VALUES (32, 2021, N'39', CAST(N'2022-01-24T00:00:00' AS SmallDateTime), CAST(N'2022-01-29T00:00:00' AS SmallDateTime), N'PE')
GO
INSERT [dbo].[DataNacional] ([idNacional], [anoMundial], [idModalidade], [iniCompeticao], [terminoCompeticao], [localCompeticao]) VALUES (33, 2021, N'40', CAST(N'2022-03-21T00:00:00' AS SmallDateTime), CAST(N'2022-03-26T00:00:00' AS SmallDateTime), N'GO')
GO
INSERT [dbo].[DataNacional] ([idNacional], [anoMundial], [idModalidade], [iniCompeticao], [terminoCompeticao], [localCompeticao]) VALUES (34, 2021, N'42', CAST(N'2022-02-07T00:00:00' AS SmallDateTime), CAST(N'2022-03-12T00:00:00' AS SmallDateTime), N'MG CTG')
GO
INSERT [dbo].[DataNacional] ([idNacional], [anoMundial], [idModalidade], [iniCompeticao], [terminoCompeticao], [localCompeticao]) VALUES (35, 2021, N'43', CAST(N'2022-03-07T00:00:00' AS SmallDateTime), CAST(N'2022-03-12T00:00:00' AS SmallDateTime), N'SC')
GO
INSERT [dbo].[DataNacional] ([idNacional], [anoMundial], [idModalidade], [iniCompeticao], [terminoCompeticao], [localCompeticao]) VALUES (36, 2021, N'44', CAST(N'2022-01-24T00:00:00' AS SmallDateTime), CAST(N'2022-01-29T00:00:00' AS SmallDateTime), N'MG')
GO
INSERT [dbo].[DataNacional] ([idNacional], [anoMundial], [idModalidade], [iniCompeticao], [terminoCompeticao], [localCompeticao]) VALUES (37, 2021, N'45', CAST(N'2022-01-31T00:00:00' AS SmallDateTime), CAST(N'2022-02-05T00:00:00' AS SmallDateTime), N'RS')
GO
INSERT [dbo].[DataNacional] ([idNacional], [anoMundial], [idModalidade], [iniCompeticao], [terminoCompeticao], [localCompeticao]) VALUES (38, 2021, N'47', CAST(N'2022-01-24T00:00:00' AS SmallDateTime), CAST(N'2022-01-29T00:00:00' AS SmallDateTime), N'DF')
GO
INSERT [dbo].[DataNacional] ([idNacional], [anoMundial], [idModalidade], [iniCompeticao], [terminoCompeticao], [localCompeticao]) VALUES (39, 2021, N'48', CAST(N'2021-12-06T00:00:00' AS SmallDateTime), CAST(N'2021-12-11T00:00:00' AS SmallDateTime), N'FESTO')
GO
INSERT [dbo].[DataNacional] ([idNacional], [anoMundial], [idModalidade], [iniCompeticao], [terminoCompeticao], [localCompeticao]) VALUES (40, 2021, N'49', CAST(N'2022-01-31T00:00:00' AS SmallDateTime), CAST(N'2022-02-05T00:00:00' AS SmallDateTime), N'PA')
GO
INSERT [dbo].[DataNacional] ([idNacional], [anoMundial], [idModalidade], [iniCompeticao], [terminoCompeticao], [localCompeticao]) VALUES (41, 2021, N'51', CAST(N'2022-01-31T00:00:00' AS SmallDateTime), CAST(N'2022-02-05T00:00:00' AS SmallDateTime), N'TO')
GO
INSERT [dbo].[DataNacional] ([idNacional], [anoMundial], [idModalidade], [iniCompeticao], [terminoCompeticao], [localCompeticao]) VALUES (42, 2021, N'52', CAST(N'2022-03-14T00:00:00' AS SmallDateTime), CAST(N'2022-03-19T00:00:00' AS SmallDateTime), N'PR')
GO
INSERT [dbo].[DataNacional] ([idNacional], [anoMundial], [idModalidade], [iniCompeticao], [terminoCompeticao], [localCompeticao]) VALUES (43, 2021, N'53', CAST(N'2022-01-31T00:00:00' AS SmallDateTime), CAST(N'2022-02-05T00:00:00' AS SmallDateTime), N'BA')
GO
INSERT [dbo].[DataNacional] ([idNacional], [anoMundial], [idModalidade], [iniCompeticao], [terminoCompeticao], [localCompeticao]) VALUES (44, 2021, N'54', CAST(N'2022-01-24T00:00:00' AS SmallDateTime), CAST(N'2022-01-29T00:00:00' AS SmallDateTime), N'AL')
GO
INSERT [dbo].[DataNacional] ([idNacional], [anoMundial], [idModalidade], [iniCompeticao], [terminoCompeticao], [localCompeticao]) VALUES (45, 2021, N'57', CAST(N'2022-02-07T00:00:00' AS SmallDateTime), CAST(N'2022-03-12T00:00:00' AS SmallDateTime), N'SP CPS')
GO
INSERT [dbo].[DataNacional] ([idNacional], [anoMundial], [idModalidade], [iniCompeticao], [terminoCompeticao], [localCompeticao]) VALUES (46, 2021, N'58', CAST(N'2022-02-07T00:00:00' AS SmallDateTime), CAST(N'2022-03-12T00:00:00' AS SmallDateTime), N'SP CPS')
GO
INSERT [dbo].[DataNacional] ([idNacional], [anoMundial], [idModalidade], [iniCompeticao], [terminoCompeticao], [localCompeticao]) VALUES (47, 2021, N'59', CAST(N'2022-02-07T00:00:00' AS SmallDateTime), CAST(N'2022-03-12T00:00:00' AS SmallDateTime), N'SP CPS')
GO
INSERT [dbo].[DataNacional] ([idNacional], [anoMundial], [idModalidade], [iniCompeticao], [terminoCompeticao], [localCompeticao]) VALUES (48, 2021, N'60', CAST(N'2022-02-07T00:00:00' AS SmallDateTime), CAST(N'2022-03-12T00:00:00' AS SmallDateTime), N'SP PBA')
GO
INSERT [dbo].[DataNacional] ([idNacional], [anoMundial], [idModalidade], [iniCompeticao], [terminoCompeticao], [localCompeticao]) VALUES (49, 2021, N'61', CAST(N'2022-01-31T00:00:00' AS SmallDateTime), CAST(N'2022-02-05T00:00:00' AS SmallDateTime), N'PA')
GO
INSERT [dbo].[DataNacional] ([idNacional], [anoMundial], [idModalidade], [iniCompeticao], [terminoCompeticao], [localCompeticao]) VALUES (50, 2021, N'62', CAST(N'2022-02-07T00:00:00' AS SmallDateTime), CAST(N'2022-03-12T00:00:00' AS SmallDateTime), N'SP PBA')
GO
INSERT [dbo].[DataNacional] ([idNacional], [anoMundial], [idModalidade], [iniCompeticao], [terminoCompeticao], [localCompeticao]) VALUES (51, 2021, N'63', CAST(N'2022-02-07T00:00:00' AS SmallDateTime), CAST(N'2022-03-12T00:00:00' AS SmallDateTime), N'SP CPS')
GO
SET IDENTITY_INSERT [dbo].[DataNacional] OFF
GO
INSERT [dbo].[Estados] ([Sigla], [Estado]) VALUES (N'AL', N'Alagoas')
GO
INSERT [dbo].[Estados] ([Sigla], [Estado]) VALUES (N'AM', N'Amazonas')
GO
INSERT [dbo].[Estados] ([Sigla], [Estado]) VALUES (N'AP', N'Amapá')
GO
INSERT [dbo].[Estados] ([Sigla], [Estado]) VALUES (N'BA', N'Bahia')
GO
INSERT [dbo].[Estados] ([Sigla], [Estado]) VALUES (N'CE', N'Ceará')
GO
INSERT [dbo].[Estados] ([Sigla], [Estado]) VALUES (N'DF', N'Distrito Federal')
GO
INSERT [dbo].[Estados] ([Sigla], [Estado]) VALUES (N'ES', N'Espírito Santo')
GO
INSERT [dbo].[Estados] ([Sigla], [Estado]) VALUES (N'GO', N'Goiás')
GO
INSERT [dbo].[Estados] ([Sigla], [Estado]) VALUES (N'MA', N'Maranhão')
GO
INSERT [dbo].[Estados] ([Sigla], [Estado]) VALUES (N'MG', N'Minas Gerais')
GO
INSERT [dbo].[Estados] ([Sigla], [Estado]) VALUES (N'MS', N'Mato Grosso do Sul')
GO
INSERT [dbo].[Estados] ([Sigla], [Estado]) VALUES (N'MT', N'Mato Grosso')
GO
INSERT [dbo].[Estados] ([Sigla], [Estado]) VALUES (N'PA', N'Pará')
GO
INSERT [dbo].[Estados] ([Sigla], [Estado]) VALUES (N'PB', N'Paraíba')
GO
INSERT [dbo].[Estados] ([Sigla], [Estado]) VALUES (N'PE', N'Pernambuco')
GO
INSERT [dbo].[Estados] ([Sigla], [Estado]) VALUES (N'PI', N'Piauí')
GO
INSERT [dbo].[Estados] ([Sigla], [Estado]) VALUES (N'PR', N'Paraná')
GO
INSERT [dbo].[Estados] ([Sigla], [Estado]) VALUES (N'RJ', N'Rio de Janeiro')
GO
INSERT [dbo].[Estados] ([Sigla], [Estado]) VALUES (N'RN', N'Rio Grande do Norte')
GO
INSERT [dbo].[Estados] ([Sigla], [Estado]) VALUES (N'RO', N'Rondônia')
GO
INSERT [dbo].[Estados] ([Sigla], [Estado]) VALUES (N'RR', N'Roraima')
GO
INSERT [dbo].[Estados] ([Sigla], [Estado]) VALUES (N'RS', N'Rio Grande do Sul')
GO
INSERT [dbo].[Estados] ([Sigla], [Estado]) VALUES (N'SC', N'Santa Catarina')
GO
INSERT [dbo].[Estados] ([Sigla], [Estado]) VALUES (N'SE', N'Sergipe')
GO
INSERT [dbo].[Estados] ([Sigla], [Estado]) VALUES (N'SP', N'São Paulo')
GO
INSERT [dbo].[Estados] ([Sigla], [Estado]) VALUES (N'TO', N'Tocantins')
GO
SET IDENTITY_INSERT [dbo].[LogAcesso] ON 
GO
INSERT [dbo].[LogAcesso] ([idlog], [idusuario], [dataHoraAcesso], [DataHoraSaida]) VALUES (1, 1, CAST(N'2021-02-01T11:02:00.000' AS DateTime), CAST(N'2021-02-01T12:05:00.000' AS DateTime))
GO
INSERT [dbo].[LogAcesso] ([idlog], [idusuario], [dataHoraAcesso], [DataHoraSaida]) VALUES (2, 1, CAST(N'2021-03-01T13:02:00.000' AS DateTime), CAST(N'2021-02-01T11:02:00.000' AS DateTime))
GO
INSERT [dbo].[LogAcesso] ([idlog], [idusuario], [dataHoraAcesso], [DataHoraSaida]) VALUES (3, 1, CAST(N'2021-04-01T15:05:00.000' AS DateTime), CAST(N'2021-04-01T15:35:00.000' AS DateTime))
GO
INSERT [dbo].[LogAcesso] ([idlog], [idusuario], [dataHoraAcesso], [DataHoraSaida]) VALUES (4, 1, CAST(N'2021-04-01T11:10:00.000' AS DateTime), CAST(N'2021-04-01T11:10:00.000' AS DateTime))
GO
INSERT [dbo].[LogAcesso] ([idlog], [idusuario], [dataHoraAcesso], [DataHoraSaida]) VALUES (5, 2, CAST(N'2021-02-01T11:15:00.000' AS DateTime), CAST(N'2021-02-01T13:15:00.000' AS DateTime))
GO
INSERT [dbo].[LogAcesso] ([idlog], [idusuario], [dataHoraAcesso], [DataHoraSaida]) VALUES (6, 3, CAST(N'2021-02-01T11:02:00.000' AS DateTime), CAST(N'2021-02-01T11:22:00.000' AS DateTime))
GO
INSERT [dbo].[LogAcesso] ([idlog], [idusuario], [dataHoraAcesso], [DataHoraSaida]) VALUES (7, 4, CAST(N'2021-02-01T11:02:00.000' AS DateTime), CAST(N'2021-02-01T19:02:00.000' AS DateTime))
GO
INSERT [dbo].[LogAcesso] ([idlog], [idusuario], [dataHoraAcesso], [DataHoraSaida]) VALUES (8, 2, CAST(N'2021-03-01T11:02:00.000' AS DateTime), CAST(N'2021-03-01T21:02:00.000' AS DateTime))
GO
INSERT [dbo].[LogAcesso] ([idlog], [idusuario], [dataHoraAcesso], [DataHoraSaida]) VALUES (9, 3, CAST(N'2021-03-01T11:02:00.000' AS DateTime), CAST(N'2021-03-01T17:12:00.000' AS DateTime))
GO
INSERT [dbo].[LogAcesso] ([idlog], [idusuario], [dataHoraAcesso], [DataHoraSaida]) VALUES (10, 1, CAST(N'2021-05-01T11:02:00.000' AS DateTime), CAST(N'2021-05-01T14:02:00.000' AS DateTime))
GO
INSERT [dbo].[LogAcesso] ([idlog], [idusuario], [dataHoraAcesso], [DataHoraSaida]) VALUES (11, 1, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[LogAcesso] OFF
GO
INSERT [dbo].[Modalidade] ([idModalidade], [nomeModalidade], [descModalidade]) VALUES (N'01', N'Manutenção Industrial', N'Técnicos de Polimecânica realizam trabalhos técnicos em plantas de produção. Profissionais como
Mecânicos e Mecânicos de Manutenção podem ser incluídos na indústria de Polimecânica. Usando
ferramentas de usinagem, pessoas qualificadas em Polimecânica podem produzir e instalar peças para
máquinas e equipamentos de produção.
A profissão requer habilidades em lógica e controle de automação e relacionados a trabalhos elétricos e
circuitos básicos. Como a automação envolve frequentemente componentes pneumáticos, também é
necessária uma compreensão básica de tecnologias.
A ocupação de Polimecânica abrange elementos de instalação elétrica, engenharia mecânica, hidráulica
e pneumática, assim como montagem mecânica e manutenção. Existe uma vasta gama de ocupação
técnica necessária. O profissional provavelmente precisará produzir peças para máquinas de produção e
instalar essas peças.
Muitas vezes, o papel envolve resolução de problemas, identificando problemas durante a instalação ou
remediação de problemas com a planta estabelecida.
O profissional trabalhará em uma grande variedade de ambientes industriais e plantas de produção e
pode ter conhecimento especializado sobre um determinado setor ou pode funcionar de forma mais
geral. Além disso, o profissional pode ser utilizado dentro de uma fábrica, instalando e fazendo
manutenção de equipamentos de produção ou pode trabalhar para um subcontratado que trabalhará em
uma série de ambientes industriais.
O profissional precisa de uma aguda consciência das implicações financeiramente e para a reputação do
negócio, de atrasos na produção, devido a problemas de confiabilidade na linha de produção. Eles
precisarão, portanto, trabalhar de uma maneira lógica e não deixar de atender restrições de tempo. Eles
também precisarão ser capazes de fornecer aconselhamento e orientação sobre questões técnicas de
produção e fornecer soluções inovadoras e de baixo custo para problemas de produção.
O ambiente de trabalho é suscetível de ser potencialmente muito perigoso e arriscado. Por isso, o
profissional precisa proativamente promover as melhores práticas de saúde e segurança e rigorosamente
cumprir com a legislação de saúde e segurança.')
GO
INSERT [dbo].[Modalidade] ([idModalidade], [nomeModalidade], [descModalidade]) VALUES (N'02', N'Redes de Cabeamento Estruturado', N'Um cabo é o meio pelo qual a informação normalmente se move de
um dispositivo de rede para outro. Existem vários tipos que são
comumente usados em infraestrutura de rede. Em alguns casos, uma
rede utilizará apenas um tipo de cabo, enquanto outras redes usarão
uma variedade de outros tipos. O tipo de cabo escolhido para uma rede
está relacionado à topologia, ao protocolo e ao tamanho da rede.
Compreender as características de diferentes tipos de cabos e
como eles se relacionam com outros aspectos de uma rede é necessário
para o desenvolvimento de uma rede bem-sucedida e eficaz.
O técnico de cabeamento de rede constrói a infraestrutura de
todas as redes de telecomunicações, como as redes de área ampla
(WAN), as redes de área local (LAN) e redes de TV a cabo (CATV). Este
trabalho é altamente técnico e requer conhecimentos especializados
detalhados para design e instalação independentes de redes que
atendam às necessidades dos clientes e estão em conformidade com
padrões reconhecidos pelo padrão da indústria. O técnico criará a parte
física da rede, realizará instalação de cabos apropriados para o uso
pretendido, fará manutenção, teste e comissionamento de rede.
O técnico / instalador pode trabalhar para uma empresa de
telecomunicações ou de rede de comunicações. O técnico instalará
cabeamento de rede para empresas grandes e pequenas ou para
usuários domésticos, para serviços como TV a cabo, telefone e
instalações de banda larga.
As redes de comunicações são cruciais para a eficiência das
empresas e do comércio. A falha na rede pode resultar em perda de 
tempo e perda de receita. Redes de comunicação robustas e confiáveis
são, portanto, críticas para o sucesso comercial.')
GO
INSERT [dbo].[Modalidade] ([idModalidade], [nomeModalidade], [descModalidade]) VALUES (N'03', N'Manufatura Integrada', N'Os profissionais que atuam na ocupação de Manufatura Integrada concebem, projetam, constroem,
testam, ajustam e demonstram o funcionamento de protótipos que atendam a um conjunto de
requisitos previamente estabelecidos, gerando os registros necessários e primando pela utilização
racional dos recursos empregados, qualidade dos serviços executados, segurança das pessoas
envolvidas e preservação ambiental.
A competição nesta ocupação ocorre entre equipes de três participantes, nas quais profissionais de
especialidades distintas trabalham em conjunto, cooperando entre si, tendo em vista o alcance de
objetivos comuns. Estes profissionais projetam, desenvolvem e realizam a montagem de sistemas
mecânicos e eletroeletrônicos, empregando técnicas fundamentais da gestão de produção. Para o
desenvolvimento destas atividades, as equipes competidoras realizam pesquisas, empregam
recursos computacionais, tais como softwares de CAD/CAM, editores de texto e planilhas
eletrônicas, executam projetos de eletroeletrônica e mecânica em bancada, em máquinas
convencionais, em máquinas CNC e impressão 3D.
O profissional dessa área trabalha em conformidade com as normas e procedimentos técnicos de
qualidade, de segurança, de higiene, de saúde e de preservação ambiental. ')
GO
INSERT [dbo].[Modalidade] ([idModalidade], [nomeModalidade], [descModalidade]) VALUES (N'04', N'Mecatrônica', N'A mecatrônica combina habilidades em mecânica, pneumática, hidráulica, eletrônica, tecnologia
de computadores, tecnologia de digitalização da produção (IoT industrial: RFID, NFC,
comunicação sem fio, PLC web-server, Segurança Cibernética, Sistemas de Visão, realidade
aumentada, etc), robótica e desenvolvimento de sistemas. O elemento de tecnologia de
computador abrange a programação de CLP´s, robôs e outros sistemas de manipulação e
aplicativos de tecnologia da informação, sistemas de controle de máquinas programáveis e
tecnologia que permitem a comunicação entre máquinas, equipamentos e pessoas.
Os técnicos de mecatrônica projetam, constroem, comissionam, mantêm, reparam e ajustam
equipamentos industriais automatizados, além de programar sistemas de controle de
equipamentos e interfaces entre máquinas e pessoas (IHM). Eles também são capazes de lidar
com fluídos na área de aplicação industrial. Técnicos destacados em mecatrônica conseguem
atender a uma vasta gama de necessidades na indústria. Eles realizam a manutenção mecânica e
a montagem de equipamentos. Eles também lidam com equipamentos para a coleta de
informações, componentes (sensores) e unidades reguladoras.
As aplicações industriais incluem linhas de produção e processo automatizadas que incluem
montagem, embalagem, enchimento, rotulagem e teste, bem como sistemas automatizados de
distribuição e sistemas de logística.')
GO
INSERT [dbo].[Modalidade] ([idModalidade], [nomeModalidade], [descModalidade]) VALUES (N'05', N'Desenho Mecânico Em CAD', N'Projeto assistido por computador é o uso de software para auxiliar na criação, modificação, análise ou
otimização de um projeto de engenharia. O software CAD é usado para aumentar a produtividade do
projetista, melhorar a qualidade do projeto, melhorar a comunicação por meio de documentação e criar
um banco de dados para a fabricação. A saída CAD é muitas vezes sob a forma de arquivos eletrônicos para
impressão, fabricação ou outros processos de fabricação.
Os desenhos técnicos e de engenharia, assim como imagens, devem transmitir informações, tais como
materiais, processos, dimensões e tolerâncias de acordo com as convenções específicas em sua aplicação.
O CAD pode ser utilizado para projetar curvas e esboços no espaço bidimensional (2D) ou curvas,
superfícies e sólidos no espaço tridimensional (3D). O CAD também é usado para produzir animação por
computador para os efeitos especiais usados em, por exemplo, publicidade e manuais técnicos.
O CAD é uma arte industrial importante e é a forma como os projetos se tornam realidade. É amplamente
utilizado em muitas aplicações, incluindo no setor automotivo, construção naval e indústrias aeroespaciais
e em projetos industriais. O processo e as saídas de CAD são essenciais para soluções de sucesso em
problemas de engenharia e manufatura.
O Software CAD nos ajuda a explorar ideias, visualizar conceitos através de renderizações realistas e
filmes, assim como em simulações de como o projeto será realizado no mundo real.
')
GO
INSERT [dbo].[Modalidade] ([idModalidade], [nomeModalidade], [descModalidade]) VALUES (N'06', N'Tornearia CNC', N'A tornearia CNC é um ramo da engenharia. Os engenheiros têm de encontrar soluções mecânicas que possam executar peças com desenhos possíveis e complexos. Dentro de uma montagem que você pode ver e usar todos os dias, cada peça interage com todo. Podemos observar isso em carros, Smartphones, aviões e assim por diante; as possibilidades são infinitas. Por exemplo, existem certa de 10.000 peças em apenas um carro. Engenheiros criar montagens de muitas peças, e utilizando diversos materiais, por meio de CAD (computer Assisted Desenho) software. Cada parte de uma montagem é feita de materiais diferentes, e precisa de diferentes geometrias, dimensões e qualidades de superfície. O engenheiro traz todos esses requisitos em desenhos técnicos que são chamados “projetos”. Mas quem vai construir essas peças? Para responder a essa pergunta, temos que decidir a melhor maneira de produzir cada peça e parte do todo. Há muitas maneiras de fazer isso, como soldagem, usinagem, fundição, e Impressão 3D. Um método muito importante é o Torneamento.
A Torno CNC é uma máquina na qual o material gira em torno de um eixo em alta velocidade, e se o corte ferramentas acionadas pelo software de computador são movidos para cortar material em excesso para obter a parte esperada. O Torneiro CNC recebe o desenho. Em seguida, ele / ela usa o torno de muitas maneiras de encontrar soluções a fim de construir a parte. Estas máquinas são muito caras, porque eles podem fazer coisas notáveis. Para se ter uma ideia disso, acho que o que isso significa para conseguir precisão abaixo dez mícrons, que é seis vezes mais fino do que um cabelo humano.
O torneiro CNC tem que usar um computador para contar o Torno como mover as ferramentas e cortar a parte. Ele / ela também tem de configurar o torno com todas as ferramentas de corte. Estas ferramentas podem cortar quase todos os materiais (aço inoxidável, plástico, aço macio, alumínio, bronze, e assim por diante), mas temos que escolher bem. Também escolher o método de fixação. Este é o local onde o material será realizada firme.
Quando o aparelho começa material de corte, o Torneiro CNC garante que as dimensões se encaixam exatamente as especificações Desenho. Para isso, ferramentas de inspeção muito precisas são usadas. Um maquinista inteligente vai conseguir o papel para ajustar as especificações desenhos na primeira tentativa.
A peça acabada e qualidade controlada é enviada para a linha de montagem com todas as outras partes, e, no final, se toda a gente tem feito bem o seu trabalho, a montagem final irá atender às expectativas e agradar seus clientes.
')
GO
INSERT [dbo].[Modalidade] ([idModalidade], [nomeModalidade], [descModalidade]) VALUES (N'07', N'Fresagem CNC', N'A tecnologia de Controle Numérico Computadorizado (CNC) atingiu a fase de ter se tornado onipresente.
A maioria das pessoas não pode imaginar o quão importante são essas tecnologias em suas vidas. Não há
nada que usamos que não utilizou em sua fabricação a tecnologia CNC. Ela está presente em produtos e
objetos da vida cotidiana, como por exemplo, carros, aviões, componentes de máquinas de todos os tipos,
moldes para ferramentas usadas para máquinas de uso doméstico, próteses médicas, telefones celulares e
brinquedos etc.
Fresadoras CNC são máquinas-ferramentas que são utilizadas para dar forma a metal e outros materiais
sólidos. Estas máquinas existem em duas formas básicas: horizontais e verticais. Isto se refere à orientação
do eixo da ferramenta de corte. As primeiras fresadoras foram manual ou mecanicamente automatizadas,
mas os avanços tecnológicos têm levado ao desenvolvimento de Controle Numérico Computadorizado,
tais como centro de usinagem CNC. CNC se refere a um computador ("controle") que lê e armazena
instruções. Esta informação numérica, geralmente códigos “G e M” (uma linguagem de programação) é
então utilizada para controlar e acionar uma máquina-ferramenta, um dispositivo mecânico motorizado
(”centro de usinagem"). Um centro de processamento é utilizado para fabricar componentes usando
ferramentas de corte para remoção de material.
A tecnologia CNC inclui ferramentas de usinagem, como tornos, fusos multieixos, máquinas de descarga
elétrica de rosca e máquinas de fresagem, onde as funções antes executadas por operadores humanos são
agora desempenhadas por um módulo de controle computacional. Os profissionais associados a esta
ocupação utilizam máquinas CNC (3 Eixos, 4-5 Eixos ou Máquinas Multieixo) para cortar e moldar produtos
com precisão, como mencionado acima.
Para formar a peça acabada, o processo de corte pode ser iniciado a partir de um bloco sólido, peça préusinada, fundida ou forjada. Para esses cenários, a ocupação requer o operador de fresagem CNC para ler e
interpretar desenhos técnicos e especificações complexas e trabalhar com um alto grau de precisão e
detalhe; ser proficiente em ocupações de trabalho de metal e entender como os metais reagem a diversos
processos; ser um operador de computador qualificado, a fim de usar software para setores específicos; ser
operador de máquina altamente qualificado.
Um programa é necessário para operar a máquina-ferramenta, pode ser gerado manualmente ou usando
um software de Desenho Assistido por Computador / Fabricação Assistida por Computador (CAD/CAM).
Para alcançar a peça acabada os profissionais operadores de fresagem CNC realizam uma sequência de
atividades essenciais:
 Interpretar desenhos de engenharia e seguir as especificações
 Gerar um processo e programa (plano de processo lógico) com um sistema de CAD/CAM e/ou códigos
G e M
 Configurar as ferramentas, o dispositivo de suporte de trabalho e a peça de trabalho no centro de
fresagem CNC
 Manipular as condições de corte, com base nas propriedades do material e ferramentas utilizadas
 Operar, inspecionar e manter a precisão das dimensões dentro das tolerâncias especificadas
Otimizar o processo, tendo em conta o tipo de produção: grandes quantidades de um lado, pequenos lotes
ou itens isolados.
WSC2015_TD07_EN
Data: 05.06.17 – v6.3
© WorldSkills International. Todos os direitos reservados
FRESAGEM CNC 4 de 28
Hoje uma ampla gama de indústrias exige profissionais operadores de fresagem CNC para programar,
operar e manter o funcionamento do centro de usinagem sofisticado de forma eficiente e confiável. As
grandes empresas, tais como fábricas de automóveis, médias empresas, tais como fabricação de moldes e
pequenas empresas na área de manutenção são alguns dos muitos exemplos de onde o profissional
operador de fresagem CNC desempenha um papel chave, fundamental para o sucesso das indústrias de
metalurgia.')
GO
INSERT [dbo].[Modalidade] ([idModalidade], [nomeModalidade], [descModalidade]) VALUES (N'09', N'Soluções de Software para Negócios', N'O ritmo acelerado da globalização na última década tem sido impulsionado em
grande parte pela evolução das tecnologias da informação e da comunicação (TIC). A
profissão da área de TI continuar crescendo e uma dessas área é a de Soluções de
Software para Negócios.
O desenvolvimento de soluções de software para melhorar a produtividade
empresarial engloba muitas habilidades e disciplinas diferentes. A chave para isso é
uma consciência da natureza em rápida mudança da indústria e da capacidade de
acompanhar as transformações.
Os profissionais da solução de software de TI sempre trabalham em estreita
colaboração com clientes para modificar sistemas existentes ou criar novos sistemas.
Eles podem modificar o software "off the shelf" e integrá-lo aos sistemas existentes.
Eles geralmente trabalham como parte de uma equipe de software de profissionais
responsáveis pela especificação de requisitos, análise de sistemas e design,
construção, teste, treinamento e implementação, bem como a manutenção de um
sistema de software empresarial.
As tarefas realizadas por profissionais de soluções de software de TI, inclui os
itens a seguir, mas não se limitam somente a estes:
 Revisar o sistema atual e apresentar idéias para melhorias, incluindo
análise de custo benefício.
 Analisar e especificar os requisitos do usuário
 Produzir especificações detalhadas para novos sistemas ou para
modificações em sistemas existentes
 Desenvolver sistemas de software e teste a solução de software
completamente.
 Preparar materiais de treinamento de usuários, treinar usuários e
apresentar a solução de software para usuários.
 Instalar, implementar e manter o sistema de software.
Os profissionais de soluções de software de TI podem ser empregados em
grandes, médias e pequenas empresas como engenheiros de software, em empresas
de consultoria como consultores e em fábricas de software.
Eles podem operar em uma ampla variedade de funções, incluindo em um papel
de desenvolvimento para adaptar - criar ou personalizar soluções, no papel de suporte
para operar sistemas, em um papel do analista de negócios para fornecer soluções
para simplificar e automatizar atividades rotineiras e de negócios, bem como em uma
função de treinamento para treinar os usuários usando o software aplicativo.')
GO
INSERT [dbo].[Modalidade] ([idModalidade], [nomeModalidade], [descModalidade]) VALUES (N'10', N'Soldagem', N'soldagem é um processo crítico que é controlada por ambos os padrões e especificações internacionais
nacional e para controlar a qualidade do metal de solda depositado e da habilidade do soldador.
Um soldador prepara e se junta a uma gama de metais e ligas metálicas utilizando principalmente os
processos em que um arco elétrico é a fonte de calor. Os processos de arco eléctricos utilizam um
escudo de gás ou um fluxo para proteger a área de solda fundida a partir de contaminação pela
atmosfera circundante. Um soldador precisa ser capaz de interpretar desenhos de engenharia,
normas e símbolos e corretamente traduzir esses requisitos em precisos e s t r u t u r a s e
fabricações.
soldadoresprecisa ter um conhecimento profundo e compreensão das práticas de trabalho seguro,
equipamentos de proteção individual e os perigos e as práticas associadas com as indústrias de
soldagem e fabricação. Eles precisam adquirir conhecimento específico de uma ampla gama de
equipamentos e processos de soldagem, bem como uma compreensão de como a soldagem irá
afectar a estrutura do material que está sendo bem soldada. Eles precisam estar familiarizados com a
eletricidade e como ele é utilizado para a soldagem.
soldadores juntar secções, tubo e placa e fabricar recipientes sob pressão grandes e pequenas. Um
soldador prepara, monta e junta-se uma grande variedade de metais e de ligas metálicas, utilizando vários
processos de soldadura incluindo soldadura manual do arco de metal / blindado arco de metal de
soldadura com gás de arco de metal de soldadura blindado soldadura / gás de metal de arco, de soldadura
com gás de arco de tungsténio protegido soldadura / gás tungsténio arco e fluxado solda a arco. Um
soldador usará principalmente processos em que o calor utilizado para a soldadura irá ser um arco
eléctrico para aderir uma variedade de materiais incluindo os materiais normalmente unidas e fabricadas -
aço carbono, aços inoxidáveis, alumínio e cobre e suas ligas associados. Eles devem ser capazes de
selecionar o equipamento correto, variáveis de processo e técnica de soldagem, dependendo do material a
ser unidas.
soldadores pode usar processos de corte térmico e deve ser capaz de identificar a preparação
correcta para unir, tal como aplicado para o tipo, a espessura e o uso pretendido da junta. Eles usam
moagem e equipamentos de corte para preparar as juntas soldadas. Os métodos modernos de
adesão, bem como os notados acima, incluem processos mecanizados, como arco submerso, arco de
plasma, soldadura e soldadura a laser.
Um soldador pode trabalhar em uma unidade ou uma fábrica que produz fabricações e / ou estruturas
para indústrias tão diversas como engenharia civil, engenharia mecânica, transporte, engenharia naval,
construção, serviços e indústrias de lazer. Soldadores também trabalham na preparação do local,
construção e à reparação e manutenção de estruturas. Um soldador pode trabalhar em muitos locais e
situações, que vão desde um banco em uma fábrica, para estaleiros, centrais eléctricas e estruturas offshore. Soldadores também trabalham em engenharia, construção, geração de energia, e instalações
petroquímicas. O ambiente de trabalho pode incluir ambientes perigosos, tais como off shore, condições
meteorológicas extremas e espaços confinados também onde o acesso à articulação a ser soldado é
restrito.
o soldador moderna podem se especializar em uma ou uma série de processos de soldagem e ambientes.
Ele ou ela também pode ser solicitado a trabalhar em ligas exóticas como duplex e super duplex aços
inoxidáveis e cupronickels. Soldadores são obrigados a realizar o melhor trabalho em que falhas e falhas
podem ter as mais graves consequências em termos de custo, segurança e danos ambientais.')
GO
INSERT [dbo].[Modalidade] ([idModalidade], [nomeModalidade], [descModalidade]) VALUES (N'11', N'Tecnologia de Mídia Impressa', N'O Técnico de mídia de impressão está envolvido em todos os aspectos do processo de impressão do
planejamento inicial e preparação, através da tiragem, verificando a qualidade consistente para a limpeza
após a tiragem está completa. O trabalho geralmente é produção em grande escala de materiais
impressos para uma variedade de clientes. Especificamente, a Tecnologia de Mídia de Impressão envolve a
produção de material impresso usando uma impressora offset folha a folha e outros equipamentos para
criar produtos finalizados e impressos para indústria comercial e de embalagens. Esta profissão é
responsável pela produção de todo o material impresso em uma operação de impressão.
O técnico geralmente trabalhará em empresas de impressão ou editoras e usará equipamentos
especializados complexos. Um conhecimento detalhado dos equipamentos e materiais utilizados é
vital para produzir produtos de alta qualidade que cumpram as especificações de forma econômica e
eficiente.
O Técnico de mídia de impressão requer um conhecimento profundo sobre manipulação, solução de
problemas e manutenção de fatores de impressão, como tinta, papel e equipamentos. Geralmente, a
produção do produto impresso usará um processo tradicional de tinta em papel, mas cada vez mais
técnicos utilizam tecnologias de impressão digital para corridas mais curtas e utilizam dados variáveis.
Os técnicos de mídia de impressão também precisam ser capazes de misturar cores de tinta
personalizadas e operar equipamentos de corte para produzir um trabalho de acordo com as
especificações de um cliente. Equipamentos de controle de qualidade como densitômetros e
espectrômetros fotográficos são usados para verificar e ajustar a qualidade de impressão.')
GO
INSERT [dbo].[Modalidade] ([idModalidade], [nomeModalidade], [descModalidade]) VALUES (N'12', N'Aplicação de Revestimentos Cerâmicos', N'Um ladrilhador geralmente trabalha em projetos comerciais e residenciais. Há uma
relação direta entre a natureza e a qualidade do produto requerido e o pagamento pelo
cliente. Assim sendo, o ladrilhador tem a responsabilidade contínua em trabalhar
profissionalmente para atingir os requisitos do cliente e, portanto, para manter e fazer
crescer o negócio. O revestimento cerâmico é associado intimamente com outras partes
da indústria de construção, e com os vários produtos que o amparam, normalmente para
propósitos industriais.
O ladrilhador trabalha internamente e externamente, incluindo nas casas dos clientes e
em áreas de construção, em todas condições climáticas e em pequenos ou grandes
projetos. O trabalho inclui o assentamento de azulejos cerâmicos, mosaico e pedras
naturais em paredes, pisos e escadas de casas, construções comerciais, industriais e
públicas, igrejas, piscinas, do lado de fora de instalações e faixadas para dar proteção, e
para fins decorativos. Também inclui a construção de pequenas paredes e degraus de
tijolos ou blocos.
O ladrilhador deverá interpretar desenhos, delimitar e medir, remover qualquer
cobertura existente, preparar superfícies, assentar azulejos no estilo desejado, rejuntar e
finalizar com alto nível. A organização do trabalho e gerenciamento pessoal, comunicação
e habilidades interpessoais, resolução de problemas, inovação e criatividade e trabalho
preciso são atributos universais de um ladrilhador excepcional. Se o ladrilhador estiver
trabalhando sozinho (muitos são autônomos ou subempreiteiros) ou em equipes em
projetos grandes, o indivíduo tem um grande nível de autonomia e responsabilidade
individual. Ladrilhadores experientes também podem se especializar em uma área de
trabalho, tais como mosaicos, e podem trabalhar para empresas especializadas em
ladrilhar se especializando, por exemplo, em trabalhos artísticos ou em piscinas de
competição.
Desde trabalhar de forma segura e organizada até um excepcional planejamento,
concentração, precisão, exatidão e atenção aos detalhes para alcançar um acabamento
excelente, todo passo do processo importa. Erros são amplamente irreversíveis e podem
ser muitos caros.
Com a mobilidade internacional de pessoas, o ladrilhador enfrenta oportunidades e
desafios em rápida expansão. Para ladrilhadores talentosos há muitas oportunidades
comerciais e internacionais; entretanto, esses carregam consigo a necessidade de
compreender e trabalhar com diversas culturas e tendências. A diversidade de ocupações
associadas com ladrilhadores é, portanto, provável que expanda. ')
GO
INSERT [dbo].[Modalidade] ([idModalidade], [nomeModalidade], [descModalidade]) VALUES (N'13', N'Funilaria Automotiva', N'Reparadores de carroceria realinham a estrutura e os painéis de veículos leves e pesados depois de
passarem por colisões. Isto muitas vezes pode ser um processo complexo uma vez que cada colisão vai
apresentar diferentes graus e direções de danos. O veículo reparado deve estar em conformidade com as
especificações rigorosas previstas pelo fabricante do veículo e deve satisfazer suas tolerâncias e suas
especificações de segurança. Um reparador de carroceria precisa ser familiarizado com os componentes
mecânicos e suas funções, bem como com os sistemas de retenção de segurança específicos e muitas vezes
complexos (SRS) instalados em veículos modernos. O reparador de carroceria devolve o veículo em uma
condição em que ele está pronto para a pintura por um pintor de automóveis.
Um reparador de carroceria trabalha em uma oficina especializada dedicada à reparação e está equipado
com maquinário e equipamento adequado para reparar uma grande variedade de veículos de passageiros
modernos.
O trabalho de um reparador de carroceria é frequentemente dividido entre danos de colisão maiores e
menores. No entanto, as habilidades em ambas as áreas podem muitas vezes ser usadas no mesmo veículo.
Em um reparo de grande colisão, o reparador de carroceria irá montar o veículo sobre uma plataforma de
alinhamento com os quais ele ou ela pode diagnosticar a direção e extensão do desalinhamento com a
estrutura do carro. Ele ou ela, então, anexa o equipamento hidráulico de estiramento junto a carroceria e
usa essa força de puxar para reverter a força do dano.
Após o desalinhamento ser diagnosticado na estrutura, o reparador terá normalmente que remover
elementos estruturais e não estruturais danificados que são substituídos com novas seções ou seções de
peça usando vários processos de soldagem e/ou rebites e colagem. Para uma pequena colisão, um
reparador de carroceria pode substituir ou reparar os painéis não estruturais a uma condição adequada
para pintura.
Reparadores devem ser capazes de usar plataforma de alinhamento de carrocerias com sistema de
medição associados (suporte universal e fixo) como meio de avaliar a extensão dos danos e restabelecer a
estrutura de suas especificações originais. Um reparador de carroceria deve ser um soldador habilidoso que
é capaz de soldar uma variedade de metais, como aço de baixo carbono, aços de alta resistência ou ligas
de alumínio através da solda MIG/MAG, e solda a ponto por resistência.
Ele ou ela deve ser capaz de selecionar os materiais de consumo corretos para o metal a ser soldado e
ajustar a máquina para proporcionar uma solda eficiente de alta qualidade. Em algumas circunstâncias os
painéis da carroçaria podem ser substituídos usando colagem e equipamentos de rebitagem. O reparador
deve ser capaz de preparar, ajustar e utilizar este equipamento efetivamente seguindo as especificações
dos fabricantes para restabelecer painéis danificados.
Reparadores de carroceria devem ser capazes de remover seções danificadas sem danificar as partes que
não serão substituídas e voltar a montar/realinhar as partes para restabelecer a integridade da estrutura.
Estas peças ou painéis podem ser soldados, colados, aparafusados ou rebitados.
Para danos menores que não requerem a substituição de uma parte ou do painel, um reparador de
carroceria usará uma variedade de ferramentas de reparo para remover os danos e restabelecer os
contornos originais do painel. Estes podem envolver uma série de martelos, limas de funileiro, alavancas e
tassos (blocos de aço). ')
GO
INSERT [dbo].[Modalidade] ([idModalidade], [nomeModalidade], [descModalidade]) VALUES (N'14', N'Manutenção de Aeronaves', N'Um técnico de manutenção de aeronaves trabalha nos setores comercial e de serviço público,
realizando uma variedade de processos em produtos aeronáuticos. O técnico de manutenção de
aeronaves tem uma responsabilidade crítica de trabalhar profissionalmente para garantir a
segurança dos clientes e manter a reputação da equipe ou organização.
O técnico de manutenção de aeronaves normalmente trabalha em um hangar de aeronaves. No
entanto, há momentos em que é necessário trabalhar ao ar livre. Eles podem funcionar para
organizações grandes e pequenas e, ocasionalmente, diretamente para clientes individuais. Eles
realizarão diversos processos, incluindo inspeção, manutenção, modificação, solução de
problemas, remoção, instalação, ajustes, teste e reparo. Um técnico de manutenção de
aeronaves pode se especializar trabalhando em produtos aeronáuticos específicos, como
helicópteros e UAVs (Veículos Aeronáuticos Não Tripulados) e aeronaves de asa inclinada. Quer se
especializem, organizando trabalho, autogerenciamento, comunicação, habilidades interpessoais
e solução de problemas são todos os principais atributos exigidos por um técnico de manutenção.
Eles devem ter a capacidade de trabalhar com segurança e rigor, seguindo as regulamentações
do setor e as instruções dos fabricantes. Esses traços universais são a referência de um excelente
técnico de manutenção de aeronaves.
Em um mercado de trabalho móvel, o técnico de manutenção de aeronaves pode trabalhar em
equipe, sozinho ou em ambos, de tempos em tempos. Qualquer que seja a estrutura do trabalho,
o técnico treinado e experiente em manutenção de aeronaves assume um alto nível de
responsabilidade pessoal e autonomia. Desde a salvaguarda da segurança do cliente, passando
pela atenção escrupulosa ao trabalho seguro, até a realização de reparos complexos, todos os
processos e erros podem ser fatais. O técnico de manutenção da aeronave é uma das últimas
linhas de defesa para garantir a segurança da aeronave antes do voo.
Como parte de uma indústria global, o técnico de manutenção de aeronaves enfrenta
oportunidades e desafios em rápida expansão (incluindo a manutenção de drones e veículos
espaciais). Para o talentoso técnico de manutenção de aeronaves, existem muitas oportunidades
comerciais e internacionais; no entanto, elas trazem consigo a necessidade de entender e
trabalhar com diferentes regulamentações e avanços tecnológicos. Portanto, é provável que a
diversidade de habilidades associadas à manutenção de aeronaves se expanda.')
GO
INSERT [dbo].[Modalidade] ([idModalidade], [nomeModalidade], [descModalidade]) VALUES (N'15', N'Instalações Hidráulicas e de Aquecimento', N'Um técnico de encanamento e aquecimento trabalha em projetos comerciais, residenciais, agrícolas e
industriais. Existe uma relação direta entre a natureza e a qualidade do produto exigido e o pagamento feito
pelo cliente. Portanto, o profissional tem a responsabilidade contínua de trabalhar profissionalmente para
atender aos requisitos do cliente e, assim, manter e expandir os negócios. A canalização e o aquecimento
estão intimamente associados a outras partes da indústria da construção e aos muitos produtos que a
suportam, normalmente para fins comerciais.
O técnico de encanamento e aquecimento trabalha internamente e externamente, incluindo as residências
dos clientes e em pequenos e grandes projetos. Ele ou ela irá planejar e projetar, selecionar e instalar,
comissionar, descomissionar, testar, relatar, manter, localizar falhas e reparar sistemas de alto padrão. A
organização do trabalho e o autogerenciamento, a comunicação e as habilidades interpessoais, a resolução
de problemas, a flexibilidade e um profundo conhecimento são os atributos universais do proeminente
praticante.
Seja o técnico de encanamento e aquecimento trabalhando sozinho ou em equipe, o indivíduo assume um
alto nível de responsabilidade pessoal e de autonomia. Desde o trabalho para fornecer um serviço seguro e
confiável de encanamento e aquecimento, de acordo com padrões relevantes, até diagnósticos de defeitos e
comissionamento de sistemas e componentes de encanamento e aquecimento, precisão e atenção aos
detalhes em todas as etapas do processo são importantes. Irreversível, dispendiosa e potencialmente fatal
em caso de erros. Com a mobilidade internacional de pessoas, o técnico de encanamento e aquecimento
enfrenta oportunidades e desafios em rápida expansão. Para o praticante talentoso, há muitas oportunidades
comerciais e internacionais; no entanto, eles carregam consigo a necessidade de entender e trabalhar com
diversas necessidades, culturas e tendências. A diversidade de habilidades associadas ao encanamento e ao
aquecimento provavelmente aumentará.')
GO
INSERT [dbo].[Modalidade] ([idModalidade], [nomeModalidade], [descModalidade]) VALUES (N'16', N'Eletrônica', N'A indústria de eletrônicos é muito diversificada e evoluiu em diversas especialidades. Alguns
técnicos/engenheiros trabalharão com muitos aspectos da eletrônica, porém, é com a especialização e o
desenvolvimento técnico que esses engenheiros e técnicos aumentam suas chances de estarem sempre
empregados. As principais áreas de especialização que podem ser vistas como carreira propriamente dita
incluem a montagem e a fiação de produtos eletrônicos; o design de circuitos de protótipos de acordo
com especificações; a instalação e o comissionamento de equipamentos, incluindo suporte ao cliente;
serviços e manutenção que incluem tanto serviços locais quanto remotos; e monitoramento e teste de
acordo com as especificações e subconjuntos ou sistemas e aprovar a adequação para uso e os resultados
de simulação em computador.
Os técnicos/engenheiros em Eletrônica contam também com softwares para desenvolvimento de
diagramas elétricos e leiautes de PCI, para criar/verificar/simular diagramas e PCI. Esta ocupação tem
suas particularidades, e também envolve a criação de documentos de produção como: Lista de materiais,
arquivos Gerber e Excellon Drill, e outros arquivos de equipamentos automatizados.
Especialistas em eletrônica precisam trabalhar com uma grande variedade de indústrias, com suporte a
equipamentos específicos altamente técnicos. A maioria dos aspectos do dia-a-dia do mundo atual
dependem, ou usam diretamente, as tecnologias da eletrônica. Pode-se dizer que todas as tecnologias
utilizam Eletrônica de uma maneira ou outra.
Técnicos/engenheiros eletrônicos devem trabalhar com alto grau de exatidão e precisão. Conforme
especificações detalhadas e normas de qualidade internacionais, demonstrando vasta habilidade
técnica. Devido à constantes desenvolvimentos na tecnologia, os técnicos/engenheiros eletrônicos
precisam ser proativos em garantir que os seus conhecimentos e habilidades estejam atualizados
conforme os padrões da indústria.
Os técnicos/engenheiros eletrônicos poderão trabalhar diretamente com clientes e precisarão
demonstrar excelentes serviços ao cliente e habilidades de comunicação e trabalhar eficientemente com
cronogramas. Quando trabalhando com clientes, o técnico/engenheiro eletrônico poderá ter que
explicar elementos complexos de princípios eletrônicos para ajudar o cliente à usar o equipamento
corretamente. Geralmente a natureza do ambiente onde o do técnico/engenheiro eletrônico trabalha,
exige confidencialidade em relação a alta sensibilidade de informações comerciais e demonstrações de
integridade, honestidade e forte senso ético.
O especialista em eletrônica trabalhará com uma grande variedade de ferramentas, materiais e
equipamentos high-tech específicos. Cada vez mais, os computadores e os softwares especializados de
tecnologia da comunicação são incorporados ao trabalho. Além disso, as tarefas também exigirão a
utilização de ferramentas manuais para a montagem e manutenção de circuitos. A tecnologia sobre
superfície (SMT) é a tecnologia dominante.
Descritivo Técnico - Eletrônica Version: 4.0
© WorldSkills International 5 of 37
A indústria também depende de técnicos/engenheiros eletrônicos para implementar soluções de
software para atender aos requisitos de fabricação. Eles poderão realizar setup, configurar e calibrar
montagens automatizadas, circuitos, sistemas e processos.
A incorporação de microcontroladores em sistemas são a base para engenharia de sistemas embarcados
e é outra especialidade da eletrônica. O design de sistemas embarcados envolve a interface de MCU com
o mundo externo através de sensores/interfaces de comunicação. Isto também envolve a escrita de
softwares de qualidade para execução de tarefas.')
GO
INSERT [dbo].[Modalidade] ([idModalidade], [nomeModalidade], [descModalidade]) VALUES (N'17', N'Tecnologias Web', N'O desenvolvimento da Web engloba muitas habilidades e disciplinas diferentes na produção e
manutenção de sites. As habilidades necessárias para um desenvolvedor web são diversas,
muitas vezes até o ponto em que é difícil para um desenvolvedor se destacar em todos os
aspectos envolvidos. Como resultado, uma equipe pode cobrir o processo de design da Web, com
cada membro da equipe com seus próprios pontos fortes, especialidades e papeis no processo de
desenvolvimento.
As tecnologias da Web envolvem a implementação de soluções específicas que seguem as regras
e objetivos comerciais delineados pelo cliente. Os desenvolvedores da Web desenvolvem uma
relação profissional com seus clientes, interagindo com eles para desenvolver uma compreensão
profunda dos requisitos e convertê-los em uma especificação para o site. Forte design e
habilidades de comunicação, juntamente com técnicas de pesquisa e uma compreensão de
públicos-alvo, mercados e tendências, garantirão a satisfação inicial do cliente.
Tendo completado o planejamento e o design do site, o desenvolvedor da Web integra o site com
ferramentas e plataformas de terceiros. Durante o processo de desenvolvimento, o desenvolvedor
da Web implementa o design, usa suas habilidades de programação para criar funcionalidades
dinâmicas, testar e depurar o site usando uma variedade de dispositivos. A tendência atual é
também integrar o site com as mídias sociais para aproveitar as plataformas de marketing on-line
disponíveis.
Todas essas habilidades podem ser aplicadas igualmente ao re-design ou a atualização de um
site existente.
Um desenvolvedor da Web possui muitas oportunidades de emprego. Isso pode variar como ser
um freelancer independente, ou um empresário, para ser empregado por agências de publicidade
e empresas de desenvolvimento web, bem como muitos outros tipos diferentes de organizações.
As posições dos desenvolvedores da Web podem ser abrangentes ou se especializar em uma
área como design gráfico para a Web, design de interface de usuário, design de experiência de
usuário digital, desenvolvimento de front-end, desenvolvimento de back-end, desenvolvedor de
sistemas de gerenciamento de conteúdo, bem como gerenciamento de clientes e projetos. Seja
qual for o papel que um desenvolvedor da Web escolher para se especializar, eles precisarão ter
acesso a instalações de TIC (Tecnologias da Informação e Comunicação), bibliotecas de código
aberto e frameworks.
Os desenvolvedores da Web de alto desempenho podem ter habilidades gerais ou especializadas
relacionadas à web. Eles devem entender os valores artísticos, ter habilidades sólidas de design
da interface do usuário, habilidades de programação e assumir a responsabilidade pessoal por
estar constantemente na vanguarda das tendências e da tecnologia da web. Eles também devem
responder aos clientes e ter a capacidade de trabalhar em equipes e grupos estruturados e não
estruturados. Essas qualidades permitem que o desenvolvedor da Web contribua e aproveite este
aspecto de rápido desenvolvimento da tecnologia de comunicação moderna.
')
GO
INSERT [dbo].[Modalidade] ([idModalidade], [nomeModalidade], [descModalidade]) VALUES (N'18', N'Instalações Elétricas', N'Um eletricista trabalha em projetos comerciais, residenciais, agrícolas e industriais. Existe uma relação
direta entre a natureza e a qualidade do produto necessário e o pagamento efetuado pelo cliente.
Portanto, o eletricista tem uma responsabilidade contínua de trabalhar profissionalmente para atender aos
requisitos do cliente e, assim, manter e expandir os negócios. A instalação elétrica está intimamente
associada a outras partes da indústria da construção e aos muitos produtos que a suportam, normalmente
para fins comerciais.
O eletricista trabalha individualmente ou em equipes, nas residências dos clientes e em pequenos e grandes
projetos. Eles planejam e projetam, selecionam e instalam, comissionam, testam, relatam, mantêm,
detectam falhas e reparam sistemas com um alto padrão. Organização do trabalho e autogestão,
comunicação e habilidades interpessoais, resolução de problemas, flexibilidade e um profundo
conhecimento são os atributos universais do eletricista de destaque.
Com uma tecnologia em constante desenvolvimento, um eletricista enfrentará novos desafios, onde novos
sistemas serão necessários e novos métodos de trabalho deverão ser utilizados.
Quer o eletricista esteja trabalhando sozinho ou em equipe, o indivíduo assume um alto nível de
responsabilidade e autonomia pessoal. Do trabalho para fornecer um serviço de instalação e manutenção
elétrica seguro e confiável, de acordo com as normas relevantes, ao diagnóstico de defeitos, programação e
comissionamento de sistemas de automação residencial e predial, concentração, precisão, exatidão e
atenção aos detalhes em todas as etapas do processo questões e erros são em grande parte irreversíveis,
caros e potencialmente fatais.
Com a mobilidade nacional e internacional das pessoas, o eletricista enfrenta oportunidades e desafios em
rápida expansão. Para o eletricista talentoso, existem muitas oportunidades comerciais e internacionais. No
entanto, eles carregam consigo a necessidade de entender e trabalhar com diversas culturas e tendências.
Portanto, é provável que a diversidade de habilidades associadas às instalações elétricas se expanda.
Um eletricista também tem muitas oportunidades de carreira, incluindo avançar para cargos de liderança
ou gerenciais.
')
GO
INSERT [dbo].[Modalidade] ([idModalidade], [nomeModalidade], [descModalidade]) VALUES (N'19', N'Controle Industrial', N'A ocupação Controle Industrial abrange também, além das instalações elétricas industriais, componentes e sistemas
de automação industrial. O desenvolvimento das tecnologias de manufatura exige cada vez mais a integração entre
os campos industriais da eletricidade e a automação. Uma habilidade fundamental do competidor é solução de
problemas, identificando-os durante a instalação ou solucionando tais problemas como em uma indústria.
As exigências da ocupação incluem as aplicações básicas da eletricidade e automação industriais, como instalações
de materiais elétricos, dispositivos automatizados e instrumentos elétricos. Elaboração de circuitos de controle, força
e automação industrial. Programação e instalação de controladores lógicos programáveis, conversores de frequência,
sistema de partida suave, interface homem-máquina e redes industriais. Solução de defeitos em lógicas a relés e
projetos elétricos.
O Competidor trabalhará em uma grande variedade de ambientes industriais; podendo atuar com um conhecimento
especializado sobre um determinado setor ou poderá trabalhar de maneira mais geral. Além disso, o Competidor
poderá realizar dentro de uma fábrica, instalações e manutenções de equipamentos de produção.
O Competidor precisa estar ciente das implicações, tanto financeiramente quanto para a imagem da empresa, com
relação a atrasos na produção, como resultado de problemas oriundos na linha de produção. Portanto, precisarão
trabalhar de modo lógico, e atender às limitações de tempo. Eles também terão de prestar aconselhamento
especializado e orientação sobre ambas às questões técnicas de produção, acerca de inovação, e soluções de custos
eficazes conforme as exigências de problemas na produção. O ambiente de trabalho pode ser potencialmente muito
arriscado e perigoso. Por isso, o Competidor precisa promover de maneira proativa as melhores práticas de saúde e
de segurança no trabalho, e rigorosamente aderir às legislações de saúde e de segurança estabelecidas.')
GO
INSERT [dbo].[Modalidade] ([idModalidade], [nomeModalidade], [descModalidade]) VALUES (N'20', N'Construção em Alvenaria', N'Um construtor geralmente trabalha em projetos comerciais e residenciais. Eles são responsáveis pela
construção ou reparação de estruturas associadas de acordo com os planos de construção. Existe uma
relação direta entre a natureza e a qualidade do produto exigido e o pagamento feito pelo cliente.
Portanto, o construtor tem a responsabilidade contínua de trabalhar profissionalmente para atender
aos requisitos do cliente e, assim, manter e expandir os negócios. Isso inclui trabalhar em harmonia
com outros negócios para otimizar a eficiência e minimizar erros.
A alvenaria está intimamente associada a outras partes da indústria da construção e aos muitos produtos
que a suportam, normalmente para fins comerciais e residenciais.
A escala de trabalho pode variar de pequenos projetos a grandes projetos. O construtor trabalha interna e
externamente e em todas as condições meteorológicas. Ele ou ela interpretará os desenhos de construção,
realizará a definição e a medição e construirá um acabamento de alto padrão.
Os atributos universais de um pedreiro excelente são: organização de trabalho e autogestão, comunicação
e habilidades interpessoais, resolução de problemas, inovação e criatividade e trabalhar com exatidão. Se
o pedreiro está trabalhando sozinho ou em equipe, o indivíduo assume um elevado grau de
responsabilidade pessoal e de autonomia.
Trabalhar com segurança e de maneira organizada, com resiliência e resistência através de bom
planejamento e programação, concentração, precisão, exatidão e atenção aos detalhes, a fim de conseguir
um excelente acabamento. Cada etapa do processo é importante e os erros são irreversíveis e muito caros.
Com a mobilidade internacional de pessoas, o pedreiro enfrenta desafios e oportunidades de expansão
repentinas. Para o pedreiro talentoso, existem diversas oportunidades comerciais e internacionais; no
entanto, tais oportunidades exigem trabalho e compreensão de diversas culturas e tendências. Portanto, a
diversidade de ocupações associadas à alvenaria é suscetível a ser expandida.')
GO
INSERT [dbo].[Modalidade] ([idModalidade], [nomeModalidade], [descModalidade]) VALUES (N'21', N'Sistemas Drywall e Estucagem', N'O Profissional Qualificado pode atuar em trabalhos internos e externos de reboco e acabamento.
Muitos trabalhos modernos internos são completados usando o Sistema Drywall que envolvem as
paredes, criando estruturas de metal e instalando placas de gesso antes da aplicação na superfície
final. Essas construções podem ser complexas e incluem curvas e aberturas para portas e janelas. O
reboco tradicional envolve a preparação do fundo antes da aplicação da argamassa na superfície. O
gesseiro preparará materiais para uso e estará plenamente atento à legislação e orientações sobre a
preparação e uso de materiais. Além de rebocar superfícies planas, o profissional qualificado criará e
instalará molduras decorativas. Os gesseiros também serão necessários para fazer reparos.
O gesseiro pode trabalhar em grandes locais de construção residenciais, comercial ou industrial, em
instalações residenciais e comerciais somente ou em edifícios e patrimônio históricos. Muito
profissionais de Drywall são subcontratados para trabalhos em locais maiores, e, como tal, muitos
gesseiros serão trabalhadores autônomos, o que significa que eles devem assumir a responsabilidade
por regulamentos relacionados a impostos e outros ganhos.
É necessário um alto grau de precisão, cuidado e habilidade. A preparação para o trabalho em gesso
incluirá cálculos matemáticos complexos. O praticante precisa ser capaz de ler, interpretar e analisar
especificações complexas descrevendo o trabalho necessário e capaz de converter esses planos em
realidade.
Uma variedade de materiais pode ser usada de acordo com o local e o uso planejado do edifício
acabado. Alguns materiais podem ser prejudiciais, então sempre deve ser tomado cuidado para evitar
lesões ou danos no uso ou descarte de lixo.
Os engradados geralmente fazem parte de uma equipe, trabalhando de forma eficiente e efetiva com
outros artesãos especializados de forma lógica e bem planejada.')
GO
INSERT [dbo].[Modalidade] ([idModalidade], [nomeModalidade], [descModalidade]) VALUES (N'22', N'Pintura Decorativa', N'Um pintor e decorador trabalha nos setores comercial e público e é responsável pela aparência externa e
interna de um edifício e sua proteção contra a água, ferrugem, corrosão, mofo e infestação de insetos.
Existe uma relação direta entre a natureza e a qualidade. do serviço requerido e do pagamento feito pelo
cliente. Portanto, o pintor e decorador tem a responsabilidade contínua de trabalhar profissional e
interativamente com o cliente, a fim de dar satisfação e, assim, manter e crescer o negócio.
A pintura e a decoração estão intimamente associadas a outras partes da indústria da construção e aos
muitos produtos que a suportam. O pintor e decorador trabalha internamente e externamente em
ambientes muito diversos, por exemplo, em empresas, fábricas, escolas, hotéis, residências de clientes e
em locais de construção em todas as condições meteorológicas. Ele ou ela pode oferecer uma variedade
de serviços, incluindo a interpretação dos requisitos do cliente para o meio ambiente e a sustentabilidade
de materiais / desenhos, aconselhamento sobre projetos / cores, pintura, pulverização, revestimentos
decorativos, papel de parede, douramento e escrita de sinalização de alto padrão
Organização do trabalho e autogerenciamento, comunicação e habilidades interpessoais, resolução de
problemas, inovação, criatividade e capacidade de preparar superfícies cuidadosamente com cuidados
meticulosos, incluindo superfícies perigosas como chumbo e amianto. Estes são os atributos universais de
um pintor e decorador excepcional. Em um mercado de trabalho móvel, o pintor e o decorador podem
trabalhar em equipe, ou sozinhos, ou em ambos ao longo do tempo. Qualquer que seja a estrutura do
trabalho, o pintor e decorador treinado e experiente assume um alto nível de responsabilidade pessoal e
autonomia. A partir da determinação cuidadosa dos requisitos do cliente, trabalhando de forma segura e
excepcional, planejamento e programação excepcionais, precisão e atenção aos detalhes para a fina
douragem de objetos e acabamento de móveis, todo processo é importante e os erros são irreversíveis e
caros.
Com a mobilidade internacional das pessoas, o pintor e o decorador enfrentam oportunidades e desafios
em rápida expansão. Para o talentoso pintor e decorador, há muitas oportunidades comerciais e
internacionais; no entanto, eles levam consigo a necessidade de entender e trabalhar com diversas
culturas, tendências e modas. A diversidade de habilidades associadas à pintura e decoração deve,
portanto, se expandir.')
GO
INSERT [dbo].[Modalidade] ([idModalidade], [nomeModalidade], [descModalidade]) VALUES (N'23', N'Robótica Móvel', N'A Robótica Móvel é uma indústria em evolução rápida e baseada em soluções na qual o tecnólogo de robótica tem
um papel com cada vez mais importância e trabalho. A Robótica móvel é uma parte importante da indústria, com
aplicações em diversos setores, incluindo manufatura, agricultura, indústria aeroespacial, mineração e medicina.
Um tecnólogo de robótica trabalha em escritórios, fábricas ou laboratórios; ele ou ela cria, mantém, desenvolve
novas aplicações e realiza pesquisas para expandir o potencial dos robôs. O papel começa com um forte foco em um
problema de negócio específico, em um determinado setor. Por exemplo, na manufatura, pode haver uma
necessidade de aumentar a capacidade, através da criação de robôs para tarefas que possam ser automatizadas. Os
robôs móveis também podem ser criados para explorar áreas que são inacessíveis ou perigosas para os seres
humanos.
É necessária uma consulta cuidadosa e profunda junto ao cliente a fim de se obter uma especificação exata. A fase
de desenho segue e um protótipo é gerado. O robô é então programado e testado a fim de garantir um
desempenho alto e consistente. No coração de cada robô existe um engenheiro/técnico de robótica que pensa
sobre o que um robô precisa fazer e trabalha com várias disciplinas de engenharia para projetar e montar o
equipamento ideal, demonstrando um compromisso com a atenção aos detalhes. Neste caso, o engenheiro/técnico
de robótica utiliza tecnologias existentes para criar soluções aos novos desafios. Ele ou ela não está criando uma
tecnologia (robótica).
Os tecnólogos de robótica devem estar familiarizados com a lógica, microprocessadores e programação de
computadores para que possam projetar o robô ideal para cada aplicação. Eles também devem preparar
especificações para as capacidades do robô à medida que se relacionam com o ambiente de trabalho. Além disso,
os tecnólogos de robótica são responsáveis por um projeto econômico, cálculos de preço de custo e controle de
qualidade.
Diversas ocupações relacionadas com a organização de trabalho e autogestão fazem parte do papel do
engenheiro/técnico de robótica de alto desempenho. Excelente comunicação e habilidades interpessoais com uma
ênfase especial em trabalho em equipe são igualmente importantes. A capacidade de ser inovador e criativo na
resolução de desafios tecnológicos e gerar soluções também é essencial.
Trabalhar em todos os setores a nível internacional e ser capaz de transferir habilidades analíticas são
características do engenheiro/técnico de robótica, juntamente com o compromisso de desenvolvimento
profissional e especialista contínuos e uma determinação em resolver problemas através da experimentação e
tomada de riscos dentro de limites de autogestão. Em uma indústria cada vez mais global, que está "ganhando
novo terreno" e alterando a maneira como vivemos e trabalhamos, existem oportunidades significativas para
carreiras sustentáveis na engenharia robótica. As oportunidades incluem a necessidade de trabalhar com diversas
culturas, indústrias e tecnologias que estão em constante mudança. Portanto, a diversidade de habilidades
associadas à engenharia robótica deve continuar a expandir.')
GO
INSERT [dbo].[Modalidade] ([idModalidade], [nomeModalidade], [descModalidade]) VALUES (N'24', N'Movelaria', N'A Movelaria abrange a fabricação de móveis e artefatos, usando a madeira e derivados como material
único ou principal. Pode-se incluir o design de móveis, mas normalmente compreende a produção de
móveis e peças a partir de projetos pré estabelecidos. A movelaria difere de marcenaria devido à qualidade
da madeira e materiais associados utilizados, e a complexidade e qualidade estética dos itens finalizados.
Há, no entanto, alguns aspectos em comum entre a movelaria e a marcenaria.
Um técnico em movelaria trabalha geralmente em tarefas comerciais e residenciais de alta qualidade e
valor. Portanto, ele deve apresentar elevados padrões de competência e profissionalismo, a fim de fazer
jus às expectativas e disposição de pagamento por parte dos clientes. A maioria dos técnicos em movelaria
trabalha em pequenas empresas, as quais devem ser muito sensíveis à sua reputação e ao mercado, a fim
de manter a viabilidade de seus negócios.
O técnico em movelaria produz móveis e acessórios em uma oficina, pelo menos até a instalação e
montagem do mobiliário. No entanto, a fim de atender as necessidades dos clientes, incluindo itens que
contribuirão com a estética do ambiente nos quais serão colocados, ele deve conhecer intimamente onde
tais itens feitos sob medida serão colocados. Para itens produzidos especulativamente em vez de para
clientes conhecidos, o técnico em movelaria deverá ter uma visão clara dos tipos de localização e
configuração do mobiliário que valorizarão a exibição destes móbiliário, evidenciando o que ele têm de
melhor.
O técnico em movelaria irá produzir, interpretar e/ou adaptar desenhos, organizar, medir, cortar, fazer
juntas, montar, instalar, se necessário, e fazer acabamentos com um alto padrão. A qualidade do trabalho
se mostrará nos seguintes aspectos:
 Seleção da madeira e de outros materiais
 Utilização da madeira de modo a exibir as suas características particulares
 Técnicas de construção que permitem o movimento natural da madeira a fim de atingir a longevidade e
a qualidade da peça.
 Seleção de materiais adicionais, incluindo lâminas de madeira e acessórios
 Ajuste quase perfeito de cada peça seguindo a precisão da medição, corte e montagem
 Aparência final do móvel
Organização do trabalho e autogestão, habilidades interpessoais e de comunicação, resolução de
problemas, inovação e criatividade, trabalho preciso e correto são os atributos universais do técnico em
movelaria. Ele assume um elevado grau de responsabilidade pessoal e de autonomia. Desde a segurança
no trabalho até o planejamento e organização excepcionais, precisão, concentração e atenção aos
detalhes para obter um excelente acabamento: cada passo no processo é importante e os erros são muitas
vezes irreversíveis e resultam em prejuízos.
A tecnologia moderna e a produção em massa permitiram que móveis e acessórios, anteriormente
disponíveis apenas aos ricos, se tornassem amplamente disponíveis. No entanto, para aqueles com renda
disponível e foco em qualidade, o técnico em movelaria é capaz de produzir móveis e acessórios que são
um prazer duradouro, tanto de se usar quanto de se observar. Neste mercado exigente, o técnico em
movelaria excepcional será sempre requisitado.')
GO
INSERT [dbo].[Modalidade] ([idModalidade], [nomeModalidade], [descModalidade]) VALUES (N'25', N'Marcenaria de Estruturas', N'Um marceneiro geralmente trabalha em projetos comerciais e residenciais. Existe uma relação direta entre a natureza e a
qualidade do produto necessário e o pagamento efetuado pelo cliente. Portanto, o marceneiro tem uma responsabilidade contínua
de trabalhar profissionalmente, a fim de atender aos requisitos do cliente e, assim, manter e expandir os negócios. A marcenaria
está intimamente associada à marcenaria e carpintaria, além de outras partes da indústria da construção e aos muitos produtos
que a sustentam, normalmente para fins comerciais.
O marceneiro geralmente é baseado em uma oficina, porque a formação de várias juntas exige máquinas especializadas, mas às
vezes realiza instalações nas casas dos clientes e nas obras. Ele ou ela irá produzir e interpretar desenhos, definir e medir, cortar,
formar juntas, montar, instalar e finalizar com um alto padrão. O marceneiro geralmente produz itens como portas internas e
externas, janelas, escadas, mesas e estantes de livros.
Organização do trabalho e autogestão, habilidades de comunicação e interpessoais, resolução de problemas, inovação e
criatividade, trabalhando com precisão e precisão são os atributos universais do marceneiro destacado. Se o marceneiro está
trabalhando sozinho ou em equipe, o indivíduo assume um alto nível de responsabilidade e autonomia pessoal. Do trabalho seguro
até o planejamento e organização excepcionais, precisão, concentração e atenção aos detalhes para obter um excelente acabamento,
todas as etapas do processo são importantes. Os erros são em grande parte irreversíveis e muito caros.
Com a mobilidade internacional das pessoas, o marceneiro enfrenta oportunidades e desafios em rápida expansão. Para o talentoso
marceneiro, existem muitas oportunidades comerciais e internacionais; no entanto, eles carregam consigo a necessidade de
entender e trabalhar com diversas culturas e tendências. Portanto, é provável que a diversidade de habilidades associadas à
marcenaria se expanda.
')
GO
INSERT [dbo].[Modalidade] ([idModalidade], [nomeModalidade], [descModalidade]) VALUES (N'26', N'Carpintaria de Telhados', N'Um carpinteiro normalmente trabalha em projetos comerciais e residenciais. A carpintaria está
intimamente associada com outros setores da indústria da construção e com os muitos produtos que lhes
fornecem suporte, normalmente para fins comerciais.
Um carpinteiro trabalha em ambientes internos e externos, incluindo as casas de clientes e locais de
construção sob todas as condições climáticas. O profissional irá interpretar desenhos, organizar, medir,
cortar, montar juntas, armar, instalar e concluir com um trabalho de alto padrão.
O trabalho do carpinteiro inclui:
• Medir, cortar e instalar componentes de uma residência ou edifício comercial, incluindo sistemas de
piso, paredes e telhado. Também pode incluir escadas, acabamentos interiores e exteriores, materiais
para telhados, portas, janelas e outros componentes de acabamento. Medir e cortar com precisão
confere uma maior qualidade a itens como guarnições e moldagens que devem receber um
acabamento de altíssima precisão
• Formas de construção para sistemas de concretos, paredes e telhados das estruturas
• Instalação de componentes que são vistos no interior e exterior dos edifícios residenciais ou comerciais,
tais como tapumes, cortinas, materiais para telhado, bem como construções externas, tais como
garagens, galpões, varandas, pérgolas e casas de brinquedo para crianças.
Organização do trabalho e autogestão, habilidades interpessoais e de comunicação, resolução de
problemas, inovação e criatividade, trabalho preciso e correto são os atributos universais do técnico em
carpintaria. Tanto ao trabalhar sozinho ou em equipe, o carpinteiro assume um elevado grau de
responsabilidade pessoal e de autonomia.
Cada passo no processo de carpintaria é importante e os erros são muitas vezes irreversíveis e resultam em
prejuízos. Isto significa que o carpinteiro deve trabalhar com segurança e organização, ter energia,
demonstrar habilidades de planejamento e organização excepcionais, ter concentração e prestar atenção
aos detalhes a fim de obter um excelente acabamento.
Devido à mobilidade internacional de pessoas, o técnico em carpintaria de telhados se depara com uma
rápida expansão de oportunidades e desafios. Há diversas oportunidades comerciais e internacionais para
um técnico em carpintaria talentoso. No entanto, estas ofertas trazem a necessidade de compreender e
trabalhar com diversas culturas e tendências.
Um carpinteiro geralmente recebe seu treinamento trabalhando como aprendiz com um profissional mais
experiente. O treinamento inclui normalmente o uso de ferramentas manuais e elétricas; a realização de
trabalho pesado e de acabamento de carpintaria; o aprendizado de como os serviços mais intrincados são
concluídos, bem como a importância da precisão.')
GO
INSERT [dbo].[Modalidade] ([idModalidade], [nomeModalidade], [descModalidade]) VALUES (N'27', N'Joalheria', N'A habilidade de fazer joias consiste na fabricação de acessórios de moda usando metais preciosos.
Um fabricante de joias pode fabricar peças individuais exclusivas para uso, peças prontas para serem
colocadas com pedras preciosas ou protótipos para reprodução em números através de fundição por cera
perdida.
Um fabricante de joias normalmente trabalha com desenhos detalhados criados por meio de consulta direta
com um cliente ou por um designer de joias. Esses desenhos podem ser desenvolvidos pelo joalheiro através
do desenho a mão ou do Design Assistido por Computador. Portanto, eles precisam ser capazes de
interpretar corretamente esses desenhos para criar uma peça de joalheria, conforme imaginada por eles ou
por um designer. Um fabricante de joias deve respeitar as formas do conceito de design e interagir com o
designer, fornecendo e recebendo opinião sobre o processo de fabricação. A habilidade de um fabricante de
joias pode exigir o trabalho direto com os clientes, pois nem sempre há intermediários envolvidos.
Um fabricante de joias também pode ser obrigado a replicar uma peça diretamente, ou usar habilidades para
fabricar joias para renovar ou reparar uma peça existente.
Ao lidar com metais preciosos, um fabricante de joias precisa ser preciso, trabalhar economicamente e evitar
o desperdício de materiais. O trabalho é minuciosamente detalhado e requer um alto nível de habilidade,
foco e concentração. Depois que a joalheria terminar uma peça, ela poderá progredir para outras fases do
processo de fabricação, exigindo habilidades da indústria de ourives que não sejam a fabricação de joias,
como a confecção de joias e a fundição.
Por esse motivo, um fabricante de joias deve ter algum conhecimento e entendimento de outras habilidades
da indústria de ourives. Eles devem, por exemplo, apreciar as pedras preciosas, suas características, cortes,
usos e impacto na peça acabada. Da mesma forma, eles devem estar cientes das diferentes fases da
reprodução através do casting.
Os fabricantes de joias trabalharão em uma oficina de ourives usando ferramentas e equipamentos
especializados. Devido à natureza complexa do trabalho, muitas das ferramentas são delicadas e, portanto,
precisam ser usadas e manuseadas com extremo cuidado. Alguns fabricantes de joias podem ser
independentes, mas com mais frequência trabalharão em uma oficina com outros fabricantes de joias ou
técnicos com habilidades na indústria de outros ourives especializados. Eles devem sempre observar os
procedimentos e regulamentos de saúde e segurança específicos das habilidades.
As joias são feitas de metais preciosos e pedras preciosas, que são altamente valiosas. Portanto, um
fabricante de joias deve agir com total honestidade e integridade e estar totalmente ciente da segurança e dos
regulamentos relativos à compra, produção e venda de metais preciosos, pedras preciosas e peças acabadas.')
GO
INSERT [dbo].[Modalidade] ([idModalidade], [nomeModalidade], [descModalidade]) VALUES (N'31', N'Tecnologia da Moda', N'O profissional de Tecnologia de Moda cria peças de roupas. As habilidades técnicas envolvidas
incluem o design, modelagem, corte, e manufatura e finalização das peças de roupa.
O profissional pode trabalhar em diferentes setores, mas geralmente eles são autônomos e
trabalham em projetos encomendados, ou no setor de manufatura de varejo ou em criação de
amostras de peças de roupas para produção. Assim, eles devem ter perspicácia nos negócios e
fortes habilidades de comunicação interpessoal quando lidam com os clientes. O excelente
atendimento ao cliente e habilidades de vendas são importantes. Como alguns trabalhos são
geralmente encomendados para eventos importantes, o profissional deve entender as
necessidades do cliente e ter a capacidade de aconselhar profissionalmente enquanto interpreta a
visão para o projeto finalizado. As instruções do cliente devem ser claramente compreendidas e
seguidas com precisão.
Tecidos são geralmente caros, delicados e facilmente danificados se manejados incorretamente. Dado
esse fato, o profissional deve ter respeito às matérias-primas com as quais trabalha e aplicar
conhecimento extensivo em selecionar, comprar, manejar, usar e armazenar efetivamente todos os
materiais. A sustentabilidade, ética e orçamentos são todas sérias considerações ao selecionar os
materiais e escolher subcontratantes.
O design de uma peça de roupa requer inovação, criatividade, talento artístico e habilidades de design
que incorporem estética e funcionalidade, e outras praticidades do design. O profissional deve aplicar
as regras e teorias da composição, incluindo elementos e princípios de design, assim como excelente
técnica de construção. Eles geralmente são criativos e artísticos, com um bom olhar para o design e a
habilidade para criar peças de roupas agradáveis e funcionais, adequadas para o seu propósito. Além
disso, um vasto conhecimento e compreensão de equipamentos especializados e seu uso é essencial.
Outro requisito é um alto nível de conhecimento técnico em técnicas de modelagem e construção.
Diferentes tecidos se comportarão de diversas maneiras em relação ao design, assim como reagirão
de diversas maneiras ao processo de manufatura, e essas características devem ser consideradas
durante os processos de design, preparação e produção.
Existe uma vasta quantidade de práticas no setor da moda. Alguns profissionais produzem pequenas
quantidades para lojas do varejo ou casas de moda de alta classe, ou preparam peças de roupa sob
medida para clientes individuais. Na outra ponta do espectro profissional, o profissional pode
trabalhar no setor industrial, produzindo protótipos para produção em massa. A prática também varia
em diferentes partes do mundo. A indústria da moda é verdadeiramente global: por exemplo, uma
peça de roupa pode ser desenhada e prototipada em um país e subcontratada para manufatura em
outro.
Onde quer que esteja empregado, é essencial que o profissional esteja ciente da moda e tendências
atuais e emergentes na indústria da moda. Igualmente importante é uma consciência de novos
desenvolvimentos em tecidos e têxteis assim como em maquinário e equipamentos. Um dano
significativo pode ser feito a um negócio e à sua reputação se as tendências da moda forem mal
interpretadas.
')
GO
INSERT [dbo].[Modalidade] ([idModalidade], [nomeModalidade], [descModalidade]) VALUES (N'32', N'Confeitaria', N'A área de Confeitaria possui profissionais altamente qualificados que produzem
uma grande variedade de produtos predominantemente doces e complexos.
Eles produzem vários produtos de confeitaria como chocolates finalizados
manualmente, guloseimas e petit fours para serviços em hotéis e restaurantes
ou para vendas em lojas especializadas e estabelecimentos. Confeiteiros
produzem uma variedade de sobremesas doces e geladas, tortas, biscoitos e
produtos congelados para serviços em hotéis luxuosos/ boutiques, restaurantes
e lojas de doces para venda. Eles também podem produzir peças elaboradas de
exibição usando açúcar, marzipã, chocolate e bolos temáticos para eventos
especiais.
Um alto nível de conhecimento específico e habilidade é necessário.
Confeiteiros serão submetidos a anos de treinamento a fim de desenvolverem
os níveis de habilidade requeridos. Eles serão proficientes em uma variedade de
técnicas especializadas para produzir e decorar produtos de confeitaria. É
necessário um talento artístico e estilo gastronômico, além da habilidade em
trabalhar efetivamente e economicamente, a fim de atingir resultados
excepcionais dentro de prazos e orçamentos estabelecidos.
Em algumas circunstâncias os confeiteiros precisarão trabalhar diretamente com
seus clientes, assim habilidades em atendimento ao cliente são necessários junto
com a capacidade de discutir as necessidades do cliente e de oferecer conselhos
e orientações. Ter iniciativa é essencial.
O especialista irá trabalhar usando uma variedade de materiais e equipamentos
especializados. Os confeiteiros precisarão levar em consideração a qualidade dos
ingredientes, respeitá-los e trabalhar com alto padrão de higiene, saúde e
segurança.
Confeiteiros são susceptíveis a trabalhar em hotéis e restaurantes de classe alta.
Em alguns países são normalmente vendidos produtos de confeitaria produzidos
manualmente (artesanalmente), assim, as habilidades dos confeiteiros serão
utilizadas para produzir produtos decorados, bolos e produtos de confeitaria.
Alguns profissionais talvez trabalhem independentemente e trabalhem
diretamente com produtos especializados para clientes.')
GO
INSERT [dbo].[Modalidade] ([idModalidade], [nomeModalidade], [descModalidade]) VALUES (N'33', N'Tecnologia Automotiva', N'É provável que o Técnico de automóvel de veículos leves moderno seja empregado em uma oficina
que esteja de perto associado a um grande fabricante de veículos leves. Sua experiência pode ser
maior com o veículo do fabricante; no entanto, dependendo da situação e da gama de serviços
oferecidos pela concessionária, eles também podem lidar com veículos de outros fabricantes. Os
técnicos de automóveis também trabalham em Garagens e oficinas que não estão associadas a
fabricantes específicos. Onde é esse o caso eles podem experimentar uma gama mais ampla de
veículos leves e usar equipamentos, peças e materiais.
O Técnico de Veículo de Veículo Leve treinado e competente servirá e reparará uma variedade de
marcas de veículos. Para o diagnóstico, reparo e substituição, dependendo da natureza da
concessionária, eles podem fazer uso de equipamento, peças, materiais e procedimentos do
fabricante. Portanto, de acordo com um relacionamento do concessionário com os fabricantes, a
experiência do técnico pode ser profunda ou ampla, ou ambos. Em cada garagem e oficina, o
sucesso é medido no tempo, encontrar e reparar corretamente a falha, e repetir negócios.
A maioria das garagens e oficinas são pequenas empresas ou centros de custo que trabalham com
recursos financeiros apertados.
O setor automotivo leve é volátil, dependente da economia em geral e é fortemente afetada por
avanços tecnológicos e preocupações ambientais. O Técnico de automóvel é altamente qualificado e
mantém-se a par das mudanças contínuas no setor, seja com isso o desempenho, segurança ou
fontes de energia verde. Eles entenderão profundamente os veículos elétricos e sistemas eletrônicos
e sua integração; tem resistência física, coordenação e habilidades cinestésicas, e seja versátil. Serão
atribuídas tarefas de diagnóstico mais complexas, os veículos mais avançados, e aqueles que
incorporam as últimas tecnologias. Esta pessoa pode progredir rapidamente para papéis superiores
como treinador, supervisor, planejador e / ou gerente.')
GO
INSERT [dbo].[Modalidade] ([idModalidade], [nomeModalidade], [descModalidade]) VALUES (N'36', N'Pintura Automotiva', N'Pintores de automotivos são responsáveis por restabelecer o acabamento da pintura
original nos carros após a estrutura e / ou os painéis terem sido reparados ou
substituídos. Eles também podem ser solicitados a repintar completamente um veículo
para mudar a sua cor ou restabelecer sua originalidade. Os pintores de automotivos
também podem realizar ajustes de cores correspondentes a uma cor original não mais
disponível ou a cores difíceis de igualar. Um pintor de automotivo deve combinar a
cor, a sombra e a textura dos painéis de forma que se igualem aos adjacentes que
não estão sendo pintados. Os pintores de automóveis podem trabalhar em vários
ambientes de trabalho, desde uma oficina de reparos automotivos a um hangar de
aeronaves, dependendo de qual veículo ou sistema de transporte estará pintando.
Eles trabalham para aplicar tintas dentro de uma cabine / estufa fechada para
proteger o meio ambiente de produtos nocivos. Pintores de automotivos preparam
peças ou veículos para receber primers, tintas e vernizes. Eles podem ser necessários
para identificar um código de cores usando vários métodos, misturar a quantidade
correta de cor para fórmulas pré-determinadas e cartões de teste de pulverização
para testar a adequação dessa correspondência de cores para a cor e sombra
original. Um pintor de automotivo precisa estar ciente dos horários e pode estar
trabalhando em vários veículos ao mesmo tempo enquanto espera que os materiais
previamente aplicados sequem. Podem precisar pintar uma ampla gama de itens,
como carros de passeio, carros de corrida, veículos clássicos e antigos, veículos
comerciais, trens, aviões, estruturas estáticas ou móveis. Podem ser necessários para
repintar uma ampla variedade de materiais, como metais, plásticos, materiais
compósitos ou madeira.')
GO
INSERT [dbo].[Modalidade] ([idModalidade], [nomeModalidade], [descModalidade]) VALUES (N'38', N'Refrigeração e Ar Condicionado', N'O engenheiro de refrigeração e ar condicionado é responsável pelo projeto, instalação, manutenção e reparo de ambos os sistemas.
O seu trabalho envolve ambientes domésticos e comerciais, bem como inclui os setores de construção e transporte, por exemplo em navios e caminhões.
Encontrar soluções para as questões que envolvem o clima e o meio ambiente são os maiores problemas para os engenheiros da indústria de refrigeração e ar condicionado.')
GO
INSERT [dbo].[Modalidade] ([idModalidade], [nomeModalidade], [descModalidade]) VALUES (N'39', N'Gestão de Sistemas de Redes TI', N'O Administrador de Sistemas de Rede de TI trabalha em organizações de pequeno ou grande porte nos
setores comercial e público, oferecendo uma ampla variedade de serviços de TI considerados críticos à
operação dos negócios diários. Qualquer“tempo de inatividade”representa altos custos para a organização;
portanto, o Administrador de Sistemas de Rede de TI tem a responsabilidade de trabalhar de forma
profissional e interativa com os usuários a fim de atender às suas necessidades e garantir a continuidade dos
sistemas e dos níveis de serviço exigidos para a execução eficaz de suas funções. O Administrador de
Sistemas de Rede de TI oferece também aconselhamento e orientação sobre o desenvolvimento dos
sistemas e serviços que promovem o crescimento da organização.
O Administrador de Sistemas de Rede de TI trabalha em ambientes diversificados, incluindo centros de
operações de rede, provedores de serviços de Internet, data centers, por exemplo, Amazon, e salas de
servidores com controle climático. O(a) Administrador(a) oferece uma ampla variedade de serviços com
base em: suporte ao usuário, solução de problemas, design, instalação/upgrade e configuração de sistemas
operacionais e dispositivos de rede.
O Administrador de Sistemas de Rede de TI pode, em certo ponto em sua carreira, especializar-se no suporte
ao usuário, design, instalação de sistemas operacionais ou configuração de dispositivos de rede.
Independentemente disso, organização do trabalho e autogerenciamento, comunicação e habilidades
interpessoais, solução de problemas, dedicação à pesquisa/manter-se atualizado com os avanços do setor e
abordagens consistentemente metódicas e investigativas são os atributos universais de um Administrador
de Sistemas de Rede de TI excepcional.
Em um mercado de trabalho móvel, o Administrador de Sistemas de Rede de TI pode atuar em equipes, ou
individualmente. Seja qual for a estrutura do trabalho, o Administrador de Sistemas de Rede de TI treinado
e experiente assume um elevado grau de responsabilidade pessoal e autonomia. Todo processo - da garantia
de que os negócios permanecem consistentemente em operação, com limitadas interrupções dos sistemas
de TI, à contribuição para com o design de novos sistemas - é importante, sendo que erros custam dinheiro
à empresa.
Com a rápida globalização dos sistemas de TI e a mobilidade internacional das pessoas, os Administradores
dos Sistemas de Rede de TI são confrontados por uma acelerada expansão em termos de oportunidades e
desafios. Para um Administrador de Sistemas de Rede de TI talentoso, há muitas oportunidades comerciais,
internacionais e no setor público; no entanto, esses profissionais carregam consigo a necessidade de
compreender e trabalhar com diversas culturas e acompanhar as rápidas mudanças nos avanços do setor. A
diversidade das ocupações associadas à administração de sistemas de rede de TI tem, portanto, grande
possibilidade de expansão.')
GO
INSERT [dbo].[Modalidade] ([idModalidade], [nomeModalidade], [descModalidade]) VALUES (N'40', N'Design Gráfico', N'O Design Gráfico compreende muitas habilidades e disciplinas diferentes na produção de design
gráfico e produção. A diversidade de habilidades exigidas na indústria é muito ampla: é comum que
as pessoas que trabalham nesse campo sejam especialistas em um aspecto particular. Como
resultado, uma equipe pode cobrir o processo de Design Gráfico, com cada membro da equipe tendo
seus próprios pontos fortes, especialidades e funções.
O profissional do Design Gráfico elabora trabalhos com clientes externos e internos para criar
soluções exclusivas para suas necessidades; também pode incluir impressão ou produção de
publicação on-line. Por isso deve dominar os softwares de publicação gráfica, softwares vetoriais e
de tratamento de imagem; ter domínio da preparação e finalização de arquivos para as diversas
saídas físicas e digitais.
Existem várias oportunidades de emprego dentro da indústria. Isso pode incluir tornar-se freelancer,
proprietário de uma empresa ou ser empregado por uma empresa de publicidade, marketing, design
ou impressão. Eles também podem ser empregados por uma empresa com um departamento de
design ou como um designer interno autônomo. Os profissionais podem ter um papel amplo ou se
especializar como designer gráfico, artista gráfico, operador de pré-impressão, tipógrafo, tipógrafo,
designer de tipos, especialista em manipulação de imagens, ilustrador, diretor de arte, gerente de
produção, impressora digital, designer de informações, editora, marca ou embalagem.
As pessoas que trabalham nessa indústria geralmente trabalham em estreita colaboração com seus
clientes e devem ser comunicadores eficazes para que possam atingir os objetivos do cliente com
êxito. Eles exigem fortes habilidades interativas de pesquisa, técnicas em design. Para alcançá-los,
eles precisam entender o público-alvo, os mercados, as tendências, as diferenças culturais e o que o
cliente deseja. Eles devem ser capazes de trabalhar em equipes formais ou informais, ou de forma
independente.')
GO
INSERT [dbo].[Modalidade] ([idModalidade], [nomeModalidade], [descModalidade]) VALUES (N'42', N'Construção de Estruturas Metálicas', N'A construção metálica é a montagem e instalação de estruturas siderúrgicas, embarcações e
componentes que abrangem as indústrias de alimentos e laticínios, farmacêuticas e químicas,
engenharia arquitetônica e aço estrutural para edifícios e Pontes. São esperados padrões muito
elevados de acabamento e qualidade do metalúrgico da construção, pois os produtos alimentares e
farmacêuticos são transportados e produzidos a partir de componentes de aço que um metalúrgico da
construção montaria. Arranha-céus, estádios e pontes são erguidos usando as habilidades do
metalúrgico da construção, juntamente com projetos arquitetônicos de ponta que afetam a paisagem
moderna para projetos de construção inovadores.
As habilidades necessárias para a construção de metalurgia envolvem;
• Um conhecimento completo e compreensão de práticas de trabalho seguras, equipamentos de
proteção pessoal e os perigos e práticas associados à indústria metalúrgica da construção.
• Interpretação dos desenhos de engenharia.
• Conhecimento de cálculos matemáticos, técnicas geométricas de construção e aplicativos de software
de design e elaboração de computador.
• Um conhecimento abrangente de uma gama de processos industriais de corte e formação para
atender a uma gama de aços e ligas, incluindo aço de baixo carbono, aço inoxidável, aços de liga, ligas
de alumínio e também trabalhando com diferentes padrões de tubos e tubos.
• Moldando e formando esses componentes de aço com o auxílio de processos térmicos e uma gama de
máquinas usadas em corte, flexão e placa de metal de rolamento
• Usando processos modernos de corte térmico, como plasma, laser e técnicas de corte de jatos d''água.
• Aplicando uma gama de processos de soldagem, como soldagem Manual Metal Arc, TIG /TAG
(Tungstênio Inert Gas & Tungstênio Gás Ativo) soldagem, MIG / MAG (Metal Inert Gas & Metal Active
Gas) soldagem para montar e unir materiais em estruturas e produtos.
Organização de trabalho e autogestão, trabalhando com precisão e precisão, concentração, atenção aos
detalhes, comunicação e habilidades interpessoais, resolução de problemas, inovação e criatividade, são
os atributos universais do metal de construção Trabalhador.
Metalúrgicos da construção são indivíduos altamente qualificados que são capazes de trabalhar de
forma autônoma, contribuir para uma equipe técnica, assumir a responsabilidade pessoal para a
conclusão de projetos para aprovar padrões de qualidade em tempo hábil, e interagir de forma eficaz
com colegas e clientes em um ambiente industrial. Cada passo no processo é importante e os erros são
em grande parte irreversíveis e muito caros.
Com a mobilidade internacional das pessoas, os metalúrgicos da construção enfrentam oportunidades e
desafios em rápida expansão. Para os metalúrgicos talentosos da construção, há muitas oportunidades
comerciais e internacionais, que carregam consigo a necessidade de entender e trabalhar com diversas
culturas e tendências.
')
GO
INSERT [dbo].[Modalidade] ([idModalidade], [nomeModalidade], [descModalidade]) VALUES (N'43', N'Engenharia de Moldes para Polímeros', N'Os engenheiros de moldes plásticos estão envolvidos na produção em massa de produtos
plásticos de alta qualidade e baixo custo. Isso é obtido através da produção de um molde com
base em desenhos criados por um projetista competente que entende o design para os princípios
de fabricação e montagem, tendo experiência prática em modelagem por injeção, fabricação de
moldes, design de peças plásticas e software de design de moldes.
A concepção e o processamento de um molde são realizados com a ajuda dos sistemas CAD /
CAM (Projeto Assistido por Computador / Maquinagem Assistida por Computador). A maior parte
da usinagem é realizada em centros de usinagem CNC (Controle Numérico Computadorizado). As
peças usinadas são então polidas de acordo com os requisitos e montadas conforme o desenho
para mantê-las prontas para teste. Um molde concluído será então instalado em uma máquina de
moldagem por injeção. O material plástico bruto é derretido na máquina de moldagem e depois
injetado no molde, onde esfria e solidifica no produto final.
Hoje, a fabricação de moldes é bem diferente da fabricação de moldes há alguns anos atrás. Os
fabricantes de moldes precisam ser muito inovadores e devem investir nos mais recentes
equipamentos, ferramentas de corte, design e software de fabricação para ficar à frente da
concorrência. Os fabricantes de moldes por injeção também continuam buscando a adição de
recursos de processamento, seja para amostragem de moldes ou para moldagem de produção. É
muito difícil para uma pessoa adquirir todas as habilidades necessárias e permanecer competitiva.
Na maioria das indústrias, a fabricação de moldes é um trabalho em equipe. Portanto, o fabricante
de moldes também deve ter boas habilidades de comunicação para estabelecer contato com a
equipe de design e os colegas. A escassez de trabalhadores qualificados e a pressão para inovar
devido à concorrência global serão os grandes desafios que a indústria enfrentará nos próximos
anos.
Peso leve, disponibilidade de vários modelos e redução de custos são as maiores vantagens para
as indústrias. Como os plásticos são usados em milhares de produtos que agregam conforto,
conveniência e segurança às nossas vidas, a demanda por habilidades em engenharia de
matrizes de plástico aumentou significativamente ao longo dos anos. Os componentes moldados
por injeção de plástico são usados nas indústrias de telecomunicações, medicina, aeroespacial e
automóvel, para eletrodomésticos, automação de escritório, entretenimento e eletrônica. Assim, a
gama de diferentes campos de requisitos oferece muitos desafios, desde o design de um molde
apropriado até a programação para usinagem de elementos de molde, trabalho em máquinas,
inspeção, polimento, correspondência, montagem de peças, moldagem e solução de problemas
de defeitos de moldagem para obter boa massa Produção.
O trabalho é adequado para pessoas que são técnica e mecanicamente sólidas, possuem fortes
habilidades matemáticas e gostam de fazer coisas e resolver problemas. Para ser um grande
fabricante de moldes, é preciso ter uma mente afiada e um alto nível de autoconfiança, porque é
dimsjso que é preciso para resolver problemas.')
GO
INSERT [dbo].[Modalidade] ([idModalidade], [nomeModalidade], [descModalidade]) VALUES (N'44', N'Vitrinismo', N'O Vitrinista cria vitrines e exibições de interiores em butiques e lojas de departamento, portanto é
essencialmente responsável pela “aparência” do ponto de venda. O objetivo principal do Vitrinista é
maximizar as vendas, estabelecendo uma comunicação com o público alvo e criando uma atmosfera
positiva. O vitrinista comunica-se diretamente com o público alvo por meio de seus projetos e cria uma
impressão positiva que, por sua vez, gera resultados na receita de vendas do negócio.
Embora não seja possível mensurar com precisão o impacto das vitrines, sabe-se que se trata de um
elemento cada vez mais importante entre o marketing e as vendas de um comércio varejista de
sucesso.
O vitrinista trabalha em lojas de varejo, que fazem parte de um grupo com funções de apoio central e em
pequenas lojas independentes, onde há maior autonomia e responsabilidade pessoal. As atividades que
o vitrinista realiza são baseadas na interpretação e pesquisa de um briefing, criando um projeto e sua
implementação - trabalhando com os produtos e seus adereços.
São atributos universais de um vitrinista de excelência: organização do trabalho e autogestão,
comunicação e habilidades interpessoais, resolução de problemas, inovação e criatividade - a capacidade
de desenvolver conceitos originais, atraentes, com o fator de encantamento (fator WOW) que envolve
positivamente o público alvo e atenção aos detalhes / perfeccionismo.
O vitrinista pode trabalhar em equipes ou sozinho, dependendo do tamanho do negócio. Em empresas
de médio e grande porte, trabalham em estreita colaboração com equipes de vendas e marketing.
Independentemente da estrutura do trabalho, o vitrinista treinado e experiente assume um alto nível
de responsabilidade pessoal e autonomia. A partir do entendimento das metas e objetivos dos
departamentos de vendas e marketing, interpretar o briefing corretamente e entender o
comportamento dos mercado-alvos para criar uma vitrine capaz de impressionar, com o fator WOW.
Cada estágio do processo de vitrinismo é relevante e as vitrines têm uma relação estreita com a
receita de vendas.
Devido à globalização de imagens visuais e a mobilidade internacional de pessoas, o profissional da
área de vitrinismo está diante de oportunidades e desafios de rápida expansão. Para um vitrinista
talentoso existem muitas oportunidades comerciais e internacionais; no entanto, estes profissionais
carregam consigo a necessidade de compreender e trabalhar com diversas culturas, tendências e
modas. A diversidade das habilidades associadas ao vitrinismo tem grande possibilidade de expansão.')
GO
INSERT [dbo].[Modalidade] ([idModalidade], [nomeModalidade], [descModalidade]) VALUES (N'45', N'Modelagem de Protótipos', N'O profissionaltécnico em Modelagem de Protótipos trabalha com projeto, criação, teste e a modificação
de protótipos. Em muitas áreas, existe grande incerteza se um novo projeto realmente desempenhará a
função que lhe foi idealizado;Novos projetos frequentemente apresentam problemas inesperados.Um
protótipo é geralmente utilizado como parte do processo de desenho do produto para que engenheiros e
designers tenham a habilidade de explorar alternativas do projeto, testar teorias e confirmar o
desempenho antes de iniciar a confecção de um novo produto. Os profissionais que trabalham com
Modelagem de Protótipos usam seus conhecimentos para personalizar o protótipo de acordo com as
incógnitas específicas ainda existentes no projeto pretendido. Por exemplo, alguns protótipos são usados
para confirmar e verificar o interesse do consumidor em um projeto proposto, ao passo que outros
protótipos tentarão verificar o desempenho ou adequação de uma abordagem específica.
De modo geral, uma série de protótipos será projetado, construídos e testados conforme o projeto final e
este é preparado para produção.Na maioria dos casos, diversas modificações nos protótipos são feitas de
modo progressivo para aprimorar o projeto. É comum desenhar,testar, avaliar e então modificar o
desenho com base na análise do protótipo.
Especialistas em modelagem de protótipos são contratados por muitas organizações de desenvolvimento
de produto. Esses indivíduos contam com habilidades e treinamento especializados em técnicas gerais de
fabricação que podem ajudá-los a unir designs teóricos e fabricação de protótipos. Para uma empresa
envolvida na prototipagem rápida e teste funcional ou de fabricação, os modelos protótipos são essenciais
para solucionar potenciais problemas no processo de projeto..
Uma equipe com excelentes habilidades de comunicação e interpessoais proporcionarão segurança aos
clientes de que a recomendação e orientação do especialista resultante da prototipagem suportam
integralmente seus planos de produção. O engenheiro de prototipagem precisará de uma série de
conhecimentos sobre sistemas CAD 3D, sistemas de usinagem, impressão 3D e usinagem através de
CAM, fundição a vácuo, modelagem de protótipos utilizando ferramentas manuais e máquinas, e
pintura por spray e acabamento.')
GO
INSERT [dbo].[Modalidade] ([idModalidade], [nomeModalidade], [descModalidade]) VALUES (N'47', N'Panificação', N'O padeiro é um profissional altamente qualificado, com alto nível de conhecimento sobre alimentação e
nutrição, produz uma vasta gama de itens de pão e pastelaria.
O padeiro produz todas as variedades de produtos de panificação frescos e saborosos, feitos de qualquer
tipo de grãos. Diferentes tipos de fermentação e outros processos serão usados para transformar a matériaprima em doce ou produtos salgados. Por exemplo, pão de trigo, pão de centeio, pão artesanal, pães
enriquecidos, laminados produtos e ingredientes para dar sabor aos produtos de panificação.
Esses itens aparecerão em um grande número de padarias. Os padeiros também podem produzir exibições
elaboradas de pães decorativos usando habilidades criativas e conhecimento.
Um alto grau de conhecimento especializado e habilidade é necessário. Bakers passaram anos de
treinamento em para que eles desenvolvam o nível de habilidade necessário e uma boa compreensão da
sustentabilidade. Padeiros será proficiente em uma ampla gama de técnicas e tecnologias especializadas
para desenvolver e criar variedade de produtos de panificação. Um talento artístico e habilidades artesanais
com a atenção aos detalhes são necessários, juntamente com a capacidade de trabalhar de forma eficaz e
econômica, a fim de alcançar resultados definir prazos.
Os padeiros devem ter conhecimento sobre as funções, compatibilidade e reações dos ingredientes para
criar uma nova receita.
Os padeiros devem ter um bom entendimento sobre a reformulação de receitas e a adaptação a uma
mudança meio Ambiente. A capacidade de trabalhar por iniciativa própria é essencial. Eles vão usar uma
gama de especialistas equipamentos, tecnologia e materiais de maneira ecologicamente correta. O padeiro
profissional deve ter em conta a qualidade dos ingredientes e os requisitos de saúde e segurança dos
clientes. Eles devem respeitar esses ingredientes e trabalhar com altos níveis de higiene e segurança
alimentar.
Padeiros especializados podem desenvolver carreiras, como possuir, gerenciar e
trabalhar em todos os tipos de padarias incluindo alta qualidade, família e lojas especializadas.
Carreiras no ensino e trabalho com ingredientes e as empresas de maquinaria da indústria
de panificação também são opções.
Muitas vezes, as lojas de retalho especializadas vendem produtos de pastelaria feitos à mão e decorados,
pães e massa decorativa, que são preparados usando as habilidades de um padeiro especialista.')
GO
INSERT [dbo].[Modalidade] ([idModalidade], [nomeModalidade], [descModalidade]) VALUES (N'48', N'Indústria 4.0', N'Quando falamos sobre Indústria 4.0, queremos dizer o impacto que as tecnologias de informação e comunicação (TIC) estão tendo na otimização e rede em tempo real para automação e produção eficientes. Às vezes também é chamada de “quarta revolução industrial”.
É função do Técnico de Sistemas de Produção Digital implementar a Indústria 4.0 nas empresas, projetando e implementando sistemas, introduzindo software e hardware e apoiando programas, especialmente segurança cibernética.
Um Técnico de Sistemas de Produção Digital deve estar continuamente ciente das mudanças e reconhecer os avanços na tecnologia que significa que ele deve estar continuamente aprendendo.
Eles devem entender o caso de negócios para implementar a Indústria 4.0 e projetar sistemas de acordo. Eles devem combinar forte conhecimento técnico com um olho nos desenvolvimentos futuros da indústria, enquanto estão constantemente cientes do risco e da segurança.')
GO
INSERT [dbo].[Modalidade] ([idModalidade], [nomeModalidade], [descModalidade]) VALUES (N'49', N'Manutenção de Veículos Pesados', N'O Mecânico de Veículos Pesados mantém, diagnostica e repara grandes máquinas e equipamentos
industriais, incluindo equipamentos rebocados e autopropulsores usados nas indústrias de
mineração, silvicultura, agricultura, paisagismo e manuseio de materiais. O mecânico deve ser capaz
de manter, diagnosticar e reparar motores e componentes de combustão interna em equipamentos
estacionários, móveis e com esteira de borracha, equipamentos de penetração no solo e
equipamentos de movimentação de terra.
A manutenção, o diagnóstico e o reparo podem envolver componentes individuais ou sistemas
inteiros, exigindo que o mecânico possua habilidades com motores, hidráulica, trens de
acionamento, eletrônicos, sistemas de freios e muito mais. O mecânico deve usar ferramentas
específicas para diagnosticar funções, fazer ajustes, reparar ou substituir componentes ou sistemas
defeituosos, testar reparos para obter o desempenho adequado, interpretar instruções em manuais
técnicos, escrever relatórios de serviço e garantir que o trabalho atenda às especificações e
requisitos do fabricante da legislação. O mecânico é frequentemente o interlocutor entre o
empregador, o cliente e o fabricante. Essa experiência pode permitir que o mecânico avance para
cargos seniores, como treinador, supervisor ou gerente.
Embora os mecânicos geralmente se especializem em determinadas máquinas ou equipamentos, por
opção ou como resultado do emprego, a diversidade de equipamentos pesados e, juntamente com
as rápidas mudanças na tecnologia, exigem amplo conhecimento e adaptabilidade. A mecânica
também deve poder trabalhar sozinha ou como parte de uma equipe, em várias horas e na loja de
um empregador, na construção de um cliente ou ao ar livre em locais urbanos ou rurais,
independentemente do clima. As máquinas geralmente requerem intervenção rápida para permitir a
retomada de atividades ininterruptas.
O trabalho é muito gratificante para quem gosta de trabalhar com as mãos e é lógico, curioso e
interessado na solução de problemas. O mecânico também precisa de boa visão, audição, sensação e
olfato para diagnosticar problemas. A ocupação requer força e resistência. Padrões de segurança
adequados devem ser mantidos o tempo todo para evitar o risco de ferimentos envolvidos no
trabalho em veículos pesados e com ferramentas elétricas.
')
GO
INSERT [dbo].[Modalidade] ([idModalidade], [nomeModalidade], [descModalidade]) VALUES (N'51', N'Logística Internacional (Inglês Obrigatório)', N'O Freight Forwarder gerencia o movimento de carga de um local para outro em nome de um
cliente. Eles geralmente fazem isso em uma base comercial e dentro de uma forte estrutura jurídica e financeira
estrutura. Os modos de transporte podem incluir rodoviário, ferroviário, aéreo ou marítimo, ou uma combinação destes. o
O Freight Forwarder requer conhecimentos específicos para garantir que toda a documentação necessária esteja em conformidade com
os requisitos aduaneiros, de seguro e da lei (Convenções IATA, Direito Marítimo, Códigos ICC e
quaisquer regulamentos internacionais que regem o transporte internacional).
Esta função de trabalho pode ser parte de uma grande ou pequena organização de logística com o objetivo principal de mover
frete em nome de outras organizações e indivíduos. Também pode estar situado dentro de um nacional ou
cadeia de abastecimento internacional.
O ambiente de trabalho do Freight Forwarder é normalmente um escritório equipado com serviços de ITC. o
o escopo da função será determinado pelo tamanho da organização; geralmente, quanto maior o
organização, mais especializada será a função. As funções de especialista também podem ser terceirizadas ou
subcontratado a agentes. Por mais ampla ou restrita que seja a função, seu núcleo é a preparação de citações,
o processamento de pedidos e o cálculo de custos e preços. The Freight Forwarder lida com
correspondência escrita e telefônica, às vezes usando dois ou mais idiomas, normalmente incluindo
Inglês. Também preparam guias de remessa e atendem reclamações. Em menores, menos compartimentados
organizações que o Freight Forwarder também pode precisar para coordenar o transporte e armazenamento.
Cada vez mais, essa função opera em um ambiente sem papel.Embora o Transitário seja individualmente responsável pela qualidade de seu próprio trabalho, uma vez que o
movimento de carga é uma operação de 24 horas, eles têm uma dependência mútua de ambos os outros fretes
Forwarders e também a qualidade mais ampla dos procedimentos e sistemas da organização. O frete
O encaminhador é a parte da organização que atende ao cliente, cujas transações levam a contratos que
deve ser robusto, econômico e incentivar a repetição de negócios. A qualidade do Freight Forwarder’s
a comunicação com o cliente desde a consulta inicial até a entrega segura é vital. Isto é especialmente
o caso com reclamações de clientes, que requerem um conhecimento próximo de cada etapa do acordado
serviço e resolução de problemas eficiente dentro dos procedimentos dados.
O Freight Forwarder depende de cada estágio do processo de movimentação de carga funcionando conforme o planejado.
Portanto, seu trabalho será afetado por muitos fatores humanos e não humanos. Localmente e nacionalmente
existem fatores sazonais, incluindo clima e grandes festivais e feriados, e também infraestruturais
fatores. Para frete internacional, os fatores se multiplicam, sendo uma das maiores complexidades os costumes.
Dependendo da posição da organização no mercado de logística e abastecimento, algumas cargas
pode requerer cuidados excepcionais, urgência ou tratamento prioritário. Portanto, embora o Freight Forwarder
trabalha dentro de procedimentos rígidos, eles também devem ser altamente responsivos aos grandes e pequenos problemas que
impacto em sua função diariamente ou ocasionalmente.
O agenciamento de frete e abastecimento é um setor em crescimento; esta é uma tendência de longo prazo associada a
globalização. Portanto, é uma área muito atraente para o emprego. Ao mesmo tempo, o setor é muito
vulnerável ao impacto disruptivo da tecnologia em grande e rápida escala à medida que as redes são integradas
e o avanço da robótica. Um despachante que tem a capacidade de ser exato e responsivo como
necessário estará em uma posição forte para aproveitar esta volatilidade e crescimento em benefício de
comércio e sociedade.')
GO
INSERT [dbo].[Modalidade] ([idModalidade], [nomeModalidade], [descModalidade]) VALUES (N'52', N'Tecnologia Laboratorial Química', N'O trabalho do analista de laboratório químico é a base da qualidade do produto em muitas indústrias. A análise
química é necessária para controlar a conformidade das propriedades das matérias-primas, as fases
intermédias do processo tecnológico, e produtos acabados com as normas em vigor.
O analista de laboratório químico realiza análises laboratoriais, testes, medidas destinadas a determinar
• a composição química qualitativa de uma substância
• a proporção das quantidades de elementos e compostos químicos dentro deles
• em processamento dos dados obtidos,
• comunicando os resultados das análises e
• outros tipos de trabalho de laboratório segundo os requisitos das normas e especificações. A dimensão e
complexidade dos testes realizados dependerá do tipo de funções definidas pelo empregador.
O papel inclui o conhecimento dos seguintes objetos da atividade profissional:
• Natural e materiais industriais;
• Materiais sintéticos;
• Equipamento e instrumentos;
• Regulamentos e documentos técnicos.
Analistas de laboratório químico devem estar prontos para determinar as ferramentas e métodos ótimos para
a análise de vários materiais sintéticos e naturais, para realizar testes qualitativos e quantitativos que utilizam
métodos analíticos da físico-química e química moderna. Eles devem ser capazes de agir de forma lógica e
sistemática, em conformidade com os requisitos sanitários e de higiene e normas de segurança e saúde no
trabalho.
Usualmente, analistas de laboratório químicos trabalham nos laboratórios químicos de departamentos de
controle de qualidade, departamentos de pesquisa e desenvolvimento, ou em departamentos ambientais e em
plantas em várias indústrias: química, petroquímica, farmacêutica, de materiais de construção, tintas e
vernizes, polímeros e muitos outras.')
GO
INSERT [dbo].[Modalidade] ([idModalidade], [nomeModalidade], [descModalidade]) VALUES (N'53', N'Computação em Nuvem', N'Os cargos responsáveis pelo design e implementação da infraestrutura de tecnologia da informação em um ambiente de nuvem pública podem abranger várias funções, incluindo Administradores de Sistemas / Engenheiros, Administradores de Banco de Dados, Administradores / Engenheiros de Rede, Administradores / Engenheiros de Armazenamento, Sistemas / Rede / Soluções / Arquitetos Corporativos, programadores / desenvolvedores e funções baseadas em tecnologia semelhantes que assumem as responsabilidades de negócios e funcionais para arquitetar o design da infraestrutura. Devido aos recursos e capacidades em constante expansão dos provedores de nuvem pública, esta lista de especialistas em infraestrutura associada também está se expandindo.
Os arquitetos de infraestrutura são responsáveis pelo design geral e pela direção das implantações de sistema e aplicativos. Esses arquitetos têm tradicionalmente criado projetos que abrangem vários locais de escritórios, bem como centros de dados corporativos e colocados. Com a crescente prevalência de implantações de nuvem pública, eles adicionaram oportunidades de IaaS (Infraestrutura como serviço) à sua lista de ferramentas de implantação. Isso permite que esses especialistas em tecnologia trabalhem em soluções de migração, soluções de armazenamento externo, elasticidade dinâmica de recursos e outros paradigmas de design para criar soluções que melhor atendam às necessidades de cada organização.
Os administradores / engenheiros de sistemas podem utilizar provedores de nuvem pública para automatizar, expandir, agilizar, simplificar e acelerar seus modelos de implantação. Utilizando sua experiência em automação, esses tecnólogos podem implantar a infraestrutura de maneira programática usando a linha de comando, integrações SDK específicas de linguagem e recursos de modelagem de infraestrutura. Este grupo é capaz de gerenciar sua pegada de tecnologia por meio do uso de serviços gerenciados para aliviar a administração de tarefas, como gerenciar um registro de atividades centralizado, definindo permissões e eventos de registro. A capacidade de definir uma solução e, em seguida, replicar esse design para vários ambientes e locais pode ser uma responsabilidade significativa do cargo, juntamente com o gerenciamento da integração de ofertas de computação em nuvem em conjuntos de soluções de tecnologia existentes.
Os administradores de banco de dados estão cada vez mais se envolvendo com provedores de nuvem pública, pois isso lhes dá maior controle sobre os detalhes de suas implantações. Eles são capazes de utilizar recursos sob demanda, em vez de esperar por recursos de outros departamentos. Além disso, eles podem usar os recursos avançados de provedores de nuvem, como serviços de banco de dados gerenciados para cache, bancos de dados relacionais e soluções de dados NoSQL.
Os administradores de armazenamento ganham flexibilidade para dimensionar suas necessidades de armazenamento sem se preocupar com a disponibilidade de hardware ou despesas de capital. Usando várias ofertas de armazenamento de fornecedores de nuvem, os especialistas em tecnologia relacionados ao armazenamento podem criar soluções que atendam melhor às suas necessidades de armazenamento usando as ferramentas fornecidas por seu fornecedor ou soluções de parceiros terceirizados do fornecedor para fornecer soluções escalonáveis e altamente disponíveis de armazenamento primário e de recuperação de desastres . Implementar backups, implementar soluções de armazenamento compartilhado e em cluster, instantâneos do sistema e migrações de dados são apenas alguns exemplos de atividades que podem ser automatizadas por meio de várias linguagens de programação usando fornecedores de nuvem pública e soluções de parceiros terceirizados.
Os administradores de armazenamento ganham flexibilidade para dimensionar suas necessidades de armazenamento sem se preocupar com a disponibilidade de hardware ou despesas de capital. Usando várias ofertas de armazenamento de fornecedores de nuvem, os especialistas em tecnologia relacionados ao armazenamento podem criar soluções que atendam melhor às suas necessidades de armazenamento usando as ferramentas fornecidas por seu fornecedor ou soluções de parceiros terceirizados do fornecedor para fornecer soluções escalonáveis e altamente disponíveis de armazenamento primário e de recuperação de desastres . Implementar backups, implementar soluções de armazenamento compartilhado e em cluster, instantâneos do sistema e migrações de dados são apenas alguns exemplos de atividades que podem ser automatizadas por meio de várias linguagens de programação usando fornecedores de nuvem pública e soluções de parceiros terceirizados. O indivíduo precisa saber e compreender:
• Os requisitos de sistemas e aplicativos para manter
funcionalidade e disponibilidade.
• Sistema, rede e métricas de aplicativo e como se aplicam a
durabilidade, disponibilidade e desempenho da infraestrutura.
• Requisitos de resposta, protocolos e procedimentos para vários incidentes
incluindo segurança, disponibilidade e incidentes relacionados ao desempenho.
O indivíduo deve ser capaz de:
• Implementar soluções de monitoramento para gerar alertas e automatizar respostas
a vários incidentes.
• Implementar coleta e análise de métricas centralizadas para sistemas, rede,
e informações do aplicativo.
• Implementar um processo para melhorar continuamente os projetos arquitetônicos por
automatizando atualizações de configuração de infraestrutura.
• Monitorar e revisar continuamente os sistemas e aplicativos de design
oportunidades de melhoria.
• Teste continuamente para falhas e projete para resiliência.
• Certifique-se de que as configurações de nuvem sejam mantidas atuais e com versão.')
GO
INSERT [dbo].[Modalidade] ([idModalidade], [nomeModalidade], [descModalidade]) VALUES (N'54', N'Segurança Cibernética', N'O Profissional de Segurança Cibernética trabalha para proteger as redes de computadores de uma
organização, para impedir que hackers acessem e / ou roubem informações e dados confidenciais. O
trabalho de um profissional de segurança cibernética geralmente envolve a configuração de firewalls,
IPS / IDS, funções / serviços de servidor e soluções de segurança na web para proteger informações
confidenciais. Eles também monitoram as violações de segurança de inteligência de rede da
organização e investigam violações de incidentes. O Profissional de Segurança Cibernética também
pode realizar testes de penetração, ou seja, quando eles simulam ataques para procurar
vulnerabilidades em suas redes antes que possam ser explorados por terceiros. As tarefas forenses
incluem coletar, preservar, processar, analisar e apresentar evidências relacionadas aos ataques para
apoiar a mitigação da vulnerabilidade da rede e / ou criminal, fraude e contra-inteligência, ao aplicar
táticas, técnicas e procedimentos para uma gama completa de ferramentas e processos de
investigação.')
GO
INSERT [dbo].[Modalidade] ([idModalidade], [nomeModalidade], [descModalidade]) VALUES (N'57', N'Manufatura Aditiva (Engenharia Reversa)', N'Um dos ramos da engenharia mais novos e de crescimento mais rápido, a Manufatura Aditiva é mais comumente conhecida como impressão 3D.
Os métodos tradicionais de manufatura, como fresamento e torneamento, cortam o material para criar o produto final desejado. Na Manufatura Aditiva, camadas são adicionadas em sucessão para obter o mesmo resultado.
A Manufatura Aditiva pode ser uma forma mais ágil de criar objetos fortes e complexos, como protótipos, para a indústria e designers, e com menos desperdício.
Trabalhar em Manufatura Addictive requer uma nova abordagem para design e manufatura. Isso inclui uma compreensão completa do equipamento para impressão e digitalização 3D e as características dos materiais usados, juntamente com matemática aplicada, geometria e projeto e engenharia auxiliado por computador (CAD e CAE). Um entendimento e imaginação para os usos futuros potenciais desta tecnologia é essencial.')
GO
INSERT [dbo].[Modalidade] ([idModalidade], [nomeModalidade], [descModalidade]) VALUES (N'58', N'BIM (Modelagem de Informações de Construção)', N'Realiza o processo de trabalho BIM utilizando softwares de modelagem parametrizada para gerar modelos arquitetônicos e estruturais, inserir e organizar dados, realizar análises, compatibilizar disciplinas distintas e extrair informações relevantes, que serão utilizadas para o planejamento e para a execução da obra.')
GO
INSERT [dbo].[Modalidade] ([idModalidade], [nomeModalidade], [descModalidade]) VALUES (N'59', N'Tecnologia de Design Industrial', N'Os produtos de consumo para consumo em massa precisam funcionar bem e ter uma boa aparência. Esse é o papel da Tecnologia de Desenho Industrial, que também garante que um novo produto seja tecnicamente viável de fazer, atenda às necessidades do mercado e possa ser vendido a um preço aceitável.
A Tecnologia de Design Industrial combina design e engenharia. Em empresas menores e start-ups, isso pode significar cobrir todas as etapas do processo ou trabalhar como parte de uma equipe em organizações maiores.
A Tecnologia de Design Industrial requer uma ampla gama de habilidades e compreensão, incluindo pesquisa de mercado, design, engenharia, análise de produto, materiais e boa comunicação.
Você deve compreender o processo de criação do produto, do conceito à produção, ser bom na resolução de problemas e estar ciente de todas as ferramentas e técnicas para apoiar o design e o desenvolvimento.')
GO
INSERT [dbo].[Modalidade] ([idModalidade], [nomeModalidade], [descModalidade]) VALUES (N'60', N'Tecnologia Optoeletrônica', N'A optoeletrônica é um ramo da fotônica (a ciência física da luz). A optoeletrônica combina a física da luz com a eletricidade. A tecnologia optoeletrônica cobre o projeto, fabricação e manipulação de hardware que converte sinais elétricos em sinais de fótons e vice-versa. Qualquer dispositivo que faça isso pode ser denominado optoeletrônico.
A optoeletrônica é um campo amplo e de rápido desenvolvimento, definido por: • Produtos: por exemplo, iluminação, display, para comunicação e informação, sensores, sistemas fotovoltaicos e lasers
Aplicações: como pesquisa, automação, tratamento médico, engenharia, construção, segurança, manufatura avançada, detecção e medição. Ocupações: cobrindo funções de trabalho em todos os níveis de complexidade e responsabilidade.
Esta Descrição enfoca os requisitos ocupacionais de um técnico de optoeletrônica (engenharia) ou profissional associado. Esse pessoal deve trabalhar com exatidão e precisão, atender às especificações detalhadas e aos padrões internacionais de qualidade e ter uma ampla gama de capacidades técnicas. Com o aumento dos requisitos de economia de energia e equipamentos inteligentes, os técnicos de optoeletrônica precisam ativamente garantir que suas habilidades e conhecimentos permaneçam atualizados e atendam aos padrões e expectativas da indústria.')
GO
INSERT [dbo].[Modalidade] ([idModalidade], [nomeModalidade], [descModalidade]) VALUES (N'61', N'Manutenção de Veículos Sob Trilhos', N'Uma dupla de competidores tem como competência a resolução de problemas, inovação e planejamento em reparos mecânicos, reparos elétricos, manutenção, comissionamento e testes.
Essas competências estão diretamente relacionadas à 4 módulos: pantógrafo, porta do compartimento do passageiro, truque e identificação de falhas no carro como um todo.
A aplicação das referentes habilidades supracitadas, submetem-se à carros de transporte de passageiros em linhas férreas.
Os técnicos de veículos ferroviários de alto desempenho têm amplo conhecimento, compreensão e experiência relevante para veículos ferroviários. Eles devem compreender as estruturas dos veículos ferroviários e os princípios de trabalho, padrões e processos de seus componentes e de controle, manutenção e reparo de veículos, ficando a par dos desenvolvimentos tecnológicos de veículos ferroviários atuais e emergentes e usá-los em seus processos de trabalho, devendo ser capazes de contribuir com sua experiência especial para a equipe, para melhorar seu desempenho. Essas demandas exigem que os técnicos de veículos ferroviários continuem aprimorando suas habilidades para resolver tarefas de diagnóstico mais complicadas e para reparar veículos que adotam as tecnologias mais avançadas e novas. Com mais desenvolvimento profissional, um técnico de veículos ferroviários capaz e comprometido pode fazer parte do avanço global contínuo do trânsito ferroviário, inclusive em posições técnicas ou gerenciais de liderança.
')
GO
INSERT [dbo].[Modalidade] ([idModalidade], [nomeModalidade], [descModalidade]) VALUES (N'62', N'Energias Renovavéis', N'O profissional de Energias Renováveis é responsável em desenvolver e instalar sistemas de energia renovável, realizar operação e manutenção desses sistemas, bem como implantar ações de gestão de energia, de acordo com procedimentos e normas técnicas e ambientais.
Seus projetos e sistemas têm como fonte de transformação renovável a Solar Fotovoltaica, Eólica, Hidráulica e Biomassa em energia elétrica.
Atua em todos os setores que consome energia elétrica como o residencial, comercial, industrial e governamental.')
GO
INSERT [dbo].[Modalidade] ([idModalidade], [nomeModalidade], [descModalidade]) VALUES (N'63', N'Sistemas Robóticos', N'O integrador de sistemas robóticos é responsável pelo projeto, simulação, instalação, programação e reparo de células robóticas industriais, além de sua integração a outros sistemas de automação.
Este profissional deve compreender, operar e programar robôs aplicados a processos de manipulação, paletização, usinagem, acabamento, solda, carregamento de máquinas operatrizes CNC, pintura, montagem entre outros. 
O maior desafio dos integradores de sistemas robóticos é otimizar os processos em que os robôs estão inseridos aumentando ao máximo sua eficiência diminuindo o tempo de ciclo de produção. Entretanto, equilibrar a velocidade de forma responsável é necessário para garantir a segurança dos dispositivos e operadores.')
GO
INSERT [dbo].[Modalidade] ([idModalidade], [nomeModalidade], [descModalidade]) VALUES (N'8', N'Desenvolvimento de Aplicativos Mobile', N'Desenvolvimento de aplicativos móveis refere-se ao desenvolvimento de aplicativos para terminais de comunicação móvel. Com o início da era da informação global de massa, o mercado para esses aplicativos está crescendo, uma vez que os “aplicativos” são ampla e cada vez mais usados ​​no trabalho, na vida e no entretenimento das pessoas. O desenvolvimento de aplicativos móveis está ultrapassando a comunicação mais tradicional, melhorando a eficiência do trabalho e estendendo massivamente os serviços e benefícios para os usuários. Isso está gerando novas oportunidades de emprego e trabalho autônomo em organizações de todos os tamanhos, empreendedorismo e contratação. Essas funções atraem especialmente os jovens adultos, devido à sua confiança e experiência com novas tecnologias.
Dependendo do relacionamento do desenvolvedor de aplicativos móveis com os clientes e suas necessidades, a função pode ser profunda e altamente especializada, ou ampla, em todo o processo de desenvolvimento de aplicativos. Um desenvolvedor empregado pode ter uma função bem definida dentro de uma grande empresa global na economia digital, como Uber e Alibaba. Em contraste, um empreiteiro autônomo espera ter uma ampla gama de habilidades de desenvolvimento em relacionamento próximo, de curto ou longo prazo, com uma variedade de clientes e necessidades. Globalmente, a especialização exigida abrange criatividade, design e habilidades técnicas, juntamente com as habilidades transversais de organização e gestão do trabalho, comunicação e habilidades interpessoais, solução de problemas e inovação.
Em resumo, o escopo e a abrangência da função de desenvolvimento de aplicativos móveis é:
receber e analisar um brief para fins de planejamento
aplique o pensamento de design para criar diagramas de fluxo
dentro de uma estrutura de desenvolvimento orientada a testes, crie projetos dentro dos parâmetros dados e em consulta com o cliente
construir a arquitetura dos sistemas, escolhendo a plataforma de acordo com o briefing
selecione os módulos necessários e codifique o aplicativo, testando regularmente a funcionalidade
testar, modificar e otimizar continuamente o aplicativo quanto à funcionalidade, confiabilidade e otimização, em relação à experiência do usuário.
Com a crescente aceitação de serviços em trânsito, usando terminais móveis inteligentes como telefones, tablets e relógios, a função de Desenvolvedor de Aplicativos Móveis oferece fortes oportunidades de trabalho imediatas e uma base para o envolvimento na evolução global do desenvolvimento de aplicativos.')
GO
SET IDENTITY_INSERT [dbo].[Notas] ON 
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (1, 1, 796, 786, 977, 805, 901, 876)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (2, 2, 801, 763, 826, 865, 970, 891)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (3, 3, 851, 926, 813, 857, 918, 765)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (4, 4, 959, 980, 928, 919, 969, 904)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (5, 5, 899, 872, 850, 771, 844, 800)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (6, 6, 986, 935, 903, 887, 973, 959)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (7, 7, 920, 864, 980, 918, 940, 973)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (8, 8, 859, 895, 776, 896, 799, 881)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (9, 9, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (10, 10, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (11, 11, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (12, 12, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (13, 13, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (14, 14, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (15, 15, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (16, 16, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (17, 17, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (18, 18, 885, 791, 896, 821, 791, 789)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (19, 19, 975, 904, 789, 871, 948, 897)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (20, 20, 773, 905, 874, 910, 889, 907)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (21, 21, 895, 852, 820, 812, 883, 909)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (22, 22, 788, 946, 802, 937, 863, 852)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (23, 23, 889, 763, 823, 982, 940, 873)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (24, 24, 887, 844, 910, 913, 840, 790)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (25, 25, 981, 839, 942, 935, 897, 810)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (26, 26, 818, 883, 976, 884, 901, 911)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (27, 27, 868, 851, 810, 868, 783, 829)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (28, 28, 931, 854, 810, 926, 947, 762)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (29, 29, 816, 979, 911, 826, 778, 813)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (30, 30, 968, 795, 976, 808, 959, 906)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (31, 31, 868, 801, 950, 940, 986, 763)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (32, 32, 841, 815, 825, 925, 932, 934)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (33, 33, 819, 817, 928, 839, 843, 966)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (34, 34, 982, 942, 872, 893, NULL, NULL)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (35, 35, 975, 790, 864, 761, NULL, NULL)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (36, 36, 843, 787, 845, 815, NULL, NULL)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (37, 37, 793, 941, 971, 795, NULL, NULL)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (38, 38, 970, 846, 886, 958, NULL, NULL)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (39, 39, 868, 916, 782, 845, NULL, NULL)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (40, 40, 898, 776, 794, 840, NULL, NULL)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (41, 41, 882, 959, 950, 763, NULL, NULL)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (42, 42, 772, 814, 882, 940, NULL, NULL)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (43, 43, 875, 927, 790, 987, 982, 883)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (44, 44, 827, 809, 817, 879, 892, 829)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (45, 45, 917, 977, 977, 824, 928, 960)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (46, 46, 859, 817, 895, 780, 954, 786)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (47, 47, 927, 842, 826, 770, 857, 935)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (48, 48, 937, 949, 916, 780, 864, 946)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (49, 49, 935, 907, 792, 881, 862, 963)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (50, 50, 976, 983, 787, 927, 782, 926)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (51, 51, 943, 831, 861, 815, 788, 807)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (52, 52, 883, 850, 944, 832, 868, 906)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (53, 53, 808, 960, 768, 972, 781, 762)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (54, 54, 932, 938, 942, 762, 773, 823)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (55, 55, 979, 845, 829, 939, 856, 867)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (56, 56, 897, 907, 895, 912, 770, 836)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (57, 57, 815, 951, 824, 837, 773, 960)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (58, 58, 906, 899, 913, 940, 981, 787)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (59, 59, 765, 829, 826, 913, 803, 950)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (60, 60, 934, 790, 830, 921, 792, 795)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (61, 61, 835, 957, 938, 959, 944, 894)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (62, 62, 977, 974, 831, 880, 841, 971)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (63, 63, 867, 795, 773, 943, 867, 876)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (64, 64, 987, 776, 767, 983, 864, 784)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (65, 65, 798, 840, 898, 910, 824, 821)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (66, 66, 781, 763, 900, 821, 775, 917)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (67, 67, 898, 898, 978, 912, 963, 917)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (68, 68, 833, 897, 762, 880, 814, NULL)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (69, 69, 964, 943, 856, 969, 860, NULL)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (70, 70, 892, 816, 928, 973, 813, NULL)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (71, 71, 968, 911, 944, 884, 959, NULL)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (72, 72, 771, 919, 916, 867, 771, NULL)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (73, 73, 868, 785, 836, 777, 967, NULL)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (74, 74, 795, 814, 769, 822, 813, NULL)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (75, 75, 922, 808, 981, 931, 842, NULL)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (76, 76, 967, 852, 905, 810, 791, NULL)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (77, 77, 954, 964, 787, 890, 771, 847)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (78, 78, 791, 903, 794, 849, 772, 842)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (79, 79, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (80, 80, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (81, 81, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (82, 82, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (83, 83, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (84, 84, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (85, 85, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (86, 86, 916, 945, 868, 902, 986, 827)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (87, 87, 800, 908, 924, 773, 980, 970)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (88, 88, 881, 985, 773, 792, 781, 844)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (89, 89, 884, 840, 772, 858, 806, 970)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (90, 90, 880, 762, 766, 961, 882, 925)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (91, 91, 768, 966, 764, 838, 762, 803)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (92, 92, 963, 875, 975, 850, 969, 799)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (93, 93, 930, 959, 901, 964, 821, 965)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (94, 94, 882, 816, 876, 801, 940, 887)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (95, 95, 802, 972, 805, 913, 908, 938)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (96, 96, 913, 904, 947, 944, 935, 982)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (97, 97, 944, 925, 917, 888, 958, 820)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (98, 98, 911, 781, 934, 812, 877, 789)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (99, 99, 761, 857, 862, 948, 781, 953)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (100, 100, 875, 773, 915, 872, 978, 779)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (101, 101, 773, 828, 977, 871, 834, 766)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (102, 102, 890, 826, 894, 851, 914, 885)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (103, 103, 885, 897, 796, 858, 920, 859)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (104, 104, 934, 875, 981, 781, 876, 805)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (105, 105, 907, 936, 822, 781, 935, 769)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (106, 106, 939, 909, 826, 936, 937, 974)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (107, 107, 816, 760, 849, 763, 909, 876)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (108, 108, 868, 918, 912, 985, 965, 979)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (109, 109, 963, 937, 780, 872, 913, 866)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (110, 110, 814, 943, 919, 904, 819, 840)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (111, 111, 857, 781, 946, 858, 801, 891)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (112, 112, 783, 878, 888, 785, 795, 982)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (113, 113, 965, 875, 856, 810, 871, 832)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (114, 114, 761, 843, 792, 915, 875, 922)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (115, 115, 962, 948, 762, 816, 873, 788)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (116, 116, 952, 943, 883, 790, 825, 806)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (117, 117, 967, 884, 874, 779, 929, 975)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (118, 118, 772, 936, 873, 837, 943, 957)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (119, 119, 785, 987, 906, 896, 771, 922)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (120, 120, 891, 782, 857, 980, 981, 978)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (121, 121, 835, 913, 972, 963, 882, 807)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (122, 122, 763, 805, 940, 796, 841, 889)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (123, 123, 779, 909, 791, 869, 888, 874)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (124, 124, 933, 788, 965, 863, 789, 818)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (125, 125, 923, 978, 943, 854, 868, 784)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (126, 126, 938, 906, 856, 864, 790, 871)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (127, 127, 926, 769, 955, 936, 950, 919)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (128, 128, 926, 948, 821, 900, 936, 838)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (129, 129, 873, 779, 876, 910, 896, 946)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (130, 130, 839, 909, 937, 763, 974, 845)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (131, 131, 824, 895, 846, 821, 763, 839)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (132, 132, 919, 872, 944, 956, 774, 979)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (133, 133, 828, 832, 899, 814, 923, 888)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (134, 134, 829, 859, 982, 837, 847, 768)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (135, 135, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (136, 136, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (137, 137, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (138, 138, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (139, 139, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (140, 140, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (141, 141, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (142, 142, 862, 972, 779, 866, 840, 872)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (143, 143, 822, 874, 839, 867, 827, 816)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (144, 144, 803, 888, 826, 944, 860, 897)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (145, 145, 943, 850, 824, 908, 781, 831)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (146, 146, 879, 821, 873, 882, 846, 832)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (147, 147, 821, 843, 941, 782, 947, 828)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (148, 148, 797, 896, 800, 955, 808, 900)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (149, 149, 928, 761, 981, 852, 766, 809)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (150, 150, 924, 937, 871, 897, 948, 888)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (151, 151, 885, 971, 790, 924, 880, 868)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (152, 152, 866, 910, 893, 890, 923, 980)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (153, 153, 822, 850, 986, 787, 898, 983)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (154, 154, 952, 937, 797, 832, 916, 801)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (155, 155, 923, 892, 975, 811, 979, 853)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (156, 156, 885, 861, 812, 822, 930, 945)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (157, 157, 944, 944, 790, 943, 893, 909)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (158, 158, 956, 973, 826, 935, 857, 976)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (159, 159, 829, 781, 852, 779, 794, 781)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (160, 160, 948, 859, 980, 977, 767, 839)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (161, 161, 914, 958, 777, 785, 844, 886)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (162, 162, 978, 867, 825, 953, 788, 807)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (163, 163, 936, 824, 768, 872, 928, 809)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (164, 164, 905, 833, 953, 981, 858, 888)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (165, 165, 838, 858, 957, 833, 832, 768)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (166, 166, 982, 970, 866, 971, 912, 905)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (167, 167, 966, 791, 911, 902, 807, 816)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (168, 168, 956, 768, 775, 984, 912, 785)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (169, 169, 816, 979, 846, 806, 960, 849)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (170, 170, 792, 931, 889, 966, 933, 970)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (171, 171, 859, 827, 960, 811, 866, 848)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (172, 172, 933, 908, 870, 845, 795, 851)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (173, 173, 873, 851, 979, 901, 843, 789)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (174, 174, 906, 894, 968, 822, 876, 887)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (175, 175, 962, 794, 885, 975, 773, 985)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (176, 176, 942, 776, 767, 842, 890, 864)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (177, 177, 862, 887, 800, 767, 977, 937)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (178, 178, 870, 905, 966, 847, 813, 934)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (179, 179, 971, 912, 920, 975, 831, 873)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (180, 180, 867, 939, 820, 972, 764, 977)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (181, 181, 921, 864, 829, 846, 982, 760)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (182, 182, 813, 818, 950, 767, 924, 776)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (183, 183, 814, 906, 795, 913, 930, 831)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (184, 184, 950, 816, 843, 847, 876, 896)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (185, 185, 838, 814, 937, 890, 767, 846)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (186, 186, 948, 771, 929, 896, 935, 855)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (187, 187, 875, 822, 916, 875, 895, 862)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (188, 188, 877, 784, 767, 825, 936, 786)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (189, 189, 793, 978, 969, 848, 765, 850)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (190, 190, 974, 792, 915, 817, 929, 863)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (191, 191, 977, 904, 984, 828, 887, 907)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (192, 192, 796, 886, 857, 905, 854, 863)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (193, 193, 894, 772, 934, 805, 820, 937)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (194, 194, 857, 763, 818, 824, 912, 806)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (195, 195, 838, 938, 950, 985, 938, 900)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (196, 196, 977, 984, 834, 925, 899, 877)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (197, 197, 912, 767, 762, 933, 771, 932)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (198, 198, 788, 956, 802, 823, 837, 882)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (199, 199, 977, 764, 953, 899, 957, 959)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (200, 200, 885, 793, 967, 822, 776, 933)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (201, 201, 913, 839, 858, 902, 785, 834)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (202, 202, 825, 842, 831, 834, 832, 898)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (203, 203, 944, 896, 808, 846, 791, 778)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (204, 204, 880, 810, 883, 965, 882, 793)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (205, 205, 774, 950, 809, 979, 852, 779)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (206, 206, 845, 945, 774, 961, 966, 921)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (207, 207, 950, 972, 781, 906, 799, 869)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (208, 208, 875, 882, 827, 885, 937, 833)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (209, 209, 881, 937, 871, 833, 798, 761)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (210, 210, 943, 911, 935, 972, 982, 823)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (211, 211, 927, 911, 972, 813, 891, 829)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (212, 212, 849, 774, 974, 870, 889, 842)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (213, 213, 914, 776, 780, 927, 774, 765)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (214, 214, 945, 836, 909, 819, 829, 765)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (215, 215, 802, 816, 893, 914, 960, 957)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (216, 216, 773, 911, 782, 921, 872, 944)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (217, 217, 973, 957, 980, 844, 804, 944)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (218, 218, 981, 778, 823, 983, 789, 913)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (219, 219, 931, 766, 875, 956, 769, 901)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (220, 220, 925, 795, 937, 922, 952, 905)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (221, 221, 867, 765, 800, 945, 822, 835)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (222, 222, 778, 820, 949, 945, 763, 767)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (223, 223, 770, 922, 783, 847, 775, 793)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (224, 224, 920, 844, 971, 804, 907, 841)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (225, 225, 850, 919, 769, 775, 776, 844)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (226, 226, 807, 874, 869, 946, 930, 847)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (227, 227, 968, 768, 819, 986, 919, 840)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (228, 228, 891, 916, 905, 985, 984, 948)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (229, 229, 820, 971, 978, 834, 831, 855)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (230, 230, 793, 809, 798, 986, 888, 895)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (231, 231, 964, 907, 844, 894, 825, 802)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (232, 232, 785, 818, 931, 959, 914, 902)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (233, 233, 889, 910, 809, 842, 941, 962)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (234, 234, 781, 864, 876, 798, 849, 864)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (235, 235, 847, 863, 961, 900, 810, 961)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (236, 236, 818, 898, 980, 964, 816, 868)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (237, 237, 836, 767, 946, 870, 941, 975)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (238, 238, 903, 822, 929, 848, 900, 794)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (239, 239, 905, 956, 858, 799, 976, 919)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (240, 240, 790, 971, 792, 820, 879, 898)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (241, 241, 800, 879, 762, 817, 940, 855)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (242, 242, 814, 835, 891, 967, 901, 903)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (243, 243, 885, 766, 789, 983, 763, 876)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (244, 244, 883, 939, 845, 779, 840, 837)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (245, 245, 976, 814, 889, 890, 847, 941)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (246, 246, 959, 821, 925, 835, 779, 902)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (247, 247, 837, 915, 877, 933, 932, 947)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (248, 248, 963, 775, 761, 975, 972, 915)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (249, 249, 966, 979, 881, 830, 887, 837)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (250, 250, 946, 964, 929, 889, 864, 863)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (251, 251, 773, 767, 765, 929, 968, 969)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (252, 252, 928, 911, 975, 767, 909, 921)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (253, 253, 858, 834, 882, 941, 965, 898)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (254, 254, 902, 968, 955, 801, 947, 840)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (255, 255, 937, 920, 806, 977, 963, 922)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (256, 256, 866, 983, 846, 779, 788, 878)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (257, 257, 973, 824, 826, 936, 838, 909)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (258, 258, 770, 939, 774, 890, 913, 760)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (259, 259, 764, 908, 870, 981, 950, 973)
GO
INSERT [dbo].[Notas] ([idNota], [idCompetidor], [s1], [s2], [s3], [s4], [s5], [s6]) VALUES (260, 260, 899, 779, 784, 892, 769, 887)
GO
SET IDENTITY_INSERT [dbo].[Notas] OFF
GO
SET IDENTITY_INSERT [dbo].[Noticia] ON 
GO
INSERT [dbo].[Noticia] ([id], [data], [titulo], [noticia], [status]) VALUES (1, CAST(N'2021-09-01' AS Date), N'"WorldSkills Competition: alunos do Senai e do Senac orgulham o país"', N'Sempre nos posicionamos entre os primeiros. Na edição de 2015, a única realizada no Brasil, ficamos em primeiro lugar com a maior pontuação dentre todos os países presentes. Estou em Kazan acompanhando a maior competição de educação profissional do mundo, a 45ª WorldSkills Competition que acontece na Rússia, até 27 de agosto. São cerca de 70 países e 1,6 mil estudantes apresentando suas habilidades em 65 ocupações profissionais. A competição, que acontece a cada dois anos, tem representantes brasileiros –alunos do Senai e do Senac que têm conseguido dar orgulho ao país. ', N'U')
GO
INSERT [dbo].[Noticia] ([id], [data], [titulo], [noticia], [status]) VALUES (2, CAST(N'2021-08-10' AS Date), N'Conheça os gaúchos que vão representar o Brasil em campeonato mundial de educação técnica', N'Quem cursa o ensino técnico profissionalizante pode participar de competições ao redor do mundo para se tornar um profissional mais completo. Quem está matriculado em algum curso técnico profissionalizante – como gastronomia ou cabeleireiro – tem chance de ganhar muito mais do que a capacitação. Você sabia que, enquanto seus conhecimentos vão sendo aprimorados na área que você escolheu, é possível participar de competições ao redor do mundo para testar suas habilidades e adquirir reconhecimento na sua futura profissão?

', N'N')
GO
INSERT [dbo].[Noticia] ([id], [data], [titulo], [noticia], [status]) VALUES (3, CAST(N'2021-07-01' AS Date), N'Aluno do Senai-RS é medalha de ouro em competição mundial do ensino técnico', N'Além de Victor Bernardo, vencedor em Tecnologia de Mídia Impressa, Brasil ganha maior número de medalhas e é o primeiro no ranking do Worldskills 2015. A delegação brasileira está em festa com os resultados da 43ª edição da WorldSkills - a maior competição de ensino profissional do mundo.

', N'U')
GO
INSERT [dbo].[Noticia] ([id], [data], [titulo], [noticia], [status]) VALUES (4, CAST(N'2021-09-20' AS Date), N'Mecânica Industrial em Resende', N'Em 2019, foi realizada em Kazan, na Rússia, a WorldSkills Competition. Dois alunos da Firjan SENAI representaram o país na competição e foram premiados: Ralph Crespo foi bronze em Soldagem e Victor Ribeiro ganhou certificado de excelência em Joalheria. Eles começaram a trajetória no torneio na fase escolar de 2017 e conquistaram o posto entre os melhores do mundo em suas profissões. 

Realizada a cada dois anos, a WorldSkills reúne os melhores alunos de mais de 60 países dos quatro cantos do planeta.', N'N')
GO
INSERT [dbo].[Noticia] ([id], [data], [titulo], [noticia], [status]) VALUES (5, CAST(N'2021-09-20' AS Date), N'Competição 2020 / 2021', N'Realizada desde 2001, a Olimpíada do Conhecimento é a maior disputa de educação profissional das Américas. O evento é uma importante vitrine para o mercado de trabalho e demonstra a excelência da educação profissional promovida pela Firjan SENAI no estado do Rio, e pelo SENAI em todo o país.

A competição conta com as etapas escolar, estadual e a seletiva para a WorldSkills (antiga etapa nacional), que definem os representantes brasileiros na WorldSkills Competition - maior olimpíada de profissões técnicas do mundo. Em outubro de 2020, foi dada a largada nas seletivas para a WorldSkills, que definirá os representantes do Brasil na WorldSkills Competition, fase internacional do maior torneio de educação profissional do mundo. Por conta da pandemia do novo coronavírus, algumas provas das seletivas foram adiadas para março de 2021. A WorldSkills, que seria em 2021, foi transferida para o segundo semestre de 2022. ', N'U')
GO
INSERT [dbo].[Noticia] ([id], [data], [titulo], [noticia], [status]) VALUES (6, CAST(N'2021-09-21' AS Date), N'WorldSkills', N'Realizada a cada dois anos, a WorldSkills Competition é a maior olimpíada de profissões técnicas do mundo. O torneio reúne os melhores alunos de mais de 60 países dos quatro cantos do planeta! A disputa é por medalhas em modalidades que correspondem às profissões técnicas da indústria e do setor de serviço, dentro de padrões internacionais de qualidade.

Em agosto de 2019, a competição foi em Kazan, na Rússia e nossos representantes fora,premiados. Ralph Crespo foi bronze em Soldagem e Victor Ribeiro ganhou certificado de excelência em Joalheria, entre os melhores do mundo.', N'N')
GO
INSERT [dbo].[Noticia] ([id], [data], [titulo], [noticia], [status]) VALUES (7, CAST(N'2018-07-05' AS Date), N'Olimpíada do Conhecimento é palco de seletiva de robótica para a WorldSkills 2019, em Kazan', N'Dez alunos do Serviço Nacional de Aprendizagem Industrial (SENAI) participam desde quarta-feira (4), em Brasília, da seletiva da ocupação de Robótica Móvel para o mundial de profissões técnicas, a WorldSkills, que ocorrerá no ano que vem, em Kazan, na Rússia. Os estudantes estão divididos em duplas que representam unidades do SENAI de cinco estados brasileiros: Mato Grosso, Paraná, Rio Grande do Sul, Santa Catarina e São Paulo.

No primeiro dia da competição, realizada durante a Olimpíada do Conhecimento 2018, as duplas tiveram como missão construir um robô móvel para simular a movimentação de contêineres em portos. De acordo com o avaliador externo da seletiva, Paulo Villiger, a soma da pontuação de cada uma das tarefas definirá a equipe vencedora. Pelos próximos meses, o time será preparado pelo SENAI e poderá representar o Brasil em Kazan – cidade russa onde a Seleção Brasileira de futebol enfrentará, nesta sexta-feira (6), a Bélgica pela Copa do Mundo da FIFA.', NULL)
GO
INSERT [dbo].[Noticia] ([id], [data], [titulo], [noticia], [status]) VALUES (8, CAST(N'2018-07-05' AS Date), N'ROTINA DE DESAFIOS', N'A seletiva da robótica foi dividida em cinco dias de provas. Na quarta-feira (4), os alunos tiveram como missão construir os robôs. Daí em diante, os desafios serão diários até domingo (8), com cada dupla tendo a responsabilidade de desenvolver soluções para os módulos das provas e adaptações aos robôs, tendo como base as informações previstas no briefing.

A dupla campeã iniciará, em janeiro de 2019, em Brasília, os treinamentos para a WorldSkills junto à equipe brasileira liderada pelo SENAI.', NULL)
GO
INSERT [dbo].[Noticia] ([id], [data], [titulo], [noticia], [status]) VALUES (9, CAST(N'2018-07-05' AS Date), N'Olimpíada do Conhecimento recebe visita de autoridades', N'Ministros do Tribunal de Contas da União (TCU) e parlamentares visitaram, nesta quinta-feira (5), a Olimpíada do Conhecimento 2018 acompanhados pelo presidente da Confederação Nacional da Indústria (CNI), Robson Braga de Andrade. O evento aborda o papel transformador da tecnologia em diversos aspectos da vida em sociedade, do modo de consumo aos formatos de ensino. Traz ainda demonstrações de inovações criadas por alunos e unidades do Serviço Nacional de Aprendizagem Industrial (SENAI) e do Serviço Social da Indústria (SESI).

Entre as autoridades presentes, os ministros do TCU Aroldo Cedraz, Augusto Nardes, Augusto Sherman, Marcos Bemquerer; o procurador do TCU Marinus Marsico; o senador Cristovam Buarque (PDT-DF); e os deputados federais Carlos Andrade (PHS-RR) e Izalci Lucas (PSDB-DF).', NULL)
GO
INSERT [dbo].[Noticia] ([id], [data], [titulo], [noticia], [status]) VALUES (10, CAST(N'2018-07-05' AS Date), N'Desafio de Robótica testa habilidades de 240 estudantes na Olimpíada do Conhecimento, em Brasília', N'Iniciado na terça-feira (3), antes mesmo da abertura oficial da Olimpíada do Conhecimento 2018, o Desafio de Robótica da Indústria tem mobilizado estudantes de escolas do Serviço Social da Indústria (SESI) e do Serviço Nacional de Aprendizagem Industrial (SENAI) de quase todo o Brasil. A cada dia, até domingo (8), oito equipes participam dos desafios, que reúnem 240 alunos da Educação Básica articulada com Educação Profissional (EBEP). Serão no total 48 equipes do DF e de 23 estados brasileiros.

A novidade desta edição da OC é que os robôs de Lego, montados pelos próprios alunos, têm missões estritamente relacionadas à realidade da indústria. Os desafios incluem simulações de tarefas que envolvem oito setores industriais: veículos automotores; celulose e papel; construção civil; frigorífico; máquinas e equipamentos; mineração; têxtil; e panificação.', NULL)
GO
INSERT [dbo].[Noticia] ([id], [data], [titulo], [noticia], [status]) VALUES (11, CAST(N'2019-08-05' AS Date), N'Conheça 30 novas profissões que vão surgir com a Indústria 4.0', N'O mercado de trabalho vai se transformar diante da 4ª Revolução Industrial. Novas profissões como engenheiro de cibersegurança, técnico em informação e automação, mecânico de veículos híbridos e projetista para tecnologias 3D devem surgir e se consolidar no mercado nos próximos cinco a dez anos, de acordo com trabalho realizado pelo Serviço Nacional de Aprendizagem Industrial (SENAI).

A previsão é que surjam 30 novas ocupações em oito áreas que devem sofrer o maior impacto da chamada Indústria 4.0, termo utilizado para a integração do mundo físico e virtual por meio de tecnologias digitais, como Internet das Coisas, big data e inteligência artificial.', NULL)
GO
INSERT [dbo].[Noticia] ([id], [data], [titulo], [noticia], [status]) VALUES (12, CAST(N'2019-08-05' AS Date), N'Conheça 30 novas profissões que vão surgir com a Indústria 4.0 - PII', N'O levantamento aponta as profissões, de nível médio e superior, que devem ganhar relevância e se transformar nos segmentos automotivo; alimentos e bebidas; máquinas e ferramentas; petróleo e gás; têxtil e vestuário; química e petroquímica; tecnologias da informação e comunicação, e construção civil. Essas áreas estão entre as que mais devem ter seus processos transformados e que apostam na dominância das tecnologias digitais para a competitividade dos seus negócios na próxima década.', NULL)
GO
SET IDENTITY_INSERT [dbo].[Noticia] OFF
GO
SET IDENTITY_INSERT [dbo].[Parceiro] ON 
GO
INSERT [dbo].[Parceiro] ([idParceiro], [logo], [Nome], [Descricao]) VALUES (1, 0x89504E470D0A1A0A0000000D494844520000005D0000004D08020000004BC5FF0F000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000000970485973000012740000127401DE661F78000009EA49444154785EED59799054C51DCEFFEEAC88C26AAA8484D9815D5824C222829C09720904080262248044103C488C2010308424208829CA90906020311A0E21020A118365943208866BE5081020EC9B7973EDDCF7BB365FBFF77699E9E9793350356CAAD25F7D7FECF6F5BABFFEF5AF7FBF9EAF3473B0C0756183EBC206D7850DAE0B1B5C1736B82E6C705DD8E0BAB0C1756183EBC206D7850DAE0B1B5C1736B82E6C94AC8BAA35CB8A9648AA81A02CB8D2878F467FFB6668D99AE0C215C1E797132E5C115AFCB3C8FA4DC9FD87A48B57148F5F8D44B58CD4ACA8A4BBA669B2A2360515C1559C1E9F168D37CBB2FEE11C68B2AC86228AE8550491EE9543116DD4A680D9EDC651822E9AD6ACAA5A2A8DA5A63F39125ABADA5D3F52B8B3B6F17647632558DD68D3893FC8BF8EC6765D9D9DEAFD539E8A6DDD2E5DB80C75202846C02C9B663C27D60C2A4A4FBF31893FBFABA533E604B2A02512D10D9BC51E43C5DAC154AF1CA2B66E5874DD6FCC6E378E12745154351A4B1FF9272CC2657FD014A2C26E451B580DED3C4326C6B76C837D61918AD7EF1DF3B85E5584C21D35A11FAF417B730259508361DF8459447DB21974C7EBAC7408ED6BC2CBD698DD6E1C96BAE896A286A3C9BD1F78473DD6787B57B2E6DBBA944A5D2397A37F78C55AF9D255C5E52683506D98AC74C0DCA48673E6340C68504595AF395D5F7FA0F8342AEC42BB6EE1A5ABCDBE370E4B5D544D4BA65207FFEE1938DEB411EAF3A5D0667776AE0FAF5C9F39D1E01D3195AE65D26677F719913AF4A9390D03D82459497EF0B1D0AE2BDD3E9F65D5054E4EBE78C5F79D2789DD161205E586E95AA8566117EB8646376EF50C9E40573159617756F58CBFB54B9324228701F8B84C26BCF25562B654FB7C965797583CB671ABD0A147C1351351AA8903263ED8D2A02A1DBE47BEEB720CA0CB0BB1C20E1353FD01C861CE465161BC18846C12D5389F65D445D3705F7A864C62CF43FFB0B3531FB8D2C0334B83CF2E8347805716EEE8C65607EDEFEE892E74792156D8FDD39F96CE5D6C5614733EB2A2881E57E77AB20154E37C9651175949FFE30B622CD4270DDAEC9E01E3E26FEE94CE5E505C1ECC189E3575F063EFC3534B9A775156D8DDBD47202CD024338AC1A14EBEF7216E1962A154E37C964F172D9D8EBDF136D961EC3FC54A072E059C7F351223FB89900F849DA752A90F3F11EEEC4ECFF22658D145E858177F7B372249733E92145AB4AAD43BB18CBA2492E19FBC4AF607E72897882F9AA6CF27469E0DF847C4B497AF112752CAD48B110B430C89B0D51C3E93F1F41F5B92B180E5B4974CF4F5DFFB26CFF14D9A4D73F29CD8966D8AE1144144FA8A023B474C9C397A52B88B652F50EA466F7AB8EA6FCF94CE5F32C228048742FBDA524728A37F21A743459282134E91642E1022995203215C19AAAF09848B491F3DE11B3783BDA595D562B78142554FBA3C9BD49A1113767B287DE4B8318DC4EEFDC4A96737B0601975C12EE91BC522294F7FFA39B9861E9BE79FFA14E81D3E45B8A717FBFC6396553D432FFED4FDC068BAAA85588650755F4EDF0A6232895DEF6303E0EC428B57A1CDF55AD280640C2453CB2E3458465DACA16989ED7BC59EC39025120321844BCE9B1F882976E881A40619966FDC13746D0B9D5FEB4BA23EF8AFEC725B7568C55A244A483E3D4327D1119DADDAD57580F88DE1398506DB54973D8862C94AB0C9847993D3E9FC6A2FFFB4B9E4C64D247D136652B5AD74DFFF7060DE223AC6B755A30B62EE4CC3790847A90647E61DFE28C945B30A4DB6A52EDBF6883D86148D56901C05172E97CEFC0B8EDC4217CF37274737BC41FB6C9B1D16011713DBFC96138734D773A12AB860097C7376A1C9FF7D5DB036E7BDBD030B96401AE295A9DA1622C04FEE3BE8AA1998538EE5B5AF8DFD7167D3CCE7881FC9F55CEEFE63A3AF6FF14F9C9D5D68B28CBA18D11A93BA4B4EECD827F6FA16021C18BF80936F1C286A7E06910776EA135AFE8ABBDF18BAAA85BEF13332474FD087822CAF6B60EE8BAEDA416403B28F6A85DD3BF60984917EA4B5AD85AD2CA32EB88C0B115792A6654E7C1959F76B845EA1977E8E93E27EF011AB60B4123EF221A1631D5DDE421C07F96A63E0D965F408B66A67977EB4C7C5B2EFEA1E98BF3873FCB47FF29C9C2A83E5D3054B2DC4C4CE7D6A304CDE7AFD01E4968ADBAB3845A9E13C2CC2226F24DEA1906AD065C22C35168F6CD84CDB1DFECEEF859BA8BA3FC2CECCC933FEC9DFA76BC1F2E9823B18DB8B2B369F7016F2956B24CC35631C5045BC0775F4C79AD242F55CFA26CE42AC98F8CB0178530BF94C563ADC7D47A53E3A2C9D3AE37FF416EB528323ED301F9C7289A948A7CF5E7F0130A09267E0C8DA8DD46D5A22892EAA9A3972DC3B6A7AD111E0CEBC23A7C154A553676FB52EBED1FAFC2004F5C9DBBAC0DD26F71F22BF81640326138B23D5246F54795D8AD2D045FE8F107866099644D552C49D8DE38C83DC06BA847EB49244592C5DE044823F7C59FEF755922BB5A4059A24C997AE781195DEF439C2208944E4B54D16EED92052F6F8D6ED485361B6B75A172426E425859904E28EB8A75768D9EACCB193F235A7E2F6C1B3648E3704E6BF54D0EF16A3A98B2425DED927DE378CAAA528DE3F1CB7210CB60D74515C6E77FD48F651C7CA6DD5B8293D03C737CD7921F88315C1A7172336411657E8E891D0C3FA3ED2756996154431BEB105D328C24A8777C454351AD764593A7DEE56EBA2C513D1F59BAC8E3A5147FF05CB08EA2C978D2AB1C6EA9DC1D4455515D10BBBA36AAF130BEED08338175981E36F0B5DB01B172EEBEFB556812CA1A188852870495575A1C5AB2CDE194C5D340D3E2BF2CAAF848E057E84C011EE541FDFB28DDC866DA20B00879FD8F3573712796B5BB0A63E45FFB479E9FC303F8BA62E3A123BF612170363CC6B864D72D50CCA9C3A4B1AB7952EF830E2DAF89F76B9FB8E2656437DBB14627E5575FEC717A40F1F854760E7BE3AB375497FAE2BC8FA22FCBA77F814351C69535DF4F73A35144E1EF808E919C9685B8F4C81D71642A3015A563AC4EE83C32BD74B5F9E87E961193EE4BE66779ABE49B35B7551444F60CE0BE6D5964B5CE1A145ABB4749ACCAD5597BC66F83ABA97ED777B40FF3C56856825FE871D08F688EF6CF5B2204B0E24D988FD902EA53F3B861C8A448058B3AA22C723C9378BA86AD5058149E4171B5C9DEBA936A0F3DEDE89DDFB49DC4426A64A0DE7FC53E792AC329730160419E1E56B8D016F02C57401F40C48CB64D448943C6E7F762CFACBDF357DEF79CF908962ED60E16EF2288B1B1AB196BBEF48DFA427C32FAF4BBEFF3724C76A20A4255324FF36A0AAD2F94BE8CE2479F76FD5459214A71B0111D506CC7C710A471B5B65DA72308CC2F83BFB68EE7A2FF1EE018C600C7813284197FF4B705DD8E0BAB0C1756183EBC206D7850DAE0B1B5C1736B82E6C705DD8E0BAB0C1756183EBC206D7850DAE0B1B5C1736B82E6C705DD8E0BAB0C1756183EBC206D7850DAE0B1B5C1736B82E6C705DD8E0BAB0C17561A1B9F9BF208333862EA7284A0000000049454E44AE426082, N'3M', N'3M is a global innovation company that never stops inventing. They have global sales of $30 billion with operations in more than 65 countries and their products are sold in nearly 200 countries. Over the years, their innovations have improved daily life for hundreds of millions of people all over the world. They have made driving at night easier, made buildings safer, and made consumer electronics lighter and more energy efficient. Their technologies encompass sustainable practices that have less impact on the environment. They even provided products used during NASA’s man on the moon mission. Every day at 3M, with 84,000 employees globally, one idea always leads to the next, igniting momentum to make progress possible around the world.')
GO
INSERT [dbo].[Parceiro] ([idParceiro], [logo], [Nome], [Descricao]) VALUES (2, 0x89504E470D0A1A0A0000000D494844520000008900000038080200000046D04C4E000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000000970485973000012740000127401DE661F780000102049444154785EED597954945796AF7DDFA8A228048442016511701AA5C70534241ADBB8251AA3894888594C269368C624D3337D92E974B6362693CDA4D359269DC9B8A0C674026A267117C5051145365904AA0A8AAD280A6AAF6F7E5FBDB242835AE49C397DEA8FEF679DF2FBDEBBEFBEF7EEEFDEFBEE2BD81445B11884253881FF19841F186EC2170C37E10B869BF005C34DF882E1267CC17013BE60B8095F30DC842F186EC2170C37E10B869BF005C34DF8E217FC0EEDF3F9AC4EFBD16B8D273BFA59F2648A2B62612C4529F9EC075394F10A3E9FC30E8832F8FFC02FE0C6EBF356B75DF9FDDE6D95E62191FE219E3293F2516C1FC5A1A875A9AAA7A6474AC64D0E68C6379B4D8B936F002B01463502A35638EA3588E04022E0FFC627D0487A6FB48F56427A8332000446C910F835D162630548D7C84622091061F21A6C0C895FC0CDB073A8B4AAF4F5FD6FDA9C14277A15376AA98FE2B2FCF4C448795F2D4DD449F99837E4CC98D16EB7BBDD2E814008703881BCEAF1785C2E1796CEE7F3B95C2ED90384D1882E9E1F5EAF17037DBED16B862C7AA110A33004F20E87C3E37173D81C4C221008820AE116D0E0767BC8C6D18405F06F081019C0E1C00A3DE4390848421526C23356E27438DC1E37F470B93C6C84CFE3B1397054CAE974E23B2849AFC7ED76BA5C1C361B8B09AE2424C6CB0D9297A1AFEDE31FDF3E5CF393C34579A5333CEA077CDC587803B6CBA5A8DFE5C5AE4CD7F8F717187253603A58E7D0A103F57575C929290B17DCCDE383517A4C575757D5C54AB7DBFDAB9C1C9D2E9A7006E1EAEA4B75B5B513E3E3737266B4B7B79D3B5B8146E801684FA087C226EC8404FDCCDC5F43557F7FFFF5D696EAEAEAEE6E330C949C9C929A96161D3D412C16A31763CF9C397DBDB5D5E7F5125797496509FA04CCA8D6A883EC1E3F76B4ADED3ADD4D9CCDFF25164BB2B2B3F5FA44A7D3D1DEDE7EB9BADA60E8F07ABC0AA562CA94A9982852AB855859E9F73E9F77F69CB991915AA872B99C8D0D0D7575755840CE8C995151514177BC3DC6C50D88C16455D74FFFF1BBE77B6D032E0FCBC3D6D8656B9C825CF082D081B764474BFEB422592A80956E470E4C3360B12C5BB6F85A63635252F28E9D25136262C85A2B2ACEBCFEEA2BFD16CB2B7F786DF6EC39F02F34C23DDFDEB6F5A3ED1F2CBE67E9EB6FBCF9C30F875EFADDBFD3D1E3713BEC7668C38611671C2EF7996736AD5FFFB0D164FCFAABBFECDEBD737878582A95C2F71125D9D9D3D71715CFCDCB57281408A9CD9BFEF9BBBF7E0BE5188BCDC3FDA5525941C19D6BD63E98953D5D2412A1ABF8E1C20365A532999C2FE007F703D36FDAFC2F0B172E3A7BB6E2BD77DFB95475111A783C3E820C6AFFE9E9671E7B7C23963D2F7F0E66FDD3279F664FFF07047D55D5C50FDE7FF7C2F9F3F7AD5CB5F1C9A762626269C6C7013AE84283A2869CD6AB86533E6A402AA4045C96C737A0129A7B580EAB5B047B83E01A83F5B2C9961BAF202E7653400CD63C7CF827B82D9280D168FCE1878385EB1FA6D9F77B8917DD7E6D81013786F81B7D6C3627513F69F5036B70F299BBCC674E97F7F5F5E6E5CF9B38311E165978F7229BCDF6C17BEF9694EC8A4F48987F47C1A44993AD562BC2AEE6CA9577DE7E0B14421892500685E919D366CECCC5A3D16068696E2E2BFBDE68346C7E6ECBAF7266401202F080BCBCBC89F1096CDADDE85DC9E5F2C4C44998F4E0813210336D5A66EEAFFF51269321E21B1AEA939293E16458305932F6821C80F62F3EFFB4F2C285823BEF5AB76EFDF88901C6C50D36601932D59B4E8885148F4B79782C1E5734234977A14774D10043F9408F9B62ED3A67CC8993DF3E70868686F6EE2DC1FA16DEFD9BB2D2EFCA4A4B97AFB84FA5528D67C130596656163E7886C5BBCD6678E59AB50FE5E7E5236E6092FDFBF6EE2ED9151B13BB65CB0BA0CA6F62AAA5A5F9E38F3EFCEBB7DFEEDBB7677252525CDC44DAD26C765E5EFE73CF6DC14028A9ACBCF0D99F3F3975EAC4AE5D3B62E32602980232ABD7ACCDCB9B478E0DBC02B03E12545757A742A14428C351103AE8EDEEEE56ABD59811118357000F4D4DD7BEFCAFCF8F1E398CFC56FCC80690070DA4773C1857E2F3F85CAD3D9503C3AD623E2511B0244256727462C1D4E939B11A3997C5F67828B7D7E7F69C6AE8BDDE6B878D02C3C6005D08F0EA4B55F0EB4D9B9EC30981D59F39530E2F0B48DC16C434707C000F7E53D12DA409CA77ECF81A5B5FB86811AC26148A7044C3583806EEBD7725CEB6D3E5E5AD38667CDEA02A0C84DD2512090268DDFAA298D8B8F3E7CFD75EAD21D30188CEB6EBD711E538E710049805036572596C6C1CF2D8C993C70F1D3C50577B150E875304671B6D797620D64D26D35FBEFC021186CCF6C8238F22AF62C280DEF121B4340E1BA77BB0C67050C0F709059448C0928978A93199FAC8A4D97A55AC8CCFF6F8581E2FE5F6D8EDAEEF2E9A60E79BB28315C343F77FB30F9967E5CA557171712B57DE6FB50E1C282BC3DE6EC3E87880E1C34343B5B5B5B0F5DD0B17D1B4DDF0503C4C4D4D9D346992C5D2DFD1DEEE74BA48FB4860140490A30C1DEDA64E136984CE7D7BF7BCF3CE5BDBB66D7DEFDDFF44EA238BC4098FA0C4A97EB6A2E2D5577FFFE61BAF7DFAC9C7C78E1DC509877EB20FBB7D18F54EC9EEDD1326C414176F40150362824B1A2742730347EBB45C355BAF08783E218FE6265A159D1C9D2917AB5375B2B42889082785DB4BE83972A5ABDBEAC40A038347001B6B6C6C3877F68C482C9E357B0EF8403D26914A2F5DBA78E572359109ACFD6F79C240FF7B888DA172C5818CFD8FCD901289949CF074F980F2EC6610F005C84EF01EB7EB67F23A3ADA1BEAEB1BEAEB1A1BEAED0E3B69442CC2D6CF3EBB79C3A38F656565E344F9E8A30FB7BEF93AEA0BAC01EB850C7229A842110F613AE9FD4256084273E3F539AF1ABF67B35C7C2E25E4B1C47C4EA2362D213203E94422E0CE99AC8A1072400C3E3EB7D7D83374A2D67C336AE8EB0B2A1FB3D98C78FFFABFBFDABAF58D9D3BFF0705A8A1C3F0E34FFF8BEC8C6DA0FC77399D6E24C911F460C3D8193246E0FD1690C9E5C8F838C0AF5EADF95B72599D9DA69E9E1E64242D328FF0267A305D6F6F0F121734A85411A41134AFBA7FF596E75F7CE1C5DFA246888B8D23ED000A1964AAC79F78125DCFBFF05B84514B4BCBF6EDEF6377B88F43402A952C5EBC041F14E29F7DFAC9A54B55D8757053B4B7F9415E6F85D0DC5886DBDAFB4EF3B83E3E97C5E7B19412955E9BA9924E4017A23447AF4A8810F1504421B3B9BD0EBBEBD005C39013C625A303C03AB0F3F2F2937E43B30F1D3A5856568A820D9E85F0BF5859898327222242ABD5F6F7F721C5C3E9E852C7EBC515B2F2C279248478D44BB7F63E7481BC3B0A0A3064CF9E12FADAE1A58B3E7CDB06078F1D3D7AB5A666725232CE3994BC90C7F202D5941F28BD8E1C395273E5724ACA542437A213C06D66DEFC3B50F2E5CF9B2F5728884171714602404821205252A62C5DB6FCB1C79EC0CA7198216D62DF580C8E32CC85927AFEFC029C615F7EF139168089301C9376B4B5D5D7D5E2000B4C730B84AED3EA4CA54E4F3F9743F9EF646C9D32511F3983C7A1BD0FB6524B05B39234579AFBAC4E2F4A604C7ECD3070A9A96F565AD428531E3B7AA4A5B905D960E5AAD5387E49AF65C0F2CDBEBD28A54E9C387EFFEA356969E9B0E39E925DD8F6CCDC5CDBA00D45364A32D4A979F9F9B74FD9080B14A9288A7039DDF6D61F972C5986AA0C3574F9A953FBF696582C96B50F3E04BB4309CC879D205E716040A1D56AA9A8A8C0A18DCAE1AE050B929253021A592C243489588292C13F2B6EF502B8C8C0C0C0179F7F3668B5E2C2949E91816C79F9F2E5E1E1219150887DF9C7D1401AC03957BCE15124C3E3C78F41C9131B9F4A4D4D6D6E6EC245145964D03A38233737207D3384E6A6B1F32856465744148BC71147ABD222E549A8ABC0147AF1302F5DBBEF54ABCD6AF77AE8B0B55A1D87CE77CC9C12890B2131241AFBFAFACACB4F0D0C5870FF5ABA6C198A287F0F5D52C39B5E7DE53FCE9D3B7BE75D0B700144F8C3BEDB3F7C7FFF377B1164D80994AE2B2C9A3A35752431780653F4BF1B406372CA94175EFC379CDEB899C34F351A8DC3E984833B1DCEE52B562CBE6709F215DC96C8C31BAE355DC33087D3810B0A38282C2CBAE79EA572B9EC867ECECE9D3B9087F1EC9F9315A156171515C7C6C5994C46507EB1AA325A170D46310536B864E9728D2692D48F58174A4984726A6A1A8A342CE0F04F3FC2E19E7CEAE9EE2E33760D4F42DD717B6EB82FBFFC72E0F116F8B1FE7CABC53AE855D8A808172F812599D947699A6DD6E6416BD3E040B36DA0CB3DDC61B6198DC33E7083C0F1D089226BB2264A250E1A139171ADA141AF4F5CB5FA01D4397409EC0729616DB641DCC071554C4D4B83B32B95AABEDEDED6EBADE0262D2D6DE3934F2F5FBE028D900FA8A3491DEEEE3623CFCCCDCB8B8E8EF6DB83063209CA2D94189D2613AA5F9CED78453CC1277045C5747014D4C4B06044845A2486D38BD51111F9F9F38B1E2E2EB873815F153D4B53E335643F955209097812F92895CAACECE953A64C4D4C4C441283E377183A70926923B5D05FB8BE880C875BE08E857B2E9C831C72A0133E3164B36922357ABD1E191B53A4654C536B34FEDDDC1CA17FB339D154B961F7973CA9482C43BD2397497522919203EBFA6D21E672F37571712EF9BF6E3F376873E124E4B0289554B07EE194C797A743061A3005EA661CB678464D8983D4AF9806BA70A2F474777BBC1EB55A83CD230BC307218C0D60127036212686E44020308C2E52ED9081B0561B85DE206D5088740185BDBDBD48263C2E1797446D94167A8806D8C86CEE82599180218FC30F63E50A79842A822F10103D5062321AAD8356BFCA9F8162253232120916CE3760B1600AA4322844E58965A08E0013188B4A1DB1AED3E9102864CDD84B6F4F0F5C4DA1542A140A948B985D2E970B043F9B622C4273D33F3CF4CCFEFD075A9AA42A99542E158A45D803F68CFB5F9A4ABD227E72B65A2B65F39FFDA0FC649591AE52288AC366CDCAD0BDF6C4ACA808D89456825908B079B2DC20483B1EFCA6A3D713049124ED805F3C00228007D23EB2977411047B0946F6FA650308F6926F00161F250304C5808012BF106907825DF81ED542722969278DC0C8E7B1085DA74985A28DB3E7F0298EDBE575BB91AF7C2040CEE7DF1B3F7973FAF4B9BAD848A406016FF9AC040ED6845E48B83D6D466B454D27592580458015F0397635A42BC8595012F98776801B3F0110E120468E1AD54BBA6EA521D83B1263F58C9501826240400073F86719D5455E03BAFC931219D21E44A07B0CFC7FE0F084E686C7E1A468B5F76564E0FAE2F378393E56864AF362E68CE294F44499528429B11A166B6EE6849808319BA27F5BC3A7AB67E87495C1EE1CFD271006E3018A55A3C110BA1600BDA067A24AD5D0DDAD93CB8BA6656D48CF4A51AA445C5ED021111DF4138BD5DC61910A7932914026E62BA4027DAC325A230D2862306EFCE1A597503E843E6F18FCFD51B876ED438585A1731A83BF3F507F1A3A3A186EC211B89C1E3F768CE1261C81CA2F4AA763B8094748A5D23B0A0A186EC211E4F6C47013BE60B8095F30DC842F186EC21514C570138EF0F97C4EA793E1261CE1723ACB4F9E64B80947646665998C46E6B7CE70446767E790CDC670138E002900C34DF882396FC2170C37E10B869BF005C34DF882E1267CC17013AE60B1FE0F23EC933FC68303F50000000049454E44AE426082, N'Autodesk', N'Autodesk makes software for people who make things. If you’ve ever driven a high-performance car, admired a towering skyscraper, used a smartphone, or watched a great film, chances are you’ve experienced what millions of Autodesk customers are doing with our software.')
GO
INSERT [dbo].[Parceiro] ([idParceiro], [logo], [Nome], [Descricao]) VALUES (3, 0x89504E470D0A1A0A0000000D494844520000009D0000004D0802000000337AF1AE000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000000970485973000012740000127401DE661F780000134349444154785EED9BF973545776C7DFD2AD6EEDFB8224B42010080162315802C46EB3D8060F600F9E4AA566AAE6874955FE81A46A129753F9075295CA0FA931433219CF8CCB800163CC8E8D84418040082140FBDADAA5D6D65277BF97CF7DAF69B6B62BA6C615787EA7DAE2F57DE7DD7BEEF99EEF39E7BE9E91755D976CB19C28A17F6DB196D8B85A536C5CAD2936AED6141B576B8A8DAB35C5C6D59A62E36A4DB171B5A6D8B85A536C5CAD2936AED6141B576B8A8DAB35C5C6D59A62E36A4DB171B5A6D8B85A536C5CAD2936AED6141B576B8A8DAB35C5C6D59A62E36A4DB171B5A6D8B85A536C5CAD29AFCEFF3F470F4ADA8C3EEDD1866A82DDC7B5E19B4A6CBE92BB5B495F2FC716C88E584996D94E48F9272F2F39AEBA24CCD3A4E08C36D9A1F59ED2FA2E6A13AD92366D641A5D969D724C8E9C56A1E6EE96E3E7CB6A8C24AB7F5D804DFFC862CE57495E665C7529E8D30313701482063B0F4BB3A392EA929D89725C911CBF409FEED6BDF7F4D911D48059CDDEA1E6ED17B79C4992EA96E4BF4289C1397EBF9FBF4EA753515EA59AF512E20A4721E8B43E33A00DD76A0355DAE015DD37200355749692B25ACD582F27AF905D6902F2D17A6DE0B236744D9F6CE3ABEC485052562919EB95D472393A5322394BD097395F906D939393F7EEDE1D1B1B5BBD664D42626268F4C7143392344D73381CAAAABE709E78A970D525CD2F0526F599416DF06AA0EB883EFE9011D91123B933D4F44A65EE3E392657565C46A6C56CB1675D9B952074EF579AE7B43ED5A5FB271894D19FBB57CDDA22B93365473C2C7F31683D1ECFA18F3F6E696EFE87DFFEB6A0A02034FA634A30186CA8AFEFE9ED2D2929C99D3BF7859384FAE1871F862EFF3F4520AAFBFAF5B17ACD7336D0FC9FC1AE23D2CC901C95A2242D55B3773A16FC46CDD92DBBD365254AC4A2DF0B41455A561CF0588E4A12344D5F27B9522514F459C947645C81C7D2CCB0AE05645995815671FC5074C7BDDE9A6BD7060606366EDA949C9C1C1AFD31055CBF387EFCE4F1E339B9B985F3E6BD305FBF0F57A88CB012A26B9AC96B7325F316121EF9BF0F9264CC39B93007655837D11C6CFB9F60EBA1A0E79CEEF3C8D1D96AC606B5E06F1CF93F573337CBEE4C0A28BAC68C7E7DA826F0F03FB4FE4B12C595418AAE517795E4A5246A257189A446CB64725AAD919BFAD0757DAA4376A5CBEE2C5D925914613BCC1536322CD81956E0EBC4C444ED8D1B23C3C39B366F065731AED3AC3DF594B1B9A7B68CA0696ED09C27C2232888759E5260381008DCBA79B3BDBD7DE9B265F90505F035FCECE3390D1BC2E3112532AEE6027D1E4F5B5B5B6B6B6B475B5B5757577F7F3FF586ACEF703AB9EEECE8E8F778508B8B8B630D9614FAADADC3C3C33C1F1D13C320A5A2ABB393CFF0D090CBE5A26610FBAD2D2D7C30BDBBBB9BAFD3D3D34EA7C3E1BDA5B5FF49B0509B9114970075EECF94C412F09014A7D1043DDA861E2408F4C12A6DAC411BA8D6C7EE4881092938CBC661B3EC4C90A2126992C526C61B25FFB848EC7EAFE4CE9E5273BBBBFBC576DADB3195BD4419623A087F8122A69A0AFD7D7DD353533E9FAFFECE9DD19111704D4A4A62CBDD5D5DC9292954BE902DBA0EEA7889EBD858CAB98443860607DB0DC7A1DFD7D7C742E8B37D16427F767696C9B98B0ECB797A7BC7C7C7558723CAE91C1A1A6A6E6EAEBB7DBBB7B7372323C3E57663557474347F712053B6B7B662C0E0E060C0EF675CF9EE021CB9BE625CE3BD7BE7CE9C697AF8905DCDCCCE12383131312CB6A6BC7C5D6565DDAD5B17CE9F9F9C98585656F6B7BFFA15804D4D4E1E3D72E4DAB7DFBADDEEF59595DB77EDC265187DE4B3CFEE373612ECEF1D38C0ADD3A74E513F461ECD494CE4E6E656AC5D5B5E362776820EE8AAEEBDAF93815D29727CB192542A272E519296C8B1858FFB5B2C162DD5750EB2FA689DEE7D20126F742E4140D296A2B3F5F1266DB45EF736C27B1A6325619194B46234EAB51B0F7C35D76B8181090838FAA0F28A8AED3B76B8A3A399D53B36565D5DFD6D75F5607F3F5E46E2E3E3E76467E307ACFDE78F3ECACBCFFFAF8307EFD6D7FFD3471F25242498B6E02812F589CF3FDFB879F39B3B760000217BE9C28586BB77676666801305E6295BB162CBB66D788F41BC71F1DC3940827DF074766626362E6EF9CA956F6EDF5E575777E2E8D1FE8101904E4D4DCD9A3367EDBA755BB66E85455F5FBA84DF781CE311B234E3CB962F275C4C4B9E91C87C8573BFFFF86336095A54EF82C2C2F8B8383C422003D5BCA222A6BE525545B881FAB637DFE41830313EFEE99FFFFCF0C103D4E2E2E3972E5D4AB8B1BD335F7DC51E12939256AE5AC535B1829598357FC182A4E4E4B1D1511C81E372E72DC92ED9661034559C5282D392C8A2B748B9BAAF4F7CA53F92494A0A2754D919ABC4CD53925728718514543D30AE4FB68B8000ECC16A416212AF334E495CAC646D75E47F3093BCE5EAEDCE535F9EC695E4B792D25280E9EDE9A9AFAB4BCFCCCCC9C9018F3B77EEFCE5934FB067F1922565CB9783A8D7EB0554B8052D366FDD4A1C9C39750A5CDFD9B387003589429602A74B172FD255F1207B3F79E244D5E5CBC43150952E59C2C6F1D29DBABAC4848405C5C52C7AECE8D1868686C2C2C2B2952B1981E5640826C12150706A6A6AC2EBC5ED8451515111A918DF9E3F7BF6464D4D7A7A3AF1C120CEBFD7D0C0B4C50B177E57D5A795882022E17476A6A4A6CE9933E7E71F7C903377EEE0C0C0D1C3872F7FFD35A800EDA2C58B131313D9335F816D5149C9E8E8282982258950B21C990474C91B03FDFD38006B7044EDCD9B441C176F6CDF5EB16E1DD65FA9AEBE7AE50A41373232AAAB314AD23225A144CFEE3209A78D35EA2337E8A1829EB370514E2C551216C23F39365F72C4C86A34EC94199FEAA4139602B37A604A4400592826DF51FC77E8CBF145B2E2EE6B69A9B97683D2F0EEDEBDCB962D23E0E02B65EC933FFC012CF10E0E3D7BFA34A1B967EF5E78109F9000D234C3F42F17CF9F6753C22991125B58B887DAED5BB76E5EBF5E347FFECFF6ED0327480FF00B172E3C74F0606D6DED864D9B98132FAD58B56AF79E3DF816BE92F3F058755515CEDCBE7327F9EFF7BFFB1D218519509C5BDF5CBA74E3FA7542E4EDDDBB8936BC070D487B5F9E3801B5E8AD42163C2D91DB68A26CDFFBEFEF7FFFFD5DEFBC83956E972B7C30C77ADFCC4C4A4A0A01C52076030CCB1371C41AB91A2A60226703A84C5566D01915B570D122623CE420496A6E6A22C3E33BCE857BF7EFDFFDEEBB44AEA8A0D0910E28AE48CD794B2DFAB563E1DF4BCE249694A9A9C337836D7F0C3CF8F7C0FD7F0BB4FE77B0E754B0E32F744FC196836463D179C4E4D039CB645DBE44CFE19C2312B81A43AFD4DBD34B395FB060017B4191D8C26C62717E7131458E132A81081173F3F2D6AD5F4F16217FB2350A04893A332B2B5CC3BE0F5849F24D4FC3CBF18909CA10A052869887BF24AA7DEFBDF77A45053A999999BBDE7E9B6A0D6702C120B5D634864442C914E9C86894C43FAACA959933828100D652D709471EC1C9951B36C4C4C6C20A73E9E725325FF3F3F280870C490B70EAE4491A0A020DEE8384D93244B95CAFAD5973BDA606B3C466BC5EFA46C293FD8022D5177F656565E12F1EC9CBCB9B9B9797969EFEDAEAD5441FCC860464ECEC9C1C4A0E8E83CDDC0DBB4F88ECA0C48A934F6092BE492DF880216DFCA13ED1ACF55F9406AF88238D7F9C86488E4A9621B128C68B9594D704D2DE4699230DDD96D16A11739415CA27ADCA17C78E99AB9808F57477631E41861F712EF50CA61A7784A089557813834343DF23BA0E06A206C5C692307145783BA487AD6FBCC157845A0BA26433B205D35247498454AB59BFFFF9A06104C78ACE6B6A0ACA767474846E18ECC2F324CBD0F7E72432AE38E2F0A79F363537536FF00B414783E37AD43AF21F176406360029C9B4900F81916418F4C1984282B93478441E5501077117F6832271D0D6D242AA077B82803E936442FFB26AF56A3368C2A2F57E2905BC1C72D479BF9464A732D5A54F34E96377E998B48936D995A6666C94939729F1F3C5ABFF50E7FCEC8EA002A40036BC806D981EBA615447F204F999D6177244BBDDFC0DDD3304786853CD5D3F96E713B23182A3E19368FB9F7E846B33D52183434355DF7C83672037848379D457929F384444120C168CF6F970D7333A389F07435F9E93C8B89E3F77EEEC99334C4AB2A52A90D6011583A89AA602B642E8E2458BE0340715CA83D9C2E126984154A249C74BC5428D1E811DE04420A4C123278F8D8D99BD3E49867A43E452AD0BE6CDC3D6471EE14030A20D54495A4049ADE0E829D684A389257A7AA592B94D9FEE96A25294846201A7EA12AFFBBF43F032C8D1F41237AF97973F0E1DBAE200C9CF9F9A92D2D3DB0B71D90867C3D05D43845B6767CD2366589ED48037228B1A0AA46E268779227A9E1011527D7DA0C31E8978F21FC1BDB6B2927E0DE7409813C78ED19086B49F16E6C4785801E36957C3E1C2BAE06DAE1B5122D75712299B84A6E224B07327EEA025865BA1DB86B046C9E2C5741C660F420D207CC8AB24AED4B434980A2939FF91DC308B930311472BC81E20F79AD75F87A05456CC8513140DCE640444686A04C3C541A54F565C4A4625AB099E019E1A4DED5432D6A979FBD5AC6DD054BC04161C65C34FB3EA91E06B4A26B48049B88634637EE88AA132E58099E9CF31831C4384B1B229780D8AC312701313C93253012AECE12E03FC6583942A30E32B20D197908D49AD221A1E097769393F3F72441C4F9B9AC80DCB972FDFB46993F9E6015C8903339E9E8A29630486E05226C1A5783B6C3CE5569C7D3D1E53F779898CAB19716C8CAE87CD535F31885688D0633CBC3C85936AC1051D1A30831F1B232A3332332102E7713439264153EEF22CFD1B6DE7D1CF3EE3B04F54131378131DEEB23D8E71E6B442F4A03898525C1D71B23B035B42E321E1B4E378FA179B4746898836FAAF2760A6D2831CC177E7F66D414A4D6383948F935F7CC1B98BF0358F10D405BE020CA6A2003C1CC7493CB8D59C47E43D5DAFB97AD5E40AA03E686CBC76F5AAE91688B5B8B494D4CA245D1D1D408B0EA05EBF768D7C8632FB65104DA29CD42C0AC4EC6C73B36822CDAC201632DE25990F32C89982968567E9B4A9CA5048DCF2F9AA2F5F86F7F407865D1124F2F9953DD325D1B00D0F0E728CC123184780B012069148391B502F497124529A5E0CE22BB4E6A4CC359A90920B2A56C5DAB5C4175C4168A35A5A5A48C274A7CD0F1FD20BDCBC71039AA6676470AE470D984316F0B0AF4F1BAC12AF8AFC23E02A83A52ADE6119103EF9D18CDFDB7B249F47FC42E01F97A63AD5CCAD4AEAEAD05464B3A82890A063A76A0C0F0D99B5FFDCE9D32D4D4D1B366E5C535E8EF144D5FDFBF7B18ABD0F0C0C3CB87FFFEB0B17EEDDBB67BC0E736EDEB285E864FBB76A6BE95F08777C8AF1804A6B03AE9069C9D2A5509610BF7BF7AE595C48510401A7761CC5C186E61186B134671B9EEAECECC4B12044AE62049D39595929696938877C092BC804EC97A7B84BBBCEBA841A7F39CB72A2655FB4D6F49EE61E9F91C8B842386624E913BC84090B7084A5D6D246E1576028292921941CAA8A0286AA8A4227B97DD72E962159D11D80379ACC4379CE33DE73623726C24BF603C0F8052113407A4E66C0CF2D03365364D99D06BA1C6FC46F7023B7C5AF75FDDF88970F02C27E7DA64F9F6CD5466A35CFB960C7A7C1CEC35ADF45392E5F495E295E11A797CB8EC7EC275CB099233C8CC465F8BDB1A18103C98EB7DEA2CAB02E369B69065051C07888083338A2600365825D90CCCDC473BBB6168AA1833270D264F4F4F4C02AC80A23B3B3B3B19D25EED5D7E319DA4952E8815FFC82832984067838C7B38D4843033013CD349B4CC824D45D3843EEC53FE265675F1FF96F6959197E237F90E4F83027E188A9EF1D38505A5AFA4C710C4BE4F7880420ACEA686B13195C964953000636F441E8D3C3D122C13FAE893B8A1017F88EC319A6730DD8840293A043722635998009FDF171D8E0312A1913E26B9A32768E4EB8697C2494A661CD7316CC38DEE81011531CD1E26D94F855076598EA17BFBD077D92EEA73D7696FD8B1C57AC0D7D0BB4725C61681A43581AE689A57B7BB11982E2443E38316C1B748410B099BDD36791BD310F6AE253D1391AFB656B70519CDF749DFD328ED9843B0098AF7ED8353A40CE42E45242011DA28A6CCF424CC5C67B8C77BC780CE7D07F700B5C39592C2C29A19A320395188EA29F90984834B16FE6ECF77870B539274F85E734F6F7AC44C6D51CC408840B2C20A2CD1BACC1BF4C67CE8866780673D0FC6A8E9B2388A98098E34C8BF57C655A267F46E7B1183FB06BBE5E69A245F73ED4C61A0477A7FBF4C084517165D146B9D3E5D87CF1122AB1544D5B1368FD63B0F5903267BBB3EC5F43933C12D68582ACCB5FCE332C0C24CFAC6B2A20DCC2B6F0DD70CC9993603F17581E1E377610527E528749CC79CCBB8CF01F16709711F32EE37CE51112BEA916D234A635FF7ECF9C112532AE2F9780AEEE173FD006670441C5F5AC149CD165F1E3AB38B32A4EF1BBACE292D428FFAD7F0CB6FF49CDA874561C12C0FF54E599D4F7520ACD2DB03962C5AB2577861C9D2DDE4224142BF1F3C4FF68CD9D2947A548CE784015401A3FBC875F36FD64E555C055082019A717F1518D0FE71C3E5C1883A602897DEE5E71BA2DFCA5F9D84F565E853C6CCB0F975785AFB6FC30B171B5A6D8B85A536C5CAD2936AED6141B576B8A8DAB35C5C6D59A62E36A4DB171B5A6D8B85A536C5CAD2936AED6141B576B8A8DAB35C5C6D59A62E36A4DB171B5A6D8B85A536C5CAD2936AED6141B576B8A8DAB35C5C6D58A2249FF0B1AC157CA08D0A3040000000049454E44AE426082, N'AWS', N'Since 1919, the American Welding Society (AWS) has been dedicated to the advancement of welding through the development of industry-proven publications, industry-recognized education and industry-respected certifications.

Our mission is to advance the science, technology and application of welding and allied joining and cutting processes worldwide, including brazing, soldering and thermal spraying.

Our vision is to continually enhance our position worldwide as the premier global professional/technical society in welding and allied joining and cutting processes.

We have over nine decades of experience in the welding industry and more than 70,000 members worldwide. AWS leads the way in support of the welding community; listening to our members and being their voice in the world. We are passionate about continuous learning; offering a variety of technical and education conferences and seminars to help advance careers, incomes and productivity. AWS’s services are supported by a dedicated staff and global industry professionals that represent all facets of welding; from factory floor to high-rise construction; military weaponry to home products.')
GO
INSERT [dbo].[Parceiro] ([idParceiro], [logo], [Nome], [Descricao]) VALUES (4, 0x89504E470D0A1A0A0000000D494844520000007E000000310802000000934F8A66000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000000970485973000012740000127401DE661F780000093149444154785EED58698C1C4715EE73EE6377676FD6BBB33EE2F856626513C7521C11646287F003011141C142084B20FE80C49F4024FF085290102090202146208808E4B015EC903F891485CB10837CCCDADEB5BDBB961D7BBDC7DC3B333D57F355574F6FF74C77CFD851D209EA4F6F8EAE7AF5FAD557AF5EBF6A569665C68513E0D45F171F3A5CEA1D834BBD6370A9770C2EF58EC1A5DE31B8D43B06977AC7E052EF185CEA1D834BBD6330BCC3F9F17F932F5FCCDDEA3B1D9E6536767BBEB9BDFBD462E97717B2E5DAEDBC148A7AB8EFDCDDB37BD8CFB1EC1B73F9DF9FCFCE17AA6A5F3BC0817B07FD07B746E3114FBE52FFC599D41B57566EEFD5D4BAA8E71BDBBB26067DA962EDC84CFED84C3E55EA743E4191FDD468E8C0A648B797F70BACDA6A0D43D45F4895D57F0DC0405B01A49A7C2D5F992FD4AA75839F4D9A3652A8CA370BD552557E693AFBCB3369FC574DB468EA8502DC9C982F3EF98FA52BB90A889ACB56492F6BAEAC479302862C16ABC9522D57AEFF2A9179793A97C6C454DD16659D50AC54E46333B91FFD2759ACD6D5265B18A86F5A5EE27D4742806855873540DC6AD63417AEF17D355F797D2E5FD02DA05ECD44542D0631BE50ACFD693A8B81B0036730312B658A56F73084C74C18E65FF3C5D34BA552ADAE6D9D367351B5881B18FBD7EB05F5DA168684F3F5B7E6134B12BD86451FCF62EF08ADA41A81EE7844FCCC78E8ED6B85BFCCE5296D18E2C5701F2FB61B4E2172CC5736470B15F9F9443A8958538C80C4A0C87579E9D218807E28214291DF54871966242CFE7CCFC0E1C9F4E925498B23FA9BABD411CB1A9950F6096C2F66A870ADA1D7CF3FBE3182E1472FE590BB546596010F21B8482FE98F022820C633E57A45738365F6C7434F4DC4942B3B98530FEB98EED65EEF137746E19FE16E2D8047610F879DF9DB73194A3DD4E1C19698F7CB1B238301C17E380548E8F3F36F5E2D3C77369D52A8C7202CDEBE78687F1CFCEB42AB81954AFDE8E5DCB96419D3C625381C0D0B3F7DA01F2C2F1474095A2604FDFD46F1B5CBB925E423C5323EF70FFABFBA398AC0D22CE33724B23D3EFED79399A397F3B04F1B3D3CFBAD1DDD5B631EA26A74034B09075EBD94BB92ADC032A18E651E5A137C7A57AFAA610D0BEAC9EE63F78E05BE3FD16BBC97015A1786DC58A9FEC648FDE7D7879FD8148D61E56C418CB064AB02C767F3CF827AE5C9060B11917B6677DFF63E9FA90FD0792F5F39B92021EE943BB21BBBC4BBFA7C4DEC50EA6732E51FBCBB3C952A6BEE7DEF9ED8C3F110FDAF07149E3D933AA251CF32037EE1C57DC358002C5333640681F2C393C9BF5D2F6020719B611E1AED887A43AE374286ADD56C6706F4D97463BF62B8DD780544C14209CD5558B036F28990F8D9F1E0631BC28FDD11FEE28630780753844D9DE043BE1B58FDAFFCA33A9AE89A57413786A9E0839CA52C49F386680B0BEA95055C28544FCC9790F8ACE4CC92945896B42A507F6B0C9FC9564E2D4AA717ED2C406064365B315405D4904C16EFC48D128C40A76914048D90B3CB656C796418658C096C68A15D7A98AA11587458EA7700EBC7ACF2201A0808DAE3A515083164E16D31EFC16DD1F9951A723DEA13EC150A94DBA36111795ABDB60042064F6964A7F55D9E37AFAEFCEC546A59C9C8007CF08BDC68482019D90A4ADC8D47840747023BFB7DE4A9D0021207E9F2D34AC2512D23E14CC4F68D85E82ED103FEA3BA3D7239A7259CA180F007241CCE2CE1304C46AA3F7372F99DF78A75644D259BBDDF84030F5165A3529E4C4AE72C6472593ABB24FDFB66D13423600E73B6C31B523EBB2CA1AAC1907858C4D98A567810582D56EA53E9B2A9113412213E948ECFAE3C9FC89C4F1266CD7CF928A24D487E6840F0816BEC92BD6341B04F82913641D42F0308BFF82802BAB14DA653E5D767F324503F26DC5B271325E18C85C52D3DDECD1682F2715BAF7762C04F386A01C924B6C31BE241CAEAF1A1A42265DC23F1106ABEFB8702308EB1545A8690C6E19040D30BE15F66700E4B2C23EA4D77E0471196753DD8DCD1EB7DFCCEA85DAE57F8453D8E47028A4B2DD7133E58667BAFF773EBC2E8359E5A9A81BE88871B0CF20181A324A2ACC7B116C72B7B12B352ED85A9EC05D4F58DC7CB70507869FF3039CA1A6F88EE5BCCF586E2F283C8F55035D05AD3AA0CC5A1FE8070DFA00F0B60252017014B0E4DCAF4706F3A1AC0703C3C77F47977F4D95980C00834FD82E2896200B1BF3622E208B32DE6412FA46908048DF70DF9D78444BEB394899342D34A36D6CB04BA628B803CF42D94D14C1857FFAA508B045B4C5D386F705CBFAA08555CD283B6BDD0756AFCAE026182E1EA455B28B3436DF3E25416A72AC87389CCAB97F2528D1C975A416E47DC33DED21A984B932F364BD664932C9B422D59821641BCAAABD8209CA4CE76989E9AE20F1D3AA45E31CCB1D93C2D90E125B6EDFAA8B867244026692D4459F9C6F1FDF4A274315D8603A48B45F225EF5153A5FAB57CD54E56C837480F881CAAF53F4E67610755CD74AA8227674AAA636E06FD86A0B87AFB5A2129D5B5F80D7BB82F6C089368A13EE9902ED5DEB95EC45DE825141E18096CE8F2E04F932E8C9D5C2869790CBD55998460B12AE3A6578D82967FCE17DFBD59CA96D5AD02836BA39E4FAE09D04B2B4C2612962F1270B3BDA381A7EEB57B91A00136AEEB723D805122CFA25669FBF68D026A07364530C9C38974B2F18A1C03712C50DEE098A05C979167F174D594C722E20B9F1E7AFFB9FEF064FA958BB91C79E94000858897C3A3C8D48D624DCE97756EB0CCA3E3A127EF69F3FAECF89F5F33DF76A6F7B825C08F4A4D4694DD2C5471DC6D2B784A8371EC337A04C3A4215801CCDFCA028CEB79E739F6EE7E9F59C42B6869B599E3BAA8A787BCD45475708BAC64E9464632B801EF27067CCA951D76EDDE6DA0DEC69BDB00BC81471D0A052A251445FA306F6344D522B13614E0BF7447840CB49886BED966A6303531E8C32A92306FE875E20674A1FFE048706707D4F7F4C40CD4EF1AF2ABFF9037456E4D58542FDA822579763C22C25DB54501F1B833E9F6F2B85D40601F5D1BFAEECE1E1C1750E7D81BD110F3F10FC7433FD9D33F10580DD526C03ED484069738B2E0CC41FF37011A41813BB835FAB52DD1F55178D1C60D08806019090B073647BF7D57B7AF83AA8BECCE8FCF11E4FF0DEDD7C7C50704977AC7E052EF185CEA1D834BBD6370A9770C2EF58EC1A5DE31B8D43B06977AC7E052EF185CEA1D834BBD6370A9770C2EF58EC1A5DE2130CCFF0092C0B4EF3FBEB0F70000000049454E44AE426082, N'Festo', N'The Festo Group is a leading world-wide supplier of automation technology and a solution provider for technical education. As a globally-oriented and independent family company with its headquarter in Esslingen, Germany, it has become the performance leader in its industry over the last 50 years thanks to its innovations and problem-solving competence in all aspects of factory and process automation, as well as its unique range of technical training and education solutions. The Festo Group has 20,100 employees worldwide, companies in 61 countries and authorized agencies in further 40 countries.

Festo is a lead sponsor of the future skill Industry 4.0 and for the skills Mechatronics and Water Technology, co-sponsor for Industrial Control, Polymechanics and Automation, as well as Industrial Mechanics Millwright, and became a Founding Sponsor Partner in 2001.')
GO
INSERT [dbo].[Parceiro] ([idParceiro], [logo], [Nome], [Descricao]) VALUES (5, 0x89504E470D0A1A0A0000000D494844520000005C0000002B08020000007AAA7876000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000000970485973000012740000127401DE661F7800000500494441546843ED96DB531B551CC7F792A4099084DC805230D4526B832D769441ED00F6A275C6D6DB743AE38C7D509FD41775FC0F7CD3C78E8E33AD8E4FBEF8E0056B954B51E9D0B185122EE552A19442026D0897B0816493ECFADDCD026173681B185FECF9CC6F92DDFDFDF65CBEFB3BE77758599619CA7A38ED9F920115850015850015850061A34D34B1DAD5C384F1C5351D68A610A0A210A0A210A0A210A0A210A0A210C8AD24233691E296454E92C931465E321BA5788213535C9E29653248ECFAC0648A5D167974893004677AD1783CC9E15D9E632CA65422C5E2DAC0CB88E4396598328327301EC11C2B9B4D2959669744E5960862AC9614CB6E30D6F56496E4DC4481167DE3D63FAFBB85B83294EC38AF67A9A12ADC395A3830613DF6E4DD7DDE885151608DA9397373AF271AE3EBF6867DE502C6AD39D4C6FD63B6965E4F915D3C75308016DAFADD7B4A857A5FD89E9F9024763858D03EE09C8B9AF056CDEEF99A5D73378205BFFB8BD044F6482037C7C91F1F1F85A0BA0F43640BE71499B9336FBE7CC3D13EE0EA1872750C3B75767DC2262C1B8602D6BF065C983F66A2935C88F198F9957F1C7717B6E93E076E8373E6F641D7B59B7624546056B91E0C1444E33C827FF87BFBB9162F2418BB93F7F80E61577194E31489D1D1A541C2486097879D5AD33962D0FE1F0CCC4292194C35DF9CFAE495117C04CDB1823D2F59EA8C491293925844EADD6A3AE075E59794D4ABAEF4051A89897CD76861CFB80D72C745AEBE6AE6E8FE192882F585B5862E10535D1139F55C406B62056447F6F01E90CD6CB4E82A26727FF4BB91DE3AEB1EB345967213FA1E2077FC63F6EFDACB9059A58ED8872746DFAA9FDCBB63118A68112A7382D17FCBDEA3371B0CDB9016940B9BAC3E6292BB34E4447AEBAC6FDCBEB89C210AF453F365D532D1DD66035184B8212C185D56F18DDA604DE5BCB320C1F3EA1E9131D9C0ACE57C57F12F7A2B39DF5572FF3E486C46148C0795E5F5DAA993CF047556E79B715AC574144AC3DA5AC0E6029361AA3AF8554D0BD04C7D2F631A98BCCD92B09A93D3F3E6AF9A2A9AFD9EA538AF34A2F935CA5CCBAFD64C67DB89A7A7D94DADA0DCAA0F16704B8FE79BB6470C9C7CEE7D3F2AAEE65841DDE7E5CF7EDCDDDAE739F444C85726A0EEAEBA5044E1FFF96A0936C8C3FB42D5DE080A44DA0B20DC9511C785EEA2CA92E8A76F0E62319E6DA938B8275CE79B6DEB77758F15223D0FEC9C7FFBD0ED72770CFB4522C9A2909DF9F551D4387C0FAD9515D27B4A75C5C2520C3BA06C34DC479DCD976488D2DAEBF9B6AD1CC787B3EF114451B248663EFFA912A2A070AA1A69E0BAC816871693610BEA028E2199DE34188BD92435F866DE3D72FB62BFFBEB562F4439DD3059989FB8D8E7C68A809A4643EAE4B3C163D5A16D4609315F5CD8898D038711AD8915B004B0D0CEBC73EDCB464795377EFAC8427677996CE99CD27DD3D6DC5384FE3E3A3E0A6934C77ABEEF28C506A9DDACC23298DBF35533980CD22DBC68D29E67C2321E5BFCB5DAA962BBE8BF65FBADBBB8AA3C72747FC85190C0F79808591A3B4B42119C5398C74A85979F9AC6C9A5F1EAF6AC19A8A899F2C14B234D9DF9C5CEE40B07A2FF952800E1EA0BCAC7D9284E89C9766A0F14875214C87A2A617A9FF2447DA474ADB4920EC024D5C16CD09412B836887B2B02B624CAFF952D9C681F0EA82804A82804A82804A82804A82804A82804A82804A8280408275A0ACD140254140254140254140254140254140254140254140254942C18E65F9AABA87BD5349EE30000000049454E44AE426082, N'Fluke', N'Fluke Corporation is the world leader in the manufacture, distribution and service of electronic test and measurement tools.

The Fluke brand has a reputation for portability, ruggedness, safety, ease of use and rigid standards of quality. Fluke is a multi-national corporation headquartered in Everett, Washington, USA. Fluke Corporation corporate entities have authorized distributors and manufacturer representatives in over 100 countries. Fluke is a Founding Industry Partner and has been actively involved as a WorldSkills event sponsor since 1999.')
GO
INSERT [dbo].[Parceiro] ([idParceiro], [logo], [Nome], [Descricao]) VALUES (6, 0x89504E470D0A1A0A0000000D49484452000000A80000002208020000004402055D000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000000970485973000012740000127401DE661F78000013D549444154785EED9A597354579280A992AA8A5AA512DAF7D286164012E000BACD121D8E0E1B3FF63862A27F8D5F3BE60FB8EDF903D311ED79B199D506B3D8082421014268DF407B2D5A4AB548AA9A2FF35C8902CB4633D32F1D52FA72EBDE734EE6C93DF35CD996CD664F1CC3D103BBF57B0C470C8E0D7F44E1D8F047148E0D7F44E1D8F04714DEDFD5EFEEEE2693C9E1E197BDFDFD917024994C6432D9BCBCBCFCFC7C706D369BCFE7EBEEEEBA78E182C7E3B6DB0FE549BBBB99543A35F47CE8C9C0E0E2E2623A95B2D9ED0E87239BCDC08EDBEDAEAEAEFAF0C3DF565556B28B85F3B780EDEDEDF9F985478F7BA7A7A73737376043C5979BCDC665E7091690222FCF0E4BFA9A71381DA5A5A58D0D0DB575B51515151EB71BF12D8A7FB790F7F9E79F5B8FBF00C88EE1070607C3E188DBE3713A9D18C6E3F57A78C6560EC7C6C6662A953CDDD2CC387E60A1FD2A4073776767F0E9B370380C8ACBE582B2DBE3763A5D1064C1F2F27219CA2E2DFDDB1A1E279E999919191DCB6432508661E0A4803C20119CC80BB6F578F8E5D9E174E207E9F4F6E2E2D2F2F28ADFE7F3FB7D28C1A2F8770B878AF84422F11FFFF95F2323A3ADADAD058585FB614D00C5E3F1FB77EF363636FEF18FFF1808040E6978F48E2A7FB87B777C6CA2A4B4A4A8A8881033B8E9747A697171E0C9934F3FBD79F9F265FC2197E6FEF37BD93E10767676865E0CDFBE7D07C7ADA9A939E972591310B47E2CBA6C243BD9443F043D5CBD7AF56A6464A4BDADF5E6CD4FCACACA72B9FA75C85DF9BF62DB20FE1F243D0C6FEFCFCC50210A838585983F914CE6E7E539F2F3E57238C878D81EA5048385C40AE6DCD9D965E4D78135C8422E2D2E2ECE6433B80E65C3451039C8A90E28B323547525D78EC1E20D17640B58525B6418B1667240D7BF3BCEA041C465037EBFD7EB6504E6D9D3E9725997D3998743ABCEB8B1522474382407B8DD7EBFBFBABA9A0CF4EAD5EB85850538017278FB2578C333C0C3E1B02C86C5E754D20351183C70DC209A1D7F05DE1FF1B2F1EEEEE3478F6FFDDBBF37B7B4D4D6D6EEA7DF542A454E7E70EF1EF5F8A38F3E4A24136BB135EA82D254B2367BAEEF99BDD0664161414120303D3D73F7EE3DD4DAD2D282EA99623134E7E6E61EDCBF7FF1830BED6DED4E97D350B2DB6D64E1A2605120E0874E2CB616894430B145548AB4580B30BAC6800C08C56CD69E974F7E26AF90C2575656EEFC706F2B910885427880610F1A38DAEBB93966A180B59922ACB9F36AD62453A9F1B1B1A9C9C9EBD7AF9DBF707E738312B789A2055939D4BDF457411EEC769FD7CBBED0C9CBCFDBDCD8A4A1413F3FB30DCBDF0CF082B7151505292A84D9CACAEAFAFABAB1A86E20C4E10A2B60786949140C6A7E7E5E205000AE1462A74B3A955F88FEF71B9E056CF0B8B7F79B6F6E353535D5D6D5E51A9EB4FCD383079D5D9D343EAF5F2FA00E04C3518CEA69922CC509B3C4F10E0E4F74C15C654505E20D0C0CFAFCBED3ADA7892B4393466F766EEEDE0F3F040A0A82C1A0B65178BDB493AC6724545F871E711A4A2E0D1AF9032C76E14ED44AFED94E938F18E1956D619E2914515E5676EEDC59D8B97FFFC7F8560259D85AB654E7DE8AC71F3FEA999C9CA488E38554F7D6D6B6EA9A6ADCD4AC81F0F4D4D4F367CF4E9F6E39555C1C8DC6D85DBC9CAC95C52448694359704BAAC0003C429656A8A4B4B4F5744B49493155666C6C1C87C18A888446B227B2F8273E81B3822F94B227B015360B16158642F5017F60747C5CF6DA40D26D669108552020491101918EB42846146DCB94FBA49B2AD6D5DD496B4CE3A20A3C000E6FF8BE6FBFBD4594D4BC13F14B4BDF7FF75D616161B0A8080FC53674C3A208216BB353B8D543451F9AB5F8C7F86E6637B185AAE3540F52C8E9D656100D4D9442588CBE7C59180C920C405754393E804E82DB585F27632228E59F164C5C5AFED932BB199C86E0F00702980DC3A31F704D76C51B58009FA5A525B4F4A954BAB5AD8DA6C46C0A6598E9EFEDDD585F3BD7D949CBB9B4BC525F1F6A686C40B9668D1A7EBAF7F1237CA8B8A494EA861E402408C55CC2A8A5CCBC7C18921381F0496B9C4AC141634368667636994C15141488DAD5E42CD6F0B0BFA123C28A0780CB8E263D786849BC5EA6588C2630F0FADAFAD6D65659793923AA6D65510541A5BC15058357AFFEB6AEB68E5467CDBD0D87357C6F6FDF37DFDEAAABABABAEA9F999E1FF9B08A90F852804B8188647AA7D60999845C160C125A700BAEBA1A121E2E934906378EC840D700A8C8AB7820541559110455A92EDF8F838DAE764D5D8D4C48E86364E95424FC9245ADA479409D9304358ACADAFCF4C4D411FDF82F899336703056F0C0FE527FD7D9170987059DFD8886FC65B4EB7D4D587F60D8FB06CDDFBF831EED8DEDE8E1EE848104ED04DBE15BB89836248C3B38C6532AB2B2B43CF9F4BE4D96C2525250D0D0D04ACA169C030C93F3129BF8AC8762498B1D151169796967574B4E3CD2C3028E2FD3804A54A90E566BC1F4C6203C79D9D99A9ABADF9E4938F2B2BABA02A536FC3A18EDD06100715A2B85D52B9B934A52324CD5E797939077ADA246CE974389193C603FEB83024BACEB3E7312E97D3890CA88032805F43619F9A21984FC8D8ED9210E2F1543205D34253FA30175B60183AB164829491406621A77D215BA308FC00F3C737373124446143109D9CD03CD45A1C94D66C351C5693E87672B12789D74607E7749D0C47A3E40336F27AFD465EC9A6E96D22696D6D8D477CEED4A96232AA4A238CA101F859270C5558A891BD0DCF275D274933505B5D5D955854DF4527EB6B6BEF5C228ECD862621892C3EAF0F7B533490939A825B53412C053A9CD441AA1162428A2A807A519A28C2E9F27ABC74CDE86A70F0E9DCDC2BD8B7ECF736BCFF1C0F20C9FCFCC2D8F8B8A8C347EA904C05B01F156B627C9C6D70640EBE2C365398EDC58BA1277D7DB3B3B3B8FCC6FA06BC229599155567B373B3B3F835F5B2E814C739FD5AA2D9251C5E7DD4D3333E3E46CEA77924A5633794C22CF4B12571198BC5F09BF2CA0A2BE2854DF9DE30FC826D87680F17B5F73669DF440388E9549214954C25294D782AE774999000A52DCA2709571220955534F095555574A026B7417675796586009C98C03F4BCBCA24DC5DD85BB685AB95956532C1D0B367539313EC2B0EEAF74355E4A1D66432780C6D234263A799E9E9D1D1D1B1D191E9C929649C9898200F4D4C8CAF2C2F7354C6BBE15610D1D2EE6E341289C5A2F86BB9B644FB59642BBEC576830303509B9D9DD94EA7C04540A35EB8C234F05B5555D9D010420A4B433970D88887186D9402FB9A070372D86088355299842BC97B241C02E0E44917075F3AB28D8D759699C468542D61BD674B382366110CC09FA18FDF60809AEA6A940E41B7FB24454E62D0EFC73C08092164E3206E0601D361E08834567575B50406114608C827179F8F531C7870422092F6697771626ABC801FF7901F5202798870E10EE8C983493F0D1AAE418A8157EC0D3332CA7EE6EEF3210EC1974AA7682C61389D4EE18E5296893EEA3329C2E3C15EC96482D3042AC30A1889ACA05F08C917643E6693D0DFB7100F2479E8886EC59A6F015BACADC5506F734B13DB70C0401B9ABFD424992CF9008593597865BDA1990B874EF5D25EF1C33F4305C604D4945205A495D2C3BD49387A775654545EBE72B9AEBE8E6792C59E8A0DF8590D052252F4A82A661433A126B7C77DE64C4767E739FD42E8D6EF650A980B425AFED9D3D2AF6A96560F3FE0FCC369BBABAB1303D25BE34FD0B7407B75D2250C4BDDD1DA6180670846A3D19999E9B9B9D9F9D7AF0935963101615C8173C7A5CB57E8071DF9F2F5827D854700D37ABDF0AECE524AF6C2BDF4E39E326C71ED636B34857EF0ADB6F6F62B577E73EDFA8DABD7AE5FBF71E3DA0D1EAE71FFF0EA551C9DBAA0BA510A3E1F1BE117EC48C9307CA2618011F44DEEB9F8C1075404B2999A4640AD9C956C24E9136FF87F1A9EA5363BBB2327AA8731E14FECE42535E1BC124F24501897900CC0348CA26561176770B92C65F1A3369059406DC30F0F8088232E2405D2AC61900421DBABA7032299460380B09261F6415A5E6908303134F10CD65B530A2840C9CB879ADC19B443F27C3A3878E7FBDB0F7F7AD8D3D3D3D7D747374018B18ACD11C0E403563268A16982630B547FE377BFFBE4D34F6FDEBCF9FB8F3FA6578507630105CB24688EAEB0BBBB9B83C3D9B367CF28747474B4B5B5F10A16CA533FD7AFC7026E94672442CFE41F746B2EEA26AB98C52144BB92D8C4FF242A340EC46310736FEB9FC30186A7FB00C83C4848BA302009249B3111A0742D07C4566A0EE966A5293597260733AE9642B33BFB8540400B981CEAF911300D96000F26651966A4553683D694590D26BE0CF65B53A04B2AC2E0CA0DE81641BDF6F632BB8A4CD6884E8990DBDBF8ECE5CB9738BC20FBE6E626F21B5C00332216EB78DF4734BF6C842ED088716918DE8CC7391A906901E848C1CA668963692C3C1E0C89E3E281ECB2B8B840EB3E3E364633448183B2EC25FF8C8F9BD4AABA00442C05AB4A4A47CF0BBE6CBE3D601A1399DC056DDFF77E0607187E78F8655F5FFF8B17C3D3D3331C3DB9A4415B5D4542C3829A5300F6E09307635B4B0D6F60879E1CB1A9B5FA2697DE44CDDCCC21C8529F285EE0CDD4DE46B2C09A9439BD89C1DF410404D11005577DC6AC37C01308D6828C789EA165A6B8C0A28FC0EA454541086CA7D38AA7A08BCDB68AA882E838377AB797C3C3B45ACF9E3E7DFEF4299963A0BFBFBFB7B71F3DF6F5313E3F3FCF9E9C03710BA4DAE79C8EAFE7E1C33BB76FDFBB7BF7497F7F3812914D85BCCCF2C37EB0AA9E20186F837EB71161F4A68BE4452D24DE82B1B419D4490199DA83030CFFEDAD5BDFDFBEF32F7FF9CB975F7EF5C5177FFEF3175F7EF5D53F7FF7DDF760925564C31CC09741610F84B174A1A0CB769757961F3EEC191B1B4F2692FADDDD02F3A8B2C925B77D5C95498D2320619893780474A57CCA4747B9533AAE1F07E1455A4ED6E46ECA027D13FA66B175D70712483A9DC6C5FFFAD7AF7FFCF1A768240A0FACB316008A2766C822A935064093A8E8EFEB7D70FFDE8F60EE01CFE6151FA06AB052749FE38B2072F68BC5D638F24663B1B09EF7846703B24CCA8A748CA282B75424F76DC93DA8883755D1BB0B7015E32E9148040EC93DC6BE060E307C24122511D1AD1406838534D040B0A8A2B232D4D0406987BCF001D0C126121CB7647BFDB0A57F58B1005F283A752A1028486896A39DA64778332FDFA45220086BF2E716F34719018440B55223C599904064C8212C80302A9265DD7DE055425D32BC95818CDF589096BF9988F6C582A277D954F179213A90B1BE3E04DB151515F5F5F5C80D09C514A067876708F34C26B31886E6F60E715C5159555A5E51525A522CC782E25380FC16D37F713AA4246321A47E1B719B4A5C2BDFC46A6948594FB1CE552F2036340695111DE206AE7EA84645920A640D3E6DA11810C38B4F649697570606069F3C1978F9724450F6E000C3438B86ABA1A19126B6B5BD9D4BA0A3A3A6A686020E510EDF402299C04F398BD39C334E41E37CCC381E005012EAEAEBDB3A3AEA43219A97A696160A934C70E811DC64341A89C7B750073BC2B49E8514C469E40F39E492F8A655F3D8D49A55101C2D2F62F81C6031CC30C3D18B5D5894BB802DF032494ED024F20C4D43783B4D0F05C3DD17CE9F3D77EE5C57175253265929A22A6C6DC563D12823894492F26D092BD648633F7AF58B172F76779FEFEAEAEEA47F3B7FFEFC850BE66A6E69A1D3440A34B619DFCCD1D236C9BFA9B9B9ABBBFBC2C58B6DED1DB4B8A842A794B1EDB4C6054E2CDFAADF19C74B9025AEDD18BAC0FF646A0FE0D3E57421FED2D29268321E876735AF05077CC021AB13F1C142EA9CF5250190DD7146F13C2C9726299118C6464738F9343735C131F98466143BE29EC6532931D88F0690BE83B307DA860F4C48DCC462B1E11743F4353423D5D5D5F43BE2B3E2B462E254324951E464ACBDD106410309832BD3E9EDF5B5B5D5D5159A18E28CDE750F118F4C47C3118843626171892687161829CC2C00E570381C5B8B95959511D9389035211122E7605325F592BC6028632714B7BCB44C21C0E1B4B592BFA3B01C39051961ED36144D7F252D96006717B938D1A0AB69FD548C987A161127B01077A46DD2339AFCB98592CFF946D38CEC8BFDD662D1A5C545582D2FAF201E0C964C6DA723844E7815A3AE8657BD7E1FE939575248637288937A60986E0FFACDCDCD968D8D69ADC73DF8D39FFE69351CC16C886E46C0E71F072DA3180941623499C291A1F59B2B572626276FDFBE836C7493C49CC10240C4874C6B91BB1122C56251C6F00ACA07BA902DF680EC8E9639DC716A4454CE28F25D4FEA8972C2B923B18543A02D4E8FB988C0DAFA3A86928FD8F2874B3D1E6A7BCF224650088775BC8933B7D7E7E1342F13322B3F90B298E4C990D577F8476B8C908D1B42F5F30B0B13E313B0845D8D13B00A00614F42D36E592F189E4D497B08BBB8B8882AB490599BCA4DFD8C65E4128E15F0CC30F459C9D0FCABD7526B4F15B1D73E511EE89A63D1485171717EBE034B516E58C014F49094253416B4F79F7DF61934B11409ACB1B1D1A0030718FEEBAFFF152B4E4D4D9175CC2CB241148630ADBE9D802225FFD2A54B5D5D9DB085ABF6F6F6F63CEC2126F041385625C849035FD62A653E23806B233156D754B7B7B7313038F874617E1E3F4072DD5C16E8272D3B47DB402030F272840826E620A2D3C2060BDC1E2FF6486C6D614B83CB1496E65E5A56DADADABAB8B434333DC3014979C62A72E681039C8C048BA648BC944E8388F5C40EFA2735E542FF13906F06843219E2ECB9B35D5D5D555595ABAB615AB7BEBE27AB2B2BC62160003C79501B8226EF8694EE4B56FBC33FFC81B043DEFEBE7E1A2344362A320E46B4A0522D285AFEF47F5411891CF93C2302EBE0961C63B08C12E00A7F9A9C9C22EF828B5082A95FB5D54B4E5073D837140A71F4661CCDCB660A0718FE188E021CD0DC1DC3518063C31F513836FC118563C31F513836FC118563C31F493871E27F0063AFC003DAC18D160000000049454E44AE426082, N'JuhnBean', N'Snap-on is a trademark, registered in the United States and other countries, of Snap-on Incorporated.
Other marks are marks of their respective holders. © Snap-on Incorporated')
GO
INSERT [dbo].[Parceiro] ([idParceiro], [logo], [Nome], [Descricao]) VALUES (7, 0x89504E470D0A1A0A0000000D49484452000000690000002B0802000000F470310A000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000000970485973000012740000127401DE661F7800000C9B494441546843ED9AF96F15D715C7E7DE99F1BE2F18EF80C1660B246912026DD234215DA4B66AFB43AB54AA22B5E9F22FF4B7FC218DFA43AB48ADB250A94A55454121A1610B8482590D36C6C63636DE9EF7F766EEEDE7CCCC333631065EBAA8CA3B1A3DCFBB73EF9D73BFE79CEF39E7C9CA5AEBE42527D1C9DFBC3CBAE4B1CB5DF2D8E52E79EC72973C76B94B1EBBDC258F5DEE92C72E7759A3369EFBEDBEE44E295554E63DF53DFFF99FA9922A47AF06DA1A27C884FDE7331FFEDE6DEA528D9DC1C94366F88A6EDDE57FED15555299FEE08DF0DA29C7F30A0EFECADDB63F38F17670EE7D56B97B5EF2BFFA8AAE6D75D44359CE2ECD85178EA48FBE69476FB82D3BFC177FEE763CEDB85EF2F87F270FD0DE2ECD9B5B97CD689F6382642811EB807A6629EC3BCD5FD5D061C607CDC4A00DE3694A2EA0715DA55DB951D1482C62AC476B6656CC5E7F214FE3EB8BCB83B75A173B5CD21A73E7A6E93F6F17E7E4EBB2706B8C9DB865062EB8756D8E5F68072FDA8519714604A4FC4255B551D76F5675EDF8A00382B948A4FD3D91917C5D3D184F5B79AD927BBE3E48EEDD6AEDE50F8A1A9C6A3E150E749B895B092E89581B66C2EBA79CF4A26EDE6EA786CD589F13A69387A05756E33DF95DFFE55F177CF3376EFB1EE515240F50254CDBC579BB388B53DB20ED6416310C5F9DF442E4DDA80B1BA40955194F2F3A26CC6ACF4B432BF367C5969925EC27934D6897166C6ACCDC193063FDA86AE7A7D841760B039B5E907D96B2F397054D98C04B99C915BF882B58B273931246A337D8D0CEDC9147C493A8B14ADCD75F7F3DB9CD4AE683DF2577CB122CE99A46BD61B3727DF1A9C81A7672383CF98EAA6E709B7704573E3123D7A03F38515737BA6D8FA9E23233DC2380CE4EC095AAA0C8DCEC3623D76DB0C47E7671C6DCEE057176C379C39EE3E1CDF3566656A8C252F0B223D718340CCE4F3B5E819D1EC5C19DD9295126CC98F15B76B88703EBB22A02C34E0C863D27C28B1F86978F9A6B2765D59D9BF0095B014D78ED244FEDC8759559744A2BC58A422098300317857D9F39852566A8C78EF5A9F23A677EDAF49E092E1C092F7E64AE1D3737FE696E5F47078EA3FCE27B48F661B05368A90ACBF4C6AD127D905764B1E0FC61D37FCEDBF1BCE877F108B692F12C76DC678EBF159C798F93A8BA5655DD68062F821793C5AAB7AE989BE79CD4982EAFB3233D9913EF863DC79CA579C93915F5CEE29CB9722C38FE7678F5980054D38CA3B1DC999B72D2F3E6761F6BCDD0155550AC1B361B4C78FAAFC1A9BF84BD9F89D38D0F98D1DE70E012DB4A722B2C25CF60630174694ECC5F561331AFB57353E199F7C2FE73BABE2D73EA106FD7B52D61F7E1CC3FFE64AE1E4755713D361CBC64062EF25E595B5C914012C943643A1009D29231D006D389D3199BBA23A7ADDA28A0A0D6CCC4AA7090108B428F99F219B34624AEAB2B1BDC4D8F7BDB9ED56D7B54796DE4C8C45D147DC934FEC45FA36B59483F4565BA653B6BDDADCFA8FA36A21E9F0A2E1FB533E3AAA4DCDDB4D7ED3AA01BB6B22711179CFDBB1DEBD78DDB3039912E3188B38BE3E37401998D13B19B9DBECD7174EB4E400FCEFE0D7E775CDF6DEAF4763CE7B63FA60A4AECEC384E105C3C92A8919575B053103CB6E5B47C31D3A3942366663C3A67185E3F6D2747DC8E27F1E770A8470EBB66C12158C45756BC02D5BCDD3FF063FFA5D7FC7D3FD41B3B5034812C012E12B905F1BB5F6251951BBC27BE236B5F7815F88413877BB01CE8783B9FF7BFFE6AC1C1D7FCE77EEA366F6732A084439775659D6AD822996DE60EC4626727E53EBD2024A014DEC459602455DDC488991C71B4A737ED617FFFC55FF8077FE9763CA5FC22F894D88A755896FB638791098AFA4D9A2042822509FEB17E7CD0CE4D104DAAA24E3776C2538E0D556DF3DD6CB08E48DDE20AA9D5B5829AAA6D718ACAD606FD3E026FC20984AA4450691571675277408948D7ED7B75CB0EBD610B4EADDBF760780072A66E3B9CA27987B80FF516408F53486524B10CF7A8FA763804D6F33AF753CBE298C0AA0A4B74CB2ECD261B36B92DBBB090535CCE2BC81B89125959576FAF8013B2917024B18793139ED0C48D7338B6DBB91F8EB0B77B891155D3FA08C5AA947AD95A4FE04CEE1E42646572B10361BE308B0EA0CF8171BD280F68C72F12D68FDC19BC005198BA7A23E1420A16EE9F19872E79A41B3AC29BDDBAB45A43D06452281BF18B7429C9AD9857582C5DBD51798532BE38239F2BE47ED8450742A7CA066C284D0581935E0CAF7F4A149055E160D84A9294357ACB93BAA43C729F4780E1DF20404310505E7048D7E74A4CA2B5F20B54443552AB1B4B3680F544C3859419B884C785839774792DD38862DDF115A7BC8699B215E27A36B64164220AD5B8A1B299BB15582CEBFA1DAA1414B9CD5DBAA90B16106561D313EF92E6DCCE6784F56E762B62A4B1030F4D96FCB725A142222E012E91C83745687A146EA8376E23C3828E19BA44294361442F148EF62BEBB89DCF2A1595EEC2DAF267D556F7F78975B1139534241AD56BC4BC43E585EB090FB6EF955E7569CEED7AD691CCBDF6EEAB65E59C1569216711F6F4C4BF38B309152E96CD3996A237CAFB0A1F747DC85E376C81BF8812333904763CA0E0C001E9BE2915E4A04CC33FD800CA4B3ACBE81552AE47B9FE73ADD1FA7E177DC09D6DBBE066598C115C8FD4A3B567FBCE90BF84ECC4C3A3F90F2372CEB82289D36874DA78B98C87D1780C413428228FA32951DD13B719CC4199A2125201358E948D902FE7649C409E4F599A1C899B624947AEA7A8ED1B3BA55A6682EB13C2D23060FBCE7D4A13ECC2928E300F59316DE85B286598698C498DC7D12A6B57CBFA7EC70AA95400CE6DD9298BB163150CB8572AC6D949AFEB00C94E5EFC40114AF298C9F1A06A7A12728EF4496180C5A390B1F415380535848C8BEA583BC60FEF672D7394994F499F343B213D5C90C17724DBE2678C8CDD90B514CF53C3D275E0896E01F95722062F2BA99242AFB201E088244E41D2A0188E7C22FAA9A2B058D5B408C1915ED80A0D696FE626436A724678775C6FAC908738361B9754EAB6DDAAA649F985EEA627545169D0FBA9DED02E8042A50F1625A6A68EE1184186323D73ECADCCD137835387C2C1CB169394550B2EE303C1C943998FFE284DC28DB3824E2C9E4F092D553465C7D46DCAD4CC913FD0B484973E06205DDB4A6438331341F787019DCC8977A421B921494C9556C2D411768A5CA9EBDBA5B229A9721BB74A99323F2D69B00887C0D914D32871F8C4E3C2DED3994FFE8C1A28195EFE586C49D1474A592D6BF56487DF90ED24F197BA6DBB6104F179BFD0D24506696FCFCBD25DF69DF51EFFB69085E73B4BD499E7E955F176E9C9AAA27ED62F220BDBC9210A3A62DC255E4A2AC45FA6C7ECC2B4FC00337821846E8ACBDD16EA58E54C8DD885199E9A5BF440DD766288DDD81C68E4A7849A26BA40FA5F0E4C956F862E4BB5B4908A8A8F26D9363546254CDF16F69EC1A1E87FE840DCAEFDA264591419029063A686886E20E30838BAB7FB05555A137111AEEDCA19E726D1D9CE4D9BE1ABE1F553D28D2DA4080B976AF9C04FE88862886259033B3374159F122B35740876F56DC48BD438C21A2DF89A931A2552BCDDDF50F80B3A41400B2989859A66A9A59BB74B590FCBE03818B3BEDDDDFC8414C365D59A1E0E0FAAA893A8A96B83BCE984A83FE5A672832EAB81B6353379445511B989ECD6D8294F2B1BA4602AAB21DC54AD3C759BB66124E0E3A9D477742C0401C51375725317EAB98F7FCBA5FA8D43D28644347D347589AED800BE6EEB4E2D2D57510CABC047C357DD48E7EE50E2B01B7BA2337CD575C07BFA07746944408450226BFC6E4CF649EE80832AB1A442EC46672AF4144A39323FCD4320004D61242A23CC055280881E9077F4839D743FE9A870059488749820BF08B13CEE8B31787185667FE82CB368E761C08588E6B222BE5F22941A3343268DAF596A54B20A2FA2068E8B5814C01971253C179AE3D8A5D552D3CA4BC5A7582A4D58DFD9A0FBB0C6856966C707FD7D3FC230729C18BB58D88A4D7070940F3368C82658940D45DBD5A976ADFF47B9FB43555434C55BCB34AEF835F192158F92A79124AA443F55C54B1890C1EC887C66251E17593DBE2CF1043E93B50C2D4FCB2A80C48925791ABD112AE7693C8143A6C68273EF934F546317218F0BFB4F7F5FDA8F6C3827B2AC617C23126D227356BC2E92B572450CB05C2BF695F5596DE466F523662EAF5A7E9A0C465FA3D3246B97672693B37BAE1C5FBEE20977D7AE9CB6BC568A01715EE280EE824FEEE3A7B1C45C3971CB81DD70F9CC92B41971282CCF8945768B5E916C15EFB6428D15F23079F6FF5CF0A0F4A219EBB70BB3F097A1AC8334EBDAA8603E0FC723C997013B035E6027E5081E3437E53674C82FA05F0C3824FFFF77B9CB97C0EFFE6392C72E77C96397BBE4B1CB5DF2D8E52E79EC72973C76B94B1EBBDC258F5DEE92C72E57719C7F01F3DCFA1B39CBD2C10000000049454E44AE426082, N'Mitutoyo', N'Mitutoyo is a privately held corporation recognized as the world’s leading volume manufacturer of precision dimensional measuring equipment. Product lines range from basic hand tools such as micrometers, calipers, and dial gauges to the most accurate and sophisticated coordinate, contour, and form measuring machines. A pioneer in the development of gauges, data interfaces, data collection and analysis software for statistical process control, and networked measurement systems, Mitutoyo has a solution for practically any standard measurement application and can propose, design, build, test, and deliver bespoke measurement solutions for specialist applications.')
GO
INSERT [dbo].[Parceiro] ([idParceiro], [logo], [Nome], [Descricao]) VALUES (8, 0x89504E470D0A1A0A0000000D494844520000005E0000003D0802000000ABD049CD000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000000970485973000012740000127401DE661F780000108A49444154785EED59796C5CC779DF77ECBD3C96F77D53072592A228D9757438756A47891CA44EE134ADD11A4E5B1708D0F69FA6689A34701BA445810041912245130468E058467C348A8FFA52255BD64147A24459127591E2B1DC15EF6BB9CB3DDE9BD7DF1CFBF62DB94B51A9DBFEA1FD69F838F3CD37DF7CF39B6FBE798F920CC3B0E5910DB2F89DC73AE4A9C9893C353991A72627F2D4E4449E9A9CC8539313796A72224F4D4E64791B5EF9D3A7E596069026E15F76406EF0C7BD805B5B37C69C84F6A48C6608EF0539BDCAD90118F49F418233BE7FFE3721C280F5D444FFFE2FEDFBF7DA64D8321DCC0649823951BF27AC71924E92698A5BC693F99C051B4C7D4F5E593D212479FA82E76FFF4934D1B99E9AC837BEA6EEDD096AB8CF14779DCB3A0745EE616B357F2D6CCAC8BDCD641043EBBFE6FDEE0F441BE3B31CA8BF785AED6A6551B306A60443F8C4B9A6B76A02B994B3AA6D061B183425DCF8A62D1B867679CCF7FD9F8826C6ACA726FCEC97958E7A0941C38DDF2720867E73CAF7C39F8966766A9E7942DE5285439B9D19A8CB48D19C38AB0AB363359671EC0D1C66F69B2711066A84667BDEA03A50E7BD74204D8D429F0A993C43996AF3AA90019845C87961422648EB730937CEFB709CE0E0C85CC18F5F62DD1459A8597EEAB0DC52CE4DA01B4F5383D265B72B2D1D7249453A4FD359593705AF31119453A38DF0A276F99C752E9892EB5B95DA264134207A591D8D788C0486F5A9A05C54A234B64BBE22D6C37B01CE232A16099809DCD6832320486E6853AAEA6DAACABAA0939E1A301271323E44A643C225C380861E582AFCF7A3AC9F221B355F39243796D09A69D09C5D56ECDD0FDA1F7A4C2AA56195966F0C42B48FCFC65FFB1936474824592EAF727CFA0BCAD65D96C0B1006E2D2F243E785DBB7856DDD6EDF8CC135269A5F0832B5BBD1612C396584D9C783D79EE03B9B8C471E87795E6ED829A75CA46782171E297DAA58F442C53918D84560A9F7F4D34B3BFF2C1100F4B920A695458913C5EA5EB21B9A659F2164A9E02C99D2A2EDF86C5AB8FDEB09A92EC0EA56DA7D2D629798B32EC588BCB2B29767A5196554915754CE84B2BA3224A7A22231607A19845D9B95769EE907CC5EB9453C39D1E4956D94A535E61DB50B120073594DA0C3D0A1C81F26AD95F86D8111280DAD56DBA96BD6849146335A20F5FA39ADCA464936B1AD4AE07E91931813049C6D7380760E5B2BF5CC28C300583E62673405F17B31B5A924C4F90B929A5BE59DDBE5BF216886802A8F1C47AE30C8C9A54D58A6C07EACB9F951BFDE2FC534001759A3BEC0F7DC6F19B4F48852566763012B1E4D977F4C18BE2B070634CDD844134121AA31EA020C7F80AED073EE7D8F779A42DA64AED90D990B138A3B4760ADE6179692EF15FAF262F9C960BFD0852AA68773A0FFFBE5CDB4215188C4838FEC64F8DD9294C071BB668C4D0128E870FAB7B3E8DA04B2919462CA2DFB8A076EDA7798DCB966613EFBE0CE39456EE2EB61807EA8537B80290E31B8AF26516DA664F9B5C518F6DE4CB1188AD6AE7DE47E61325C48AB512BC4D42E3D420DF034541F6B5773D64E505EB497EF03A999F163A26D0D234323FA34FB0E4AA2532039618E179ED4ABF8ED43B719B0447C9C28CD2BC55D9D22D39DC291D1AD4C993AF93E9203367B59FAA9B19306361B9A8613CA6C13C46A2914BCA6D76478609D5AE6EED549BDBD5962DA2A0DE8C272D4A532BA500278EAF1947B2B8D4DEB34F2A2A4B1B3188FEF1197D78D0B626E651A70B23F4C868383244AE6E90DCE958B069BA36704E1F9E2093B36461D988C5E422BFDAD12B97D7A4A20316883E3298EC3B4E2D50834CCC813A9F4E9C00F1636283A8C97CE2208017EA998517083D3EC7E3CFB89EF99B74F9EA375D5FC59316F71F7DCB79F8299BCAD99450C1AEAA1DF8404BCD8B63301D84EB647931D3335A37E20932B9A05D0E244FDDD44E5C9714BFCDEDE3DD1868241289A36FEB6703DA8911EDED1BDABBB76C46B9D2B48D5E791C7859C1893BFA53BC0764AE3A13943274AFD5C84A0D57624F531F37BF8AFB42B11862054BC60B8E22DB14354B911564164626CD327259252E7E045A6AA358AAEA7B8F4C05D99D68211D9DF1847E23A47D384AAECF1AA1885C512957D7521F44B761849792E707D8E5423749D9B9CDFED8A352813FAD908CC79EFF49F2E445637AC996444E598FCC38CA44366AC4AA531488BACD589C37E6A68CD5151BAE92C4BA02210ECE3A188BF436454572B9EC3D9F92AB9B2D616790F19B6476925E43C5A592CB2D28A33DEC69DEAC3643D9D62157B197290E24A80BA78D852855C00B564991FD91836AF79E743C62F4E8CDE4077DB615998C25C8EC2A8B5C0BD8A2E84CD47CAA6241D6A801525A7455AC6E10A4C3E4C93792A7DE4C9E3F91EC37CBFBAC9CD0063ED403432CE15B6190A9711A1178C7AB6DC2C5C15C375D94A4E232C7C1C38E2FFEA1E38B4FCBAD3BD267016084D2C941874355B6B64B6578474F5393387E8ADFE592D361DFDBE3387408AF4B6905C83D5ECFD7FFCCF38FDFF47CF7AF1150B4CBEC25C488256C71BC10F0D719B60799C876793FF9985C8FB772F6B2BBA613126E9D7ACC24144C0FF978F77EE7E37F90CE949026E2B11FFD9D3E3E22F90A9C4FFE89BAB5D7BAAB02A603D460CA2821642AB4FA2F3F883FFF0BC8E4C64ACFB7BFE5F8ADCF8A5E38BDBCB074F830199F4343696D70FFD59F3B1E7B1CD79F50E058B3340B6B642614FBF1BF264F9F948A9C52A14B72534EC964B4F0C89B4223C781E231467824B362930A8AE4BA66A5BE4DC1878FB5D4B5B0D2AA346E516A9BD9FD950276662E44E6E750513B1F50DBBAAC9B46AF0CF642C85ED8747A1869BAC95C0C075EF8DADB95DA1AD1A4EE116D70808496C09AE4F3AA071EB4EF3B28FE8A825ED8814D61991776455A8D83DCC5987E7D461F08EA57EFE8B767C91C124546C867899AA547F74B55059243B6A92CBFCAB2A42AEADE83080A89DE3526CC81CC2787432EA9641F817CFDF43D35F1D62BF1978F48A57ECF37FE412EAB115D44D7876E6817FB7146850DAC5096D5DD3D4ACB76B1F396A8919C76E71F3FE57AF659FA220EC0614D8B7EEF3BB11FBD8C81CACE76EF77BEAD76F5A68C13FDC615EDFA356335469B0C92A2285BB7529D54CCE25A5CFDDEF7E32FBF497708B0CB52B10B4BF0F79D63FD14FCC3340324B0609B09536D05A10C8264B9A2443ED4A86EE9CEC8056B401DB31C666CDEE25CE2CD63FAD094E74B4F8135D375120CC45F3C9278EB18DD5E0E7429B2FBEB5F539AB6AC3D14E82C2B565ADBE84DC781CD8C45931F7E849AE4F53A7FE77165DB4ED105F3A140ECC88BC9F73FB4C513420438ECCEAF7C49EDECA197A0E9A1154962204F2B6936812C4B352209632E6A4CAE9060980496C818E2D647FF0AB1012F00F69F07332B466439F1EA2B5AFF55F5813DEAFE47A88290AF24CF9E49FCE771129C237716D26572D188AE1A488ADC028F7F16D17263BDD2D288AB5F74212E86AE92C03416A9F676383EF7057AA3B3A9F1FE9238713C79EC24199F5E6B3C1CA5C64D0FA971EA541AEB24590ED44C7DBBA871207AB634D80F3C882F7D21B91BF01EA78F4D687D178CA939C7A14F296DED2C16E87619E170B2AF5FBB7C8B9E7F061E6D084FFBA30F281D9D087E26368C959564DF797DE0A6B2ADC97EE001A9B0586C38AEEDC16B89636725A4B08777D977A58F09E5FDCC79ED0A8C132C4C08F1A32AF63D3BD47DBF81632B84D195E4A95F695770A5B23B8EAB294AF9E875D64F91859A40E35651E3C038876A733961979B104F6C00BBC4A80A979A200689C76D711C63432AF0604A28D058461B8CACC60C8D66196E87828D95DC4E443E7E83012AE7F76B220921EDB21C042306E3090916BD2E9BDD9213A8F1B8914C936EDA975C0E1B0A9F09BF987103C6850685A4C875B7AF89069AEBA9B9815CC86CA0C3B4CE1C4B336076990A00EF02A82465960FC40F57A61DE68014F840AA206592CC54E94FCA0AEF850953C7B0500664048B65086B08E3AC8B1E9FB411269765B96DE8AA1041B2DED373EDE9ACF6BF84B4BB9F28FE27663935BB6F7C2CDA59A979677BB7A8DD67B0CBF223572F8A46566A7EDEBD971D761E7ED69DE075AA4F3F16B98C219BE61A8881960A076FD267CAA6A946C1FB52109AA927402BE6C960BFACC3799D826736A147419B960A7D3A64F9B72FFE8A0929B25073F4C9DF13B5DC48DB1382EC8002B04633D7A8CDE870F05E3C39B8E6C64336061F8BA839FCF3178408C2F5D4AC0643A2F6FF82CCB4FA7F0A49725757897A566AF8BD709FC2B231D9A8C906A8714DDCAFF4C5E39303BE1C60999B058434137C6A20974256980EF3E6BD62B3D44C4F4D0502014CD3D6DE5E5050F06BCFB7069AA65DBF7E7D7969191F80DB3BB667B50CEEA2D128748A8A8B3C1ECFE6A7C6A86030D8DADA8A5B598852D80C6B77A7060AB3333358000C4522D186C686969696D82A3252A8A1A1C1ED76AFE08D3E99849ADD6E0F2F2F3B5D2E2CD8E170141717EBBA3E3E3606495D5D1D56383F37872EAFD75B5854046BD4F2ECECD933678A8BFDC5C5452DADADB1D518380AAF846B6B6BA1BFB8B8180A066545292A2C8A27E265656518B5303F5F5E5EEEF678607C7474B4B0B0104D380053F0B5BCA202F2783C9E4C24603F74E7CE8E1D3B60271A8994969561EA55783E115C590957D7D45455556DC08EF2DC73CF896A0EC0C54B972E2D2F2FEFEEED2D2D2B051758DEF163C7E053DF9933A0E9D4A9537742215555AF0D0E0E0F0F8F0CDF5E585800237E7FF1442010894621773A5D20EE3F5E79156AE3E3E38D8D8DD849B83E3A32323C34EC7239EB1B1AFC7EFF6BBF3C8AE94647465D6EF76A34DAD7D7373F371F5B8DB2CF0CFA87C68FFA3E427D7070B0B9A5E59DB7DEC659047758DDD4E4D4AD9BB7161716E3F1C4CCCCCCE54B97EC0EC7F4F4B4CBE9C4BCAFBCF492BFA4046E5455555FBD7265E8D6D0D2E25255751596B001351B7E4CA780C8441480FB63EFBD373C3474E17C3F96C781FD81044B55B1DBCBE18A8A0AAC19DB8B500229B781E1E1818B0361F485C3F1780C2EC20E370B6AB0A4CACACADABA3A7E526EDEBC8548946469697171696929303E8E9071BADCA8C762B1C9C94987D3D1D4DC3C11984098BCF7EEBB77EE84A6A62641E5C0C58BE0683C300ECDD1D11187D359535B3B363AE6F5FAB0496EB707313219BA138D4642C150241A015F1BF3026C8A1AF88D4841BCCC4CCF603D9AAE61D3BABBBB3B76EC400A95241909081B8888C02142642129206B6031737373D0191B1D0165C8569D5D5D3005EE4C9FC017760F47A9A888FE276F616141B1DF8FE5F90A0A42A1108E40737373577717FDA3974D82B5B6B636A7D3093558C06EEDD9BBB7B6AEBEBAB6067187893A3BBBCACACB884E6A6A6A118391C80AD68FDDD9B76F9FCBE5C2E77134BA8A73D7DCD4BCAB67D75D33E6DD0F14C6979496C2627F7F7F4989BFBBA7A7B5AD6D62620267A1B7B717590364353535E9BA861846135316F80A7C3E2FFCC37198BC3309E27A7A7783050417F85564D93CE4308B08BF72F90AF6138B71B9DCC84A485835353588B568240A5AC178655515B291D3E1C489C0C6601670ED2FF15FFEF8727555D5D66DDB90CE86866E793C6EEC19B2554565A5CFE7435AA96FA807D13B3B3BB56412C1A8EB64787808B919CEA00B2C6FC0CE666F286435040EC21B8EA249308961C0099E3250418E586F0A1B48D87F9B2280D1CB9579053EA1029B002A300B237827C502600A94BDF8C211644D78DFD9D5D9BD6B1737685D09D22D34B90FA8001052234C0D4228A00239EA1022795DB870E1CCE933600D29F2C0C30761FF13A0E63EC4A672CDFD893C353991A72627F2D4E4449E9A9CC8539313796A72224F4D4EE4A9C9893C353991A726076CB6FF0638BA207D23D5B85A0000000049454E44AE426082, N'Sata', N'From now on, you can use a new pop art design as a template for your individual SATA paint gun in the SATA Custom Design Gun Configurator.')
GO
INSERT [dbo].[Parceiro] ([idParceiro], [logo], [Nome], [Descricao]) VALUES (9, 0x89504E470D0A1A0A0000000D49484452000000850000002808020000005F3AAE5B000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000000970485973000012740000127401DE661F7800000C53494441546843ED9A7B6C5BD51DC7EDD8B1E3244E1CC78EE3C469DAA649D3264D694B0B85AE30A0838D15984619D290D8E08F3DC51083B131B451A06C634CDA3F6348484388690C04830D3660E335602B0CD6571E0D2D69F34E9C384E1CC776EC24CE3EF79EEB9B9B1B3B091BD2FC87BF3A8DEF3D8FDFFBFCCEEFD835CECFCF1B72C81AE4299F39640772FEC82EE4FC915DC8F923BB90F3477621E78FEC429A7A776E7E3E323B7B3234F987BE81C3A36367A62263F1B8CD6C765AF2AB0A6DF5F6E20BDDAE2FD5D61499CDC9F9F95393E143ED9D2C61A1D160705A2D0CED71BB7865F4606BC7E9F0944C352358F519AF677F7555497EFEAB7EFFD3DD7DD3C9A4326630D8CDE67D5ECF55BE2A4B9E3E746692C95F769E3E363EA12A603218EB4B8AAFAFAD6928B1CBB24D3D71B6E76C24A20CA703DC0B4DE61BD7D75E58E19A4D267F75AA0B8209590086AC797970BFAEB6C664E44DC1EFBBFB5E191A664E9ED1F8D0F6164F41019DC880114289C4E140F04FFD834782E3BD91E8D4EC2CF2BB0BACBEC2C22647C995555EB84053D0490BB3F299024487A7A77FDEF1E16FBACEC6E6243B0B6D133333A19999EE48F4DDC0D81BFED12BABBDF883FE403CF1744F9FE20FA301C6E7BBCAF7B8E53506C3DF86FCFF1A0B2A2F1980A26EAB755FA5C79E6FC682CFF4F54767E79431E4331A03F1F8F92E2794952E19987B201AFB597B27522DF8C368DCED2AC7BBE275341EC770D857BCA605DC1D16CBC51EF785B24DDF1909BC3C343C3D2709C090D1686C0F4DA2516D5121D6174B4E4C8488D4E8EC2C3DF7B634D1C34282A36D3C744F5BFB5F07FD58430DA87822319648744E86DFF08F8C4CC7CF733997F7877E2C9848FCE058EBC3A7BA22B37373286D30109838B924DF5C6436619DE43CB6509CC45F1E99956A9299D40D278F4A3D2BB4D44C7989B45A3B3A3B3FDF3631F9963FA01095C1333A3FD1DD1B9D9342463B3F295350A6C98F8B46973659FE9442D2873A046576CCD9A9C8E367BAE39A2DCB648664A34BF4A5363FFF5178EAE6F73E78696078461EC27505A63C8C462B3099F09CA0A9B0C90CBD3F5E1DF28B786731D1515960DD5FEDBDB5B1FEB6C6869BEBD65D5E55D9E228F515DA708CB240862A968E9F64DFD4282BCAAC966DCEB2ED8BDBB6320704D574A4CE170D31BA239177460361CD3E800F71F36C4F3F51A99D2C4D90FE2D408824FA506783BD5827C0B6B2B2963287D36A95A78005814583D18B03432734597141C9D40341F3E84767DA2642C26EE8D260B75F5FBB06A3DDDAD870C3BADABD15AECDA5252EAB354FDA75CB419FAFC87DD2B69079B2B3AEF6553FB8ADC566368951E08F4D7324D8CDF9CAFBEA80146663DE15DECAC776EFD4E66201DE3116CA28EF1AD045A626E77C30367E91C7ADAEFDF3C0505F34BA10B42B01FAC4D0C3BBB6EFAD5820A242CD454B813188FDA77AFA36979616E79B97CEC35684C55F0687115528E0B5D9BED3B8E1C6F56BF35341866A3D91482831BBF414D4413F3C108BA956E181E8381D0E732EF18AD068E22DB47DAAC26531AD40372DD01A0A4BDB32E61038150EBF3716E43CE319A990E7B9BE41FE8AB85925E081D03AD6A22DC31E069333331C996F8F8C12A94AEF62D0DB1F8DAA6304505F34D61389C6E7921253A311C76CB0DB77949791B9944919A0376B99C5A23C190C1C6B2F0D0EDF79ACF5B7677B8E06274209296308062B50FD9F017DEDB9379198A1D2EB924B3502F6DFC1F1F65008B591478DC14F1C2A65B8B045FED83F38129F163D3A20AD237F21610CC562A4AFFBDB3A9EEF1FF870321C57AB03B92D0FBD3297557AF2F1616A1D59FBF5E1911F9D68BFEB78EB23A7BBDE181E194F24D87D6A2CAC12CCC78EFD91D80B0383A444B5919A2960443DA302E6ECEB4DA52564182108CB8F8C8F5344E203263FDF37188C271822B49B1D252B2A091019B129465F5C2CC06BC323FDD118B229F36408CA3B9D652A650A87B74646DFF48F929A942E0D90F3624F05A654A51D9D8E5316DF79F40415FFE3677A909CA251C7252DF4FEF87CB5778FDBAD3A0402A881F29CF3F7B576507AFDFA54172547DA5CBF3C588258B71F39FE5D4DBBE3C8F117FA07C333523ED4C26A32511AD6D98B8543D064301A7B37101C8E4D13718703016E4838ABCA66BBC2EB5DCD76158A50376AB9D30EB57520954E190862E25B1AEBB91209D208C01679797018E7A9C5988034392FEF2BEBD7AE2D2E52BA6476245326531CDD75ACF5C727DA9FECE91D8B2756B49ADE1FD585B6BB9A375DEDAB7258F2B5891542A46F12C52F4E9E7AA0ED64F7C77709B32373733D53514E36B571A191369C5E43291CB8675DE3AB3671B8C89DCCF86760AC7522440AED8DC48852FABF50535D6D2B50855C115CAD740260325CAB0C6B80EA14459FADAA548D807D29F35EF78FC434D723C02809FC0277F99D9B1B2F70BB2873B5C72162A3E02B83C387DA4E3E7CBA8B9CAF0C6480DE1F248A3DEEF27BB634DDBE69233CECA900019096F64A22F1644F1FB7459E1759712560574F81F592CA8A4F7B3C6ABBC453410D6A31EAC49078C29AC95E9B74FB153823277152DC583C0E734AFB1BD6ADA16C538697051431EC76A743270016F468580848930D062EBC37D5ADD3DE43711E755DD794FEC2CFE442B3F9CBEBD6DCD3B2F9EBF5755B1CA59851D2410656C2971CEFA4162E9B4A6F06A45186DDC7E5FE9B0D750F6CDD72B065F37E5F15A1AADD2B24F1DF75F752F87E2C8F40616B99E3604BF3FD5B9BD476706B13453075A43249033246BDBDF8E20AB7CA793A9924E3B3450805A85D5AE9A1CC179B6935C04237AD5F77EF62016EDBD4B0D5E1485BE0E1E9739C8EEB6A7D6AFD02DFB74702E43771EFD18209DCFB2EAA70DFB169E34FCED9F2FD2669AF90EE90534CC0568178FCD1D367C46B26A4F10704A042A1B5A7C27573DDFAFB5A9A0E9DD37C69650521A0CC60E3C7A6CF4622ABF70634B15BB9D5B2B3BC6C67B9536DE73ACB6A8A0AD356E5623FEDF37A8ACC26A11349DC3F3D2DD20B05F70D6BD7ACBEECC6A42683716349F1B98B05E07A8B548ACD16034B52355D5353CD554E780401B0295556DA539D1994645585B6CBBD9E5B36D6FF74DB96BB9B1B9B4B4B844BB015CB3902C5E44CD0EBC31A1A8B85AD89DC6647E98135BE6F35D46D2CB1CB7D0AA2E9D2EE8A109497B6743072AAC3FDBC72A72E7EB1CE0EAED6CE3235FA5603C145CB546D99005FB4262B6A8B6FB6866E09AF744A76930710CF69B59CEF2AFF6ADDBAEBD7AE21BBA852C6E656309ADE1FC7C7A52FCB3A26429C5A6C4FE11B76EEE4CCACD601B024B17E0C63C8424373281AA352D2367A2638D289389D9632D614159297741B08BE84083AAFF8F5831690A7C2592A002DED910EA04ECEE10EC0519A891364B1D2ABC37EAA2F0A046E1B22A6994FB87080ABD5BC6C349B78CE047DE23E1A1C3FD47E9254C869565950C05EA6930BCEA9F0D4602C26E6C009F96A8B8A566F0C849E4D26294E3EF7E63B4B5751C67C7BE306D829EF1A9498CD64188254FD9A9698AD2B2EDE5BE1B6994CE93C981EC41556F9DED1D6B4DF79DCDDBCE9406D8DF2B218D814EED7D6F8DE1F1B0FCFCEA43D31095C0A0D8A28F93BC47C6A54AAD3E9B9646F24DA393929BE8116EE61BB286B3240BF3FB8F85045744E86296D5F191A7EAAA78FF6BA7F94029718C616107559AD3F6C6AB491D653E9820FA9A9EF2970662843F22BC1D23E116A5BDCB80FC2515CB68142413EA569706C2A2DA1F414AF340E93FD3E2F370F86944EF56161BD027508E012E277A900348A46790A50545057F1978393A3F4B2CA0A4E20D1AF8C4AFF24B2883E393303F18ED0E47B63416E54D43BCFF4F6FF6334C0C590BD22D92D4FAAEEBE51BF5E5A93197A7F60639AE8E5D462AFD1086D3144CD73AED3F9C405BB76BB5D084727768359AA49E6932D204108AD19CDD09826AD11AA4A4FB2000A193E2A0A0A76B9CA3927C57CA7C5C27E22006526B2005A2EA985D290FCB83094B9C9DE9797A4E6CB6B173A29CAAFF25555DA0AD425528383CC45523CB590F9C4169959242E4651A7202FEF8B35BEC777EFD2FD8AB314FADF074F86269FEB1B20663B43E1FE68744CFE76047298836A84DB3BD9DC65B5482693BFD3FF447E1F24FB5DCB7960B1BCE61F79BABB2F9E4C928B0ED4FAF6557A8486EC572AC5F78341D8EC75BBBF56BF9E9C2004F8BB7FF4B133DD4280FFE2F741819BEAD6A297FAFB200F544A8F9CB7233F6562E80F4463CFF6F6BF1F1C174B004678687B0BE182E10F07C65E1A1A3A110CC18EF43E2EDFFBEC66739DBD7897CB79A0C6B7A3BC8C1B15012DD66642EEFF276617F4F92A87FF2F72FEC82EE4FC915DC8F923BB90F3477621E78FEC42CE1FD9859C3FB20B397F641772FEC82EE4FC915DC8F923BB90F34736C160F80FA06E2546668696620000000049454E44AE426082, N'Siemens', N'Siemens AG (Berlin and Munich) is a global technology powerhouse that has stood for engineering excellence, innovation, quality, reliability and internationality for more than 170 years.

The company is active in more than 200 countries, focusing on the areas of electrification, automation and digitalization with around 377,000 employees worldwide.

One of the world’s largest producers of energy-efficient, resource-saving technologies, Siemens is a leading supplier of

efficient power generation
power transmission solutions and
a pioneer in infrastructure solutions as well as
automation, drive and software solutions for industry.')
GO
INSERT [dbo].[Parceiro] ([idParceiro], [logo], [Nome], [Descricao]) VALUES (10, 0x89504E470D0A1A0A0000000D49484452000000710000003A080200000008832128000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000000970485973000012740000127401DE661F780000121249444154785EED9A798C9CF759C7E7BEEF99BD7776D7B79DAC1D5F4DECC429755A35D0445C2542E2AAD27F00950A550289AA2085FF8A448510420851040205042D4E1548686BA7694E378E9DB59DDDF56E76D7F69E333BD7CE7DBCF3BE337C7EBF77EDAED771D81D0F0D8879329EBEF31EBFDFF37C9FEBFBBC5B63B3D93474A4AD625AFFDF8EB44F3A98B65F3A98B65F3A98B65F3A98B65F3A98B65F3A98B65F3A98B65F3A98B65F3A98B65F3A98B65F7E42F3BEBE8BDA68D6B5665D7EEBC75AA3A936E5B7FC70D090EA188D06B3D16836192C2693C564309B8C16133F8D560ECC26BE6D6671C664D46F96FFF3BF46DA8C298BF11F60295AB3A636F894EA5A596994EB1A07F9AAB65656D7AA6AAEAA725C54C4A58ADA50B4860ABE4D01E86D6DC0CB04AC4603F0392C26A7D5ECB19B3C768BDF6E0E382C41A725E8B2B86D6697958F8903A7D564379B6C16E036F1D4C708F4FD62CAD38DA6083DE0ABAA0D302A29DA5A454D95EB99723D51AAC7F24ABCA8AC169564A95E521A7A84128F5AD320A352E2283D215693FFF816E76EE90536806B225A8D2236C5C72C02D66135051D966E8FB5D763EBF3D97A3CB688CB1A7659C26EABCF2EB076DA04CA56B3887456585FEE7F5E5AC154D82CB1001D42AC5A6F107489923295285F8D97A69315A004D67C4D056596D7CD115F32EE64F489B4E5804BE223AEEBCB8A6F0174C320C356EC2241175AF28F33E25BDE2D4ECB0775D009678FCD4CFC865DD61D41FB68AFFB509F7BC8EF20A8DD76B39D5A21E357DFF42344DF827B5A76432B980254A5AE652AEA5CBA3295AC4CAE96A692E59B6BB5424DE31237104A56B39164245E024E2BD9EA7598BD36B348559BC96531DB459E0A23459594B04A8CC051046F5D6BD4B426FEA8D465D1501AC59A868772552D5B11758333F8B2A6F12DA25E9A20DD23C1E580282642895342786FC4F940B7EB40B76B7F97ABD76BF3802FBBEA96DC252C855D6CE7159A735F2BB06E15536E531B86A2A2A64AF595BC7269A57869A9B09853B25595AC677387C50864DD1EDB808F8F1DED232E0B0638C8418B89820888568B682F18240C9710489DD715D7F5D0F5D1631388814C40AC0A8875948B35355D56630565395FE3B35AACE3CB7C0DE835AEA28C44592CC5BA2806826EAB89828062877ADD8F447DBBC34ED4C3DF5CA2EF895BA5F01C5BBC792387B7824EEB917E0F45FC9EF0DF5BFE7B4C091CDA48BEAA0225F17835569A489493250588FD0E3355ACCF6B1B0AD8A37E7BBFCF46DEB944DF1020A20F318848F83680B71D11CAC97F7CE9C7D4048A32C697896245A4CB4ABEB690AD2D666B2B851A4A264059763FEEA1D03764EAE8F8127D442E31FB8941EF437DEE5D61070A533144401A8D604A12BC7E2357A8A9148D837D6E3F666C5FE97B622A6C90DAD39D977335763A3BBB4682B331D81DEDF71EEDF70C07453C869C161B0E97A1D7720D6A59F4D4076822345BD1E887F36BD5B195E2C5A5C2F5B52AE582E0A550680D7927061B0433A32EED0C3A4E0E7B7FF640F850AFC7E72099CCB44122E59DC502C846DCD6A303B8A01583EE89291944964D26CAAF5ECFBEB7CC611304294C0F74BB894A1C4830D27F65B7B915871F9FC808B8552E3411C214A5C55C6D225EBA1C2BBD1F2F5DCF54A9C8842DB7A12A2AA339C59D3CFB44D4FBD4DED089216FBFCF4E1BC007D84E7CC21C5A8B900FC19413043F49746129FFEE52010F8FF68A024F76879C56A7CD4C8705C7160ACD4F46F40C23E349325A5CBA5CA73250B2DE5EC84D252AD45F012E812D91D5B11BF2DB4E8DF87FE14111B37ED24E8029D2AE35B903538EA89E000A1FBA1C2BD2FEE836541F929DC0946E6B7DA78F4B084DE8017D6C3957BD122B91DAEFAD146FAE11B61AC9C755EE015948D8812EE7CF3D1079726F301AB053645BAE637760CA0674CF4BCBC5C56C351A70EC8B3829E1AC2D42F2FF1E989B054329ACF01648F4CBD3E91F5ECF2DE514BA0561A443002709B92C54D82F1CEB81217898C95AB2F90E4CAB758D8187821276DBA093944B2ECA2CA1F90867E23AF183331F2BC4BACE2DA8C073326C1B99B27A25567C693A737646345E41BF5850D25B1AD3E323BE2F1EEF2560ED34AEEDDB7907A62CCD7EACCB3A2259F2357204C7529BD8890A30127450007235958648A72286798A15EA0D4AFE3ADFBE7F81D8C70B0A2C91634A1BFB3274EAC6A12CD530C6BF6673D0E7A05FB790A13AB2A53AD540393F9F3B3391BEB85C80935164B9CA3E143A58CDEF9CEC7F6257C0F31113C23DE40E4C117EF17B395F7D752EFBCA5C96699D4110BC801258477BDC11B7657CB57C7CC0FBCCC12E663E1EA9D51BE3AB25483544153EA7AF733F329BAE9C194F41391870DD36D36F1CE979627780FAC625CC1E5B29FCFDA5D58AAA3D7BACF7E1A8EF7E7654B526F141FBFAD678F2DC4C169E00A5E53C6E62223811F57DEDF4D0E17E0F86EBF76F51CCCF3DF7DCFAE12DA102FCCBD5E4372FC6B18D76FFE8B08F6E48B302DE376FE6DEB899BFB1561D093A8F0F7A1D56130E278FFEECAD65AA12510CE15F5FE53E84C154303945FDC15C763E5BC5AA833D1E0A917EE9EDF9FCDF5D5A9D4D57F74520762EC2487FAA053109A26AA623D187C111624BE3D2A34A519B2B05D86AF3C15E5708DAB89D6CD88C69BDD16084FFD33796C8FD678FF77EE9E4002483298DCF89215F97DB3A9E289326C706BC0F4705A6B4D40F52E5BFBE101B0A38807EBB2EFD5081360E07ECB06E7A74BEAA3DBEC3CFCA3AA60846D34847028ECFEE09B2E9B633F34EE1610A96CF6ED167AA6B89B2E85A3275D92856A8331A1058DBF2DCE65BF10C03282E22914FEF0C30230313833C39C69927F7863EB32B08ED9045C2C02400A0DF994CD340F13079C4085BA96B3A31641A8178F34D425161102E719B7E9263427B7D576900C62CE56A58753353C5A3F23D88206FEB77103B9A9892BB3DB65F3BDC8DBFF775B96E03CA426C020B5CC856D19F0F41C72E6267FD0EC96A60876CC1D5C944693655592D8886CCC3388C99F5E9FDA1DF7AA40F33D95ADE6F4895EBE7E6444DD057D8A26C8E5362FFC252019E01948F8FF8097BE94BA134058D5681F134CA9D2127F332A4E4DBE3A997A632B18242C4509E96F20A803A6DA6F178F9FC42E1CA4AE95AB24C201074A073355E24F460BE546440272E88741667CD785E39BF90FB8FA90CF97E255EA49E00DF8F160BF42B3D4EC953E67AD66428C248F06204829FEB5949BDA24ABC2107E8F30BF9CB2BC5E95485C1DF6E1194DE6A12350A4A03ED7F6536FBCE52FEBD9512F7305C55558D064827A409B2180C92A7286E34669605560C67747CB0C7CDCF2DCA664CC1655E4EF78912F38686C3201A65F94248B645F1161D3E4CEA0DFAEDAF5EA7BCE6E6B3B57CB581BB932575315BA3F8E0EAB7170A2F4F65CE4CA4704FC46539DCE7A143FFF07AF67B336BFF3E95F9CFE90CF173B8CF0B1FC4DA5C453D3341055FA55833A1672A753C41C55CC82A20FB491D5323BDABCA9ADF9BC9B002881CEAF3EC088ADC27DE67D295E7C712FF309660642291F12207DF9F594B96EA8CD4F44FF47F7132F5B7EFC699A3D09C799FC83837BB0619DF1D72F6F96CE28D8F7CC912725A2612A5859CA247381E1B09DAD161EB9CE6EE1E2532EEE252712E53A5F362E4773F588300105F13ABD4841A7171B0D74DDEB96D961D61E7812E57BC50BF9EA97C7EB4EBCB270798431EEA7713DD7B23AE07BB5DF00172ED48BFF791211F559228A0ABAC95EBCCE058F22879E0B4E2B3D76F66FFF27C0CD2F6B9FDA1DF7B3CCA22837E07A88DC54A0C6F9FDA1900536C0E382D87FA201E36A80F13FDA7770577479C608D1BBEF96EFC85C934B9F2D5D3D15F1AED7A6CC4D7EFB5332FBDB350180C38F6CB4DBFF1C6F207A9CAC921DF974EF43F361218ED71317FE37BC19C06BCD43761BCACADF1627D6CB9A8730080C696CFEE09E9646E2BB2B99E92E058FEDB27FA7EFE813051C0195C3DB95AFAC1F5ECF357127FF2DAD21FBF32FF37EFC6C81A129628E9912F2201DAEF100496FA1B745A89026A2ECEE71B45640209F68AF694AD2E8F8D322983405C221BCECE64316FB4D7FD2B0F75E3B09D61E7A9111FC81232B70D214A58B6CB2D5E2DBAAD66519EE5B2640FFC840CE0C4937B0340265E3CDBCC643A31418D16AF7F9A4D2A66D0650174EA00F0B9ADC2437CEAF07F78D9ADCACE6E1EBBF9D88067D06FBB7D061D8C72AF2DCA664CD194C0D91174FEE6237D5F3B1D7DF658CF53FB43D029E291BA4311A49C7DEBFDD4B7C79334041C60937FCEE441ACA72AD11F39003EF953BCB8DA9832E2A4C524DE50DC3AA7350CE9B21816B10AF2BB27E282F3523D201850A8A85FB86BFD56E9159E6559E1C3F573A235CDA445530520E85DC0614507EEA195ED8938A12BFBBAE04BC29DCF8C467E7134727CD083FFB0E282CC3CEA9978C7BA0132161FF2DB7786443C2114976E3CB0E5C4473EA4EFD343CE8C27598648F9CAA9C1AFFFF48E6F7C6E17DF7FF4C4D0178FF5EA555CF4A57C5D26C78F05BD288EB2C9AF9F916EBE5B7E7C9260A798A6CB2A58832391A85F037DC25FBC6DF86863C4DF5A0CB46F98A4D76EA12CE8B7B30EF8FEE1E9A1AF7E6AE8E141914838837A0545034D98DF5FFD68E585891429A8ABCA376AF3E1980558AACF6B17170C06B4A2476D07D2BB30C569CCA367E7B2C40EF651B3316C38E4C0E114BBDF7D6CE09983118FDD04AC74928D6408210D99BB66526592E9F6853BEED06503E4087EC10B1CA0F646CD595B3FFFD1C21DFAC39482DBCE24D6A81B10EA6E8FB5A48806CBB0FBE76F2D7DFDB5C5EFCF64B1EBE903E1AF9C827AFBE4746620FFE6D21578857C5A243B4EE580750EF7BB294A5B6F50C8664C510D77A54A2AE30AED859FAC4BF49050A4101914765A703BAD5574DC8D1B350D65457BED46EEF9CB0998900E9CBC2EFFF6290D470475551B84A7FE5B771BCBC23D2902941D795ADC461041D1B8939FEB0FDF2DC27803A48A64877591D41BBDCC68F04F971367673330E22BB1D2B9D92CB7FDEA91EE2F3F3A004DA494A19EAE0743F077265397968AF239206E244B0ABA45FD8292F7782194DB90BB3095826D60FA6FE3A9B94C0526C84F8CAB4A6FD33A5183D182A410CE14FF09511A0DBA0DAEE69E9A0C602E4221205958CB3824D0AC37A0383329225CFC558638E7416CA358B3C8E46A991421A6F8D0612E2CE69725DBE5839B65D8EA19DA6079510739AF35712C7593C685235FBF914D1415F1672839C8BFB70C1DCE130D3806C55265153ABC27ECA49712106C01B7E1126A60232E6416451F92235E107FE0C2D93FB3377422EAA5E34913B72A9BB9148E86AEC39C00653A5926540154A858D5A65365BAD3D9D92C71FAEB47BB1F8EFA9C163303CFC5A5C258AC083468CFB354AF53C37EBFC30AB23401080D40C00AA8713732D597A6D297568A940E7293811D2E4517268ADF8F9516F30A914E4F079757E77284BC98201A4DE60B1822A515E3895C16E4120D7D4FD8059492635893C53A5DFE66B6AAB775AE02E83F5F4D905B4F1D08433696730A6C94A8A4ED31133211BC349D411FA044619459CC2910356A2E2E79793AF3E67CFE709FFBF73F196577A27B1D9DADC95DF3BED6248EE245E5970F75ED0C3B20FFE766732F5E4BBF309E7AF19A60DA5D1EEB178EF67CFE6017094B592064F244C44A1142C3908331F456A60E8C2163417932599E4957E1B9F07C560BBAAC3D6E2B0490C8BDBA2A5E23328F0D079C2C056F7F6B3E0F51FFEE4C86E27364C0833EF892998281B5DF6B03D0BF787B0583C9652E11D42CCE8446D20CF8EC78EE5AA2F2FACD1C1BC155C11D4EC2ACF950AFC765331398C40420324149AA5F600CA149C0FC992FDE8F9777879D4FEF0F338370CFBF5E4DE2983FF8A921BA93689BDBEA5014A48D4D1A0153742552A8EEF8077C97F2359C493ED283C977726757D84909133C49CCE0E2CD3943218C956447B393C33EECE4598CA4A2E1868944997B6048C3410737106E6416BBC23E87020EB80E5A5331AE254BC41A812F42B84BC4200D1DF28849F0A47D1127AAB20B24014F204C01F0DF5D21473460473D8A29E8DC4857F02B97D09FBD183168E2C41965878E7F252652C46D3371E9608F1B1D2865D8489A13A49CC4A27F1C5B45DBD3BB02800EB2387B1D9A2DCB87BC3F05264E8118AA90F8A26FCAFF23028B938014171AD4C6F6C425B82AB7714CE68AF7C4B72EB30EE98C91B2F930F931539B29C0FCE412F700BDBE1A7B820B77927AC414C6705E544CD9FB51869F1C89331B14E6BC4E8A39E612CFC2F029FD6C4F7C812657755D30B3AA0A3DF9C61040D4791A4D42FA40FC75DA64304E264A632B450803D498122137D9B66CC6F4FFADE03B3AD5C25AADDFCF6468D1FDD49A74306DBFB4EE8D8EDC4B3A98B65F3A98B65F3A98B65F3A98B65F3A98B65F3A98B65F3A98B65F3A98B65F3A98B65F3A98B65F3A98B65F3A98B65B0C86FF026BE2B51B42ADECE60000000049454E44AE426082, N'Studica', N'Studica has been a great asset in developing the Skill Mobile Robotics to industry standards. We are pleased to have Studica with us as a Global Industry Partner in this field, especially since technology is moving fast. With Studica’s support on a global scale we can guarantee that all WorldSkills Members and Competitors can test and assess at the highest possible levels and with latest technologies.')
GO
INSERT [dbo].[Parceiro] ([idParceiro], [logo], [Nome], [Descricao]) VALUES (11, 0x89504E470D0A1A0A0000000D4948445200000049000000500802000000DAC8CFD8000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000000970485973000012740000127401DE661F78000011BF49444154785EED5A79701BD779C71E589C0478403C009EE22552127550727498B25349BEA4C8B12D9FA4AC288E53A7EEB4E91FE94CDB99D4F5B4CD64A6E343B6536732B13B7162394E9BF8A80E4BF52959772C31124993146F020401123C701FBBDBDFDBB7044191CA94A09A197AF8D30A7CFBDEF7DE7EBFF71DEF5B908C2CCB9AAF2858F5E757114BDC162796B82D4E2C715B9C58E2B638F1FF539760512091902291D8B027DCDB8FCF84DF3F79F90FD68DF53A7B81D66A15EC79DABC3C5EABD5B02CC3B21A8651E7DE3CDC6C6E0AA544281CE9EB1FFFFCCCF8E9B3C1CE6BB23F607FE09B8E270F30560B2BC99A5028EC1D090DB91363631A4932AEA836562C670D4656CBDF5C8637939B2C49622010FCB2C3FBDE61DFC79F8A9E11D2A7D1647D7D5BD9DFFFADA1B8685A755986E4E427277B9F3B180D85B26FDFB66CCFAE8C552BB90C33C371AACC827193B8C9B2944844FA07478FFF8FF7B7EF46FBFA2551242B4B92A9BAB2EC1FFFC1B2613D2B08AA30B620181A3DFE61FFF307234E171C92E538C161B7EDD96DDB75A7A1A49848DE0C03DE8C5C0262F178A0A5ADFFA59F0CBEFC6AA4A7571445746269ADC9947BDF1EF3CA1A1671350529169B3875DAF9E2CBB18141161C60C344223AE01CF9DD7BDEF78E84BABA21804E557A01583037584714272F350F3CFFB2EFC807481E9224B10A315CD65BEA33B7DDCA5B2CAA1DA0B12C079BAF1062FD031CC75131DEA037ADAACD6F7C387BDBD698CB1DEAEEC1662D9CDE42B9815AA0AD7DF0E0BF4F7E7E1A7E887BAC081E8C24095959D93BB6EB4B4A521D2CE61A72FFE4A791D636F022C46459C8B4DAEED851FA83EFE7EF7BD4B2B1DEB266557CC81DEEEE414E52E7A48B857193E5A87368E0959FFA2F5C142509B14BD49DBA4CB5D5E635AB39A34115D668C440D0FBDA2F029F9FE1789EC8B08CBEC891F7E8438EA7FFDCB2E916CE60C02EF0369BB9B626DCD71F19722339A933D3021E913E1018AE377F3D8194288A300DD6A29FB8E06619EBD60A458E54A3053E3FED7BEB6D56923886818CBED091BFBF29EF5B4D86F2E5243D524986D1E6E59A2A2B02AD5F4AD1A8322F4DA4CF0D613671FEA2EF9DF791216131E8A5D263D090750EBBB176056736ABD292141FF6F8DE78530E04903F146285794FECCFBE6F8FD6664BE54F61282DD16566FAAFB62EC474E9738383B90EBD9DF0F910722AABA4DD18C65056AA2B2926058702A81838F161A4F90AAF78A3D66AB13DFE58D6BDDFE0B3B2661043FAA0298461905DC35DDD894020EDA4922E3759460115FAA239A178630A2B7262723A415F568A924A15C6468C8CF8DF3FCC442310E0046DF6C30F66DEFB0D2E23432506ED915E43A1484FCFC4E9B3631F7FEABFD42CC66396EAAAC0D55665817490263759925179489393502BC94DF146C28D37997445859C654A758D267CEE42ACBD1D599189C7CD5B3767ED6FE473B293C4C02A70FEE2D08BAFF4FFF0D9FE67FFB5FF9F7FDCFDC367BB9FFD118AB248FF40DAD5455ADC6439363202BB2562B164A44D5FE06636F3B61CB57A826AB158E8F4192614C6C384DCDC9CA79E9C36A928E104F7FEEC75E73FFDCBE8A1B7C1307AAD2BD2DB176A6BF71D3DD1FDE3E7C63E3D15F5788861E78F74B841DBF0B52E79D4971AE8A9F458B389B35AD4018D2631E84CB4B5233DE2CA6C7A54BF72A56A31518C7674789F7FC9F71FBF8876744A082D72422A7360CC580C7576E0CCF9D0979DE9992E2DBB4972F05AB726421274928FF29F003F71527126937A2F49B1D636C9EB6512097D6585E5B147181D292C9166A39DD7469E7BD17FE4A8E40F9045000C50C726B76436138D06BE6CC722E4669E48D32723AE21C4BA7AAB405548B950EC32828EF62332E31D9D1A38A42C673C783F67CBC1998D1544F7F0D82BAF063FFE4C83232475AEF29904EC87121C3FD4FBF9202D9FD4C88989096C3CBDA53A51D006527F32FB6BE2B1C4C0A02616D516151A76EE20E680BE78C179F3ADC0E1A3C438D44033915C13DE181F23C78C72373FA4E793F0B3189E97D48062BA8D1750F2E2A6340341697414E9D170DB3616B911EAC6E3917317FCBF3A44DA54E9D45566DE6118A948BD9927D2E286C0E05036A9613F1BD086BCA72890424192240C06FDED0D8C8E38AAE41B9B7CF567E2A49F38E75CB87ED974DF56D3E146A8994D0C4B1E49F695F6A6B4C99B4E28AC343572342A85236C41015F5D454E05590E7DF851E48B4B0CCF5301821436A9AB0178D6F42BD23C91A6DD74B9B92CAF4D3E30C90A40430C06C8B14E6FF1829088F315E5AC528548C160E0BFDE91255152DC71F645916CA07CD3DB0B68069D2FD2E4865A16A93CA90185AA1CC388FE606264544D361C27B31C5F5EAE11049C87918BBFC7CB9BC4F154985C648E8A64671212CB1AAB2AFF7476430E34E17919663C32A90D54541BE0160CE21D1495147AC9696636F1450EE284A2183876428497C280D7CD4A5E293D30976C329A6B574C67DDF9202DBBE10DC55160ACAAE079ED0C7AF402B76834DAD393F0782149BE9CB3D9B8DC5C1810492574F1F7300588916B8A867A9BBA086622AA19D6545BA3B7DB9567CE1B69FA24ABD3656D6B600D7AA28402A2505257F85E774FB4AF1F07376B34F20E079769C5A4B8D3151D18548D86D27F161FBAC23438D676E74E56203BA8F6CC0769DA0DC8DABA495759CE219C66ABC83051A72B8212311C62F43AA1BC8C218944131B70264261622E85189D389B21BD6559565B519E7DDBADE91103D2E5C63042EEB2DCBDF7E1C89AA1D694D289C940F052737CC80D1D75D555E4059C61E25EAF288A493E5472FA3325D27061E5FC47F6E229EA13E78FF4ED86F8B6EDF8334BC3161E494F893A554BEA6C8C26D8D21A6A69C339AE2B2F67714691B3214486522E6452DA98E1A2A434E032B66CB2EDDC4EB2C89FDA6E007C263BABF0BB4FC0E538253DCCA0C7B0518F77F2E4A9B87B18EF3BAC5E071561184A001758A9C4209C420C9F4821BAE565F6FD8D82CD76A3DAE5FF8205705360AEAD29FE9BBFD4E6E7233C9024A872F482FB8D9F3A1DB8D42C456374EF19A389F4CFC50A179D4BC22C3FD7F1E401CBDA3A867C379B3E16C60DB94FD066356C2DFAFE5F08F979C47AC9838B5C4CD4ED1D79F7BFA34E277D01E3736D12CBA994526CA5EE08566339212FD7FE9D03D9DBBFCE198D697B23C542ED06E04D3467E78E92BFFB81A1B29C4791A9D0532F96193F7761E4FD23F1B17148EA8A8A344623FAA7C36CAA81591CCB19969716FED5D3CBF6DCC3E3B57D61C400EE99679E519B6983584FD01715E29C8DF97C31A70B4A5175894D4431DCD56DACAE84007661F4D871F0A4B9875E643A2008195FDB58FCD74F67DFDE80E238BD42E43ADC0C6E00F4E3795D7E9EF56B1B85FCFC88DB2D4D4C427D5A10A304033DEBC60DC2B29C506FDF64F31F649625ACC8E1CC62A250525CF0ADA6C2A7BE83F20A55C1C22D46C1CC7EA54555A1B6304CFFA53C0CF2A95330943A4A8625293AE41E3DFEE1E80727C2ED9D4C24824E29215AB66EAAFCB71FE1C4BBD27840138B332C23095AFDF2B2EC9DDB6D77DF61282E9AFEDA7C9EB84E1FB53527B789F1F148348A7EC869B5DA8C8C0C7CD22174A2540C0602F1A95FB2645AAD7AC3F46F330820843565590C8542DD3D812B2DC1F68EA8CB1D1B1DCDDCBC09D9CFF3FE61DE6432555799EB561A2B2A78A5E6263AA54B2C12898C8C8C18F47A6B66665255600E6E470E1F39F8C20BA28480D79495953DF5BDEFAD5BBF9EEE07D2FA07C78EFDEA8D5F0E7B86D1A313742FBC74B0A2A24299370B0A43CA13C6946371096BF23CA7D55226F4333D4A49C4E3F113C78F839BCFE7BBEBEEBB57AC58A10ECC9927A1EBE8E8685F6F1FAE96AB2D979B9B93FC61B48B172FB6B6B692D1BE7E96637351E0DF08505AF95208CEC66AB59CC9081FD01A0C0830F29504B2C5026A8E24E01CA067B55AE15F6DAD33BE609F835B81BD60755D1DF8C04A6363639DED1DC16090D21B1E1EEEEEEAC22DFDA5D4E6CD5B74A827A78040555BA9BE30651C74E182842AA4B81315A11DA9B8AE9FDE52A85D539D50C06030DA1D0EABC55A9D6234600E6E82206CDABC090E83F930140C3438384887BABABADCEE6170C02816DDBC750B0A3FEAEE90191818C0A7C7E3F1FBFD8999BFF5C43AD8A621970B3203FDFD834EA7D7EBA57B4447E129984881D512F104AC31393989FEF1F17108400CFAA0D3AF744E8C4FC494EFDAF47AFDBAF5EB6C365BFD860DD74547CA173253E079BEBEBE1ED18EA531D9EBF15CEBECACAAAA42BBB3A363C4EB4503628EC2C2F2E5E557AE5C69B97A15EA4E4C4CE0C11C8FD490B16CD9B2A2E2A2D2D2D2A2E2626C414F774F4B4B4B5F6F2F42221209C3BA8200F7B4E417E4AFA8A9A9AEAE76395D9F7EF20956A02B43818DB7DC120C06B06C3018127438234A56D4AC4888624F7737B62F1008E875FA92D2D2FAFAF505763B88018AEE3330073798A2A8A8A8A2B2F2D2175FE0169BD4D9D909E390B4D7D54509C36EF51BEA9D2EE7CB070F5EBE7419A3542D921E9415B2B2B26A6A6B1F6B6C44E3976FBC71EAE4496CFFB40C799D0143A1AABAEAA1871EC621F79FBFF98DCBE5A2C70F6E3FFEE8236C049D02F9CCACCC35756B1262A2A5A5155B20212218067C1E7EE491C79A1A11F3F4B9D761EEB31B2B3A079D972F5D42036E939D9D5D57B7DA3D3474ECE851F8141642AA6D6C6C3A7BE6F4A953A75083E0D66C36AF59B3063BE2F74F4271F824BC2E2F2FAFBBBBEBE4C993703FC8E8F4BA55AB57AF5BB76E6CCC8745B005FE49BF2849F9F9F9AE21D7A47F92D7F25A01825AEAF600F8D35BB7DB8D5D06836427148B84C3EBEAD7DF88DB1C7603B48280BC6F341A11395802910467F08E8C0CB986C830C3E4E6E5959695F5F6F6343434C0C7D067B158EEBCEB4E4C397CF8F08897FC4510B6DFE17060EFE139F138C24F86B3EDDEB3A7A4B8F8D0A1435E0F7C1B5662E0DB65CBCB76EDDA5D587899861F8A9C8ACA0A04053C391E8B6322FA30D76EB71B4DC6DEDE5E5052C4188BC58ADDA0EE301B7373C342785E7149496B4B0B6662CF5A5A5B71A6C34F308A42A96E4D9D6D990DE19461B120F1A1130DC424E26DE3868DC807B49A71143A4C66138E0A89BC6D6B389EABADA9B158AD6BD7AE850792898C263333CB6E87985914616C851BCB60CB1048B04F3010440FC49033EAEAEA7273F3CE9D3B8B7DA19D0620E5EF20AEC3DC25294E25C4097C0CFA811B5C1CB1D7D6DA86B8C2287C69C3860D30112210CFA6088743F02E7826CE8FADB76EDDB2955C65CB97A3332903C03258331289AAF7CA4470827D82584D4108AFE79284FDC5E3923DE13092908447233DE29E2040FAA9A9E7C40DCA6D46039758B3762D9C13AA2001221FB6B7B7D358CFB1E5D4D6D6C2E531940A0C215923203B1420A9C280B006EC40812D83352136D59104E9C6A87A47EF15AF4BE9430FFA954E05F079DA80E49C989B1B262077C3E9ED05E4FB6A501AF38D25B316B2765E7E3E4F4A4D4B666626AA385C88379EE3E231BCE5F870C47BDC28CB3CA83C0D7A2386A90CAA078407C207614327029828083A9D5E8F061503902AF020941A5373AD444C27C06E700D08D0D5D0094955E959983BDE00EC0A922C1CACAFBF1FAF06345EF13C00F6C4EA689CFCECB3B6B6367A4C5B2C19384F91AC7FFDD65BD8084883EAAEDDBB91DC2E5EB8007BA2079AE1685A5DB7FAF5D75EF7F946B124F61CC700F6EEF2E5CBE7CE9EA37E81781E740E363535BDFBCEBB9EE1614C841888DD76DBED3BEFD879E2F8099CA8B413C4C291C8FD0FDC0F7D88D23371436E00527FC3B60610481E4D205C5C528C60C3E6410FD401A853697DC072DC80F2E76710A6410513C19991DC906C918D208FCED77EFE736479905765B45A1C8301BFFFFCD97338DC29373C45F389E6AEBBEEC631ED723A155DC8B65A322C2B57AD025BA44ADA89C79D3B7B76FB8EED7372BB41BC29406ADAB479F3037BF78209221B0BA1E0D8B76F1F820D6DA0715FD3BEFD8FE374C22876113641D6C144642F1C744D8FEFBB67D7AE071EDC8B066E91F4A0345200884106ACE017F7ECDE75E0896F2355C2F818A5CB02EA3B942CABF7E42FDB5830A7E4D52EA5137B44F77D36E678C7490243C0F8D8D885F3178E1D3BAAD71BEEBDEF9BAB56AD4286245BAB08C0D950FEF5F6F478BCDE683802EDE09C88469C6C8807F08118AC0763C22C08C340C08F5908AF9C9CECC2C222BB83247AF790BBB3B3039910439087898C46D3CA95B54860C98A0740EAC6B1D4D3D3E3C321AE006AE0E086E5B1FB5426157F8CDB62C71FF3C9C58E256E8B134BDC162796B82D4E2C715B9C58E2B638B1C46D716289DBE2C457979B46F3BF923F0FFC4D2929500000000049454E44AE426082, N'Vcom', N'Vcom’s services cover professional standards building, student and teacher training, teaching resources developing, training environment constructing and skills Competition supporting.

Vcom education takes the leading technology of international enterprises as the benchmark, integrates them with the vocational education industry, and delivers international recognized skilled talents to the world.')
GO
SET IDENTITY_INSERT [dbo].[Parceiro] OFF
GO
SET IDENTITY_INSERT [dbo].[SkillModalidade] ON 
GO
INSERT [dbo].[SkillModalidade] ([id], [idskill], [idmodalidade]) VALUES (1, 1, N'01')
GO
INSERT [dbo].[SkillModalidade] ([id], [idskill], [idmodalidade]) VALUES (2, 1, N'02')
GO
INSERT [dbo].[SkillModalidade] ([id], [idskill], [idmodalidade]) VALUES (3, 1, N'03')
GO
INSERT [dbo].[SkillModalidade] ([id], [idskill], [idmodalidade]) VALUES (4, 2, N'04')
GO
INSERT [dbo].[SkillModalidade] ([id], [idskill], [idmodalidade]) VALUES (5, 2, N'05')
GO
INSERT [dbo].[SkillModalidade] ([id], [idskill], [idmodalidade]) VALUES (6, 2, N'06')
GO
INSERT [dbo].[SkillModalidade] ([id], [idskill], [idmodalidade]) VALUES (7, 3, N'01')
GO
INSERT [dbo].[SkillModalidade] ([id], [idskill], [idmodalidade]) VALUES (8, 3, N'02')
GO
INSERT [dbo].[SkillModalidade] ([id], [idskill], [idmodalidade]) VALUES (9, 3, N'03')
GO
INSERT [dbo].[SkillModalidade] ([id], [idskill], [idmodalidade]) VALUES (10, 3, N'04')
GO
INSERT [dbo].[SkillModalidade] ([id], [idskill], [idmodalidade]) VALUES (11, 4, N'05')
GO
INSERT [dbo].[SkillModalidade] ([id], [idskill], [idmodalidade]) VALUES (12, 4, N'06')
GO
INSERT [dbo].[SkillModalidade] ([id], [idskill], [idmodalidade]) VALUES (13, 4, N'01')
GO
INSERT [dbo].[SkillModalidade] ([id], [idskill], [idmodalidade]) VALUES (14, 5, N'02')
GO
INSERT [dbo].[SkillModalidade] ([id], [idskill], [idmodalidade]) VALUES (15, 5, N'03')
GO
INSERT [dbo].[SkillModalidade] ([id], [idskill], [idmodalidade]) VALUES (16, 5, N'04')
GO
INSERT [dbo].[SkillModalidade] ([id], [idskill], [idmodalidade]) VALUES (17, 5, N'05')
GO
INSERT [dbo].[SkillModalidade] ([id], [idskill], [idmodalidade]) VALUES (18, 6, N'23')
GO
INSERT [dbo].[SkillModalidade] ([id], [idskill], [idmodalidade]) VALUES (19, 6, N'22')
GO
INSERT [dbo].[SkillModalidade] ([id], [idskill], [idmodalidade]) VALUES (20, 6, N'21')
GO
INSERT [dbo].[SkillModalidade] ([id], [idskill], [idmodalidade]) VALUES (21, 7, N'20')
GO
INSERT [dbo].[SkillModalidade] ([id], [idskill], [idmodalidade]) VALUES (22, 7, N'19')
GO
INSERT [dbo].[SkillModalidade] ([id], [idskill], [idmodalidade]) VALUES (23, 7, N'18')
GO
INSERT [dbo].[SkillModalidade] ([id], [idskill], [idmodalidade]) VALUES (24, 8, N'17')
GO
INSERT [dbo].[SkillModalidade] ([id], [idskill], [idmodalidade]) VALUES (25, 8, N'16')
GO
INSERT [dbo].[SkillModalidade] ([id], [idskill], [idmodalidade]) VALUES (26, 8, N'15')
GO
INSERT [dbo].[SkillModalidade] ([id], [idskill], [idmodalidade]) VALUES (27, 8, N'14')
GO
INSERT [dbo].[SkillModalidade] ([id], [idskill], [idmodalidade]) VALUES (28, 9, N'13')
GO
INSERT [dbo].[SkillModalidade] ([id], [idskill], [idmodalidade]) VALUES (29, 9, N'12')
GO
INSERT [dbo].[SkillModalidade] ([id], [idskill], [idmodalidade]) VALUES (30, 9, N'11')
GO
INSERT [dbo].[SkillModalidade] ([id], [idskill], [idmodalidade]) VALUES (31, 10, N'03')
GO
INSERT [dbo].[SkillModalidade] ([id], [idskill], [idmodalidade]) VALUES (32, 10, N'09')
GO
INSERT [dbo].[SkillModalidade] ([id], [idskill], [idmodalidade]) VALUES (33, 10, N'10')
GO
INSERT [dbo].[SkillModalidade] ([id], [idskill], [idmodalidade]) VALUES (34, 10, N'07')
GO
SET IDENTITY_INSERT [dbo].[SkillModalidade] OFF
GO
SET IDENTITY_INSERT [dbo].[Skills] ON 
GO
INSERT [dbo].[Skills] ([idSkill], [descricao]) VALUES (1, N'Ser criativo')
GO
INSERT [dbo].[Skills] ([idSkill], [descricao]) VALUES (2, N'Prolemas complexos')
GO
INSERT [dbo].[Skills] ([idSkill], [descricao]) VALUES (3, N'Ajudar Pessoas')
GO
INSERT [dbo].[Skills] ([idSkill], [descricao]) VALUES (4, N'Artesanato')
GO
INSERT [dbo].[Skills] ([idSkill], [descricao]) VALUES (5, N'Consertar Coisas')
GO
INSERT [dbo].[Skills] ([idSkill], [descricao]) VALUES (6, N'Coisas que se movimentam')
GO
INSERT [dbo].[Skills] ([idSkill], [descricao]) VALUES (7, N'Utilizar Computador')
GO
INSERT [dbo].[Skills] ([idSkill], [descricao]) VALUES (8, N'Utilizar Ferramentasas')
GO
INSERT [dbo].[Skills] ([idSkill], [descricao]) VALUES (9, N'Trabalhar como um Time')
GO
INSERT [dbo].[Skills] ([idSkill], [descricao]) VALUES (10, N'Trabalhar ao ar Livre')
GO
SET IDENTITY_INSERT [dbo].[Skills] OFF
GO
ALTER TABLE [dbo].[Competidor]  WITH CHECK ADD  CONSTRAINT [FK_Competidor_Estados] FOREIGN KEY([Estado])
REFERENCES [dbo].[Estados] ([Sigla])
GO
ALTER TABLE [dbo].[Competidor] CHECK CONSTRAINT [FK_Competidor_Estados]
GO
ALTER TABLE [dbo].[Competidor]  WITH CHECK ADD  CONSTRAINT [FK_Competidor_Modalidade] FOREIGN KEY([idModalidade])
REFERENCES [dbo].[Modalidade] ([idModalidade])
GO
ALTER TABLE [dbo].[Competidor] CHECK CONSTRAINT [FK_Competidor_Modalidade]
GO
ALTER TABLE [dbo].[DataNacional]  WITH CHECK ADD  CONSTRAINT [FK_DataNacional_Modalidade] FOREIGN KEY([idModalidade])
REFERENCES [dbo].[Modalidade] ([idModalidade])
GO
ALTER TABLE [dbo].[DataNacional] CHECK CONSTRAINT [FK_DataNacional_Modalidade]
GO
ALTER TABLE [dbo].[LogAcesso]  WITH CHECK ADD  CONSTRAINT [FK_LogAcesso_Acesso] FOREIGN KEY([idusuario])
REFERENCES [dbo].[Acesso] ([idAcesso])
GO
ALTER TABLE [dbo].[LogAcesso] CHECK CONSTRAINT [FK_LogAcesso_Acesso]
GO
ALTER TABLE [dbo].[Notas]  WITH CHECK ADD  CONSTRAINT [FK_Notas_Competidor] FOREIGN KEY([idCompetidor])
REFERENCES [dbo].[Competidor] ([idCompetidor])
GO
ALTER TABLE [dbo].[Notas] CHECK CONSTRAINT [FK_Notas_Competidor]
GO
ALTER TABLE [dbo].[SkillModalidade]  WITH CHECK ADD  CONSTRAINT [FK_SkillModalidade_Modalidade] FOREIGN KEY([idmodalidade])
REFERENCES [dbo].[Modalidade] ([idModalidade])
GO
ALTER TABLE [dbo].[SkillModalidade] CHECK CONSTRAINT [FK_SkillModalidade_Modalidade]
GO
ALTER TABLE [dbo].[SkillModalidade]  WITH CHECK ADD  CONSTRAINT [FK_SkillModalidade_Skills] FOREIGN KEY([idskill])
REFERENCES [dbo].[Skills] ([idSkill])
GO
ALTER TABLE [dbo].[SkillModalidade] CHECK CONSTRAINT [FK_SkillModalidade_Skills]
GO
USE [master]
GO
ALTER DATABASE [ModuloWeb] SET  READ_WRITE 
GO
