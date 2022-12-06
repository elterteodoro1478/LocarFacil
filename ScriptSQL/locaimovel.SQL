USE [master]
GO

create database locaimovel
GO

USE [locaimovel]
GO
/****** Object:  Table [dbo].[Bairros]    Script Date: 05/12/2022 22:14:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bairros](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](255) NULL,
	[IdCidade] [int] NULL,
 CONSTRAINT [PK_Bairros] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cidades]    Script Date: 05/12/2022 22:14:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cidades](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IBGE] [int] NULL,
	[Nome] [varchar](150) NULL,
	[IdEstados] [int] NULL,
 CONSTRAINT [PK_Cidades] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estados]    Script Date: 05/12/2022 22:14:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estados](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](150) NULL,
	[UF] [varchar](2) NULL,
 CONSTRAINT [PK_Estados] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Imovel]    Script Date: 05/12/2022 22:14:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Imovel](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Descricao] [varchar](255) NOT NULL,
	[Detalhamento] [varchar](1000) NOT NULL,
	[LinkFoto] [varchar](500) NULL,
	[Cep] [varchar](45) NOT NULL,
	[Numero] [varchar](20) NULL,
	[Logradouro] [varchar](255) NOT NULL,
	[Bairro] [varchar](225) NOT NULL,
	[Cidade] [varchar](150) NOT NULL,
	[Complemento] [varchar](45) NULL,
	[UF] [varchar](2) NOT NULL,
	[VrAluguel] [decimal](18, 2) NOT NULL,
	[Tamanho] [decimal](8, 2) NOT NULL,
	[Quartos] [int] NOT NULL,
	[Banheiros] [int] NOT NULL,
	[Vagas] [int] NULL,
	[IdLocador] [int] NULL,
	[IdLocatario] [int] NOT NULL,
	[IdTipoImovel] [int] NULL,
	[Salas] [int] NULL,
 CONSTRAINT [PK_Imovel] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ImovelFotos]    Script Date: 05/12/2022 22:14:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImovelFotos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Titulo] [varchar](100) NULL,
	[Detalhamento] [ntext] NULL,
	[LinkFoto] [varchar](500) NULL,
	[IdMovel] [int] NULL,
 CONSTRAINT [PK_ImovelFotos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoImovel]    Script Date: 05/12/2022 22:14:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoImovel](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](100) NULL,
 CONSTRAINT [PK_TipoImovel] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UsuarioLocacao]    Script Date: 05/12/2022 22:14:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsuarioLocacao](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](255) NULL,
	[Documento] [varchar](50) NULL,
	[email] [varchar](255) NOT NULL,
	[Senha] [varchar](100) NULL,
	[Celular] [varchar](20) NULL,
	[TelefoneFixo] [varchar](20) NULL,
 CONSTRAINT [PK_UsuarioLocacao] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Bairros] ON 
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (1, N'Alto das Antenas', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (2, N'Araguaia', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (3, N'Bairro das Indústrias I', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (4, N'Bairro Novo das Indústrias', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (5, N'Bernadete', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (6, N'Bonsucesso', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (7, N'Brasil Industrial', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (8, N'Cardoso', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (9, N'Conjunto Bonsucesso', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (10, N'Corumbiara', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (11, N'Esperança', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (12, N'Flávio de Oliveira', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (13, N'Flávio Marques Lisboa', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (14, N'Milionários', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (15, N'Miramar', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (16, N'Novo Santa Cecília', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (17, N'Olhos d´Água', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (18, N'Pilar', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (19, N'Pongelupe', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (20, N'São João', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (21, N'Serra do Curral', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (22, N'Solar do Barreiro', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (23, N'Vila CEMIG', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (24, N'Vila COPASA', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (25, N'Vila Nova dos Milionários', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (26, N'Vila Olhos d´Água', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (27, N'Vila Pilar', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (28, N'Ademar Maldonado', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (29, N'Átila de Paiva', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (30, N'Barreiro', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (31, N'Diamante', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (32, N'João Paulo II', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (33, N'Olaria', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (34, N'Santa Helena', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (35, N'Santa Margarida', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (36, N'Barro Preto', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (37, N'Boa Viagem', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (38, N'Centro', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (39, N'Floresta', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (40, N'Funcionários', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (41, N'Lourdes', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (42, N'Santa Efigênia', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (43, N'Santo Agostinho', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (44, N'Savassi', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (45, N'Carlos Prates', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (46, N'Acaba Mundo', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (47, N'Anchieta', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (48, N'Belvedere', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (49, N'Carmo', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (50, N'Comiteco', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (51, N'Cruzeiro', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (52, N'Fazendinha', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (53, N'Mala e Cuia', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (54, N'Mangabeiras', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (55, N'Marçola', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (56, N'Nossa Senhora da Aparecida', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (57, N'Nossa Senhora da Conceição', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (58, N'Nossa Senhora de Fátima', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (59, N'Nossa Senhora do Rosário', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (60, N'Novo São Lucas', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (61, N'Boa Vista', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (62, N'Caetano Furquim', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (63, N'Camponesa I', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (64, N'Camponesa III', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (65, N'Casa Branca', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (66, N'Colégio Batista', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (67, N'Floresta', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (68, N'Grota', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (69, N'Horto', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (70, N'Horto Florestal', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (71, N'João Alfredo', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (72, N'Mariano de Abreu', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (73, N'Nova Vista', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (74, N'Sagrada Família', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (75, N'Santa Inês', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (76, N'Santa Tereza', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (77, N'São Geraldo', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (78, N'São Vicente', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (79, N'Vila Boa Vista', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (80, N'Vila Dias', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (81, N'Vila São Geraldo', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (82, N'Alto Vera Cruz', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (83, N'Baleia', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (84, N'Capitão Eduardo', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (85, N'Conjunto Floramar', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (86, N'Etelvina Carneiro', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (87, N'Floramar', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (88, N'Frei Leopoldo', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (89, N'Granja Werneck', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (90, N'Jaqueline', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (91, N'Jardim Felicidade', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (92, N'Jardim Guanabara', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (93, N'Juliana', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (94, N'Lajedo', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (95, N'Madri', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (96, N'Maria Teresa', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (97, N'Mariquinhas', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (98, N'Mirante', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (99, N'Monte Azul', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (100, N'Novo Aarão Reis', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (101, N'Novo Tupi', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (102, N'Ribeiro de Abreu', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (103, N'Satélite', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (104, N'Solimões', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (105, N'Tupi A', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (106, N'Tupi B', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (107, N'Andiroba', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (108, N'Cachoeirinha', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (109, N'Canadá', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (110, N'Cidade Nova', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (111, N'Colégio Batista', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (112, N'Concórdia', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (113, N'Dom Joaquim', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (114, N'Eymard', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (115, N'Fernão Dias', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (116, N'Graça', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (117, N'Ipê', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (118, N'Ipiranga', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (119, N'Lagoinha', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (120, N'Maria Goretti', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (121, N'Maria Virgínia', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (122, N'Nova Floresta', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (123, N'Palmares', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (124, N'Penha', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (125, N'Pirajá', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (126, N'Renascença', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (127, N'Santa Cruz', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (128, N'São Cristóvão', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (129, N'São Marcos', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (130, N'São Paulo', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (131, N'São Sebastião', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (132, N'Silveira', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (133, N'Tiradentes', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (134, N'União', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (135, N'Vila da Paz', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (136, N'Vila de Sá', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (137, N'Vila do Pombal', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (138, N'Vila Inestan', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (139, N'Vila Ipiranga', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (140, N'Vila Nova Cachoeirinha IV', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (141, N'Vila São Paulo', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (142, N'Alto Caiçaras', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (143, N'Aparecida', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (144, N'Aparecida Sétima Seção', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (145, N'Bom Jesus', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (146, N'Bonfim', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (147, N'Carlos Prates', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (148, N'Adelaide', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (149, N'Caiçaras', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (150, N'Ermelinda', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (151, N'Jardim Montanhês', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (152, N'Lagoinha', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (153, N'Lorena', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (154, N'Marmiteiros', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (155, N'Monsenhor Messias', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (156, N'Nova Cachoeirinha', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (157, N'Nova Esperança', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (158, N'Padre Eustáquio', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (159, N'Pedreira Prado Lopes', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (160, N'Santo André', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (161, N'São Cristóvão', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (162, N'São Francisco das Chagas', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (163, N'Senhor dos Passos', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (164, N'Sumaré', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (165, N'Vila Maloca', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (166, N'Vila Nova Cachoeirinha I', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (167, N'Vila Nova Cachoeirinha II', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (168, N'Vila Sumaré', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (169, N'Ambrosina', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (170, N'Bairro das Indústrias II', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (171, N'Barão Homem de Melo I', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (172, N'Barão Homem de Melo III', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (173, N'Barão Homem de Melo IV', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (174, N'Betânia', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (175, N'Cabana do Pai Tomás', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (176, N'Camargos', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (177, N'Cinqüentenário', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (178, N'Custodinha', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (179, N'Estrela do Oriente', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (180, N'Gameleira', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (181, N'Guaratã', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (182, N'Imbaúbas', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (183, N'Jardim América', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (184, N'Jardinópolis', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (185, N'Madre Gertrudes', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (186, N'Marajó', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (187, N'Maravilha', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (188, N'Nova Cintra', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (189, N'Nova Gameleira', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (190, N'Nova Granada', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (191, N'Nova Suissa', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (192, N'Oeste', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (193, N'Parque São José', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (194, N'Salgado Filho', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (195, N'Santa Maria', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (196, N'Sport Club', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (197, N'Ventosa', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (198, N'Vila Betânia', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (199, N'Vila Madre Gertrudes I', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (200, N'Vila Madre Gertrudes II', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (201, N'Vila Madre Gertrudes III', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (202, N'Vila Madre Gertrudes V', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (203, N'Bispo de Maura', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (204, N'Braúnas', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (205, N'Céu Azul', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (206, N'Confisco', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (207, N'Conjunto Celso Machado', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (208, N'Conjunto São Francisco de Assis', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (209, N'Copacabana', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (210, N'Garças', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (211, N'Itapoã', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (212, N'Itatiaia', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (213, N'Jardim Atlântico', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (214, N'Lagoa da Pampulha', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (215, N'Nova Pampulha', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (216, N'Santa Amélia', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (217, N'Santa Branca', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (218, N'Santa Mônica', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (219, N'Santa Terezinha', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (220, N'Serrano', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (221, N'Trevo', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (222, N'Unidas', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (223, N'Universo', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (224, N'Urca', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (225, N'Vila Santo Antônio', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (226, N'Xangri-lá', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (227, N'Alípio de Melo', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (228, N'Bandeirantes', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (229, N'Castelo', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (230, N'Conjunto Lagoa', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (231, N'Engenho Nogueira', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (232, N'Manacás', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (233, N'Novo Ouro Preto', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (234, N'Ouro Preto', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (235, N'Canaã', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (236, N'Cenáculo', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (237, N'Conjunto Minascaixa', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (238, N'Conjunto Serra Verde', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (239, N'Europa', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (240, N'Jardim dos Comerciários', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (241, N'Laranjeiras', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (242, N'Mantiqueira', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (243, N'Maria Helena', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (244, N'Minascaixa', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (245, N'Nova América', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (246, N'Parque São Pedro', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (247, N'São Damião', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (248, N'Serra Verde', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (249, N'Vila Clóris', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (250, N'Vila Mantiqueira', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (251, N'Vila Satélite', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (252, N'Vila SESC', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (253, N'Candelária', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (254, N'Letícia', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (255, N'Rio Branco', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (256, N'Santa Mônica', 2310)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (257, N'Niterói', 2316)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (258, N'Centro', 2316)
GO
INSERT [dbo].[Bairros] ([Id], [Nome], [IdCidade]) VALUES (259, N'Ingá', 2316)
GO
SET IDENTITY_INSERT [dbo].[Bairros] OFF
GO
SET IDENTITY_INSERT [dbo].[Cidades] ON 
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1, 1100015, N'Alta Floresta D´oeste', 21)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2, 1100023, N'Ariquemes', 21)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3, 1100031, N'Cabixi', 21)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4, 1100049, N'Cacoal', 21)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5, 1100056, N'Cerejeiras', 21)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (6, 1100064, N'Colorado do Oeste', 21)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (7, 1100072, N'Corumbiara', 21)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (8, 1100080, N'Costa Marques', 21)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (9, 1100098, N'Espigão D´oeste', 21)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (10, 1100106, N'Guajará-mirim', 21)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (11, 1100114, N'Jaru', 21)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (12, 1100122, N'Ji-paraná', 21)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (13, 1100130, N'Machadinho D´oeste', 21)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (14, 1100148, N'Nova Brasilândia D´oeste', 21)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (15, 1100155, N'Ouro Preto do Oeste', 21)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (16, 1100189, N'Pimenta Bueno', 21)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (17, 1100205, N'Porto Velho', 21)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (18, 1100254, N'Presidente Médici', 21)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (19, 1100262, N'Rio Crespo', 21)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (20, 1100288, N'Rolim de Moura', 21)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (21, 1100296, N'Santa Luzia D´oeste', 21)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (22, 1100304, N'Vilhena', 21)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (23, 1100320, N'São Miguel do Guaporé', 21)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (24, 1100338, N'Nova Mamoré', 21)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (25, 1100346, N'Alvorada D´oeste', 21)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (26, 1100379, N'Alto Alegre Dos Parecis', 21)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (27, 1100403, N'Alto Paraíso', 21)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (28, 1100452, N'Buritis', 21)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (29, 1100502, N'Novo Horizonte do Oeste', 21)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (30, 1100601, N'Cacaulândia', 21)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (31, 1100700, N'Campo Novo de Rondônia', 21)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (32, 1100809, N'Candeias do Jamari', 21)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (33, 1100908, N'Castanheiras', 21)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (34, 1100924, N'Chupinguaia', 21)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (35, 1100940, N'Cujubim', 21)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (36, 1101005, N'Governador Jorge Teixeira', 21)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (37, 1101104, N'Itapuã do Oeste', 21)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (38, 1101203, N'Ministro Andreazza', 21)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (39, 1101302, N'Mirante da Serra', 21)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (40, 1101401, N'Monte Negro', 21)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (41, 1101435, N'Nova União', 21)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (42, 1101450, N'Parecis', 21)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (43, 1101468, N'Pimenteiras do Oeste', 21)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (44, 1101476, N'Primavera de Rondônia', 21)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (45, 1101484, N'São Felipe D´oeste', 21)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (46, 1101492, N'São Francisco do Guaporé', 21)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (47, 1101500, N'Seringueiras', 21)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (48, 1101559, N'Teixeirópolis', 21)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (49, 1101609, N'Theobroma', 21)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (50, 1101708, N'Urupá', 21)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (51, 1101757, N'Vale do Anari', 21)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (52, 1101807, N'Vale do Paraíso', 21)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (53, 1200013, N'Acrelândia', 1)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (54, 1200054, N'Assis Brasil', 1)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (55, 1200104, N'Brasiléia', 1)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (56, 1200138, N'Bujari', 1)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (57, 1200179, N'Capixaba', 1)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (58, 1200203, N'Cruzeiro do Sul', 1)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (59, 1200252, N'Epitaciolândia', 1)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (60, 1200302, N'Feijó', 1)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (61, 1200328, N'Jordão', 1)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (62, 1200336, N'Mâncio Lima', 1)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (63, 1200344, N'Manoel Urbano', 1)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (64, 1200351, N'Marechal Thaumaturgo', 1)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (65, 1200385, N'Plácido de Castro', 1)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (66, 1200393, N'Porto Walter', 1)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (67, 1200401, N'Rio Branco', 1)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (68, 1200427, N'Rodrigues Alves', 1)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (69, 1200435, N'Santa Rosa do Purus', 1)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (70, 1200450, N'Senador Guiomard', 1)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (71, 1200500, N'Sena Madureira', 1)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (72, 1200609, N'Tarauacá', 1)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (73, 1200708, N'Xapuri', 1)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (74, 1200807, N'Porto Acre', 1)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (75, 1300029, N'Alvarães', 3)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (76, 1300060, N'Amaturá', 3)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (77, 1300086, N'Anamã', 3)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (78, 1300102, N'Anori', 3)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (79, 1300144, N'Apuí', 3)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (80, 1300201, N'Atalaia do Norte', 3)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (81, 1300300, N'Autazes', 3)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (82, 1300409, N'Barcelos', 3)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (83, 1300508, N'Barreirinha', 3)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (84, 1300607, N'Benjamin Constant', 3)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (85, 1300631, N'Beruri', 3)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (86, 1300680, N'Boa Vista do Ramos', 3)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (87, 1300706, N'Boca do Acre', 3)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (88, 1300805, N'Borba', 3)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (89, 1300839, N'Caapiranga', 3)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (90, 1300904, N'Canutama', 3)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (91, 1301001, N'Carauari', 3)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (92, 1301100, N'Careiro', 3)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (93, 1301159, N'Careiro da Várzea', 3)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (94, 1301209, N'Coari', 3)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (95, 1301308, N'Codajás', 3)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (96, 1301407, N'Eirunepé', 3)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (97, 1301506, N'Envira', 3)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (98, 1301605, N'Fonte Boa', 3)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (99, 1301654, N'Guajará', 3)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (100, 1301704, N'Humaitá', 3)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (101, 1301803, N'Ipixuna', 3)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (102, 1301852, N'Iranduba', 3)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (103, 1301902, N'Itacoatiara', 3)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (104, 1301951, N'Itamarati', 3)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (105, 1302009, N'Itapiranga', 3)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (106, 1302108, N'Japurá', 3)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (107, 1302207, N'Juruá', 3)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (108, 1302306, N'Jutaí', 3)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (109, 1302405, N'Lábrea', 3)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (110, 1302504, N'Manacapuru', 3)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (111, 1302553, N'Manaquiri', 3)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (112, 1302603, N'Manaus', 3)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (113, 1302702, N'Manicoré', 3)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (114, 1302801, N'Maraã', 3)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (115, 1302900, N'Maués', 3)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (116, 1303007, N'Nhamundá', 3)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (117, 1303106, N'Nova Olinda do Norte', 3)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (118, 1303205, N'Novo Airão', 3)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (119, 1303304, N'Novo Aripuanã', 3)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (120, 1303403, N'Parintins', 3)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (121, 1303502, N'Pauini', 3)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (122, 1303536, N'Presidente Figueiredo', 3)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (123, 1303569, N'Rio Preto da Eva', 3)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (124, 1303601, N'Santa Isabel do Rio Negro', 3)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (125, 1303700, N'Santo Antônio do Içá', 3)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (126, 1303809, N'São Gabriel da Cachoeira', 3)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (127, 1303908, N'São Paulo de Olivença', 3)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (128, 1303957, N'São Sebastião do Uatumã', 3)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (129, 1304005, N'Silves', 3)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (130, 1304062, N'Tabatinga', 3)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (131, 1304104, N'Tapauá', 3)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (132, 1304203, N'Tefé', 3)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (133, 1304237, N'Tonantins', 3)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (134, 1304260, N'Uarini', 3)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (135, 1304302, N'Urucará', 3)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (136, 1304401, N'Urucurituba', 3)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (137, 1400027, N'Amajari', 22)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (138, 1400050, N'Alto Alegre', 22)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (139, 1400100, N'Boa Vista', 22)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (140, 1400159, N'Bonfim', 22)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (141, 1400175, N'Cantá', 22)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (142, 1400209, N'Caracaraí', 22)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (143, 1400233, N'Caroebe', 22)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (144, 1400282, N'Iracema', 22)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (145, 1400308, N'Mucajaí', 22)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (146, 1400407, N'Normandia', 22)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (147, 1400456, N'Pacaraima', 22)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (148, 1400472, N'Rorainópolis', 22)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (149, 1400506, N'São João da Baliza', 22)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (150, 1400605, N'São Luiz', 22)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (151, 1400704, N'Uiramutã', 22)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (152, 1500107, N'Abaetetuba', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (153, 1500131, N'Abel Figueiredo', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (154, 1500206, N'Acará', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (155, 1500305, N'Afuá', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (156, 1500347, N'Água Azul do Norte', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (157, 1500404, N'Alenquer', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (158, 1500503, N'Almeirim', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (159, 1500602, N'Altamira', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (160, 1500701, N'Anajás', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (161, 1500800, N'Ananindeua', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (162, 1500859, N'Anapu', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (163, 1500909, N'Augusto Corrêa', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (164, 1500958, N'Aurora do Pará', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (165, 1501006, N'Aveiro', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (166, 1501105, N'Bagre', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (167, 1501204, N'Baião', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (168, 1501253, N'Bannach', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (169, 1501303, N'Barcarena', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (170, 1501402, N'Belém', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (171, 1501451, N'Belterra', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (172, 1501501, N'Benevides', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (173, 1501576, N'Bom Jesus do Tocantins', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (174, 1501600, N'Bonito', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (175, 1501709, N'Bragança', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (176, 1501725, N'Brasil Novo', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (177, 1501758, N'Brejo Grande do Araguaia', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (178, 1501782, N'Breu Branco', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (179, 1501808, N'Breves', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (180, 1501907, N'Bujaru', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (181, 1501956, N'Cachoeira do Piriá', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (182, 1502004, N'Cachoeira do Arari', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (183, 1502103, N'Cametá', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (184, 1502152, N'Canaã Dos Carajás', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (185, 1502202, N'Capanema', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (186, 1502301, N'Capitão Poço', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (187, 1502400, N'Castanhal', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (188, 1502509, N'Chaves', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (189, 1502608, N'Colares', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (190, 1502707, N'Conceição do Araguaia', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (191, 1502756, N'Concórdia do Pará', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (192, 1502764, N'Cumaru do Norte', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (193, 1502772, N'Curionópolis', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (194, 1502806, N'Curralinho', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (195, 1502855, N'Curuá', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (196, 1502905, N'Curuçá', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (197, 1502939, N'Dom Eliseu', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (198, 1502954, N'Eldorado Dos Carajás', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (199, 1503002, N'Faro', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (200, 1503044, N'Floresta do Araguaia', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (201, 1503077, N'Garrafão do Norte', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (202, 1503093, N'Goianésia do Pará', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (203, 1503101, N'Gurupá', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (204, 1503200, N'Igarapé-açu', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (205, 1503309, N'Igarapé-miri', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (206, 1503408, N'Inhangapi', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (207, 1503457, N'Ipixuna do Pará', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (208, 1503507, N'Irituia', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (209, 1503606, N'Itaituba', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (210, 1503705, N'Itupiranga', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (211, 1503754, N'Jacareacanga', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (212, 1503804, N'Jacundá', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (213, 1503903, N'Juruti', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (214, 1504000, N'Limoeiro do Ajuru', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (215, 1504059, N'Mãe do Rio', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (216, 1504109, N'Magalhães Barata', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (217, 1504208, N'Marabá', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (218, 1504307, N'Maracanã', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (219, 1504406, N'Marapanim', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (220, 1504422, N'Marituba', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (221, 1504455, N'Medicilândia', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (222, 1504505, N'Melgaço', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (223, 1504604, N'Mocajuba', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (224, 1504703, N'Moju', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (225, 1504752, N'Mojuí dos Campos', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (226, 1504802, N'Monte Alegre', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (227, 1504901, N'Muaná', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (228, 1504950, N'Nova Esperança do Piriá', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (229, 1504976, N'Nova Ipixuna', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (230, 1505007, N'Nova Timboteua', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (231, 1505031, N'Novo Progresso', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (232, 1505064, N'Novo Repartimento', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (233, 1505106, N'Óbidos', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (234, 1505205, N'Oeiras do Pará', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (235, 1505304, N'Oriximiná', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (236, 1505403, N'Ourém', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (237, 1505437, N'Ourilândia do Norte', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (238, 1505486, N'Pacajá', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (239, 1505494, N'Palestina do Pará', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (240, 1505502, N'Paragominas', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (241, 1505536, N'Parauapebas', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (242, 1505551, N'Pau D´arco', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (243, 1505601, N'Peixe-boi', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (244, 1505635, N'Piçarra', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (245, 1505650, N'Placas', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (246, 1505700, N'Ponta de Pedras', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (247, 1505809, N'Portel', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (248, 1505908, N'Porto de Moz', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (249, 1506005, N'Prainha', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (250, 1506104, N'Primavera', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (251, 1506112, N'Quatipuru', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (252, 1506138, N'Redenção', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (253, 1506161, N'Rio Maria', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (254, 1506187, N'Rondon do Pará', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (255, 1506195, N'Rurópolis', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (256, 1506203, N'Salinópolis', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (257, 1506302, N'Salvaterra', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (258, 1506351, N'Santa Bárbara do Pará', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (259, 1506401, N'Santa Cruz do Arari', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (260, 1506500, N'Santa Isabel do Pará', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (261, 1506559, N'Santa Luzia do Pará', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (262, 1506583, N'Santa Maria Das Barreiras', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (263, 1506609, N'Santa Maria do Pará', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (264, 1506708, N'Santana do Araguaia', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (265, 1506807, N'Santarém', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (266, 1506906, N'Santarém Novo', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (267, 1507003, N'Santo Antônio do Tauá', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (268, 1507102, N'São Caetano de Odivelas', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (269, 1507151, N'São Domingos do Araguaia', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (270, 1507201, N'São Domingos do Capim', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (271, 1507300, N'São Félix do Xingu', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (272, 1507409, N'São Francisco do Pará', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (273, 1507458, N'São Geraldo do Araguaia', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (274, 1507466, N'São João da Ponta', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (275, 1507474, N'São João de Pirabas', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (276, 1507508, N'São João do Araguaia', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (277, 1507607, N'São Miguel do Guamá', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (278, 1507706, N'São Sebastião da Boa Vista', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (279, 1507755, N'Sapucaia', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (280, 1507805, N'Senador José Porfírio', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (281, 1507904, N'Soure', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (282, 1507953, N'Tailândia', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (283, 1507961, N'Terra Alta', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (284, 1507979, N'Terra Santa', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (285, 1508001, N'Tomé-açu', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (286, 1508035, N'Tracuateua', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (287, 1508050, N'Trairão', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (288, 1508084, N'Tucumã', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (289, 1508100, N'Tucuruí', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (290, 1508126, N'Ulianópolis', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (291, 1508159, N'Uruará', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (292, 1508209, N'Vigia', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (293, 1508308, N'Viseu', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (294, 1508357, N'Vitória do Xingu', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (295, 1508407, N'Xinguara', 14)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (296, 1600055, N'Serra do Navio', 4)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (297, 1600105, N'Amapá', 4)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (298, 1600154, N'Pedra Branca do Amapari', 4)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (299, 1600204, N'Calçoene', 4)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (300, 1600212, N'Cutias', 4)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (301, 1600238, N'Ferreira Gomes', 4)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (302, 1600253, N'Itaubal', 4)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (303, 1600279, N'Laranjal do Jari', 4)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (304, 1600303, N'Macapá', 4)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (305, 1600402, N'Mazagão', 4)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (306, 1600501, N'Oiapoque', 4)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (307, 1600535, N'Porto Grande', 4)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (308, 1600550, N'Pracuúba', 4)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (309, 1600600, N'Santana', 4)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (310, 1600709, N'Tartarugalzinho', 4)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (311, 1600808, N'Vitória do Jari', 4)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (312, 1700251, N'Abreulândia', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (313, 1700301, N'Aguiarnópolis', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (314, 1700350, N'Aliança do Tocantins', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (315, 1700400, N'Almas', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (316, 1700707, N'Alvorada', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (317, 1701002, N'Ananás', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (318, 1701051, N'Angico', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (319, 1701101, N'Aparecida do Rio Negro', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (320, 1701309, N'Aragominas', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (321, 1701903, N'Araguacema', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (322, 1702000, N'Araguaçu', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (323, 1702109, N'Araguaína', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (324, 1702158, N'Araguanã', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (325, 1702208, N'Araguatins', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (326, 1702307, N'Arapoema', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (327, 1702406, N'Arraias', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (328, 1702554, N'Augustinópolis', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (329, 1702703, N'Aurora do Tocantins', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (330, 1702901, N'Axixá do Tocantins', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (331, 1703008, N'Babaçulândia', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (332, 1703057, N'Bandeirantes do Tocantins', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (333, 1703073, N'Barra do Ouro', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (334, 1703107, N'Barrolândia', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (335, 1703206, N'Bernardo Sayão', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (336, 1703305, N'Bom Jesus do Tocantins', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (337, 1703602, N'Brasilândia do Tocantins', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (338, 1703701, N'Brejinho de Nazaré', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (339, 1703800, N'Buriti do Tocantins', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (340, 1703826, N'Cachoeirinha', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (341, 1703842, N'Campos Lindos', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (342, 1703867, N'Cariri do Tocantins', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (343, 1703883, N'Carmolândia', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (344, 1703891, N'Carrasco Bonito', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (345, 1703909, N'Caseara', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (346, 1704105, N'Centenário', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (347, 1704600, N'Chapada de Areia', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (348, 1705102, N'Chapada da Natividade', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (349, 1705508, N'Colinas do Tocantins', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (350, 1705557, N'Combinado', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (351, 1705607, N'Conceição do Tocantins', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (352, 1706001, N'Couto de Magalhães', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (353, 1706100, N'Cristalândia', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (354, 1706258, N'Crixás do Tocantins', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (355, 1706506, N'Darcinópolis', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (356, 1707009, N'Dianópolis', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (357, 1707108, N'Divinópolis do Tocantins', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (358, 1707207, N'Dois Irmãos do Tocantins', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (359, 1707306, N'Dueré', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (360, 1707405, N'Esperantina', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (361, 1707553, N'Fátima', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (362, 1707652, N'Figueirópolis', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (363, 1707702, N'Filadélfia', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (364, 1708205, N'Formoso do Araguaia', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (365, 1708254, N'Fortaleza do Tabocão', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (366, 1708304, N'Goianorte', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (367, 1709005, N'Goiatins', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (368, 1709302, N'Guaraí', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (369, 1709500, N'Gurupi', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (370, 1709807, N'Ipueiras', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (371, 1710508, N'Itacajá', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (372, 1710706, N'Itaguatins', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (373, 1710904, N'Itapiratins', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (374, 1711100, N'Itaporã do Tocantins', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (375, 1711506, N'Jaú do Tocantins', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (376, 1711803, N'Juarina', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (377, 1711902, N'Lagoa da Confusão', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (378, 1711951, N'Lagoa do Tocantins', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (379, 1712009, N'Lajeado', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (380, 1712157, N'Lavandeira', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (381, 1712405, N'Lizarda', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (382, 1712454, N'Luzinópolis', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (383, 1712504, N'Marianópolis do Tocantins', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (384, 1712702, N'Mateiros', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (385, 1712801, N'Maurilândia do Tocantins', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (386, 1713205, N'Miracema do Tocantins', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (387, 1713304, N'Miranorte', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (388, 1713601, N'Monte do Carmo', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (389, 1713700, N'Monte Santo do Tocantins', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (390, 1713809, N'Palmeiras do Tocantins', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (391, 1713957, N'Muricilândia', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (392, 1714203, N'Natividade', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (393, 1714302, N'Nazaré', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (394, 1714880, N'Nova Olinda', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (395, 1715002, N'Nova Rosalândia', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (396, 1715101, N'Novo Acordo', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (397, 1715150, N'Novo Alegre', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (398, 1715259, N'Novo Jardim', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (399, 1715507, N'Oliveira de Fátima', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (400, 1715705, N'Palmeirante', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (401, 1715754, N'Palmeirópolis', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (402, 1716109, N'Paraíso do Tocantins', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (403, 1716208, N'Paranã', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (404, 1716307, N'Pau D´arco', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (405, 1716505, N'Pedro Afonso', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (406, 1716604, N'Peixe', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (407, 1716653, N'Pequizeiro', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (408, 1716703, N'Colméia', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (409, 1717008, N'Pindorama do Tocantins', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (410, 1717206, N'Piraquê', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (411, 1717503, N'Pium', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (412, 1717800, N'Ponte Alta do Bom Jesus', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (413, 1717909, N'Ponte Alta do Tocantins', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (414, 1718006, N'Porto Alegre do Tocantins', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (415, 1718204, N'Porto Nacional', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (416, 1718303, N'Praia Norte', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (417, 1718402, N'Presidente Kennedy', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (418, 1718451, N'Pugmil', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (419, 1718501, N'Recursolândia', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (420, 1718550, N'Riachinho', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (421, 1718659, N'Rio da Conceição', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (422, 1718709, N'Rio Dos Bois', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (423, 1718758, N'Rio Sono', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (424, 1718808, N'Sampaio', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (425, 1718840, N'Sandolândia', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (426, 1718865, N'Santa fé do Araguaia', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (427, 1718881, N'Santa Maria do Tocantins', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (428, 1718899, N'Santa Rita do Tocantins', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (429, 1718907, N'Santa Rosa do Tocantins', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (430, 1719004, N'Santa Tereza do Tocantins', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (431, 1720002, N'Santa Terezinha do Tocantins', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (432, 1720101, N'São Bento do Tocantins', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (433, 1720150, N'São Félix do Tocantins', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (434, 1720200, N'São Miguel do Tocantins', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (435, 1720259, N'São Salvador do Tocantins', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (436, 1720309, N'São Sebastião do Tocantins', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (437, 1720499, N'São Valério da Natividade', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (438, 1720655, N'Silvanópolis', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (439, 1720804, N'Sítio Novo do Tocantins', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (440, 1720853, N'Sucupira', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (441, 1720903, N'Taguatinga', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (442, 1720937, N'Taipas do Tocantins', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (443, 1720978, N'Talismã', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (444, 1721000, N'Palmas', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (445, 1721109, N'Tocantínia', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (446, 1721208, N'Tocantinópolis', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (447, 1721257, N'Tupirama', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (448, 1721307, N'Tupiratins', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (449, 1722081, N'Wanderlândia', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (450, 1722107, N'Xambioá', 27)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (451, 2100055, N'Açailândia', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (452, 2100105, N'Afonso Cunha', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (453, 2100154, N'Água Doce do Maranhão', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (454, 2100204, N'Alcântara', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (455, 2100303, N'Aldeias Altas', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (456, 2100402, N'Altamira do Maranhão', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (457, 2100436, N'Alto Alegre do Maranhão', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (458, 2100477, N'Alto Alegre do Pindaré', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (459, 2100501, N'Alto Parnaíba', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (460, 2100550, N'Amapá do Maranhão', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (461, 2100600, N'Amarante do Maranhão', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (462, 2100709, N'Anajatuba', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (463, 2100808, N'Anapurus', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (464, 2100832, N'Apicum-açu', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (465, 2100873, N'Araguanã', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (466, 2100907, N'Araioses', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (467, 2100956, N'Arame', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (468, 2101004, N'Arari', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (469, 2101103, N'Axixá', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (470, 2101202, N'Bacabal', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (471, 2101251, N'Bacabeira', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (472, 2101301, N'Bacuri', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (473, 2101350, N'Bacurituba', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (474, 2101400, N'Balsas', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (475, 2101509, N'Barão de Grajaú', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (476, 2101608, N'Barra do Corda', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (477, 2101707, N'Barreirinhas', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (478, 2101731, N'Belágua', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (479, 2101772, N'Bela Vista do Maranhão', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (480, 2101806, N'Benedito Leite', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (481, 2101905, N'Bequimão', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (482, 2101939, N'Bernardo do Mearim', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (483, 2101970, N'Boa Vista do Gurupi', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (484, 2102002, N'Bom Jardim', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (485, 2102036, N'Bom Jesus Das Selvas', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (486, 2102077, N'Bom Lugar', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (487, 2102101, N'Brejo', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (488, 2102150, N'Brejo de Areia', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (489, 2102200, N'Buriti', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (490, 2102309, N'Buriti Bravo', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (491, 2102325, N'Buriticupu', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (492, 2102358, N'Buritirana', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (493, 2102374, N'Cachoeira Grande', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (494, 2102408, N'Cajapió', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (495, 2102507, N'Cajari', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (496, 2102556, N'Campestre do Maranhão', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (497, 2102606, N'Cândido Mendes', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (498, 2102705, N'Cantanhede', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (499, 2102754, N'Capinzal do Norte', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (500, 2102804, N'Carolina', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (501, 2102903, N'Carutapera', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (502, 2103000, N'Caxias', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (503, 2103109, N'Cedral', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (504, 2103125, N'Central do Maranhão', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (505, 2103158, N'Centro do Guilherme', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (506, 2103174, N'Centro Novo do Maranhão', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (507, 2103208, N'Chapadinha', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (508, 2103257, N'Cidelândia', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (509, 2103307, N'Codó', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (510, 2103406, N'Coelho Neto', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (511, 2103505, N'Colinas', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (512, 2103554, N'Conceição do Lago-açu', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (513, 2103604, N'Coroatá', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (514, 2103703, N'Cururupu', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (515, 2103752, N'Davinópolis', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (516, 2103802, N'Dom Pedro', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (517, 2103901, N'Duque Bacelar', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (518, 2104008, N'Esperantinópolis', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (519, 2104057, N'Estreito', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (520, 2104073, N'Feira Nova do Maranhão', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (521, 2104081, N'Fernando Falcão', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (522, 2104099, N'Formosa da Serra Negra', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (523, 2104107, N'Fortaleza Dos Nogueiras', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (524, 2104206, N'Fortuna', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (525, 2104305, N'Godofredo Viana', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (526, 2104404, N'Gonçalves Dias', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (527, 2104503, N'Governador Archer', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (528, 2104552, N'Governador Edison Lobão', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (529, 2104602, N'Governador Eugênio Barros', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (530, 2104628, N'Governador Luiz Rocha', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (531, 2104651, N'Governador Newton Bello', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (532, 2104677, N'Governador Nunes Freire', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (533, 2104701, N'Graça Aranha', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (534, 2104800, N'Grajaú', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (535, 2104909, N'Guimarães', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (536, 2105005, N'Humberto de Campos', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (537, 2105104, N'Icatu', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (538, 2105153, N'Igarapé do Meio', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (539, 2105203, N'Igarapé Grande', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (540, 2105302, N'Imperatriz', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (541, 2105351, N'Itaipava do Grajaú', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (542, 2105401, N'Itapecuru Mirim', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (543, 2105427, N'Itinga do Maranhão', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (544, 2105450, N'Jatobá', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (545, 2105476, N'Jenipapo Dos Vieiras', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (546, 2105500, N'João Lisboa', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (547, 2105609, N'Joselândia', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (548, 2105658, N'Junco do Maranhão', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (549, 2105708, N'Lago da Pedra', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (550, 2105807, N'Lago do Junco', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (551, 2105906, N'Lago Verde', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (552, 2105922, N'Lagoa do Mato', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (553, 2105948, N'Lago Dos Rodrigues', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (554, 2105963, N'Lagoa Grande do Maranhão', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (555, 2105989, N'Lajeado Novo', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (556, 2106003, N'Lima Campos', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (557, 2106102, N'Loreto', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (558, 2106201, N'Luís Domingues', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (559, 2106300, N'Magalhães de Almeida', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (560, 2106326, N'Maracaçumé', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (561, 2106359, N'Marajá do Sena', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (562, 2106375, N'Maranhãozinho', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (563, 2106409, N'Mata Roma', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (564, 2106508, N'Matinha', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (565, 2106607, N'Matões', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (566, 2106631, N'Matões do Norte', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (567, 2106672, N'Milagres do Maranhão', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (568, 2106706, N'Mirador', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (569, 2106755, N'Miranda do Norte', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (570, 2106805, N'Mirinzal', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (571, 2106904, N'Monção', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (572, 2107001, N'Montes Altos', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (573, 2107100, N'Morros', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (574, 2107209, N'Nina Rodrigues', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (575, 2107258, N'Nova Colinas', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (576, 2107308, N'Nova Iorque', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (577, 2107357, N'Nova Olinda do Maranhão', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (578, 2107407, N'Olho D´água Das Cunhãs', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (579, 2107456, N'Olinda Nova do Maranhão', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (580, 2107506, N'Paço do Lumiar', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (581, 2107605, N'Palmeirândia', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (582, 2107704, N'Paraibano', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (583, 2107803, N'Parnarama', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (584, 2107902, N'Passagem Franca', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (585, 2108009, N'Pastos Bons', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (586, 2108058, N'Paulino Neves', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (587, 2108108, N'Paulo Ramos', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (588, 2108207, N'Pedreiras', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (589, 2108256, N'Pedro do Rosário', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (590, 2108306, N'Penalva', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (591, 2108405, N'Peri Mirim', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (592, 2108454, N'Peritoró', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (593, 2108504, N'Pindaré-mirim', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (594, 2108603, N'Pinheiro', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (595, 2108702, N'Pio Xii', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (596, 2108801, N'Pirapemas', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (597, 2108900, N'Poção de Pedras', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (598, 2109007, N'Porto Franco', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (599, 2109056, N'Porto Rico do Maranhão', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (600, 2109106, N'Presidente Dutra', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (601, 2109205, N'Presidente Juscelino', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (602, 2109239, N'Presidente Médici', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (603, 2109270, N'Presidente Sarney', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (604, 2109304, N'Presidente Vargas', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (605, 2109403, N'Primeira Cruz', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (606, 2109452, N'Raposa', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (607, 2109502, N'Riachão', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (608, 2109551, N'Ribamar Fiquene', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (609, 2109601, N'Rosário', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (610, 2109700, N'Sambaíba', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (611, 2109759, N'Santa Filomena do Maranhão', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (612, 2109809, N'Santa Helena', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (613, 2109908, N'Santa Inês', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (614, 2110005, N'Santa Luzia', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (615, 2110039, N'Santa Luzia do Paruá', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (616, 2110104, N'Santa Quitéria do Maranhão', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (617, 2110203, N'Santa Rita', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (618, 2110237, N'Santana do Maranhão', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (619, 2110278, N'Santo Amaro do Maranhão', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (620, 2110302, N'Santo Antônio Dos Lopes', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (621, 2110401, N'São Benedito do Rio Preto', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (622, 2110500, N'São Bento', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (623, 2110609, N'São Bernardo', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (624, 2110658, N'São Domingos do Azeitão', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (625, 2110708, N'São Domingos do Maranhão', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (626, 2110807, N'São Félix de Balsas', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (627, 2110856, N'São Francisco do Brejão', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (628, 2110906, N'São Francisco do Maranhão', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (629, 2111003, N'São João Batista', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (630, 2111029, N'São João do Carú', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (631, 2111052, N'São João do Paraíso', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (632, 2111078, N'São João do Soter', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (633, 2111102, N'São João Dos Patos', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (634, 2111201, N'São José de Ribamar', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (635, 2111250, N'São José Dos Basílios', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (636, 2111300, N'São Luís', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (637, 2111409, N'São Luís Gonzaga do Maranhão', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (638, 2111508, N'São Mateus do Maranhão', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (639, 2111532, N'São Pedro da Água Branca', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (640, 2111573, N'São Pedro Dos Crentes', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (641, 2111607, N'São Raimundo Das Mangabeiras', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (642, 2111631, N'São Raimundo do Doca Bezerra', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (643, 2111672, N'São Roberto', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (644, 2111706, N'São Vicente Ferrer', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (645, 2111722, N'Satubinha', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (646, 2111748, N'Senador Alexandre Costa', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (647, 2111763, N'Senador la Rocque', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (648, 2111789, N'Serrano do Maranhão', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (649, 2111805, N'Sítio Novo', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (650, 2111904, N'Sucupira do Norte', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (651, 2111953, N'Sucupira do Riachão', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (652, 2112001, N'Tasso Fragoso', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (653, 2112100, N'Timbiras', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (654, 2112209, N'Timon', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (655, 2112233, N'Trizidela do Vale', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (656, 2112274, N'Tufilândia', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (657, 2112308, N'Tuntum', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (658, 2112407, N'Turiaçu', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (659, 2112456, N'Turilândia', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (660, 2112506, N'Tutóia', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (661, 2112605, N'Urbano Santos', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (662, 2112704, N'Vargem Grande', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (663, 2112803, N'Viana', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (664, 2112852, N'Vila Nova Dos Martírios', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (665, 2112902, N'Vitória do Mearim', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (666, 2113009, N'Vitorino Freire', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (667, 2114007, N'zé Doca', 10)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (668, 2200053, N'Acauã', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (669, 2200103, N'Agricolândia', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (670, 2200202, N'Água Branca', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (671, 2200251, N'Alagoinha do Piauí', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (672, 2200277, N'Alegrete do Piauí', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (673, 2200301, N'Alto Longá', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (674, 2200400, N'Altos', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (675, 2200459, N'Alvorada do Gurguéia', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (676, 2200509, N'Amarante', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (677, 2200608, N'Angical do Piauí', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (678, 2200707, N'Anísio de Abreu', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (679, 2200806, N'Antônio Almeida', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (680, 2200905, N'Aroazes', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (681, 2200954, N'Aroeiras do Itaim', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (682, 2201002, N'Arraial', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (683, 2201051, N'Assunção do Piauí', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (684, 2201101, N'Avelino Lopes', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (685, 2201150, N'Baixa Grande do Ribeiro', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (686, 2201176, N'Barra D´alcântara', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (687, 2201200, N'Barras', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (688, 2201309, N'Barreiras do Piauí', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (689, 2201408, N'Barro Duro', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (690, 2201507, N'Batalha', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (691, 2201556, N'Bela Vista do Piauí', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (692, 2201572, N'Belém do Piauí', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (693, 2201606, N'Beneditinos', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (694, 2201705, N'Bertolínia', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (695, 2201739, N'Betânia do Piauí', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (696, 2201770, N'Boa Hora', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (697, 2201804, N'Bocaina', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (698, 2201903, N'Bom Jesus', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (699, 2201919, N'Bom Princípio do Piauí', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (700, 2201929, N'Bonfim do Piauí', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (701, 2201945, N'Boqueirão do Piauí', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (702, 2201960, N'Brasileira', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (703, 2201988, N'Brejo do Piauí', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (704, 2202000, N'Buriti Dos Lopes', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (705, 2202026, N'Buriti Dos Montes', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (706, 2202059, N'Cabeceiras do Piauí', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (707, 2202075, N'Cajazeiras do Piauí', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (708, 2202083, N'Cajueiro da Praia', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (709, 2202091, N'Caldeirão Grande do Piauí', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (710, 2202109, N'Campinas do Piauí', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (711, 2202117, N'Campo Alegre do Fidalgo', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (712, 2202133, N'Campo Grande do Piauí', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (713, 2202174, N'Campo Largo do Piauí', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (714, 2202208, N'Campo Maior', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (715, 2202251, N'Canavieira', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (716, 2202307, N'Canto do Buriti', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (717, 2202406, N'Capitão de Campos', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (718, 2202455, N'Capitão Gervásio Oliveira', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (719, 2202505, N'Caracol', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (720, 2202539, N'Caraúbas do Piauí', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (721, 2202554, N'Caridade do Piauí', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (722, 2202604, N'Castelo do Piauí', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (723, 2202653, N'Caxingó', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (724, 2202703, N'Cocal', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (725, 2202711, N'Cocal de Telha', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (726, 2202729, N'Cocal Dos Alves', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (727, 2202737, N'Coivaras', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (728, 2202752, N'Colônia do Gurguéia', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (729, 2202778, N'Colônia do Piauí', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (730, 2202802, N'Conceição do Canindé', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (731, 2202851, N'Coronel José Dias', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (732, 2202901, N'Corrente', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (733, 2203008, N'Cristalândia do Piauí', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (734, 2203107, N'Cristino Castro', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (735, 2203206, N'Curimatá', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (736, 2203230, N'Currais', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (737, 2203255, N'Curralinhos', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (738, 2203271, N'Curral Novo do Piauí', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (739, 2203305, N'Demerval Lobão', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (740, 2203354, N'Dirceu Arcoverde', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (741, 2203404, N'Dom Expedito Lopes', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (742, 2203420, N'Domingos Mourão', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (743, 2203453, N'Dom Inocêncio', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (744, 2203503, N'Elesbão Veloso', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (745, 2203602, N'Eliseu Martins', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (746, 2203701, N'Esperantina', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (747, 2203750, N'Fartura do Piauí', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (748, 2203800, N'Flores do Piauí', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (749, 2203859, N'Floresta do Piauí', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (750, 2203909, N'Floriano', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (751, 2204006, N'Francinópolis', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (752, 2204105, N'Francisco Ayres', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (753, 2204154, N'Francisco Macedo', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (754, 2204204, N'Francisco Santos', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (755, 2204303, N'Fronteiras', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (756, 2204352, N'Geminiano', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (757, 2204402, N'Gilbués', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (758, 2204501, N'Guadalupe', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (759, 2204550, N'Guaribas', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (760, 2204600, N'Hugo Napoleão', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (761, 2204659, N'Ilha Grande', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (762, 2204709, N'Inhuma', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (763, 2204808, N'Ipiranga do Piauí', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (764, 2204907, N'Isaías Coelho', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (765, 2205003, N'Itainópolis', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (766, 2205102, N'Itaueira', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (767, 2205151, N'Jacobina do Piauí', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (768, 2205201, N'Jaicós', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (769, 2205250, N'Jardim do Mulato', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (770, 2205276, N'Jatobá do Piauí', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (771, 2205300, N'Jerumenha', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (772, 2205359, N'João Costa', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (773, 2205409, N'Joaquim Pires', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (774, 2205458, N'Joca Marques', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (775, 2205508, N'José de Freitas', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (776, 2205516, N'Juazeiro do Piauí', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (777, 2205524, N'Júlio Borges', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (778, 2205532, N'Jurema', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (779, 2205540, N'Lagoinha do Piauí', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (780, 2205557, N'Lagoa Alegre', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (781, 2205565, N'Lagoa do Barro do Piauí', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (782, 2205573, N'Lagoa de São Francisco', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (783, 2205581, N'Lagoa do Piauí', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (784, 2205599, N'Lagoa do Sítio', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (785, 2205607, N'Landri Sales', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (786, 2205706, N'Luís Correia', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (787, 2205805, N'Luzilândia', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (788, 2205854, N'Madeiro', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (789, 2205904, N'Manoel Emídio', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (790, 2205953, N'Marcolândia', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (791, 2206001, N'Marcos Parente', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (792, 2206050, N'Massapê do Piauí', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (793, 2206100, N'Matias Olímpio', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (794, 2206209, N'Miguel Alves', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (795, 2206308, N'Miguel Leão', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (796, 2206357, N'Milton Brandão', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (797, 2206407, N'Monsenhor Gil', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (798, 2206506, N'Monsenhor Hipólito', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (799, 2206605, N'Monte Alegre do Piauí', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (800, 2206654, N'Morro Cabeça no Tempo', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (801, 2206670, N'Morro do Chapéu do Piauí', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (802, 2206696, N'Murici Dos Portelas', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (803, 2206704, N'Nazaré do Piauí', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (804, 2206720, N'Nazária', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (805, 2206753, N'Nossa Senhora de Nazaré', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (806, 2206803, N'Nossa Senhora Dos Remédios', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (807, 2206902, N'Novo Oriente do Piauí', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (808, 2206951, N'Novo Santo Antônio', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (809, 2207009, N'Oeiras', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (810, 2207108, N'Olho D´água do Piauí', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (811, 2207207, N'Padre Marcos', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (812, 2207306, N'Paes Landim', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (813, 2207355, N'Pajeú do Piauí', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (814, 2207405, N'Palmeira do Piauí', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (815, 2207504, N'Palmeirais', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (816, 2207553, N'Paquetá', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (817, 2207603, N'Parnaguá', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (818, 2207702, N'Parnaíba', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (819, 2207751, N'Passagem Franca do Piauí', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (820, 2207777, N'Patos do Piauí', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (821, 2207793, N'Pau D´arco do Piauí', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (822, 2207801, N'Paulistana', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (823, 2207850, N'Pavussu', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (824, 2207900, N'Pedro ii', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (825, 2207934, N'Pedro Laurentino', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (826, 2207959, N'Nova Santa Rita', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (827, 2208007, N'Picos', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (828, 2208106, N'Pimenteiras', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (829, 2208205, N'Pio ix', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (830, 2208304, N'Piracuruca', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (831, 2208403, N'Piripiri', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (832, 2208502, N'Porto', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (833, 2208551, N'Porto Alegre do Piauí', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (834, 2208601, N'Prata do Piauí', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (835, 2208650, N'Queimada Nova', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (836, 2208700, N'Redenção do Gurguéia', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (837, 2208809, N'Regeneração', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (838, 2208858, N'Riacho Frio', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (839, 2208874, N'Ribeira do Piauí', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (840, 2208908, N'Ribeiro Gonçalves', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (841, 2209005, N'Rio Grande do Piauí', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (842, 2209104, N'Santa Cruz do Piauí', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (843, 2209153, N'Santa Cruz Dos Milagres', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (844, 2209203, N'Santa Filomena', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (845, 2209302, N'Santa Luz', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (846, 2209351, N'Santana do Piauí', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (847, 2209377, N'Santa Rosa do Piauí', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (848, 2209401, N'Santo Antônio de Lisboa', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (849, 2209450, N'Santo Antônio Dos Milagres', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (850, 2209500, N'Santo Inácio do Piauí', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (851, 2209559, N'São Braz do Piauí', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (852, 2209609, N'São Félix do Piauí', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (853, 2209658, N'São Francisco de Assis do Piauí', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (854, 2209708, N'São Francisco do Piauí', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (855, 2209757, N'São Gonçalo do Gurguéia', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (856, 2209807, N'São Gonçalo do Piauí', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (857, 2209856, N'São João da Canabrava', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (858, 2209872, N'São João da Fronteira', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (859, 2209906, N'São João da Serra', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (860, 2209955, N'São João da Varjota', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (861, 2209971, N'São João do Arraial', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (862, 2210003, N'São João do Piauí', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (863, 2210052, N'São José do Divino', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (864, 2210102, N'São José do Peixe', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (865, 2210201, N'São José do Piauí', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (866, 2210300, N'São Julião', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (867, 2210359, N'São Lourenço do Piauí', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (868, 2210375, N'São Luis do Piauí', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (869, 2210383, N'São Miguel da Baixa Grande', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (870, 2210391, N'São Miguel do Fidalgo', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (871, 2210409, N'São Miguel do Tapuio', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (872, 2210508, N'São Pedro do Piauí', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (873, 2210607, N'São Raimundo Nonato', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (874, 2210623, N'Sebastião Barros', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (875, 2210631, N'Sebastião Leal', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (876, 2210656, N'Sigefredo Pacheco', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (877, 2210706, N'Simões', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (878, 2210805, N'Simplício Mendes', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (879, 2210904, N'Socorro do Piauí', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (880, 2210938, N'Sussuapara', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (881, 2210953, N'Tamboril do Piauí', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (882, 2210979, N'Tanque do Piauí', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (883, 2211001, N'Teresina', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (884, 2211100, N'União', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (885, 2211209, N'Uruçuí', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (886, 2211308, N'Valença do Piauí', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (887, 2211357, N'Várzea Branca', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (888, 2211407, N'Várzea Grande', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (889, 2211506, N'Vera Mendes', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (890, 2211605, N'Vila Nova do Piauí', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (891, 2211704, N'Wall Ferraz', 17)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (892, 2300101, N'Abaiara', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (893, 2300150, N'Acarapé', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (894, 2300200, N'Acaraú', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (895, 2300309, N'Acopiara', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (896, 2300408, N'Aiuaba', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (897, 2300507, N'Alcântaras', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (898, 2300606, N'Altaneira', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (899, 2300705, N'Alto Santo', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (900, 2300754, N'Amontada', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (901, 2300804, N'Antonina do Norte', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (902, 2300903, N'Apuiarés', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (903, 2301000, N'Aquiraz', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (904, 2301109, N'Aracati', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (905, 2301208, N'Aracoiaba', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (906, 2301257, N'Ararendá', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (907, 2301307, N'Araripe', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (908, 2301406, N'Aratuba', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (909, 2301505, N'Arneiroz', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (910, 2301604, N'Assaré', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (911, 2301703, N'Aurora', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (912, 2301802, N'Baixio', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (913, 2301851, N'Banabuiú', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (914, 2301901, N'Barbalha', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (915, 2301950, N'Barreira', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (916, 2302008, N'Barro', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (917, 2302057, N'Barroquinha', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (918, 2302107, N'Baturité', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (919, 2302206, N'Beberibe', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (920, 2302305, N'Bela Cruz', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (921, 2302404, N'Boa Viagem', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (922, 2302503, N'Brejo Santo', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (923, 2302602, N'Camocim', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (924, 2302701, N'Campos Sales', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (925, 2302800, N'Canindé', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (926, 2302909, N'Capistrano', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (927, 2303006, N'Caridade', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (928, 2303105, N'Cariré', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (929, 2303204, N'Caririaçu', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (930, 2303303, N'Cariús', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (931, 2303402, N'Carnaubal', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (932, 2303501, N'Cascavel', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (933, 2303600, N'Catarina', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (934, 2303659, N'Catunda', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (935, 2303709, N'Caucaia', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (936, 2303808, N'Cedro', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (937, 2303907, N'Chaval', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (938, 2303931, N'Choró', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (939, 2303956, N'Chorozinho', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (940, 2304004, N'Coreaú', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (941, 2304103, N'Crateús', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (942, 2304202, N'Crato', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (943, 2304236, N'Croatá', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (944, 2304251, N'Cruz', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (945, 2304269, N'Deputado Irapuan Pinheiro', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (946, 2304277, N'Ererê', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (947, 2304285, N'Eusébio', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (948, 2304301, N'Farias Brito', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (949, 2304350, N'Forquilha', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (950, 2304400, N'Fortaleza', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (951, 2304459, N'Fortim', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (952, 2304509, N'Frecheirinha', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (953, 2304608, N'General Sampaio', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (954, 2304657, N'Graça', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (955, 2304707, N'Granja', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (956, 2304806, N'Granjeiro', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (957, 2304905, N'Groaíras', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (958, 2304954, N'Guaiúba', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (959, 2305001, N'Guaraciaba do Norte', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (960, 2305100, N'Guaramiranga', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (961, 2305209, N'Hidrolândia', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (962, 2305233, N'Horizonte', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (963, 2305266, N'Ibaretama', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (964, 2305308, N'Ibiapina', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (965, 2305332, N'Ibicuitinga', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (966, 2305357, N'Icapuí', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (967, 2305407, N'Icó', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (968, 2305506, N'Iguatu', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (969, 2305605, N'Independência', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (970, 2305654, N'Ipaporanga', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (971, 2305704, N'Ipaumirim', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (972, 2305803, N'Ipu', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (973, 2305902, N'Ipueiras', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (974, 2306009, N'Iracema', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (975, 2306108, N'Irauçuba', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (976, 2306207, N'Itaiçaba', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (977, 2306256, N'Itaitinga', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (978, 2306306, N'Itapagé', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (979, 2306405, N'Itapipoca', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (980, 2306504, N'Itapiúna', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (981, 2306553, N'Itarema', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (982, 2306603, N'Itatira', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (983, 2306702, N'Jaguaretama', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (984, 2306801, N'Jaguaribara', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (985, 2306900, N'Jaguaribe', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (986, 2307007, N'Jaguaruana', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (987, 2307106, N'Jardim', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (988, 2307205, N'Jati', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (989, 2307254, N'Jijoca de Jericoacoara', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (990, 2307304, N'Juazeiro do Norte', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (991, 2307403, N'Jucás', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (992, 2307502, N'Lavras da Mangabeira', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (993, 2307601, N'Limoeiro do Norte', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (994, 2307635, N'Madalena', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (995, 2307650, N'Maracanaú', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (996, 2307700, N'Maranguape', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (997, 2307809, N'Marco', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (998, 2307908, N'Martinópole', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (999, 2308005, N'Massapê', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1000, 2308104, N'Mauriti', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1001, 2308203, N'Meruoca', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1002, 2308302, N'Milagres', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1003, 2308351, N'Milhã', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1004, 2308377, N'Miraíma', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1005, 2308401, N'Missão Velha', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1006, 2308500, N'Mombaça', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1007, 2308609, N'Monsenhor Tabosa', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1008, 2308708, N'Morada Nova', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1009, 2308807, N'Moraújo', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1010, 2308906, N'Morrinhos', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1011, 2309003, N'Mucambo', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1012, 2309102, N'Mulungu', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1013, 2309201, N'Nova Olinda', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1014, 2309300, N'Nova Russas', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1015, 2309409, N'Novo Oriente', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1016, 2309458, N'Ocara', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1017, 2309508, N'Orós', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1018, 2309607, N'Pacajus', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1019, 2309706, N'Pacatuba', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1020, 2309805, N'Pacoti', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1021, 2309904, N'Pacujá', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1022, 2310001, N'Palhano', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1023, 2310100, N'Palmácia', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1024, 2310209, N'Paracuru', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1025, 2310258, N'Paraipaba', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1026, 2310308, N'Parambu', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1027, 2310407, N'Paramoti', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1028, 2310506, N'Pedra Branca', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1029, 2310605, N'Penaforte', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1030, 2310704, N'Pentecoste', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1031, 2310803, N'Pereiro', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1032, 2310852, N'Pindoretama', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1033, 2310902, N'Piquet Carneiro', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1034, 2310951, N'Pires Ferreira', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1035, 2311009, N'Poranga', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1036, 2311108, N'Porteiras', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1037, 2311207, N'Potengi', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1038, 2311231, N'Potiretama', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1039, 2311264, N'Quiterianópolis', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1040, 2311306, N'Quixadá', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1041, 2311355, N'Quixelô', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1042, 2311405, N'Quixeramobim', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1043, 2311504, N'Quixeré', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1044, 2311603, N'Redenção', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1045, 2311702, N'Reriutaba', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1046, 2311801, N'Russas', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1047, 2311900, N'Saboeiro', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1048, 2311959, N'Salitre', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1049, 2312007, N'Santana do Acaraú', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1050, 2312106, N'Santana do Cariri', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1051, 2312205, N'Santa Quitéria', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1052, 2312304, N'São Benedito', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1053, 2312403, N'São Gonçalo do Amarante', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1054, 2312502, N'São João do Jaguaribe', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1055, 2312601, N'São Luís do Curu', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1056, 2312700, N'Senador Pompeu', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1057, 2312809, N'Senador sá', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1058, 2312908, N'Sobral', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1059, 2313005, N'Solonópole', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1060, 2313104, N'Tabuleiro do Norte', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1061, 2313203, N'Tamboril', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1062, 2313252, N'Tarrafas', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1063, 2313302, N'Tauá', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1064, 2313351, N'Tejuçuoca', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1065, 2313401, N'Tianguá', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1066, 2313500, N'Trairi', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1067, 2313559, N'Tururu', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1068, 2313609, N'Ubajara', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1069, 2313708, N'Umari', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1070, 2313757, N'Umirim', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1071, 2313807, N'Uruburetama', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1072, 2313906, N'Uruoca', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1073, 2313955, N'Varjota', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1074, 2314003, N'Várzea Alegre', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1075, 2314102, N'Viçosa do Ceará', 6)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1076, 2400109, N'Acari', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1077, 2400208, N'Açu', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1078, 2400307, N'Afonso Bezerra', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1079, 2400406, N'Água Nova', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1080, 2400505, N'Alexandria', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1081, 2400604, N'Almino Afonso', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1082, 2400703, N'Alto do Rodrigues', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1083, 2400802, N'Angicos', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1084, 2400901, N'Antônio Martins', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1085, 2401008, N'Apodi', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1086, 2401107, N'Areia Branca', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1087, 2401206, N'Arês', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1088, 2401305, N'Augusto Severo', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1089, 2401404, N'Baía Formosa', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1090, 2401453, N'Baraúna', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1091, 2401503, N'Barcelona', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1092, 2401602, N'Bento Fernandes', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1093, 2401651, N'Bodó', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1094, 2401701, N'Bom Jesus', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1095, 2401800, N'Brejinho', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1096, 2401859, N'Caiçara do Norte', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1097, 2401909, N'Caiçara do Rio do Vento', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1098, 2402006, N'Caicó', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1099, 2402105, N'Campo Redondo', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1100, 2402204, N'Canguaretama', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1101, 2402303, N'Caraúbas', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1102, 2402402, N'Carnaúba Dos Dantas', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1103, 2402501, N'Carnaubais', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1104, 2402600, N'Ceará-mirim', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1105, 2402709, N'Cerro Corá', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1106, 2402808, N'Coronel Ezequiel', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1107, 2402907, N'Coronel João Pessoa', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1108, 2403004, N'Cruzeta', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1109, 2403103, N'Currais Novos', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1110, 2403202, N'Doutor Severiano', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1111, 2403251, N'Parnamirim', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1112, 2403301, N'Encanto', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1113, 2403400, N'Equador', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1114, 2403509, N'Espírito Santo', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1115, 2403608, N'Extremoz', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1116, 2403707, N'Felipe Guerra', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1117, 2403756, N'Fernando Pedroza', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1118, 2403806, N'Florânia', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1119, 2403905, N'Francisco Dantas', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1120, 2404002, N'Frutuoso Gomes', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1121, 2404101, N'Galinhos', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1122, 2404200, N'Goianinha', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1123, 2404309, N'Governador Dix-sept Rosado', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1124, 2404408, N'Grossos', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1125, 2404507, N'Guamaré', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1126, 2404606, N'Ielmo Marinho', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1127, 2404705, N'Ipanguaçu', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1128, 2404804, N'Ipueira', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1129, 2404853, N'Itajá', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1130, 2404903, N'Itaú', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1131, 2405009, N'Jaçanã', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1132, 2405108, N'Jandaíra', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1133, 2405207, N'Janduís', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1134, 2405306, N'Januário Cicco', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1135, 2405405, N'Japi', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1136, 2405504, N'Jardim de Angicos', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1137, 2405603, N'Jardim de Piranhas', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1138, 2405702, N'Jardim do Seridó', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1139, 2405801, N'João Câmara', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1140, 2405900, N'João Dias', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1141, 2406007, N'José da Penha', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1142, 2406106, N'Jucurutu', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1143, 2406155, N'Jundiá', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1144, 2406205, N'Lagoa D´anta', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1145, 2406304, N'Lagoa de Pedras', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1146, 2406403, N'Lagoa de Velhos', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1147, 2406502, N'Lagoa Nova', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1148, 2406601, N'Lagoa Salgada', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1149, 2406700, N'Lajes', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1150, 2406809, N'Lajes Pintadas', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1151, 2406908, N'Lucrécia', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1152, 2407005, N'Luís Gomes', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1153, 2407104, N'Macaíba', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1154, 2407203, N'Macau', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1155, 2407252, N'Major Sales', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1156, 2407302, N'Marcelino Vieira', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1157, 2407401, N'Martins', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1158, 2407500, N'Maxaranguape', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1159, 2407609, N'Messias Targino', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1160, 2407708, N'Montanhas', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1161, 2407807, N'Monte Alegre', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1162, 2407906, N'Monte Das Gameleiras', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1163, 2408003, N'Mossoró', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1164, 2408102, N'Natal', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1165, 2408201, N'Nísia Floresta', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1166, 2408300, N'Nova Cruz', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1167, 2408409, N'Olho-d´água do Borges', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1168, 2408508, N'Ouro Branco', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1169, 2408607, N'Paraná', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1170, 2408706, N'Paraú', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1171, 2408805, N'Parazinho', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1172, 2408904, N'Parelhas', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1173, 2408953, N'Rio do Fogo', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1174, 2409100, N'Passa e Fica', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1175, 2409209, N'Passagem', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1176, 2409308, N'Patu', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1177, 2409332, N'Santa Maria', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1178, 2409407, N'Pau Dos Ferros', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1179, 2409506, N'Pedra Grande', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1180, 2409605, N'Pedra Preta', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1181, 2409704, N'Pedro Avelino', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1182, 2409803, N'Pedro Velho', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1183, 2409902, N'Pendências', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1184, 2410009, N'Pilões', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1185, 2410108, N'Poço Branco', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1186, 2410207, N'Portalegre', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1187, 2410256, N'Porto do Mangue', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1188, 2410306, N'Presidente Juscelino', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1189, 2410405, N'Pureza', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1190, 2410504, N'Rafael Fernandes', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1191, 2410603, N'Rafael Godeiro', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1192, 2410702, N'Riacho da Cruz', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1193, 2410801, N'Riacho de Santana', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1194, 2410900, N'Riachuelo', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1195, 2411007, N'Rodolfo Fernandes', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1196, 2411056, N'Tibau', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1197, 2411106, N'Ruy Barbosa', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1198, 2411205, N'Santa Cruz', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1199, 2411403, N'Santana do Matos', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1200, 2411429, N'Santana do Seridó', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1201, 2411502, N'Santo Antônio', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1202, 2411601, N'São Bento do Norte', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1203, 2411700, N'São Bento do Trairí', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1204, 2411809, N'São Fernando', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1205, 2411908, N'São Francisco do Oeste', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1206, 2412005, N'São Gonçalo do Amarante', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1207, 2412104, N'São João do Sabugi', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1208, 2412203, N'São José de Mipibu', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1209, 2412302, N'São José do Campestre', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1210, 2412401, N'São José do Seridó', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1211, 2412500, N'São Miguel', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1212, 2412559, N'São Miguel do Gostoso', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1213, 2412609, N'São Paulo do Potengi', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1214, 2412708, N'São Pedro', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1215, 2412807, N'São Rafael', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1216, 2412906, N'São Tomé', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1217, 2413003, N'São Vicente', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1218, 2413102, N'Senador Elói de Souza', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1219, 2413201, N'Senador Georgino Avelino', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1220, 2413300, N'Serra de São Bento', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1221, 2413359, N'Serra do Mel', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1222, 2413409, N'Serra Negra do Norte', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1223, 2413508, N'Serrinha', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1224, 2413557, N'Serrinha Dos Pintos', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1225, 2413607, N'Severiano Melo', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1226, 2413706, N'Sítio Novo', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1227, 2413805, N'Taboleiro Grande', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1228, 2413904, N'Taipu', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1229, 2414001, N'Tangará', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1230, 2414100, N'Tenente Ananias', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1231, 2414159, N'Tenente Laurentino Cruz', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1232, 2414209, N'Tibau do Sul', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1233, 2414308, N'Timbaúba Dos Batistas', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1234, 2414407, N'Touros', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1235, 2414456, N'Triunfo Potiguar', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1236, 2414506, N'Umarizal', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1237, 2414605, N'Upanema', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1238, 2414704, N'Várzea', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1239, 2414753, N'Venha-ver', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1240, 2414803, N'Vera Cruz', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1241, 2414902, N'Viçosa', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1242, 2415008, N'Vila Flor', 20)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1243, 2500106, N'Água Branca', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1244, 2500205, N'Aguiar', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1245, 2500304, N'Alagoa Grande', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1246, 2500403, N'Alagoa Nova', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1247, 2500502, N'Alagoinha', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1248, 2500536, N'Alcantil', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1249, 2500577, N'Algodão de Jandaíra', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1250, 2500601, N'Alhandra', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1251, 2500700, N'São João do Rio do Peixe', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1252, 2500734, N'Amparo', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1253, 2500775, N'Aparecida', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1254, 2500809, N'Araçagi', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1255, 2500908, N'Arara', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1256, 2501005, N'Araruna', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1257, 2501104, N'Areia', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1258, 2501153, N'Areia de Baraúnas', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1259, 2501203, N'Areial', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1260, 2501302, N'Aroeiras', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1261, 2501351, N'Assunção', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1262, 2501401, N'Baía da Traição', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1263, 2501500, N'Bananeiras', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1264, 2501534, N'Baraúna', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1265, 2501575, N'Barra de Santana', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1266, 2501609, N'Barra de Santa Rosa', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1267, 2501708, N'Barra de São Miguel', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1268, 2501807, N'Bayeux', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1269, 2501906, N'Belém', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1270, 2502003, N'Belém do Brejo do Cruz', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1271, 2502052, N'Bernardino Batista', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1272, 2502102, N'Boa Ventura', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1273, 2502151, N'Boa Vista', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1274, 2502201, N'Bom Jesus', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1275, 2502300, N'Bom Sucesso', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1276, 2502409, N'Bonito de Santa fé', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1277, 2502508, N'Boqueirão', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1278, 2502607, N'Igaracy', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1279, 2502706, N'Borborema', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1280, 2502805, N'Brejo do Cruz', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1281, 2502904, N'Brejo Dos Santos', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1282, 2503001, N'Caaporã', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1283, 2503100, N'Cabaceiras', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1284, 2503209, N'Cabedelo', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1285, 2503308, N'Cachoeira Dos Índios', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1286, 2503407, N'Cacimba de Areia', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1287, 2503506, N'Cacimba de Dentro', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1288, 2503555, N'Cacimbas', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1289, 2503605, N'Caiçara', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1290, 2503704, N'Cajazeiras', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1291, 2503753, N'Cajazeirinhas', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1292, 2503803, N'Caldas Brandão', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1293, 2503902, N'Camalaú', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1294, 2504009, N'Campina Grande', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1295, 2504033, N'Capim', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1296, 2504074, N'Caraúbas', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1297, 2504108, N'Carrapateira', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1298, 2504157, N'Casserengue', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1299, 2504207, N'Catingueira', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1300, 2504306, N'Catolé do Rocha', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1301, 2504355, N'Caturité', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1302, 2504405, N'Conceição', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1303, 2504504, N'Condado', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1304, 2504603, N'Conde', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1305, 2504702, N'Congo', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1306, 2504801, N'Coremas', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1307, 2504850, N'Coxixola', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1308, 2504900, N'Cruz do Espírito Santo', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1309, 2505006, N'Cubati', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1310, 2505105, N'Cuité', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1311, 2505204, N'Cuitegi', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1312, 2505238, N'Cuité de Mamanguape', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1313, 2505279, N'Curral de Cima', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1314, 2505303, N'Curral Velho', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1315, 2505352, N'Damião', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1316, 2505402, N'Desterro', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1317, 2505501, N'Vista Serrana', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1318, 2505600, N'Diamante', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1319, 2505709, N'Dona Inês', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1320, 2505808, N'Duas Estradas', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1321, 2505907, N'Emas', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1322, 2506004, N'Esperança', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1323, 2506103, N'Fagundes', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1324, 2506202, N'Frei Martinho', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1325, 2506251, N'Gado Bravo', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1326, 2506301, N'Guarabira', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1327, 2506400, N'Gurinhém', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1328, 2506509, N'Gurjão', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1329, 2506608, N'Ibiara', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1330, 2506707, N'Imaculada', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1331, 2506806, N'Ingá', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1332, 2506905, N'Itabaiana', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1333, 2507002, N'Itaporanga', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1334, 2507101, N'Itapororoca', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1335, 2507200, N'Itatuba', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1336, 2507309, N'Jacaraú', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1337, 2507408, N'Jericó', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1338, 2507507, N'João Pessoa', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1339, 2507606, N'Juarez Távora', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1340, 2507705, N'Juazeirinho', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1341, 2507804, N'Junco do Seridó', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1342, 2507903, N'Juripiranga', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1343, 2508000, N'Juru', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1344, 2508109, N'Lagoa', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1345, 2508208, N'Lagoa de Dentro', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1346, 2508307, N'Lagoa Seca', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1347, 2508406, N'Lastro', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1348, 2508505, N'Livramento', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1349, 2508554, N'Logradouro', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1350, 2508604, N'Lucena', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1351, 2508703, N'Mãe D´água', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1352, 2508802, N'Malta', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1353, 2508901, N'Mamanguape', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1354, 2509008, N'Manaíra', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1355, 2509057, N'Marcação', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1356, 2509107, N'Mari', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1357, 2509156, N'Marizópolis', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1358, 2509206, N'Massaranduba', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1359, 2509305, N'Mataraca', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1360, 2509339, N'Matinhas', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1361, 2509370, N'Mato Grosso', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1362, 2509396, N'Maturéia', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1363, 2509404, N'Mogeiro', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1364, 2509503, N'Montadas', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1365, 2509602, N'Monte Horebe', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1366, 2509701, N'Monteiro', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1367, 2509800, N'Mulungu', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1368, 2509909, N'Natuba', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1369, 2510006, N'Nazarezinho', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1370, 2510105, N'Nova Floresta', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1371, 2510204, N'Nova Olinda', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1372, 2510303, N'Nova Palmeira', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1373, 2510402, N'Olho D´água', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1374, 2510501, N'Olivedos', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1375, 2510600, N'Ouro Velho', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1376, 2510659, N'Parari', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1377, 2510709, N'Passagem', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1378, 2510808, N'Patos', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1379, 2510907, N'Paulista', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1380, 2511004, N'Pedra Branca', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1381, 2511103, N'Pedra Lavrada', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1382, 2511202, N'Pedras de Fogo', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1383, 2511301, N'Piancó', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1384, 2511400, N'Picuí', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1385, 2511509, N'Pilar', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1386, 2511608, N'Pilões', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1387, 2511707, N'Pilõezinhos', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1388, 2511806, N'Pirpirituba', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1389, 2511905, N'Pitimbu', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1390, 2512002, N'Pocinhos', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1391, 2512036, N'Poço Dantas', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1392, 2512077, N'Poço de José de Moura', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1393, 2512101, N'Pombal', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1394, 2512200, N'Prata', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1395, 2512309, N'Princesa Isabel', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1396, 2512408, N'Puxinanã', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1397, 2512507, N'Queimadas', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1398, 2512606, N'Quixabá', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1399, 2512705, N'Remígio', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1400, 2512721, N'Pedro Régis', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1401, 2512747, N'Riachão', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1402, 2512754, N'Riachão do Bacamarte', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1403, 2512762, N'Riachão do Poço', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1404, 2512788, N'Riacho de Santo Antônio', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1405, 2512804, N'Riacho Dos Cavalos', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1406, 2512903, N'Rio Tinto', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1407, 2513000, N'Salgadinho', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1408, 2513109, N'Salgado de São Félix', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1409, 2513158, N'Santa Cecília', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1410, 2513208, N'Santa Cruz', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1411, 2513307, N'Santa Helena', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1412, 2513356, N'Santa Inês', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1413, 2513406, N'Santa Luzia', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1414, 2513505, N'Santana de Mangueira', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1415, 2513604, N'Santana Dos Garrotes', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1416, 2513653, N'Santarém', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1417, 2513703, N'Santa Rita', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1418, 2513802, N'Santa Teresinha', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1419, 2513851, N'Santo André', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1420, 2513901, N'São Bento', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1421, 2513927, N'São Bentinho', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1422, 2513943, N'São Domingos do Cariri', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1423, 2513968, N'São Domingos de Pombal', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1424, 2513984, N'São Francisco', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1425, 2514008, N'São João do Cariri', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1426, 2514107, N'São João do Tigre', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1427, 2514206, N'São José da Lagoa Tapada', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1428, 2514305, N'São José de Caiana', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1429, 2514404, N'São José de Espinharas', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1430, 2514453, N'São José Dos Ramos', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1431, 2514503, N'São José de Piranhas', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1432, 2514552, N'São José de Princesa', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1433, 2514602, N'São José do Bonfim', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1434, 2514651, N'São José do Brejo do Cruz', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1435, 2514701, N'São José do Sabugi', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1436, 2514800, N'São José Dos Cordeiros', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1437, 2514909, N'São Mamede', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1438, 2515005, N'São Miguel de Taipu', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1439, 2515104, N'São Sebastião de Lagoa de Roça', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1440, 2515203, N'São Sebastião do Umbuzeiro', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1441, 2515302, N'Sapé', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1442, 2515401, N'Seridó', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1443, 2515500, N'Serra Branca', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1444, 2515609, N'Serra da Raiz', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1445, 2515708, N'Serra Grande', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1446, 2515807, N'Serra Redonda', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1447, 2515906, N'Serraria', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1448, 2515930, N'Sertãozinho', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1449, 2515971, N'Sobrado', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1450, 2516003, N'Solânea', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1451, 2516102, N'Soledade', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1452, 2516151, N'Sossêgo', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1453, 2516201, N'Sousa', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1454, 2516300, N'Sumé', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1455, 2516409, N'Campo de Santana', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1456, 2516508, N'Taperoá', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1457, 2516607, N'Tavares', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1458, 2516706, N'Teixeira', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1459, 2516755, N'Tenório', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1460, 2516805, N'Triunfo', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1461, 2516904, N'Uiraúna', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1462, 2517001, N'Umbuzeiro', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1463, 2517100, N'Várzea', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1464, 2517209, N'Vieirópolis', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1465, 2517407, N'Zabelê', 15)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1466, 2600054, N'Abreu e Lima', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1467, 2600104, N'Afogados da Ingazeira', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1468, 2600203, N'Afrânio', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1469, 2600302, N'Agrestina', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1470, 2600401, N'Água Preta', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1471, 2600500, N'Águas Belas', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1472, 2600609, N'Alagoinha', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1473, 2600708, N'Aliança', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1474, 2600807, N'Altinho', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1475, 2600906, N'Amaraji', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1476, 2601003, N'Angelim', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1477, 2601052, N'Araçoiaba', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1478, 2601102, N'Araripina', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1479, 2601201, N'Arcoverde', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1480, 2601300, N'Barra de Guabiraba', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1481, 2601409, N'Barreiros', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1482, 2601508, N'Belém de Maria', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1483, 2601607, N'Belém de São Francisco', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1484, 2601706, N'Belo Jardim', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1485, 2601805, N'Betânia', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1486, 2601904, N'Bezerros', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1487, 2602001, N'Bodocó', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1488, 2602100, N'Bom Conselho', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1489, 2602209, N'Bom Jardim', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1490, 2602308, N'Bonito', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1491, 2602407, N'Brejão', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1492, 2602506, N'Brejinho', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1493, 2602605, N'Brejo da Madre de Deus', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1494, 2602704, N'Buenos Aires', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1495, 2602803, N'Buíque', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1496, 2602902, N'Cabo de Santo Agostinho', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1497, 2603009, N'Cabrobó', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1498, 2603108, N'Cachoeirinha', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1499, 2603207, N'Caetés', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1500, 2603306, N'Calçado', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1501, 2603405, N'Calumbi', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1502, 2603454, N'Camaragibe', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1503, 2603504, N'Camocim de São Félix', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1504, 2603603, N'Camutanga', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1505, 2603702, N'Canhotinho', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1506, 2603801, N'Capoeiras', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1507, 2603900, N'Carnaíba', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1508, 2603926, N'Carnaubeira da Penha', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1509, 2604007, N'Carpina', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1510, 2604106, N'Caruaru', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1511, 2604155, N'Casinhas', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1512, 2604205, N'Catende', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1513, 2604304, N'Cedro', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1514, 2604403, N'Chã de Alegria', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1515, 2604502, N'Chã Grande', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1516, 2604601, N'Condado', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1517, 2604700, N'Correntes', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1518, 2604809, N'Cortês', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1519, 2604908, N'Cumaru', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1520, 2605004, N'Cupira', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1521, 2605103, N'Custódia', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1522, 2605152, N'Dormentes', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1523, 2605202, N'Escada', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1524, 2605301, N'Exu', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1525, 2605400, N'Feira Nova', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1526, 2605459, N'Fernando de Noronha', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1527, 2605509, N'Ferreiros', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1528, 2605608, N'Flores', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1529, 2605707, N'Floresta', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1530, 2605806, N'Frei Miguelinho', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1531, 2605905, N'Gameleira', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1532, 2606002, N'Garanhuns', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1533, 2606101, N'Glória do Goitá', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1534, 2606200, N'Goiana', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1535, 2606309, N'Granito', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1536, 2606408, N'Gravatá', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1537, 2606507, N'Iati', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1538, 2606606, N'Ibimirim', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1539, 2606705, N'Ibirajuba', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1540, 2606804, N'Igarassu', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1541, 2606903, N'Iguaraci', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1542, 2607000, N'Inajá', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1543, 2607109, N'Ingazeira', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1544, 2607208, N'Ipojuca', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1545, 2607307, N'Ipubi', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1546, 2607406, N'Itacuruba', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1547, 2607505, N'Itaíba', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1548, 2607604, N'Ilha de Itamaracá', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1549, 2607653, N'Itambé', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1550, 2607703, N'Itapetim', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1551, 2607752, N'Itapissuma', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1552, 2607802, N'Itaquitinga', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1553, 2607901, N'Jaboatão Dos Guararapes', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1554, 2607950, N'Jaqueira', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1555, 2608008, N'Jataúba', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1556, 2608057, N'Jatobá', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1557, 2608107, N'João Alfredo', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1558, 2608206, N'Joaquim Nabuco', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1559, 2608255, N'Jucati', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1560, 2608305, N'Jupi', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1561, 2608404, N'Jurema', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1562, 2608453, N'Lagoa do Carro', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1563, 2608503, N'Lagoa do Itaenga', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1564, 2608602, N'Lagoa do Ouro', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1565, 2608701, N'Lagoa Dos Gatos', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1566, 2608750, N'Lagoa Grande', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1567, 2608800, N'Lajedo', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1568, 2608909, N'Limoeiro', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1569, 2609006, N'Macaparana', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1570, 2609105, N'Machados', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1571, 2609154, N'Manari', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1572, 2609204, N'Maraial', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1573, 2609303, N'Mirandiba', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1574, 2609402, N'Moreno', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1575, 2609501, N'Nazaré da Mata', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1576, 2609600, N'Olinda', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1577, 2609709, N'Orobó', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1578, 2609808, N'Orocó', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1579, 2609907, N'Ouricuri', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1580, 2610004, N'Palmares', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1581, 2610103, N'Palmeirina', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1582, 2610202, N'Panelas', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1583, 2610301, N'Paranatama', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1584, 2610400, N'Parnamirim', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1585, 2610509, N'Passira', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1586, 2610608, N'Paudalho', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1587, 2610707, N'Paulista', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1588, 2610806, N'Pedra', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1589, 2610905, N'Pesqueira', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1590, 2611002, N'Petrolândia', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1591, 2611101, N'Petrolina', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1592, 2611200, N'Poção', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1593, 2611309, N'Pombos', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1594, 2611408, N'Primavera', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1595, 2611507, N'Quipapá', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1596, 2611533, N'Quixaba', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1597, 2611606, N'Recife', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1598, 2611705, N'Riacho Das Almas', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1599, 2611804, N'Ribeirão', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1600, 2611903, N'Rio Formoso', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1601, 2612000, N'Sairé', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1602, 2612109, N'Salgadinho', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1603, 2612208, N'Salgueiro', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1604, 2612307, N'Saloá', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1605, 2612406, N'Sanharó', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1606, 2612455, N'Santa Cruz', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1607, 2612471, N'Santa Cruz da Baixa Verde', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1608, 2612505, N'Santa Cruz do Capibaribe', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1609, 2612554, N'Santa Filomena', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1610, 2612604, N'Santa Maria da Boa Vista', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1611, 2612703, N'Santa Maria do Cambucá', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1612, 2612802, N'Santa Terezinha', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1613, 2612901, N'São Benedito do Sul', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1614, 2613008, N'São Bento do Una', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1615, 2613107, N'São Caitano', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1616, 2613206, N'São João', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1617, 2613305, N'São Joaquim do Monte', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1618, 2613404, N'São José da Coroa Grande', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1619, 2613503, N'São José do Belmonte', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1620, 2613602, N'São José do Egito', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1621, 2613701, N'São Lourenço da Mata', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1622, 2613800, N'São Vicente Ferrer', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1623, 2613909, N'Serra Talhada', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1624, 2614006, N'Serrita', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1625, 2614105, N'Sertânia', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1626, 2614204, N'Sirinhaém', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1627, 2614303, N'Moreilândia', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1628, 2614402, N'Solidão', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1629, 2614501, N'Surubim', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1630, 2614600, N'Tabira', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1631, 2614709, N'Tacaimbó', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1632, 2614808, N'Tacaratu', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1633, 2614857, N'Tamandaré', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1634, 2615003, N'Taquaritinga do Norte', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1635, 2615102, N'Terezinha', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1636, 2615201, N'Terra Nova', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1637, 2615300, N'Timbaúba', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1638, 2615409, N'Toritama', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1639, 2615508, N'Tracunhaém', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1640, 2615607, N'Trindade', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1641, 2615706, N'Triunfo', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1642, 2615805, N'Tupanatinga', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1643, 2615904, N'Tuparetama', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1644, 2616001, N'Venturosa', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1645, 2616100, N'Verdejante', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1646, 2616183, N'Vertente do Lério', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1647, 2616209, N'Vertentes', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1648, 2616308, N'Vicência', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1649, 2616407, N'Vitória de Santo Antão', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1650, 2616506, N'Xexéu', 16)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1651, 2700102, N'Água Branca', 2)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1652, 2700201, N'Anadia', 2)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1653, 2700300, N'Arapiraca', 2)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1654, 2700409, N'Atalaia', 2)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1655, 2700508, N'Barra de Santo Antônio', 2)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1656, 2700607, N'Barra de São Miguel', 2)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1657, 2700706, N'Batalha', 2)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1658, 2700805, N'Belém', 2)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1659, 2700904, N'Belo Monte', 2)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1660, 2701001, N'Boca da Mata', 2)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1661, 2701100, N'Branquinha', 2)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1662, 2701209, N'Cacimbinhas', 2)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1663, 2701308, N'Cajueiro', 2)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1664, 2701357, N'Campestre', 2)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1665, 2701407, N'Campo Alegre', 2)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1666, 2701506, N'Campo Grande', 2)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1667, 2701605, N'Canapi', 2)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1668, 2701704, N'Capela', 2)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1669, 2701803, N'Carneiros', 2)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1670, 2701902, N'Chã Preta', 2)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1671, 2702009, N'Coité do Nóia', 2)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1672, 2702108, N'Colônia Leopoldina', 2)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1673, 2702207, N'Coqueiro Seco', 2)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1674, 2702306, N'Coruripe', 2)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1675, 2702355, N'Craíbas', 2)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1676, 2702405, N'Delmiro Gouveia', 2)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1677, 2702504, N'Dois Riachos', 2)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1678, 2702553, N'Estrela de Alagoas', 2)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1679, 2702603, N'Feira Grande', 2)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1680, 2702702, N'Feliz Deserto', 2)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1681, 2702801, N'Flexeiras', 2)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1682, 2702900, N'Girau do Ponciano', 2)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1683, 2703007, N'Ibateguara', 2)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1684, 2703106, N'Igaci', 2)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1685, 2703205, N'Igreja Nova', 2)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1686, 2703304, N'Inhapi', 2)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1687, 2703403, N'Jacaré Dos Homens', 2)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1688, 2703502, N'Jacuípe', 2)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1689, 2703601, N'Japaratinga', 2)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1690, 2703700, N'Jaramataia', 2)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1691, 2703759, N'Jequiá da Praia', 2)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1692, 2703809, N'Joaquim Gomes', 2)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1693, 2703908, N'Jundiá', 2)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1694, 2704005, N'Junqueiro', 2)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1695, 2704104, N'Lagoa da Canoa', 2)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1696, 2704203, N'Limoeiro de Anadia', 2)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1697, 2704302, N'Maceió', 2)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1698, 2704401, N'Major Isidoro', 2)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1699, 2704500, N'Maragogi', 2)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1700, 2704609, N'Maravilha', 2)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1701, 2704708, N'Marechal Deodoro', 2)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1702, 2704807, N'Maribondo', 2)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1703, 2704906, N'Mar Vermelho', 2)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1704, 2705002, N'Mata Grande', 2)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1705, 2705101, N'Matriz de Camaragibe', 2)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1706, 2705200, N'Messias', 2)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1707, 2705309, N'Minador do Negrão', 2)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1708, 2705408, N'Monteirópolis', 2)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1709, 2705507, N'Murici', 2)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1710, 2705606, N'Novo Lino', 2)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1711, 2705705, N'Olho D´água Das Flores', 2)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1712, 2705804, N'Olho D´água do Casado', 2)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1713, 2705903, N'Olho D´água Grande', 2)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1714, 2706000, N'Olivença', 2)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1715, 2706109, N'Ouro Branco', 2)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1716, 2706208, N'Palestina', 2)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1717, 2706307, N'Palmeira Dos Índios', 2)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1718, 2706406, N'Pão de Açúcar', 2)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1719, 2706422, N'Pariconha', 2)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1720, 2706448, N'Paripueira', 2)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1721, 2706505, N'Passo de Camaragibe', 2)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1722, 2706604, N'Paulo Jacinto', 2)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1723, 2706703, N'Penedo', 2)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1724, 2706802, N'Piaçabuçu', 2)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1725, 2706901, N'Pilar', 2)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1726, 2707008, N'Pindoba', 2)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1727, 2707107, N'Piranhas', 2)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1728, 2707206, N'Poço Das Trincheiras', 2)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1729, 2707305, N'Porto Calvo', 2)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1730, 2707404, N'Porto de Pedras', 2)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1731, 2707503, N'Porto Real do Colégio', 2)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1732, 2707602, N'Quebrangulo', 2)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1733, 2707701, N'Rio Largo', 2)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1734, 2707800, N'Roteiro', 2)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1735, 2707909, N'Santa Luzia do Norte', 2)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1736, 2708006, N'Santana do Ipanema', 2)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1737, 2708105, N'Santana do Mundaú', 2)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1738, 2708204, N'São Brás', 2)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1739, 2708303, N'São José da Laje', 2)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1740, 2708402, N'São José da Tapera', 2)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1741, 2708501, N'São Luís do Quitunde', 2)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1742, 2708600, N'São Miguel Dos Campos', 2)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1743, 2708709, N'São Miguel Dos Milagres', 2)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1744, 2708808, N'São Sebastião', 2)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1745, 2708907, N'Satuba', 2)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1746, 2708956, N'Senador Rui Palmeira', 2)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1747, 2709004, N'Tanque D´arca', 2)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1748, 2709103, N'Taquarana', 2)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1749, 2709152, N'Teotônio Vilela', 2)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1750, 2709202, N'Traipu', 2)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1751, 2709301, N'União Dos Palmares', 2)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1752, 2709400, N'Viçosa', 2)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1753, 2800100, N'Amparo de São Francisco', 25)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1754, 2800209, N'Aquidabã', 25)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1755, 2800308, N'Aracaju', 25)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1756, 2800407, N'Arauá', 25)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1757, 2800506, N'Areia Branca', 25)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1758, 2800605, N'Barra Dos Coqueiros', 25)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1759, 2800670, N'Boquim', 25)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1760, 2800704, N'Brejo Grande', 25)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1761, 2801009, N'Campo do Brito', 25)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1762, 2801108, N'Canhoba', 25)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1763, 2801207, N'Canindé de São Francisco', 25)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1764, 2801306, N'Capela', 25)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1765, 2801405, N'Carira', 25)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1766, 2801504, N'Carmópolis', 25)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1767, 2801603, N'Cedro de São João', 25)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1768, 2801702, N'Cristinápolis', 25)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1769, 2801900, N'Cumbe', 25)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1770, 2802007, N'Divina Pastora', 25)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1771, 2802106, N'Estância', 25)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1772, 2802205, N'Feira Nova', 25)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1773, 2802304, N'Frei Paulo', 25)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1774, 2802403, N'Gararu', 25)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1775, 2802502, N'General Maynard', 25)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1776, 2802601, N'Gracho Cardoso', 25)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1777, 2802700, N'Ilha Das Flores', 25)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1778, 2802809, N'Indiaroba', 25)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1779, 2802908, N'Itabaiana', 25)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1780, 2803005, N'Itabaianinha', 25)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1781, 2803104, N'Itabi', 25)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1782, 2803203, N'Itaporanga D´ajuda', 25)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1783, 2803302, N'Japaratuba', 25)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1784, 2803401, N'Japoatã', 25)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1785, 2803500, N'Lagarto', 25)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1786, 2803609, N'Laranjeiras', 25)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1787, 2803708, N'Macambira', 25)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1788, 2803807, N'Malhada Dos Bois', 25)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1789, 2803906, N'Malhador', 25)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1790, 2804003, N'Maruim', 25)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1791, 2804102, N'Moita Bonita', 25)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1792, 2804201, N'Monte Alegre de Sergipe', 25)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1793, 2804300, N'Muribeca', 25)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1794, 2804409, N'Neópolis', 25)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1795, 2804458, N'Nossa Senhora Aparecida', 25)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1796, 2804508, N'Nossa Senhora da Glória', 25)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1797, 2804607, N'Nossa Senhora Das Dores', 25)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1798, 2804706, N'Nossa Senhora de Lourdes', 25)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1799, 2804805, N'Nossa Senhora do Socorro', 25)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1800, 2804904, N'Pacatuba', 25)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1801, 2805000, N'Pedra Mole', 25)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1802, 2805109, N'Pedrinhas', 25)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1803, 2805208, N'Pinhão', 25)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1804, 2805307, N'Pirambu', 25)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1805, 2805406, N'Poço Redondo', 25)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1806, 2805505, N'Poço Verde', 25)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1807, 2805604, N'Porto da Folha', 25)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1808, 2805703, N'Propriá', 25)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1809, 2805802, N'Riachão do Dantas', 25)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1810, 2805901, N'Riachuelo', 25)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1811, 2806008, N'Ribeirópolis', 25)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1812, 2806107, N'Rosário do Catete', 25)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1813, 2806206, N'Salgado', 25)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1814, 2806305, N'Santa Luzia do Itanhy', 25)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1815, 2806404, N'Santana do São Francisco', 25)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1816, 2806503, N'Santa Rosa de Lima', 25)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1817, 2806602, N'Santo Amaro Das Brotas', 25)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1818, 2806701, N'São Cristóvão', 25)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1819, 2806800, N'São Domingos', 25)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1820, 2806909, N'São Francisco', 25)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1821, 2807006, N'São Miguel do Aleixo', 25)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1822, 2807105, N'Simão Dias', 25)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1823, 2807204, N'Siriri', 25)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1824, 2807303, N'Telha', 25)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1825, 2807402, N'Tobias Barreto', 25)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1826, 2807501, N'Tomar do Geru', 25)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1827, 2807600, N'Umbaúba', 25)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1828, 2900108, N'Abaíra', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1829, 2900207, N'Abaré', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1830, 2900306, N'Acajutiba', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1831, 2900355, N'Adustina', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1832, 2900405, N'Água Fria', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1833, 2900504, N'Érico Cardoso', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1834, 2900603, N'Aiquara', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1835, 2900702, N'Alagoinhas', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1836, 2900801, N'Alcobaça', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1837, 2900900, N'Almadina', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1838, 2901007, N'Amargosa', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1839, 2901106, N'Amélia Rodrigues', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1840, 2901155, N'América Dourada', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1841, 2901205, N'Anagé', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1842, 2901304, N'Andaraí', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1843, 2901353, N'Andorinha', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1844, 2901403, N'Angical', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1845, 2901502, N'Anguera', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1846, 2901601, N'Antas', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1847, 2901700, N'Antônio Cardoso', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1848, 2901809, N'Antônio Gonçalves', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1849, 2901908, N'Aporá', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1850, 2901957, N'Apuarema', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1851, 2902005, N'Aracatu', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1852, 2902054, N'Araças', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1853, 2902104, N'Araci', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1854, 2902203, N'Aramari', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1855, 2902252, N'Arataca', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1856, 2902302, N'Aratuípe', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1857, 2902401, N'Aurelino Leal', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1858, 2902500, N'Baianópolis', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1859, 2902609, N'Baixa Grande', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1860, 2902658, N'Banzaê', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1861, 2902708, N'Barra', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1862, 2902807, N'Barra da Estiva', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1863, 2902906, N'Barra do Choça', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1864, 2903003, N'Barra do Mendes', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1865, 2903102, N'Barra do Rocha', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1866, 2903201, N'Barreiras', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1867, 2903235, N'Barro Alto', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1868, 2903276, N'Barrocas', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1869, 2903300, N'Governador Lomanto Júnior', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1870, 2903409, N'Belmonte', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1871, 2903508, N'Belo Campo', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1872, 2903607, N'Biritinga', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1873, 2903706, N'Boa Nova', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1874, 2903805, N'Boa Vista do Tupim', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1875, 2903904, N'Bom Jesus da Lapa', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1876, 2903953, N'Bom Jesus da Serra', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1877, 2904001, N'Boninal', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1878, 2904050, N'Bonito', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1879, 2904100, N'Boquira', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1880, 2904209, N'Botuporã', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1881, 2904308, N'Brejões', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1882, 2904407, N'Brejolândia', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1883, 2904506, N'Brotas de Macaúbas', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1884, 2904605, N'Brumado', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1885, 2904704, N'Buerarema', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1886, 2904753, N'Buritirama', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1887, 2904803, N'Caatiba', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1888, 2904852, N'Cabaceiras do Paraguaçu', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1889, 2904902, N'Cachoeira', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1890, 2905008, N'Caculé', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1891, 2905107, N'Caém', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1892, 2905156, N'Caetanos', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1893, 2905206, N'Caetité', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1894, 2905305, N'Cafarnaum', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1895, 2905404, N'Cairu', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1896, 2905503, N'Caldeirão Grande', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1897, 2905602, N'Camacan', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1898, 2905701, N'Camaçari', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1899, 2905800, N'Camamu', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1900, 2905909, N'Campo Alegre de Lourdes', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1901, 2906006, N'Campo Formoso', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1902, 2906105, N'Canápolis', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1903, 2906204, N'Canarana', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1904, 2906303, N'Canavieiras', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1905, 2906402, N'Candeal', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1906, 2906501, N'Candeias', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1907, 2906600, N'Candiba', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1908, 2906709, N'Cândido Sales', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1909, 2906808, N'Cansanção', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1910, 2906824, N'Canudos', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1911, 2906857, N'Capela do Alto Alegre', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1912, 2906873, N'Capim Grosso', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1913, 2906899, N'Caraíbas', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1914, 2906907, N'Caravelas', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1915, 2907004, N'Cardeal da Silva', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1916, 2907103, N'Carinhanha', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1917, 2907202, N'Casa Nova', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1918, 2907301, N'Castro Alves', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1919, 2907400, N'Catolândia', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1920, 2907509, N'Catu', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1921, 2907558, N'Caturama', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1922, 2907608, N'Central', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1923, 2907707, N'Chorrochó', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1924, 2907806, N'Cícero Dantas', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1925, 2907905, N'Cipó', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1926, 2908002, N'Coaraci', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1927, 2908101, N'Cocos', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1928, 2908200, N'Conceição da Feira', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1929, 2908309, N'Conceição do Almeida', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1930, 2908408, N'Conceição do Coité', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1931, 2908507, N'Conceição do Jacuípe', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1932, 2908606, N'Conde', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1933, 2908705, N'Condeúba', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1934, 2908804, N'Contendas do Sincorá', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1935, 2908903, N'Coração de Maria', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1936, 2909000, N'Cordeiros', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1937, 2909109, N'Coribe', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1938, 2909208, N'Coronel João sá', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1939, 2909307, N'Correntina', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1940, 2909406, N'Cotegipe', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1941, 2909505, N'Cravolândia', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1942, 2909604, N'Crisópolis', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1943, 2909703, N'Cristópolis', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1944, 2909802, N'Cruz Das Almas', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1945, 2909901, N'Curaçá', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1946, 2910008, N'Dário Meira', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1947, 2910057, N'Dias D´ávila', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1948, 2910107, N'Dom Basílio', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1949, 2910206, N'Dom Macedo Costa', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1950, 2910305, N'Elísio Medrado', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1951, 2910404, N'Encruzilhada', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1952, 2910503, N'Entre Rios', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1953, 2910602, N'Esplanada', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1954, 2910701, N'Euclides da Cunha', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1955, 2910727, N'Eunápolis', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1956, 2910750, N'Fátima', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1957, 2910776, N'Feira da Mata', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1958, 2910800, N'Feira de Santana', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1959, 2910859, N'Filadélfia', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1960, 2910909, N'Firmino Alves', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1961, 2911006, N'Floresta Azul', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1962, 2911105, N'Formosa do Rio Preto', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1963, 2911204, N'Gandu', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1964, 2911253, N'Gavião', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1965, 2911303, N'Gentio do Ouro', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1966, 2911402, N'Glória', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1967, 2911501, N'Gongogi', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1968, 2911600, N'Governador Mangabeira', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1969, 2911659, N'Guajeru', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1970, 2911709, N'Guanambi', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1971, 2911808, N'Guaratinga', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1972, 2911857, N'Heliópolis', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1973, 2911907, N'Iaçu', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1974, 2912004, N'Ibiassucê', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1975, 2912103, N'Ibicaraí', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1976, 2912202, N'Ibicoara', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1977, 2912301, N'Ibicuí', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1978, 2912400, N'Ibipeba', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1979, 2912509, N'Ibipitanga', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1980, 2912608, N'Ibiquera', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1981, 2912707, N'Ibirapitanga', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1982, 2912806, N'Ibirapuã', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1983, 2912905, N'Ibirataia', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1984, 2913002, N'Ibitiara', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1985, 2913101, N'Ibititá', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1986, 2913200, N'Ibotirama', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1987, 2913309, N'Ichu', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1988, 2913408, N'Igaporã', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1989, 2913457, N'Igrapiúna', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1990, 2913507, N'Iguaí', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1991, 2913606, N'Ilhéus', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1992, 2913705, N'Inhambupe', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1993, 2913804, N'Ipecaetá', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1994, 2913903, N'Ipiaú', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1995, 2914000, N'Ipirá', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1996, 2914109, N'Ipupiara', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1997, 2914208, N'Irajuba', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1998, 2914307, N'Iramaia', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (1999, 2914406, N'Iraquara', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2000, 2914505, N'Irará', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2001, 2914604, N'Irecê', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2002, 2914653, N'Itabela', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2003, 2914703, N'Itaberaba', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2004, 2914802, N'Itabuna', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2005, 2914901, N'Itacaré', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2006, 2915007, N'Itaeté', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2007, 2915106, N'Itagi', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2008, 2915205, N'Itagibá', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2009, 2915304, N'Itagimirim', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2010, 2915353, N'Itaguaçu da Bahia', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2011, 2915403, N'Itaju do Colônia', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2012, 2915502, N'Itajuípe', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2013, 2915601, N'Itamaraju', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2014, 2915700, N'Itamari', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2015, 2915809, N'Itambé', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2016, 2915908, N'Itanagra', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2017, 2916005, N'Itanhém', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2018, 2916104, N'Itaparica', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2019, 2916203, N'Itapé', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2020, 2916302, N'Itapebi', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2021, 2916401, N'Itapetinga', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2022, 2916500, N'Itapicuru', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2023, 2916609, N'Itapitanga', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2024, 2916708, N'Itaquara', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2025, 2916807, N'Itarantim', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2026, 2916856, N'Itatim', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2027, 2916906, N'Itiruçu', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2028, 2917003, N'Itiúba', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2029, 2917102, N'Itororó', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2030, 2917201, N'Ituaçu', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2031, 2917300, N'Ituberá', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2032, 2917334, N'Iuiú', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2033, 2917359, N'Jaborandi', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2034, 2917409, N'Jacaraci', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2035, 2917508, N'Jacobina', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2036, 2917607, N'Jaguaquara', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2037, 2917706, N'Jaguarari', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2038, 2917805, N'Jaguaripe', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2039, 2917904, N'Jandaíra', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2040, 2918001, N'Jequié', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2041, 2918100, N'Jeremoabo', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2042, 2918209, N'Jiquiriçá', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2043, 2918308, N'Jitaúna', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2044, 2918357, N'João Dourado', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2045, 2918407, N'Juazeiro', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2046, 2918456, N'Jucuruçu', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2047, 2918506, N'Jussara', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2048, 2918555, N'Jussari', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2049, 2918605, N'Jussiape', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2050, 2918704, N'Lafaiete Coutinho', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2051, 2918753, N'Lagoa Real', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2052, 2918803, N'Laje', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2053, 2918902, N'Lajedão', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2054, 2919009, N'Lajedinho', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2055, 2919058, N'Lajedo do Tabocal', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2056, 2919108, N'Lamarão', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2057, 2919157, N'Lapão', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2058, 2919207, N'Lauro de Freitas', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2059, 2919306, N'Lençóis', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2060, 2919405, N'Licínio de Almeida', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2061, 2919504, N'Livramento de Nossa Senhora', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2062, 2919553, N'Luís Eduardo Magalhães', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2063, 2919603, N'Macajuba', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2064, 2919702, N'Macarani', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2065, 2919801, N'Macaúbas', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2066, 2919900, N'Macururé', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2067, 2919926, N'Madre de Deus', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2068, 2919959, N'Maetinga', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2069, 2920007, N'Maiquinique', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2070, 2920106, N'Mairi', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2071, 2920205, N'Malhada', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2072, 2920304, N'Malhada de Pedras', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2073, 2920403, N'Manoel Vitorino', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2074, 2920452, N'Mansidão', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2075, 2920502, N'Maracás', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2076, 2920601, N'Maragogipe', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2077, 2920700, N'Maraú', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2078, 2920809, N'Marcionílio Souza', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2079, 2920908, N'Mascote', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2080, 2921005, N'Mata de São João', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2081, 2921054, N'Matina', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2082, 2921104, N'Medeiros Neto', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2083, 2921203, N'Miguel Calmon', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2084, 2921302, N'Milagres', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2085, 2921401, N'Mirangaba', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2086, 2921450, N'Mirante', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2087, 2921500, N'Monte Santo', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2088, 2921609, N'Morpará', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2089, 2921708, N'Morro do Chapéu', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2090, 2921807, N'Mortugaba', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2091, 2921906, N'Mucugê', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2092, 2922003, N'Mucuri', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2093, 2922052, N'Mulungu do Morro', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2094, 2922102, N'Mundo Novo', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2095, 2922201, N'Muniz Ferreira', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2096, 2922250, N'Muquém de São Francisco', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2097, 2922300, N'Muritiba', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2098, 2922409, N'Mutuípe', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2099, 2922508, N'Nazaré', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2100, 2922607, N'Nilo Peçanha', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2101, 2922656, N'Nordestina', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2102, 2922706, N'Nova Canaã', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2103, 2922730, N'Nova Fátima', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2104, 2922755, N'Nova Ibiá', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2105, 2922805, N'Nova Itarana', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2106, 2922854, N'Nova Redenção', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2107, 2922904, N'Nova Soure', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2108, 2923001, N'Nova Viçosa', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2109, 2923035, N'Novo Horizonte', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2110, 2923050, N'Novo Triunfo', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2111, 2923100, N'Olindina', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2112, 2923209, N'Oliveira Dos Brejinhos', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2113, 2923308, N'Ouriçangas', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2114, 2923357, N'Ourolândia', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2115, 2923407, N'Palmas de Monte Alto', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2116, 2923506, N'Palmeiras', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2117, 2923605, N'Paramirim', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2118, 2923704, N'Paratinga', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2119, 2923803, N'Paripiranga', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2120, 2923902, N'Pau Brasil', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2121, 2924009, N'Paulo Afonso', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2122, 2924058, N'pé de Serra', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2123, 2924108, N'Pedrão', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2124, 2924207, N'Pedro Alexandre', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2125, 2924306, N'Piatã', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2126, 2924405, N'Pilão Arcado', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2127, 2924504, N'Pindaí', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2128, 2924603, N'Pindobaçu', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2129, 2924652, N'Pintadas', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2130, 2924678, N'Piraí do Norte', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2131, 2924702, N'Piripá', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2132, 2924801, N'Piritiba', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2133, 2924900, N'Planaltino', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2134, 2925006, N'Planalto', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2135, 2925105, N'Poções', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2136, 2925204, N'Pojuca', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2137, 2925253, N'Ponto Novo', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2138, 2925303, N'Porto Seguro', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2139, 2925402, N'Potiraguá', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2140, 2925501, N'Prado', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2141, 2925600, N'Presidente Dutra', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2142, 2925709, N'Presidente Jânio Quadros', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2143, 2925758, N'Presidente Tancredo Neves', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2144, 2925808, N'Queimadas', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2145, 2925907, N'Quijingue', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2146, 2925931, N'Quixabeira', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2147, 2925956, N'Rafael Jambeiro', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2148, 2926004, N'Remanso', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2149, 2926103, N'Retirolândia', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2150, 2926202, N'Riachão Das Neves', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2151, 2926301, N'Riachão do Jacuípe', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2152, 2926400, N'Riacho de Santana', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2153, 2926509, N'Ribeira do Amparo', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2154, 2926608, N'Ribeira do Pombal', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2155, 2926657, N'Ribeirão do Largo', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2156, 2926707, N'Rio de Contas', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2157, 2926806, N'Rio do Antônio', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2158, 2926905, N'Rio do Pires', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2159, 2927002, N'Rio Real', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2160, 2927101, N'Rodelas', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2161, 2927200, N'Ruy Barbosa', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2162, 2927309, N'Salinas da Margarida', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2163, 2927408, N'Salvador', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2164, 2927507, N'Santa Bárbara', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2165, 2927606, N'Santa Brígida', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2166, 2927705, N'Santa Cruz Cabrália', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2167, 2927804, N'Santa Cruz da Vitória', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2168, 2927903, N'Santa Inês', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2169, 2928000, N'Santaluz', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2170, 2928059, N'Santa Luzia', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2171, 2928109, N'Santa Maria da Vitória', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2172, 2928208, N'Santana', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2173, 2928307, N'Santanópolis', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2174, 2928406, N'Santa Rita de Cássia', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2175, 2928505, N'Santa Teresinha', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2176, 2928604, N'Santo Amaro', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2177, 2928703, N'Santo Antônio de Jesus', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2178, 2928802, N'Santo Estêvão', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2179, 2928901, N'São Desidério', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2180, 2928950, N'São Domingos', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2181, 2929008, N'São Félix', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2182, 2929057, N'São Félix do Coribe', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2183, 2929107, N'São Felipe', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2184, 2929206, N'São Francisco do Conde', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2185, 2929255, N'São Gabriel', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2186, 2929305, N'São Gonçalo Dos Campos', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2187, 2929354, N'São José da Vitória', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2188, 2929370, N'São José do Jacuípe', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2189, 2929404, N'São Miguel Das Matas', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2190, 2929503, N'São Sebastião do Passé', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2191, 2929602, N'Sapeaçu', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2192, 2929701, N'Sátiro Dias', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2193, 2929750, N'Saubara', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2194, 2929800, N'Saúde', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2195, 2929909, N'Seabra', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2196, 2930006, N'Sebastião Laranjeiras', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2197, 2930105, N'Senhor do Bonfim', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2198, 2930154, N'Serra do Ramalho', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2199, 2930204, N'Sento sé', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2200, 2930303, N'Serra Dourada', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2201, 2930402, N'Serra Preta', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2202, 2930501, N'Serrinha', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2203, 2930600, N'Serrolândia', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2204, 2930709, N'Simões Filho', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2205, 2930758, N'Sítio do Mato', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2206, 2930766, N'Sítio do Quinto', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2207, 2930774, N'Sobradinho', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2208, 2930808, N'Souto Soares', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2209, 2930907, N'Tabocas do Brejo Velho', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2210, 2931004, N'Tanhaçu', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2211, 2931053, N'Tanque Novo', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2212, 2931103, N'Tanquinho', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2213, 2931202, N'Taperoá', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2214, 2931301, N'Tapiramutá', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2215, 2931350, N'Teixeira de Freitas', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2216, 2931400, N'Teodoro Sampaio', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2217, 2931509, N'Teofilândia', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2218, 2931608, N'Teolândia', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2219, 2931707, N'Terra Nova', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2220, 2931806, N'Tremedal', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2221, 2931905, N'Tucano', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2222, 2932002, N'Uauá', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2223, 2932101, N'Ubaíra', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2224, 2932200, N'Ubaitaba', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2225, 2932309, N'Ubatã', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2226, 2932408, N'Uibaí', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2227, 2932457, N'Umburanas', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2228, 2932507, N'Una', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2229, 2932606, N'Urandi', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2230, 2932705, N'Uruçuca', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2231, 2932804, N'Utinga', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2232, 2932903, N'Valença', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2233, 2933000, N'Valente', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2234, 2933059, N'Várzea da Roça', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2235, 2933109, N'Várzea do Poço', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2236, 2933158, N'Várzea Nova', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2237, 2933174, N'Varzedo', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2238, 2933208, N'Vera Cruz', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2239, 2933257, N'Vereda', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2240, 2933307, N'Vitória da Conquista', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2241, 2933406, N'Wagner', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2242, 2933455, N'Wanderley', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2243, 2933505, N'Wenceslau Guimarães', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2244, 2933604, N'Xique-xique', 5)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2245, 3100104, N'Abadia Dos Dourados', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2246, 3100203, N'Abaeté', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2247, 3100302, N'Abre Campo', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2248, 3100401, N'Acaiaca', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2249, 3100500, N'Açucena', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2250, 3100609, N'Água Boa', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2251, 3100708, N'Água Comprida', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2252, 3100807, N'Aguanil', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2253, 3100906, N'Águas Formosas', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2254, 3101003, N'Águas Vermelhas', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2255, 3101102, N'Aimorés', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2256, 3101201, N'Aiuruoca', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2257, 3101300, N'Alagoa', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2258, 3101409, N'Albertina', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2259, 3101508, N'Além Paraíba', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2260, 3101607, N'Alfenas', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2261, 3101631, N'Alfredo Vasconcelos', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2262, 3101706, N'Almenara', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2263, 3101805, N'Alpercata', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2264, 3101904, N'Alpinópolis', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2265, 3102001, N'Alterosa', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2266, 3102050, N'Alto Caparaó', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2267, 3102100, N'Alto Rio Doce', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2268, 3102209, N'Alvarenga', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2269, 3102308, N'Alvinópolis', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2270, 3102407, N'Alvorada de Minas', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2271, 3102506, N'Amparo do Serra', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2272, 3102605, N'Andradas', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2273, 3102704, N'Cachoeira de Pajeú', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2274, 3102803, N'Andrelândia', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2275, 3102852, N'Angelândia', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2276, 3102902, N'Antônio Carlos', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2277, 3103009, N'Antônio Dias', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2278, 3103108, N'Antônio Prado de Minas', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2279, 3103207, N'Araçaí', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2280, 3103306, N'Aracitaba', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2281, 3103405, N'Araçuaí', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2282, 3103504, N'Araguari', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2283, 3103603, N'Arantina', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2284, 3103702, N'Araponga', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2285, 3103751, N'Araporã', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2286, 3103801, N'Arapuá', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2287, 3103900, N'Araújos', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2288, 3104007, N'Araxá', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2289, 3104106, N'Arceburgo', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2290, 3104205, N'Arcos', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2291, 3104304, N'Areado', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2292, 3104403, N'Argirita', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2293, 3104452, N'Aricanduva', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2294, 3104502, N'Arinos', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2295, 3104601, N'Astolfo Dutra', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2296, 3104700, N'Ataléia', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2297, 3104809, N'Augusto de Lima', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2298, 3104908, N'Baependi', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2299, 3105004, N'Baldim', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2300, 3105103, N'Bambuí', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2301, 3105202, N'Bandeira', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2302, 3105301, N'Bandeira do Sul', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2303, 3105400, N'Barão de Cocais', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2304, 3105509, N'Barão de Monte Alto', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2305, 3105608, N'Barbacena', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2306, 3105707, N'Barra Longa', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2307, 3105905, N'Barroso', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2308, 3106002, N'Bela Vista de Minas', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2309, 3106101, N'Belmiro Braga', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2310, 3106200, N'Belo Horizonte', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2311, 3106309, N'Belo Oriente', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2312, 3106408, N'Belo Vale', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2313, 3106507, N'Berilo', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2314, 3106606, N'Bertópolis', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2315, 3106655, N'Berizal', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2316, 3106705, N'Betim', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2317, 3106804, N'Bias Fortes', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2318, 3106903, N'Bicas', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2319, 3107000, N'Biquinhas', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2320, 3107109, N'Boa Esperança', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2321, 3107208, N'Bocaina de Minas', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2322, 3107307, N'Bocaiúva', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2323, 3107406, N'Bom Despacho', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2324, 3107505, N'Bom Jardim de Minas', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2325, 3107604, N'Bom Jesus da Penha', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2326, 3107703, N'Bom Jesus do Amparo', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2327, 3107802, N'Bom Jesus do Galho', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2328, 3107901, N'Bom Repouso', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2329, 3108008, N'Bom Sucesso', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2330, 3108107, N'Bonfim', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2331, 3108206, N'Bonfinópolis de Minas', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2332, 3108255, N'Bonito de Minas', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2333, 3108305, N'Borda da Mata', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2334, 3108404, N'Botelhos', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2335, 3108503, N'Botumirim', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2336, 3108552, N'Brasilândia de Minas', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2337, 3108602, N'Brasília de Minas', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2338, 3108701, N'Brás Pires', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2339, 3108800, N'Braúnas', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2340, 3108909, N'Brasópolis', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2341, 3109006, N'Brumadinho', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2342, 3109105, N'Bueno Brandão', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2343, 3109204, N'Buenópolis', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2344, 3109253, N'Bugre', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2345, 3109303, N'Buritis', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2346, 3109402, N'Buritizeiro', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2347, 3109451, N'Cabeceira Grande', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2348, 3109501, N'Cabo Verde', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2349, 3109600, N'Cachoeira da Prata', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2350, 3109709, N'Cachoeira de Minas', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2351, 3109808, N'Cachoeira Dourada', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2352, 3109907, N'Caetanópolis', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2353, 3110004, N'Caeté', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2354, 3110103, N'Caiana', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2355, 3110202, N'Cajuri', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2356, 3110301, N'Caldas', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2357, 3110400, N'Camacho', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2358, 3110509, N'Camanducaia', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2359, 3110608, N'Cambuí', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2360, 3110707, N'Cambuquira', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2361, 3110806, N'Campanário', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2362, 3110905, N'Campanha', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2363, 3111002, N'Campestre', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2364, 3111101, N'Campina Verde', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2365, 3111150, N'Campo Azul', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2366, 3111200, N'Campo Belo', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2367, 3111309, N'Campo do Meio', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2368, 3111408, N'Campo Florido', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2369, 3111507, N'Campos Altos', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2370, 3111606, N'Campos Gerais', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2371, 3111705, N'Canaã', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2372, 3111804, N'Canápolis', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2373, 3111903, N'Cana Verde', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2374, 3112000, N'Candeias', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2375, 3112059, N'Cantagalo', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2376, 3112109, N'Caparaó', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2377, 3112208, N'Capela Nova', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2378, 3112307, N'Capelinha', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2379, 3112406, N'Capetinga', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2380, 3112505, N'Capim Branco', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2381, 3112604, N'Capinópolis', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2382, 3112653, N'Capitão Andrade', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2383, 3112703, N'Capitão Enéas', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2384, 3112802, N'Capitólio', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2385, 3112901, N'Caputira', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2386, 3113008, N'Caraí', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2387, 3113107, N'Caranaíba', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2388, 3113206, N'Carandaí', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2389, 3113305, N'Carangola', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2390, 3113404, N'Caratinga', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2391, 3113503, N'Carbonita', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2392, 3113602, N'Careaçu', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2393, 3113701, N'Carlos Chagas', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2394, 3113800, N'Carmésia', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2395, 3113909, N'Carmo da Cachoeira', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2396, 3114006, N'Carmo da Mata', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2397, 3114105, N'Carmo de Minas', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2398, 3114204, N'Carmo do Cajuru', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2399, 3114303, N'Carmo do Paranaíba', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2400, 3114402, N'Carmo do Rio Claro', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2401, 3114501, N'Carmópolis de Minas', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2402, 3114550, N'Carneirinho', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2403, 3114600, N'Carrancas', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2404, 3114709, N'Carvalhópolis', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2405, 3114808, N'Carvalhos', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2406, 3114907, N'Casa Grande', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2407, 3115003, N'Cascalho Rico', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2408, 3115102, N'Cássia', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2409, 3115201, N'Conceição da Barra de Minas', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2410, 3115300, N'Cataguases', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2411, 3115359, N'Catas Altas', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2412, 3115409, N'Catas Altas da Noruega', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2413, 3115458, N'Catuji', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2414, 3115474, N'Catuti', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2415, 3115508, N'Caxambu', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2416, 3115607, N'Cedro do Abaeté', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2417, 3115706, N'Central de Minas', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2418, 3115805, N'Centralina', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2419, 3115904, N'Chácara', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2420, 3116001, N'Chalé', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2421, 3116100, N'Chapada do Norte', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2422, 3116159, N'Chapada Gaúcha', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2423, 3116209, N'Chiador', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2424, 3116308, N'Cipotânea', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2425, 3116407, N'Claraval', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2426, 3116506, N'Claro Dos Poções', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2427, 3116605, N'Cláudio', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2428, 3116704, N'Coimbra', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2429, 3116803, N'Coluna', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2430, 3116902, N'Comendador Gomes', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2431, 3117009, N'Comercinho', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2432, 3117108, N'Conceição da Aparecida', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2433, 3117207, N'Conceição Das Pedras', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2434, 3117306, N'Conceição Das Alagoas', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2435, 3117405, N'Conceição de Ipanema', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2436, 3117504, N'Conceição do Mato Dentro', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2437, 3117603, N'Conceição do Pará', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2438, 3117702, N'Conceição do Rio Verde', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2439, 3117801, N'Conceição Dos Ouros', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2440, 3117836, N'Cônego Marinho', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2441, 3117876, N'Confins', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2442, 3117900, N'Congonhal', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2443, 3118007, N'Congonhas', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2444, 3118106, N'Congonhas do Norte', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2445, 3118205, N'Conquista', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2446, 3118304, N'Conselheiro Lafaiete', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2447, 3118403, N'Conselheiro Pena', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2448, 3118502, N'Consolação', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2449, 3118601, N'Contagem', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2450, 3118700, N'Coqueiral', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2451, 3118809, N'Coração de Jesus', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2452, 3118908, N'Cordisburgo', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2453, 3119005, N'Cordislândia', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2454, 3119104, N'Corinto', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2455, 3119203, N'Coroaci', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2456, 3119302, N'Coromandel', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2457, 3119401, N'Coronel Fabriciano', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2458, 3119500, N'Coronel Murta', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2459, 3119609, N'Coronel Pacheco', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2460, 3119708, N'Coronel Xavier Chaves', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2461, 3119807, N'Córrego Danta', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2462, 3119906, N'Córrego do Bom Jesus', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2463, 3119955, N'Córrego Fundo', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2464, 3120003, N'Córrego Novo', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2465, 3120102, N'Couto de Magalhães de Minas', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2466, 3120151, N'Crisólita', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2467, 3120201, N'Cristais', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2468, 3120300, N'Cristália', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2469, 3120409, N'Cristiano Otoni', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2470, 3120508, N'Cristina', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2471, 3120607, N'Crucilândia', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2472, 3120706, N'Cruzeiro da Fortaleza', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2473, 3120805, N'Cruzília', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2474, 3120839, N'Cuparaque', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2475, 3120870, N'Curral de Dentro', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2476, 3120904, N'Curvelo', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2477, 3121001, N'Datas', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2478, 3121100, N'Delfim Moreira', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2479, 3121209, N'Delfinópolis', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2480, 3121258, N'Delta', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2481, 3121308, N'Descoberto', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2482, 3121407, N'Desterro de Entre Rios', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2483, 3121506, N'Desterro do Melo', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2484, 3121605, N'Diamantina', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2485, 3121704, N'Diogo de Vasconcelos', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2486, 3121803, N'Dionísio', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2487, 3121902, N'Divinésia', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2488, 3122009, N'Divino', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2489, 3122108, N'Divino Das Laranjeiras', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2490, 3122207, N'Divinolândia de Minas', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2491, 3122306, N'Divinópolis', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2492, 3122355, N'Divisa Alegre', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2493, 3122405, N'Divisa Nova', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2494, 3122454, N'Divisópolis', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2495, 3122470, N'Dom Bosco', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2496, 3122504, N'Dom Cavati', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2497, 3122603, N'Dom Joaquim', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2498, 3122702, N'Dom Silvério', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2499, 3122801, N'Dom Viçoso', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2500, 3122900, N'Dona Eusébia', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2501, 3123007, N'Dores de Campos', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2502, 3123106, N'Dores de Guanhães', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2503, 3123205, N'Dores do Indaiá', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2504, 3123304, N'Dores do Turvo', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2505, 3123403, N'Doresópolis', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2506, 3123502, N'Douradoquara', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2507, 3123528, N'Durandé', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2508, 3123601, N'Elói Mendes', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2509, 3123700, N'Engenheiro Caldas', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2510, 3123809, N'Engenheiro Navarro', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2511, 3123858, N'Entre Folhas', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2512, 3123908, N'Entre Rios de Minas', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2513, 3124005, N'Ervália', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2514, 3124104, N'Esmeraldas', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2515, 3124203, N'Espera Feliz', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2516, 3124302, N'Espinosa', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2517, 3124401, N'Espírito Santo do Dourado', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2518, 3124500, N'Estiva', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2519, 3124609, N'Estrela Dalva', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2520, 3124708, N'Estrela do Indaiá', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2521, 3124807, N'Estrela do Sul', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2522, 3124906, N'Eugenópolis', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2523, 3125002, N'Ewbank da Câmara', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2524, 3125101, N'Extrema', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2525, 3125200, N'Fama', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2526, 3125309, N'Faria Lemos', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2527, 3125408, N'Felício Dos Santos', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2528, 3125507, N'São Gonçalo do Rio Preto', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2529, 3125606, N'Felisburgo', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2530, 3125705, N'Felixlândia', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2531, 3125804, N'Fernandes Tourinho', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2532, 3125903, N'Ferros', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2533, 3125952, N'Fervedouro', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2534, 3126000, N'Florestal', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2535, 3126109, N'Formiga', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2536, 3126208, N'Formoso', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2537, 3126307, N'Fortaleza de Minas', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2538, 3126406, N'Fortuna de Minas', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2539, 3126505, N'Francisco Badaró', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2540, 3126604, N'Francisco Dumont', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2541, 3126703, N'Francisco sá', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2542, 3126752, N'Franciscópolis', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2543, 3126802, N'Frei Gaspar', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2544, 3126901, N'Frei Inocêncio', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2545, 3126950, N'Frei Lagonegro', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2546, 3127008, N'Fronteira', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2547, 3127057, N'Fronteira Dos Vales', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2548, 3127073, N'Fruta de Leite', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2549, 3127107, N'Frutal', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2550, 3127206, N'Funilândia', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2551, 3127305, N'Galiléia', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2552, 3127339, N'Gameleiras', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2553, 3127354, N'Glaucilândia', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2554, 3127370, N'Goiabeira', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2555, 3127388, N'Goianá', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2556, 3127404, N'Gonçalves', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2557, 3127503, N'Gonzaga', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2558, 3127602, N'Gouveia', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2559, 3127701, N'Governador Valadares', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2560, 3127800, N'Grão Mogol', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2561, 3127909, N'Grupiara', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2562, 3128006, N'Guanhães', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2563, 3128105, N'Guapé', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2564, 3128204, N'Guaraciaba', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2565, 3128253, N'Guaraciama', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2566, 3128303, N'Guaranésia', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2567, 3128402, N'Guarani', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2568, 3128501, N'Guarará', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2569, 3128600, N'Guarda-mor', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2570, 3128709, N'Guaxupé', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2571, 3128808, N'Guidoval', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2572, 3128907, N'Guimarânia', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2573, 3129004, N'Guiricema', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2574, 3129103, N'Gurinhatã', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2575, 3129202, N'Heliodora', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2576, 3129301, N'Iapu', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2577, 3129400, N'Ibertioga', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2578, 3129509, N'Ibiá', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2579, 3129608, N'Ibiaí', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2580, 3129657, N'Ibiracatu', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2581, 3129707, N'Ibiraci', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2582, 3129806, N'Ibirité', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2583, 3129905, N'Ibitiúra de Minas', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2584, 3130002, N'Ibituruna', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2585, 3130051, N'Icaraí de Minas', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2586, 3130101, N'Igarapé', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2587, 3130200, N'Igaratinga', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2588, 3130309, N'Iguatama', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2589, 3130408, N'Ijaci', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2590, 3130507, N'Ilicínea', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2591, 3130556, N'Imbé de Minas', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2592, 3130606, N'Inconfidentes', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2593, 3130655, N'Indaiabira', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2594, 3130705, N'Indianópolis', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2595, 3130804, N'Ingaí', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2596, 3130903, N'Inhapim', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2597, 3131000, N'Inhaúma', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2598, 3131109, N'Inimutaba', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2599, 3131158, N'Ipaba', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2600, 3131208, N'Ipanema', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2601, 3131307, N'Ipatinga', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2602, 3131406, N'Ipiaçu', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2603, 3131505, N'Ipuiúna', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2604, 3131604, N'Iraí de Minas', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2605, 3131703, N'Itabira', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2606, 3131802, N'Itabirinha', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2607, 3131901, N'Itabirito', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2608, 3132008, N'Itacambira', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2609, 3132107, N'Itacarambi', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2610, 3132206, N'Itaguara', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2611, 3132305, N'Itaipé', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2612, 3132404, N'Itajubá', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2613, 3132503, N'Itamarandiba', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2614, 3132602, N'Itamarati de Minas', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2615, 3132701, N'Itambacuri', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2616, 3132800, N'Itambé do Mato Dentro', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2617, 3132909, N'Itamogi', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2618, 3133006, N'Itamonte', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2619, 3133105, N'Itanhandu', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2620, 3133204, N'Itanhomi', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2621, 3133303, N'Itaobim', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2622, 3133402, N'Itapagipe', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2623, 3133501, N'Itapecerica', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2624, 3133600, N'Itapeva', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2625, 3133709, N'Itatiaiuçu', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2626, 3133758, N'Itaú de Minas', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2627, 3133808, N'Itaúna', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2628, 3133907, N'Itaverava', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2629, 3134004, N'Itinga', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2630, 3134103, N'Itueta', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2631, 3134202, N'Ituiutaba', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2632, 3134301, N'Itumirim', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2633, 3134400, N'Iturama', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2634, 3134509, N'Itutinga', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2635, 3134608, N'Jaboticatubas', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2636, 3134707, N'Jacinto', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2637, 3134806, N'Jacuí', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2638, 3134905, N'Jacutinga', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2639, 3135001, N'Jaguaraçu', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2640, 3135050, N'Jaíba', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2641, 3135076, N'Jampruca', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2642, 3135100, N'Janaúba', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2643, 3135209, N'Januária', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2644, 3135308, N'Japaraíba', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2645, 3135357, N'Japonvar', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2646, 3135407, N'Jeceaba', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2647, 3135456, N'Jenipapo de Minas', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2648, 3135506, N'Jequeri', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2649, 3135605, N'Jequitaí', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2650, 3135704, N'Jequitibá', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2651, 3135803, N'Jequitinhonha', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2652, 3135902, N'Jesuânia', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2653, 3136009, N'Joaíma', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2654, 3136108, N'Joanésia', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2655, 3136207, N'João Monlevade', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2656, 3136306, N'João Pinheiro', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2657, 3136405, N'Joaquim Felício', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2658, 3136504, N'Jordânia', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2659, 3136520, N'José Gonçalves de Minas', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2660, 3136553, N'José Raydan', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2661, 3136579, N'Josenópolis', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2662, 3136603, N'Nova União', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2663, 3136652, N'Juatuba', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2664, 3136702, N'Juiz de Fora', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2665, 3136801, N'Juramento', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2666, 3136900, N'Juruaia', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2667, 3136959, N'Juvenília', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2668, 3137007, N'Ladainha', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2669, 3137106, N'Lagamar', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2670, 3137205, N'Lagoa da Prata', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2671, 3137304, N'Lagoa Dos Patos', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2672, 3137403, N'Lagoa Dourada', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2673, 3137502, N'Lagoa Formosa', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2674, 3137536, N'Lagoa Grande', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2675, 3137601, N'Lagoa Santa', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2676, 3137700, N'Lajinha', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2677, 3137809, N'Lambari', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2678, 3137908, N'Lamim', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2679, 3138005, N'Laranjal', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2680, 3138104, N'Lassance', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2681, 3138203, N'Lavras', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2682, 3138302, N'Leandro Ferreira', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2683, 3138351, N'Leme do Prado', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2684, 3138401, N'Leopoldina', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2685, 3138500, N'Liberdade', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2686, 3138609, N'Lima Duarte', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2687, 3138625, N'Limeira do Oeste', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2688, 3138658, N'Lontra', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2689, 3138674, N'Luisburgo', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2690, 3138682, N'Luislândia', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2691, 3138708, N'Luminárias', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2692, 3138807, N'Luz', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2693, 3138906, N'Machacalis', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2694, 3139003, N'Machado', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2695, 3139102, N'Madre de Deus de Minas', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2696, 3139201, N'Malacacheta', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2697, 3139250, N'Mamonas', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2698, 3139300, N'Manga', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2699, 3139409, N'Manhuaçu', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2700, 3139508, N'Manhumirim', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2701, 3139607, N'Mantena', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2702, 3139706, N'Maravilhas', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2703, 3139805, N'Mar de Espanha', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2704, 3139904, N'Maria da fé', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2705, 3140001, N'Mariana', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2706, 3140100, N'Marilac', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2707, 3140159, N'Mário Campos', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2708, 3140209, N'Maripá de Minas', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2709, 3140308, N'Marliéria', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2710, 3140407, N'Marmelópolis', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2711, 3140506, N'Martinho Campos', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2712, 3140530, N'Martins Soares', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2713, 3140555, N'Mata Verde', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2714, 3140605, N'Materlândia', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2715, 3140704, N'Mateus Leme', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2716, 3140803, N'Matias Barbosa', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2717, 3140852, N'Matias Cardoso', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2718, 3140902, N'Matipó', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2719, 3141009, N'Mato Verde', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2720, 3141108, N'Matozinhos', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2721, 3141207, N'Matutina', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2722, 3141306, N'Medeiros', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2723, 3141405, N'Medina', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2724, 3141504, N'Mendes Pimentel', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2725, 3141603, N'Mercês', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2726, 3141702, N'Mesquita', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2727, 3141801, N'Minas Novas', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2728, 3141900, N'Minduri', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2729, 3142007, N'Mirabela', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2730, 3142106, N'Miradouro', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2731, 3142205, N'Miraí', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2732, 3142254, N'Miravânia', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2733, 3142304, N'Moeda', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2734, 3142403, N'Moema', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2735, 3142502, N'Monjolos', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2736, 3142601, N'Monsenhor Paulo', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2737, 3142700, N'Montalvânia', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2738, 3142809, N'Monte Alegre de Minas', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2739, 3142908, N'Monte Azul', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2740, 3143005, N'Monte Belo', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2741, 3143104, N'Monte Carmelo', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2742, 3143153, N'Monte Formoso', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2743, 3143203, N'Monte Santo de Minas', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2744, 3143302, N'Montes Claros', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2745, 3143401, N'Monte Sião', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2746, 3143450, N'Montezuma', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2747, 3143500, N'Morada Nova de Minas', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2748, 3143609, N'Morro da Garça', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2749, 3143708, N'Morro do Pilar', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2750, 3143807, N'Munhoz', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2751, 3143906, N'Muriaé', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2752, 3144003, N'Mutum', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2753, 3144102, N'Muzambinho', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2754, 3144201, N'Nacip Raydan', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2755, 3144300, N'Nanuque', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2756, 3144359, N'Naque', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2757, 3144375, N'Natalândia', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2758, 3144409, N'Natércia', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2759, 3144508, N'Nazareno', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2760, 3144607, N'Nepomuceno', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2761, 3144656, N'Ninheira', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2762, 3144672, N'Nova Belém', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2763, 3144706, N'Nova Era', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2764, 3144805, N'Nova Lima', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2765, 3144904, N'Nova Módica', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2766, 3145000, N'Nova Ponte', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2767, 3145059, N'Nova Porteirinha', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2768, 3145109, N'Nova Resende', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2769, 3145208, N'Nova Serrana', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2770, 3145307, N'Novo Cruzeiro', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2771, 3145356, N'Novo Oriente de Minas', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2772, 3145372, N'Novorizonte', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2773, 3145406, N'Olaria', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2774, 3145455, N'Olhos-d´água', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2775, 3145505, N'Olímpio Noronha', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2776, 3145604, N'Oliveira', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2777, 3145703, N'Oliveira Fortes', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2778, 3145802, N'Onça de Pitangui', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2779, 3145851, N'Oratórios', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2780, 3145877, N'Orizânia', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2781, 3145901, N'Ouro Branco', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2782, 3146008, N'Ouro Fino', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2783, 3146107, N'Ouro Preto', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2784, 3146206, N'Ouro Verde de Minas', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2785, 3146255, N'Padre Carvalho', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2786, 3146305, N'Padre Paraíso', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2787, 3146404, N'Paineiras', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2788, 3146503, N'Pains', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2789, 3146552, N'Pai Pedro', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2790, 3146602, N'Paiva', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2791, 3146701, N'Palma', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2792, 3146750, N'Palmópolis', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2793, 3146909, N'Papagaios', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2794, 3147006, N'Paracatu', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2795, 3147105, N'Pará de Minas', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2796, 3147204, N'Paraguaçu', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2797, 3147303, N'Paraisópolis', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2798, 3147402, N'Paraopeba', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2799, 3147501, N'Passabém', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2800, 3147600, N'Passa Quatro', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2801, 3147709, N'Passa Tempo', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2802, 3147808, N'Passa-vinte', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2803, 3147907, N'Passos', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2804, 3147956, N'Patis', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2805, 3148004, N'Patos de Minas', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2806, 3148103, N'Patrocínio', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2807, 3148202, N'Patrocínio do Muriaé', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2808, 3148301, N'Paula Cândido', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2809, 3148400, N'Paulistas', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2810, 3148509, N'Pavão', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2811, 3148608, N'Peçanha', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2812, 3148707, N'Pedra Azul', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2813, 3148756, N'Pedra Bonita', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2814, 3148806, N'Pedra do Anta', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2815, 3148905, N'Pedra do Indaiá', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2816, 3149002, N'Pedra Dourada', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2817, 3149101, N'Pedralva', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2818, 3149150, N'Pedras de Maria da Cruz', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2819, 3149200, N'Pedrinópolis', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2820, 3149309, N'Pedro Leopoldo', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2821, 3149408, N'Pedro Teixeira', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2822, 3149507, N'Pequeri', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2823, 3149606, N'Pequi', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2824, 3149705, N'Perdigão', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2825, 3149804, N'Perdizes', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2826, 3149903, N'Perdões', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2827, 3149952, N'Periquito', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2828, 3150000, N'Pescador', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2829, 3150109, N'Piau', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2830, 3150158, N'Piedade de Caratinga', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2831, 3150208, N'Piedade de Ponte Nova', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2832, 3150307, N'Piedade do Rio Grande', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2833, 3150406, N'Piedade Dos Gerais', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2834, 3150505, N'Pimenta', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2835, 3150539, N'Pingo-d´água', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2836, 3150570, N'Pintópolis', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2837, 3150604, N'Piracema', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2838, 3150703, N'Pirajuba', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2839, 3150802, N'Piranga', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2840, 3150901, N'Piranguçu', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2841, 3151008, N'Piranguinho', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2842, 3151107, N'Pirapetinga', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2843, 3151206, N'Pirapora', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2844, 3151305, N'Piraúba', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2845, 3151404, N'Pitangui', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2846, 3151503, N'Piumhi', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2847, 3151602, N'Planura', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2848, 3151701, N'Poço Fundo', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2849, 3151800, N'Poços de Caldas', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2850, 3151909, N'Pocrane', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2851, 3152006, N'Pompéu', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2852, 3152105, N'Ponte Nova', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2853, 3152131, N'Ponto Chique', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2854, 3152170, N'Ponto Dos Volantes', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2855, 3152204, N'Porteirinha', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2856, 3152303, N'Porto Firme', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2857, 3152402, N'Poté', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2858, 3152501, N'Pouso Alegre', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2859, 3152600, N'Pouso Alto', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2860, 3152709, N'Prados', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2861, 3152808, N'Prata', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2862, 3152907, N'Pratápolis', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2863, 3153004, N'Pratinha', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2864, 3153103, N'Presidente Bernardes', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2865, 3153202, N'Presidente Juscelino', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2866, 3153301, N'Presidente Kubitschek', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2867, 3153400, N'Presidente Olegário', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2868, 3153509, N'Alto Jequitibá', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2869, 3153608, N'Prudente de Morais', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2870, 3153707, N'Quartel Geral', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2871, 3153806, N'Queluzito', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2872, 3153905, N'Raposos', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2873, 3154002, N'Raul Soares', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2874, 3154101, N'Recreio', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2875, 3154150, N'Reduto', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2876, 3154200, N'Resende Costa', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2877, 3154309, N'Resplendor', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2878, 3154408, N'Ressaquinha', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2879, 3154457, N'Riachinho', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2880, 3154507, N'Riacho Dos Machados', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2881, 3154606, N'Ribeirão Das Neves', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2882, 3154705, N'Ribeirão Vermelho', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2883, 3154804, N'Rio Acima', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2884, 3154903, N'Rio Casca', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2885, 3155009, N'Rio Doce', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2886, 3155108, N'Rio do Prado', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2887, 3155207, N'Rio Espera', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2888, 3155306, N'Rio Manso', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2889, 3155405, N'Rio Novo', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2890, 3155504, N'Rio Paranaíba', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2891, 3155603, N'Rio Pardo de Minas', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2892, 3155702, N'Rio Piracicaba', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2893, 3155801, N'Rio Pomba', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2894, 3155900, N'Rio Preto', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2895, 3156007, N'Rio Vermelho', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2896, 3156106, N'Ritápolis', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2897, 3156205, N'Rochedo de Minas', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2898, 3156304, N'Rodeiro', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2899, 3156403, N'Romaria', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2900, 3156452, N'Rosário da Limeira', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2901, 3156502, N'Rubelita', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2902, 3156601, N'Rubim', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2903, 3156700, N'Sabará', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2904, 3156809, N'Sabinópolis', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2905, 3156908, N'Sacramento', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2906, 3157005, N'Salinas', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2907, 3157104, N'Salto da Divisa', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2908, 3157203, N'Santa Bárbara', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2909, 3157252, N'Santa Bárbara do Leste', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2910, 3157278, N'Santa Bárbara do Monte Verde', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2911, 3157302, N'Santa Bárbara do Tugúrio', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2912, 3157336, N'Santa Cruz de Minas', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2913, 3157377, N'Santa Cruz de Salinas', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2914, 3157401, N'Santa Cruz do Escalvado', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2915, 3157500, N'Santa Efigênia de Minas', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2916, 3157609, N'Santa fé de Minas', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2917, 3157658, N'Santa Helena de Minas', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2918, 3157708, N'Santa Juliana', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2919, 3157807, N'Santa Luzia', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2920, 3157906, N'Santa Margarida', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2921, 3158003, N'Santa Maria de Itabira', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2922, 3158102, N'Santa Maria do Salto', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2923, 3158201, N'Santa Maria do Suaçuí', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2924, 3158300, N'Santana da Vargem', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2925, 3158409, N'Santana de Cataguases', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2926, 3158508, N'Santana de Pirapama', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2927, 3158607, N'Santana do Deserto', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2928, 3158706, N'Santana do Garambéu', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2929, 3158805, N'Santana do Jacaré', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2930, 3158904, N'Santana do Manhuaçu', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2931, 3158953, N'Santana do Paraíso', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2932, 3159001, N'Santana do Riacho', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2933, 3159100, N'Santana Dos Montes', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2934, 3159209, N'Santa Rita de Caldas', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2935, 3159308, N'Santa Rita de Jacutinga', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2936, 3159357, N'Santa Rita de Minas', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2937, 3159407, N'Santa Rita de Ibitipoca', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2938, 3159506, N'Santa Rita do Itueto', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2939, 3159605, N'Santa Rita do Sapucaí', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2940, 3159704, N'Santa Rosa da Serra', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2941, 3159803, N'Santa Vitória', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2942, 3159902, N'Santo Antônio do Amparo', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2943, 3160009, N'Santo Antônio do Aventureiro', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2944, 3160108, N'Santo Antônio do Grama', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2945, 3160207, N'Santo Antônio do Itambé', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2946, 3160306, N'Santo Antônio do Jacinto', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2947, 3160405, N'Santo Antônio do Monte', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2948, 3160454, N'Santo Antônio do Retiro', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2949, 3160504, N'Santo Antônio do Rio Abaixo', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2950, 3160603, N'Santo Hipólito', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2951, 3160702, N'Santos Dumont', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2952, 3160801, N'São Bento Abade', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2953, 3160900, N'São Brás do Suaçuí', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2954, 3160959, N'São Domingos Das Dores', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2955, 3161007, N'São Domingos do Prata', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2956, 3161056, N'São Félix de Minas', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2957, 3161106, N'São Francisco', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2958, 3161205, N'São Francisco de Paula', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2959, 3161304, N'São Francisco de Sales', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2960, 3161403, N'São Francisco do Glória', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2961, 3161502, N'São Geraldo', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2962, 3161601, N'São Geraldo da Piedade', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2963, 3161650, N'São Geraldo do Baixio', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2964, 3161700, N'São Gonçalo do Abaeté', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2965, 3161809, N'São Gonçalo do Pará', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2966, 3161908, N'São Gonçalo do Rio Abaixo', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2967, 3162005, N'São Gonçalo do Sapucaí', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2968, 3162104, N'São Gotardo', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2969, 3162203, N'São João Batista do Glória', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2970, 3162252, N'São João da Lagoa', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2971, 3162302, N'São João da Mata', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2972, 3162401, N'São João da Ponte', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2973, 3162450, N'São João Das Missões', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2974, 3162500, N'São João Del Rei', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2975, 3162559, N'São João do Manhuaçu', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2976, 3162575, N'São João do Manteninha', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2977, 3162609, N'São João do Oriente', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2978, 3162658, N'São João do Pacuí', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2979, 3162708, N'São João do Paraíso', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2980, 3162807, N'São João Evangelista', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2981, 3162906, N'São João Nepomuceno', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2982, 3162922, N'São Joaquim de Bicas', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2983, 3162948, N'São José da Barra', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2984, 3162955, N'São José da Lapa', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2985, 3163003, N'São José da Safira', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2986, 3163102, N'São José da Varginha', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2987, 3163201, N'São José do Alegre', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2988, 3163300, N'São José do Divino', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2989, 3163409, N'São José do Goiabal', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2990, 3163508, N'São José do Jacuri', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2991, 3163607, N'São José do Mantimento', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2992, 3163706, N'São Lourenço', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2993, 3163805, N'São Miguel do Anta', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2994, 3163904, N'São Pedro da União', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2995, 3164001, N'São Pedro Dos Ferros', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2996, 3164100, N'São Pedro do Suaçuí', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2997, 3164209, N'São Romão', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2998, 3164308, N'São Roque de Minas', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (2999, 3164407, N'São Sebastião da Bela Vista', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3000, 3164431, N'São Sebastião da Vargem Alegre', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3001, 3164472, N'São Sebastião do Anta', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3002, 3164506, N'São Sebastião do Maranhão', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3003, 3164605, N'São Sebastião do Oeste', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3004, 3164704, N'São Sebastião do Paraíso', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3005, 3164803, N'São Sebastião do Rio Preto', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3006, 3164902, N'São Sebastião do Rio Verde', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3007, 3165008, N'São Tiago', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3008, 3165107, N'São Tomás de Aquino', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3009, 3165206, N'São Thomé Das Letras', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3010, 3165305, N'São Vicente de Minas', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3011, 3165404, N'Sapucaí-mirim', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3012, 3165503, N'Sardoá', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3013, 3165537, N'Sarzedo', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3014, 3165552, N'Setubinha', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3015, 3165560, N'Sem-peixe', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3016, 3165578, N'Senador Amaral', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3017, 3165602, N'Senador Cortes', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3018, 3165701, N'Senador Firmino', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3019, 3165800, N'Senador José Bento', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3020, 3165909, N'Senador Modestino Gonçalves', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3021, 3166006, N'Senhora de Oliveira', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3022, 3166105, N'Senhora do Porto', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3023, 3166204, N'Senhora Dos Remédios', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3024, 3166303, N'Sericita', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3025, 3166402, N'Seritinga', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3026, 3166501, N'Serra Azul de Minas', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3027, 3166600, N'Serra da Saudade', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3028, 3166709, N'Serra Dos Aimorés', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3029, 3166808, N'Serra do Salitre', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3030, 3166907, N'Serrania', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3031, 3166956, N'Serranópolis de Minas', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3032, 3167004, N'Serranos', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3033, 3167103, N'Serro', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3034, 3167202, N'Sete Lagoas', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3035, 3167301, N'Silveirânia', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3036, 3167400, N'Silvianópolis', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3037, 3167509, N'Simão Pereira', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3038, 3167608, N'Simonésia', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3039, 3167707, N'Sobrália', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3040, 3167806, N'Soledade de Minas', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3041, 3167905, N'Tabuleiro', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3042, 3168002, N'Taiobeiras', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3043, 3168051, N'Taparuba', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3044, 3168101, N'Tapira', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3045, 3168200, N'Tapiraí', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3046, 3168309, N'Taquaraçu de Minas', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3047, 3168408, N'Tarumirim', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3048, 3168507, N'Teixeiras', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3049, 3168606, N'Teófilo Otoni', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3050, 3168705, N'Timóteo', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3051, 3168804, N'Tiradentes', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3052, 3168903, N'Tiros', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3053, 3169000, N'Tocantins', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3054, 3169059, N'Tocos do Moji', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3055, 3169109, N'Toledo', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3056, 3169208, N'Tombos', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3057, 3169307, N'Três Corações', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3058, 3169356, N'Três Marias', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3059, 3169406, N'Três Pontas', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3060, 3169505, N'Tumiritinga', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3061, 3169604, N'Tupaciguara', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3062, 3169703, N'Turmalina', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3063, 3169802, N'Turvolândia', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3064, 3169901, N'Ubá', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3065, 3170008, N'Ubaí', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3066, 3170057, N'Ubaporanga', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3067, 3170107, N'Uberaba', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3068, 3170206, N'Uberlândia', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3069, 3170305, N'Umburatiba', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3070, 3170404, N'Unaí', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3071, 3170438, N'União de Minas', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3072, 3170479, N'Uruana de Minas', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3073, 3170503, N'Urucânia', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3074, 3170529, N'Urucuia', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3075, 3170578, N'Vargem Alegre', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3076, 3170602, N'Vargem Bonita', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3077, 3170651, N'Vargem Grande do Rio Pardo', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3078, 3170701, N'Varginha', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3079, 3170750, N'Varjão de Minas', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3080, 3170800, N'Várzea da Palma', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3081, 3170909, N'Varzelândia', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3082, 3171006, N'Vazante', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3083, 3171030, N'Verdelândia', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3084, 3171071, N'Veredinha', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3085, 3171105, N'Veríssimo', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3086, 3171154, N'Vermelho Novo', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3087, 3171204, N'Vespasiano', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3088, 3171303, N'Viçosa', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3089, 3171402, N'Vieiras', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3090, 3171501, N'Mathias Lobato', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3091, 3171600, N'Virgem da Lapa', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3092, 3171709, N'Virgínia', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3093, 3171808, N'Virginópolis', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3094, 3171907, N'Virgolândia', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3095, 3172004, N'Visconde do Rio Branco', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3096, 3172103, N'Volta Grande', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3097, 3172202, N'Wenceslau Braz', 11)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3098, 3200102, N'Afonso Cláudio', 8)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3099, 3200136, N'Águia Branca', 8)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3100, 3200169, N'Água Doce do Norte', 8)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3101, 3200201, N'Alegre', 8)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3102, 3200300, N'Alfredo Chaves', 8)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3103, 3200359, N'Alto Rio Novo', 8)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3104, 3200409, N'Anchieta', 8)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3105, 3200508, N'Apiacá', 8)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3106, 3200607, N'Aracruz', 8)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3107, 3200706, N'Atilio Vivacqua', 8)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3108, 3200805, N'Baixo Guandu', 8)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3109, 3200904, N'Barra de São Francisco', 8)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3110, 3201001, N'Boa Esperança', 8)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3111, 3201100, N'Bom Jesus do Norte', 8)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3112, 3201159, N'Brejetuba', 8)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3113, 3201209, N'Cachoeiro de Itapemirim', 8)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3114, 3201308, N'Cariacica', 8)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3115, 3201407, N'Castelo', 8)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3116, 3201506, N'Colatina', 8)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3117, 3201605, N'Conceição da Barra', 8)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3118, 3201704, N'Conceição do Castelo', 8)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3119, 3201803, N'Divino de São Lourenço', 8)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3120, 3201902, N'Domingos Martins', 8)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3121, 3202009, N'Dores do Rio Preto', 8)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3122, 3202108, N'Ecoporanga', 8)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3123, 3202207, N'Fundão', 8)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3124, 3202256, N'Governador Lindenberg', 8)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3125, 3202306, N'Guaçuí', 8)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3126, 3202405, N'Guarapari', 8)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3127, 3202454, N'Ibatiba', 8)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3128, 3202504, N'Ibiraçu', 8)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3129, 3202553, N'Ibitirama', 8)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3130, 3202603, N'Iconha', 8)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3131, 3202652, N'Irupi', 8)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3132, 3202702, N'Itaguaçu', 8)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3133, 3202801, N'Itapemirim', 8)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3134, 3202900, N'Itarana', 8)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3135, 3203007, N'Iúna', 8)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3136, 3203056, N'Jaguaré', 8)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3137, 3203106, N'Jerônimo Monteiro', 8)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3138, 3203130, N'João Neiva', 8)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3139, 3203163, N'Laranja da Terra', 8)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3140, 3203205, N'Linhares', 8)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3141, 3203304, N'Mantenópolis', 8)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3142, 3203320, N'Marataízes', 8)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3143, 3203346, N'Marechal Floriano', 8)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3144, 3203353, N'Marilândia', 8)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3145, 3203403, N'Mimoso do Sul', 8)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3146, 3203502, N'Montanha', 8)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3147, 3203601, N'Mucurici', 8)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3148, 3203700, N'Muniz Freire', 8)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3149, 3203809, N'Muqui', 8)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3150, 3203908, N'Nova Venécia', 8)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3151, 3204005, N'Pancas', 8)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3152, 3204054, N'Pedro Canário', 8)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3153, 3204104, N'Pinheiros', 8)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3154, 3204203, N'Piúma', 8)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3155, 3204252, N'Ponto Belo', 8)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3156, 3204302, N'Presidente Kennedy', 8)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3157, 3204351, N'Rio Bananal', 8)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3158, 3204401, N'Rio Novo do Sul', 8)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3159, 3204500, N'Santa Leopoldina', 8)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3160, 3204559, N'Santa Maria de Jetibá', 8)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3161, 3204609, N'Santa Teresa', 8)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3162, 3204658, N'São Domingos do Norte', 8)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3163, 3204708, N'São Gabriel da Palha', 8)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3164, 3204807, N'São José do Calçado', 8)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3165, 3204906, N'São Mateus', 8)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3166, 3204955, N'São Roque do Canaã', 8)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3167, 3205002, N'Serra', 8)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3168, 3205010, N'Sooretama', 8)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3169, 3205036, N'Vargem Alta', 8)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3170, 3205069, N'Venda Nova do Imigrante', 8)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3171, 3205101, N'Viana', 8)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3172, 3205150, N'Vila Pavão', 8)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3173, 3205176, N'Vila Valério', 8)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3174, 3205200, N'Vila Velha', 8)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3175, 3205309, N'Vitória', 8)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3176, 3300100, N'Angra Dos Reis', 19)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3177, 3300159, N'Aperibé', 19)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3178, 3300209, N'Araruama', 19)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3179, 3300225, N'Areal', 19)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3180, 3300233, N'Armação Dos Búzios', 19)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3181, 3300258, N'Arraial do Cabo', 19)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3182, 3300308, N'Barra do Piraí', 19)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3183, 3300407, N'Barra Mansa', 19)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3184, 3300456, N'Belford Roxo', 19)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3185, 3300506, N'Bom Jardim', 19)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3186, 3300605, N'Bom Jesus do Itabapoana', 19)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3187, 3300704, N'Cabo Frio', 19)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3188, 3300803, N'Cachoeiras de Macacu', 19)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3189, 3300902, N'Cambuci', 19)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3190, 3300936, N'Carapebus', 19)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3191, 3300951, N'Comendador Levy Gasparian', 19)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3192, 3301009, N'Campos Dos Goytacazes', 19)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3193, 3301108, N'Cantagalo', 19)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3194, 3301157, N'Cardoso Moreira', 19)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3195, 3301207, N'Carmo', 19)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3196, 3301306, N'Casimiro de Abreu', 19)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3197, 3301405, N'Conceição de Macabu', 19)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3198, 3301504, N'Cordeiro', 19)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3199, 3301603, N'Duas Barras', 19)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3200, 3301702, N'Duque de Caxias', 19)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3201, 3301801, N'Engenheiro Paulo de Frontin', 19)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3202, 3301850, N'Guapimirim', 19)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3203, 3301876, N'Iguaba Grande', 19)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3204, 3301900, N'Itaboraí', 19)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3205, 3302007, N'Itaguaí', 19)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3206, 3302056, N'Italva', 19)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3207, 3302106, N'Itaocara', 19)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3208, 3302205, N'Itaperuna', 19)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3209, 3302254, N'Itatiaia', 19)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3210, 3302270, N'Japeri', 19)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3211, 3302304, N'Laje do Muriaé', 19)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3212, 3302403, N'Macaé', 19)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3213, 3302452, N'Macuco', 19)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3214, 3302502, N'Magé', 19)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3215, 3302601, N'Mangaratiba', 19)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3216, 3302700, N'Maricá', 19)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3217, 3302809, N'Mendes', 19)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3218, 3302858, N'Mesquita', 19)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3219, 3302908, N'Miguel Pereira', 19)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3220, 3303005, N'Miracema', 19)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3221, 3303104, N'Natividade', 19)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3222, 3303203, N'Nilópolis', 19)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3223, 3303302, N'Niterói', 19)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3224, 3303401, N'Nova Friburgo', 19)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3225, 3303500, N'Nova Iguaçu', 19)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3226, 3303609, N'Paracambi', 19)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3227, 3303708, N'Paraíba do Sul', 19)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3228, 3303807, N'Parati', 19)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3229, 3303856, N'Paty do Alferes', 19)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3230, 3303906, N'Petrópolis', 19)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3231, 3303955, N'Pinheiral', 19)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3232, 3304003, N'Piraí', 19)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3233, 3304102, N'Porciúncula', 19)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3234, 3304110, N'Porto Real', 19)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3235, 3304128, N'Quatis', 19)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3236, 3304144, N'Queimados', 19)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3237, 3304151, N'Quissamã', 19)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3238, 3304201, N'Resende', 19)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3239, 3304300, N'Rio Bonito', 19)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3240, 3304409, N'Rio Claro', 19)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3241, 3304508, N'Rio Das Flores', 19)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3242, 3304524, N'Rio Das Ostras', 19)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3243, 3304557, N'Rio de Janeiro', 19)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3244, 3304607, N'Santa Maria Madalena', 19)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3245, 3304706, N'Santo Antônio de Pádua', 19)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3246, 3304755, N'São Francisco de Itabapoana', 19)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3247, 3304805, N'São Fidélis', 19)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3248, 3304904, N'São Gonçalo', 19)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3249, 3305000, N'São João da Barra', 19)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3250, 3305109, N'São João de Meriti', 19)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3251, 3305133, N'São José de Ubá', 19)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3252, 3305158, N'São José do Vale do Rio Preto', 19)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3253, 3305208, N'São Pedro da Aldeia', 19)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3254, 3305307, N'São Sebastião do Alto', 19)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3255, 3305406, N'Sapucaia', 19)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3256, 3305505, N'Saquarema', 19)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3257, 3305554, N'Seropédica', 19)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3258, 3305604, N'Silva Jardim', 19)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3259, 3305703, N'Sumidouro', 19)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3260, 3305752, N'Tanguá', 19)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3261, 3305802, N'Teresópolis', 19)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3262, 3305901, N'Trajano de Morais', 19)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3263, 3306008, N'Três Rios', 19)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3264, 3306107, N'Valença', 19)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3265, 3306156, N'Varre-sai', 19)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3266, 3306206, N'Vassouras', 19)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3267, 3306305, N'Volta Redonda', 19)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3268, 3500105, N'Adamantina', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3269, 3500204, N'Adolfo', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3270, 3500303, N'Aguaí', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3271, 3500402, N'Águas da Prata', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3272, 3500501, N'Águas de Lindóia', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3273, 3500550, N'Águas de Santa Bárbara', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3274, 3500600, N'Águas de São Pedro', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3275, 3500709, N'Agudos', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3276, 3500758, N'Alambari', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3277, 3500808, N'Alfredo Marcondes', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3278, 3500907, N'Altair', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3279, 3501004, N'Altinópolis', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3280, 3501103, N'Alto Alegre', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3281, 3501152, N'Alumínio', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3282, 3501202, N'Álvares Florence', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3283, 3501301, N'Álvares Machado', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3284, 3501400, N'Álvaro de Carvalho', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3285, 3501509, N'Alvinlândia', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3286, 3501608, N'Americana', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3287, 3501707, N'Américo Brasiliense', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3288, 3501806, N'Américo de Campos', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3289, 3501905, N'Amparo', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3290, 3502002, N'Analândia', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3291, 3502101, N'Andradina', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3292, 3502200, N'Angatuba', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3293, 3502309, N'Anhembi', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3294, 3502408, N'Anhumas', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3295, 3502507, N'Aparecida', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3296, 3502606, N'Aparecida D´oeste', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3297, 3502705, N'Apiaí', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3298, 3502754, N'Araçariguama', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3299, 3502804, N'Araçatuba', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3300, 3502903, N'Araçoiaba da Serra', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3301, 3503000, N'Aramina', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3302, 3503109, N'Arandu', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3303, 3503158, N'Arapeí', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3304, 3503208, N'Araraquara', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3305, 3503307, N'Araras', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3306, 3503356, N'Arco-íris', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3307, 3503406, N'Arealva', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3308, 3503505, N'Areias', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3309, 3503604, N'Areiópolis', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3310, 3503703, N'Ariranha', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3311, 3503802, N'Artur Nogueira', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3312, 3503901, N'Arujá', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3313, 3503950, N'Aspásia', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3314, 3504008, N'Assis', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3315, 3504107, N'Atibaia', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3316, 3504206, N'Auriflama', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3317, 3504305, N'Avaí', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3318, 3504404, N'Avanhandava', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3319, 3504503, N'Avaré', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3320, 3504602, N'Bady Bassitt', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3321, 3504701, N'Balbinos', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3322, 3504800, N'Bálsamo', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3323, 3504909, N'Bananal', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3324, 3505005, N'Barão de Antonina', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3325, 3505104, N'Barbosa', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3326, 3505203, N'Bariri', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3327, 3505302, N'Barra Bonita', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3328, 3505351, N'Barra do Chapéu', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3329, 3505401, N'Barra do Turvo', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3330, 3505500, N'Barretos', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3331, 3505609, N'Barrinha', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3332, 3505708, N'Barueri', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3333, 3505807, N'Bastos', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3334, 3505906, N'Batatais', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3335, 3506003, N'Bauru', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3336, 3506102, N'Bebedouro', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3337, 3506201, N'Bento de Abreu', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3338, 3506300, N'Bernardino de Campos', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3339, 3506359, N'Bertioga', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3340, 3506409, N'Bilac', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3341, 3506508, N'Birigui', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3342, 3506607, N'Biritiba-mirim', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3343, 3506706, N'Boa Esperança do Sul', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3344, 3506805, N'Bocaina', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3345, 3506904, N'Bofete', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3346, 3507001, N'Boituva', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3347, 3507100, N'Bom Jesus Dos Perdões', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3348, 3507159, N'Bom Sucesso de Itararé', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3349, 3507209, N'Borá', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3350, 3507308, N'Boracéia', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3351, 3507407, N'Borborema', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3352, 3507456, N'Borebi', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3353, 3507506, N'Botucatu', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3354, 3507605, N'Bragança Paulista', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3355, 3507704, N'Braúna', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3356, 3507753, N'Brejo Alegre', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3357, 3507803, N'Brodowski', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3358, 3507902, N'Brotas', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3359, 3508009, N'Buri', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3360, 3508108, N'Buritama', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3361, 3508207, N'Buritizal', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3362, 3508306, N'Cabrália Paulista', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3363, 3508405, N'Cabreúva', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3364, 3508504, N'Caçapava', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3365, 3508603, N'Cachoeira Paulista', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3366, 3508702, N'Caconde', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3367, 3508801, N'Cafelândia', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3368, 3508900, N'Caiabu', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3369, 3509007, N'Caieiras', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3370, 3509106, N'Caiuá', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3371, 3509205, N'Cajamar', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3372, 3509254, N'Cajati', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3373, 3509304, N'Cajobi', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3374, 3509403, N'Cajuru', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3375, 3509452, N'Campina do Monte Alegre', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3376, 3509502, N'Campinas', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3377, 3509601, N'Campo Limpo Paulista', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3378, 3509700, N'Campos do Jordão', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3379, 3509809, N'Campos Novos Paulista', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3380, 3509908, N'Cananéia', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3381, 3509957, N'Canas', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3382, 3510005, N'Cândido Mota', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3383, 3510104, N'Cândido Rodrigues', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3384, 3510153, N'Canitar', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3385, 3510203, N'Capão Bonito', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3386, 3510302, N'Capela do Alto', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3387, 3510401, N'Capivari', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3388, 3510500, N'Caraguatatuba', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3389, 3510609, N'Carapicuíba', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3390, 3510708, N'Cardoso', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3391, 3510807, N'Casa Branca', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3392, 3510906, N'Cássia Dos Coqueiros', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3393, 3511003, N'Castilho', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3394, 3511102, N'Catanduva', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3395, 3511201, N'Catiguá', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3396, 3511300, N'Cedral', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3397, 3511409, N'Cerqueira César', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3398, 3511508, N'Cerquilho', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3399, 3511607, N'Cesário Lange', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3400, 3511706, N'Charqueada', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3401, 3511904, N'Clementina', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3402, 3512001, N'Colina', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3403, 3512100, N'Colômbia', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3404, 3512209, N'Conchal', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3405, 3512308, N'Conchas', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3406, 3512407, N'Cordeirópolis', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3407, 3512506, N'Coroados', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3408, 3512605, N'Coronel Macedo', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3409, 3512704, N'Corumbataí', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3410, 3512803, N'Cosmópolis', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3411, 3512902, N'Cosmorama', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3412, 3513009, N'Cotia', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3413, 3513108, N'Cravinhos', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3414, 3513207, N'Cristais Paulista', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3415, 3513306, N'Cruzália', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3416, 3513405, N'Cruzeiro', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3417, 3513504, N'Cubatão', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3418, 3513603, N'Cunha', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3419, 3513702, N'Descalvado', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3420, 3513801, N'Diadema', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3421, 3513850, N'Dirce Reis', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3422, 3513900, N'Divinolândia', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3423, 3514007, N'Dobrada', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3424, 3514106, N'Dois Córregos', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3425, 3514205, N'Dolcinópolis', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3426, 3514304, N'Dourado', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3427, 3514403, N'Dracena', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3428, 3514502, N'Duartina', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3429, 3514601, N'Dumont', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3430, 3514700, N'Echaporã', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3431, 3514809, N'Eldorado', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3432, 3514908, N'Elias Fausto', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3433, 3514924, N'Elisiário', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3434, 3514957, N'Embaúba', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3435, 3515004, N'Embu', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3436, 3515103, N'Embu-guaçu', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3437, 3515129, N'Emilianópolis', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3438, 3515152, N'Engenheiro Coelho', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3439, 3515186, N'Espírito Santo do Pinhal', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3440, 3515194, N'Espírito Santo do Turvo', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3441, 3515202, N'Estrela D´oeste', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3442, 3515301, N'Estrela do Norte', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3443, 3515350, N'Euclides da Cunha Paulista', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3444, 3515400, N'Fartura', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3445, 3515509, N'Fernandópolis', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3446, 3515608, N'Fernando Prestes', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3447, 3515657, N'Fernão', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3448, 3515707, N'Ferraz de Vasconcelos', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3449, 3515806, N'Flora Rica', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3450, 3515905, N'Floreal', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3451, 3516002, N'Flórida Paulista', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3452, 3516101, N'Florínia', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3453, 3516200, N'Franca', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3454, 3516309, N'Francisco Morato', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3455, 3516408, N'Franco da Rocha', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3456, 3516507, N'Gabriel Monteiro', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3457, 3516606, N'Gália', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3458, 3516705, N'Garça', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3459, 3516804, N'Gastão Vidigal', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3460, 3516853, N'Gavião Peixoto', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3461, 3516903, N'General Salgado', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3462, 3517000, N'Getulina', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3463, 3517109, N'Glicério', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3464, 3517208, N'Guaiçara', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3465, 3517307, N'Guaimbê', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3466, 3517406, N'Guaíra', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3467, 3517505, N'Guapiaçu', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3468, 3517604, N'Guapiara', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3469, 3517703, N'Guará', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3470, 3517802, N'Guaraçaí', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3471, 3517901, N'Guaraci', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3472, 3518008, N'Guarani D´oeste', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3473, 3518107, N'Guarantã', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3474, 3518206, N'Guararapes', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3475, 3518305, N'Guararema', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3476, 3518404, N'Guaratinguetá', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3477, 3518503, N'Guareí', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3478, 3518602, N'Guariba', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3479, 3518701, N'Guarujá', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3480, 3518800, N'Guarulhos', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3481, 3518859, N'Guatapará', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3482, 3518909, N'Guzolândia', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3483, 3519006, N'Herculândia', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3484, 3519055, N'Holambra', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3485, 3519071, N'Hortolândia', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3486, 3519105, N'Iacanga', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3487, 3519204, N'Iacri', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3488, 3519253, N'Iaras', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3489, 3519303, N'Ibaté', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3490, 3519402, N'Ibirá', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3491, 3519501, N'Ibirarema', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3492, 3519600, N'Ibitinga', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3493, 3519709, N'Ibiúna', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3494, 3519808, N'Icém', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3495, 3519907, N'Iepê', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3496, 3520004, N'Igaraçu do Tietê', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3497, 3520103, N'Igarapava', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3498, 3520202, N'Igaratá', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3499, 3520301, N'Iguape', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3500, 3520400, N'Ilhabela', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3501, 3520426, N'Ilha Comprida', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3502, 3520442, N'Ilha Solteira', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3503, 3520509, N'Indaiatuba', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3504, 3520608, N'Indiana', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3505, 3520707, N'Indiaporã', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3506, 3520806, N'Inúbia Paulista', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3507, 3520905, N'Ipaussu', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3508, 3521002, N'Iperó', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3509, 3521101, N'Ipeúna', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3510, 3521150, N'Ipiguá', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3511, 3521200, N'Iporanga', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3512, 3521309, N'Ipuã', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3513, 3521408, N'Iracemápolis', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3514, 3521507, N'Irapuã', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3515, 3521606, N'Irapuru', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3516, 3521705, N'Itaberá', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3517, 3521804, N'Itaí', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3518, 3521903, N'Itajobi', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3519, 3522000, N'Itaju', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3520, 3522109, N'Itanhaém', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3521, 3522158, N'Itaóca', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3522, 3522208, N'Itapecerica da Serra', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3523, 3522307, N'Itapetininga', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3524, 3522406, N'Itapeva', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3525, 3522505, N'Itapevi', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3526, 3522604, N'Itapira', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3527, 3522653, N'Itapirapuã Paulista', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3528, 3522703, N'Itápolis', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3529, 3522802, N'Itaporanga', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3530, 3522901, N'Itapuí', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3531, 3523008, N'Itapura', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3532, 3523107, N'Itaquaquecetuba', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3533, 3523206, N'Itararé', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3534, 3523305, N'Itariri', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3535, 3523404, N'Itatiba', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3536, 3523503, N'Itatinga', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3537, 3523602, N'Itirapina', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3538, 3523701, N'Itirapuã', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3539, 3523800, N'Itobi', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3540, 3523909, N'Itu', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3541, 3524006, N'Itupeva', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3542, 3524105, N'Ituverava', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3543, 3524204, N'Jaborandi', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3544, 3524303, N'Jaboticabal', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3545, 3524402, N'Jacareí', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3546, 3524501, N'Jaci', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3547, 3524600, N'Jacupiranga', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3548, 3524709, N'Jaguariúna', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3549, 3524808, N'Jales', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3550, 3524907, N'Jambeiro', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3551, 3525003, N'Jandira', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3552, 3525102, N'Jardinópolis', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3553, 3525201, N'Jarinu', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3554, 3525300, N'Jaú', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3555, 3525409, N'Jeriquara', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3556, 3525508, N'Joanópolis', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3557, 3525607, N'João Ramalho', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3558, 3525706, N'José Bonifácio', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3559, 3525805, N'Júlio Mesquita', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3560, 3525854, N'Jumirim', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3561, 3525904, N'Jundiaí', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3562, 3526001, N'Junqueirópolis', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3563, 3526100, N'Juquiá', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3564, 3526209, N'Juquitiba', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3565, 3526308, N'Lagoinha', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3566, 3526407, N'Laranjal Paulista', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3567, 3526506, N'Lavínia', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3568, 3526605, N'Lavrinhas', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3569, 3526704, N'Leme', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3570, 3526803, N'Lençóis Paulista', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3571, 3526902, N'Limeira', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3572, 3527009, N'Lindóia', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3573, 3527108, N'Lins', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3574, 3527207, N'Lorena', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3575, 3527256, N'Lourdes', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3576, 3527306, N'Louveira', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3577, 3527405, N'Lucélia', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3578, 3527504, N'Lucianópolis', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3579, 3527603, N'Luís Antônio', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3580, 3527702, N'Luiziânia', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3581, 3527801, N'Lupércio', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3582, 3527900, N'Lutécia', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3583, 3528007, N'Macatuba', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3584, 3528106, N'Macaubal', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3585, 3528205, N'Macedônia', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3586, 3528304, N'Magda', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3587, 3528403, N'Mairinque', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3588, 3528502, N'Mairiporã', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3589, 3528601, N'Manduri', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3590, 3528700, N'Marabá Paulista', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3591, 3528809, N'Maracaí', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3592, 3528858, N'Marapoama', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3593, 3528908, N'Mariápolis', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3594, 3529005, N'Marília', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3595, 3529104, N'Marinópolis', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3596, 3529203, N'Martinópolis', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3597, 3529302, N'Matão', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3598, 3529401, N'Mauá', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3599, 3529500, N'Mendonça', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3600, 3529609, N'Meridiano', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3601, 3529658, N'Mesópolis', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3602, 3529708, N'Miguelópolis', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3603, 3529807, N'Mineiros do Tietê', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3604, 3529906, N'Miracatu', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3605, 3530003, N'Mira Estrela', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3606, 3530102, N'Mirandópolis', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3607, 3530201, N'Mirante do Paranapanema', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3608, 3530300, N'Mirassol', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3609, 3530409, N'Mirassolândia', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3610, 3530508, N'Mococa', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3611, 3530607, N'Moji Das Cruzes', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3612, 3530706, N'Mogi Guaçu', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3613, 3530805, N'Moji-mirim', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3614, 3530904, N'Mombuca', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3615, 3531001, N'Monções', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3616, 3531100, N'Mongaguá', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3617, 3531209, N'Monte Alegre do Sul', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3618, 3531308, N'Monte Alto', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3619, 3531407, N'Monte Aprazível', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3620, 3531506, N'Monte Azul Paulista', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3621, 3531605, N'Monte Castelo', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3622, 3531704, N'Monteiro Lobato', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3623, 3531803, N'Monte Mor', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3624, 3531902, N'Morro Agudo', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3625, 3532009, N'Morungaba', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3626, 3532058, N'Motuca', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3627, 3532108, N'Murutinga do Sul', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3628, 3532157, N'Nantes', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3629, 3532207, N'Narandiba', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3630, 3532306, N'Natividade da Serra', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3631, 3532405, N'Nazaré Paulista', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3632, 3532504, N'Neves Paulista', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3633, 3532603, N'Nhandeara', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3634, 3532702, N'Nipoã', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3635, 3532801, N'Nova Aliança', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3636, 3532827, N'Nova Campina', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3637, 3532843, N'Nova Canaã Paulista', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3638, 3532868, N'Nova Castilho', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3639, 3532900, N'Nova Europa', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3640, 3533007, N'Nova Granada', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3641, 3533106, N'Nova Guataporanga', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3642, 3533205, N'Nova Independência', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3643, 3533254, N'Novais', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3644, 3533304, N'Nova Luzitânia', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3645, 3533403, N'Nova Odessa', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3646, 3533502, N'Novo Horizonte', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3647, 3533601, N'Nuporanga', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3648, 3533700, N'Ocauçu', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3649, 3533809, N'Óleo', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3650, 3533908, N'Olímpia', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3651, 3534005, N'Onda Verde', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3652, 3534104, N'Oriente', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3653, 3534203, N'Orindiúva', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3654, 3534302, N'Orlândia', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3655, 3534401, N'Osasco', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3656, 3534500, N'Oscar Bressane', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3657, 3534609, N'Osvaldo Cruz', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3658, 3534708, N'Ourinhos', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3659, 3534757, N'Ouroeste', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3660, 3534807, N'Ouro Verde', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3661, 3534906, N'Pacaembu', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3662, 3535002, N'Palestina', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3663, 3535101, N'Palmares Paulista', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3664, 3535200, N'Palmeira D´oeste', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3665, 3535309, N'Palmital', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3666, 3535408, N'Panorama', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3667, 3535507, N'Paraguaçu Paulista', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3668, 3535606, N'Paraibuna', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3669, 3535705, N'Paraíso', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3670, 3535804, N'Paranapanema', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3671, 3535903, N'Paranapuã', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3672, 3536000, N'Parapuã', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3673, 3536109, N'Pardinho', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3674, 3536208, N'Pariquera-açu', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3675, 3536257, N'Parisi', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3676, 3536307, N'Patrocínio Paulista', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3677, 3536406, N'Paulicéia', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3678, 3536505, N'Paulínia', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3679, 3536570, N'Paulistânia', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3680, 3536604, N'Paulo de Faria', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3681, 3536703, N'Pederneiras', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3682, 3536802, N'Pedra Bela', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3683, 3536901, N'Pedranópolis', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3684, 3537008, N'Pedregulho', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3685, 3537107, N'Pedreira', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3686, 3537156, N'Pedrinhas Paulista', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3687, 3537206, N'Pedro de Toledo', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3688, 3537305, N'Penápolis', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3689, 3537404, N'Pereira Barreto', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3690, 3537503, N'Pereiras', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3691, 3537602, N'Peruíbe', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3692, 3537701, N'Piacatu', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3693, 3537800, N'Piedade', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3694, 3537909, N'Pilar do Sul', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3695, 3538006, N'Pindamonhangaba', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3696, 3538105, N'Pindorama', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3697, 3538204, N'Pinhalzinho', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3698, 3538303, N'Piquerobi', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3699, 3538501, N'Piquete', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3700, 3538600, N'Piracaia', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3701, 3538709, N'Piracicaba', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3702, 3538808, N'Piraju', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3703, 3538907, N'Pirajuí', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3704, 3539004, N'Pirangi', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3705, 3539103, N'Pirapora do Bom Jesus', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3706, 3539202, N'Pirapozinho', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3707, 3539301, N'Pirassununga', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3708, 3539400, N'Piratininga', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3709, 3539509, N'Pitangueiras', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3710, 3539608, N'Planalto', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3711, 3539707, N'Platina', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3712, 3539806, N'Poá', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3713, 3539905, N'Poloni', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3714, 3540002, N'Pompéia', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3715, 3540101, N'Pongaí', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3716, 3540200, N'Pontal', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3717, 3540259, N'Pontalinda', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3718, 3540309, N'Pontes Gestal', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3719, 3540408, N'Populina', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3720, 3540507, N'Porangaba', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3721, 3540606, N'Porto Feliz', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3722, 3540705, N'Porto Ferreira', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3723, 3540754, N'Potim', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3724, 3540804, N'Potirendaba', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3725, 3540853, N'Pracinha', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3726, 3540903, N'Pradópolis', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3727, 3541000, N'Praia Grande', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3728, 3541059, N'Pratânia', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3729, 3541109, N'Presidente Alves', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3730, 3541208, N'Presidente Bernardes', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3731, 3541307, N'Presidente Epitácio', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3732, 3541406, N'Presidente Prudente', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3733, 3541505, N'Presidente Venceslau', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3734, 3541604, N'Promissão', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3735, 3541653, N'Quadra', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3736, 3541703, N'Quatá', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3737, 3541802, N'Queiroz', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3738, 3541901, N'Queluz', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3739, 3542008, N'Quintana', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3740, 3542107, N'Rafard', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3741, 3542206, N'Rancharia', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3742, 3542305, N'Redenção da Serra', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3743, 3542404, N'Regente Feijó', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3744, 3542503, N'Reginópolis', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3745, 3542602, N'Registro', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3746, 3542701, N'Restinga', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3747, 3542800, N'Ribeira', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3748, 3542909, N'Ribeirão Bonito', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3749, 3543006, N'Ribeirão Branco', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3750, 3543105, N'Ribeirão Corrente', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3751, 3543204, N'Ribeirão do Sul', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3752, 3543238, N'Ribeirão Dos Índios', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3753, 3543253, N'Ribeirão Grande', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3754, 3543303, N'Ribeirão Pires', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3755, 3543402, N'Ribeirão Preto', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3756, 3543501, N'Riversul', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3757, 3543600, N'Rifaina', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3758, 3543709, N'Rincão', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3759, 3543808, N'Rinópolis', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3760, 3543907, N'Rio Claro', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3761, 3544004, N'Rio Das Pedras', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3762, 3544103, N'Rio Grande da Serra', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3763, 3544202, N'Riolândia', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3764, 3544251, N'Rosana', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3765, 3544301, N'Roseira', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3766, 3544400, N'Rubiácea', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3767, 3544509, N'Rubinéia', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3768, 3544608, N'Sabino', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3769, 3544707, N'Sagres', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3770, 3544806, N'Sales', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3771, 3544905, N'Sales Oliveira', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3772, 3545001, N'Salesópolis', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3773, 3545100, N'Salmourão', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3774, 3545159, N'Saltinho', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3775, 3545209, N'Salto', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3776, 3545308, N'Salto de Pirapora', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3777, 3545407, N'Salto Grande', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3778, 3545506, N'Sandovalina', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3779, 3545605, N'Santa Adélia', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3780, 3545704, N'Santa Albertina', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3781, 3545803, N'Santa Bárbara D´oeste', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3782, 3546009, N'Santa Branca', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3783, 3546108, N'Santa Clara D´oeste', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3784, 3546207, N'Santa Cruz da Conceição', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3785, 3546256, N'Santa Cruz da Esperança', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3786, 3546306, N'Santa Cruz Das Palmeiras', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3787, 3546405, N'Santa Cruz do Rio Pardo', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3788, 3546504, N'Santa Ernestina', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3789, 3546603, N'Santa fé do Sul', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3790, 3546702, N'Santa Gertrudes', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3791, 3546801, N'Santa Isabel', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3792, 3546900, N'Santa Lúcia', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3793, 3547007, N'Santa Maria da Serra', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3794, 3547106, N'Santa Mercedes', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3795, 3547205, N'Santana da Ponte Pensa', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3796, 3547304, N'Santana de Parnaíba', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3797, 3547403, N'Santa Rita D´oeste', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3798, 3547502, N'Santa Rita do Passa Quatro', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3799, 3547601, N'Santa Rosa de Viterbo', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3800, 3547650, N'Santa Salete', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3801, 3547700, N'Santo Anastácio', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3802, 3547809, N'Santo André', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3803, 3547908, N'Santo Antônio da Alegria', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3804, 3548005, N'Santo Antônio de Posse', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3805, 3548054, N'Santo Antônio do Aracanguá', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3806, 3548104, N'Santo Antônio do Jardim', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3807, 3548203, N'Santo Antônio do Pinhal', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3808, 3548302, N'Santo Expedito', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3809, 3548401, N'Santópolis do Aguapeí', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3810, 3548500, N'Santos', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3811, 3548609, N'São Bento do Sapucaí', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3812, 3548708, N'São Bernardo do Campo', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3813, 3548807, N'São Caetano do Sul', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3814, 3548906, N'São Carlos', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3815, 3549003, N'São Francisco', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3816, 3549102, N'São João da Boa Vista', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3817, 3549201, N'São João Das Duas Pontes', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3818, 3549250, N'São João de Iracema', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3819, 3549300, N'São João do Pau D´alho', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3820, 3549409, N'São Joaquim da Barra', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3821, 3549508, N'São José da Bela Vista', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3822, 3549607, N'São José do Barreiro', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3823, 3549706, N'São José do Rio Pardo', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3824, 3549805, N'São José do Rio Preto', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3825, 3549904, N'São José Dos Campos', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3826, 3549953, N'São Lourenço da Serra', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3827, 3550001, N'São Luís do Paraitinga', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3828, 3550100, N'São Manuel', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3829, 3550209, N'São Miguel Arcanjo', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3830, 3550308, N'São Paulo', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3831, 3550407, N'São Pedro', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3832, 3550506, N'São Pedro do Turvo', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3833, 3550605, N'São Roque', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3834, 3550704, N'São Sebastião', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3835, 3550803, N'São Sebastião da Grama', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3836, 3550902, N'São Simão', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3837, 3551009, N'São Vicente', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3838, 3551108, N'Sarapuí', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3839, 3551207, N'Sarutaiá', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3840, 3551306, N'Sebastianópolis do Sul', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3841, 3551405, N'Serra Azul', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3842, 3551504, N'Serrana', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3843, 3551603, N'Serra Negra', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3844, 3551702, N'Sertãozinho', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3845, 3551801, N'Sete Barras', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3846, 3551900, N'Severínia', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3847, 3552007, N'Silveiras', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3848, 3552106, N'Socorro', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3849, 3552205, N'Sorocaba', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3850, 3552304, N'Sud Mennucci', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3851, 3552403, N'Sumaré', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3852, 3552502, N'Suzano', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3853, 3552551, N'Suzanápolis', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3854, 3552601, N'Tabapuã', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3855, 3552700, N'Tabatinga', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3856, 3552809, N'Taboão da Serra', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3857, 3552908, N'Taciba', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3858, 3553005, N'Taguaí', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3859, 3553104, N'Taiaçu', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3860, 3553203, N'Taiúva', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3861, 3553302, N'Tambaú', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3862, 3553401, N'Tanabi', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3863, 3553500, N'Tapiraí', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3864, 3553609, N'Tapiratiba', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3865, 3553658, N'Taquaral', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3866, 3553708, N'Taquaritinga', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3867, 3553807, N'Taquarituba', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3868, 3553856, N'Taquarivaí', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3869, 3553906, N'Tarabai', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3870, 3553955, N'Tarumã', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3871, 3554003, N'Tatuí', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3872, 3554102, N'Taubaté', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3873, 3554201, N'Tejupá', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3874, 3554300, N'Teodoro Sampaio', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3875, 3554409, N'Terra Roxa', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3876, 3554508, N'Tietê', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3877, 3554607, N'Timburi', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3878, 3554656, N'Torre de Pedra', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3879, 3554706, N'Torrinha', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3880, 3554755, N'Trabiju', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3881, 3554805, N'Tremembé', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3882, 3554904, N'Três Fronteiras', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3883, 3554953, N'Tuiuti', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3884, 3555000, N'Tupã', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3885, 3555109, N'Tupi Paulista', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3886, 3555208, N'Turiúba', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3887, 3555307, N'Turmalina', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3888, 3555356, N'Ubarana', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3889, 3555406, N'Ubatuba', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3890, 3555505, N'Ubirajara', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3891, 3555604, N'Uchoa', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3892, 3555703, N'União Paulista', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3893, 3555802, N'Urânia', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3894, 3555901, N'Uru', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3895, 3556008, N'Urupês', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3896, 3556107, N'Valentim Gentil', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3897, 3556206, N'Valinhos', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3898, 3556305, N'Valparaíso', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3899, 3556354, N'Vargem', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3900, 3556404, N'Vargem Grande do Sul', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3901, 3556453, N'Vargem Grande Paulista', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3902, 3556503, N'Várzea Paulista', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3903, 3556602, N'Vera Cruz', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3904, 3556701, N'Vinhedo', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3905, 3556800, N'Viradouro', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3906, 3556909, N'Vista Alegre do Alto', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3907, 3556958, N'Vitória Brasil', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3908, 3557006, N'Votorantim', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3909, 3557105, N'Votuporanga', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3910, 3557154, N'Zacarias', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3911, 3557204, N'Chavantes', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3912, 3557303, N'Estiva Gerbi', 26)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3913, 4100103, N'Abatiá', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3914, 4100202, N'Adrianópolis', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3915, 4100301, N'Agudos do Sul', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3916, 4100400, N'Almirante Tamandaré', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3917, 4100459, N'Altamira do Paraná', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3918, 4100509, N'Altônia', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3919, 4100608, N'Alto Paraná', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3920, 4100707, N'Alto Piquiri', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3921, 4100806, N'Alvorada do Sul', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3922, 4100905, N'Amaporã', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3923, 4101002, N'Ampére', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3924, 4101051, N'Anahy', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3925, 4101101, N'Andirá', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3926, 4101150, N'Ângulo', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3927, 4101200, N'Antonina', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3928, 4101309, N'Antônio Olinto', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3929, 4101408, N'Apucarana', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3930, 4101507, N'Arapongas', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3931, 4101606, N'Arapoti', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3932, 4101655, N'Arapuã', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3933, 4101705, N'Araruna', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3934, 4101804, N'Araucária', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3935, 4101853, N'Ariranha do Ivaí', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3936, 4101903, N'Assaí', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3937, 4102000, N'Assis Chateaubriand', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3938, 4102109, N'Astorga', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3939, 4102208, N'Atalaia', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3940, 4102307, N'Balsa Nova', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3941, 4102406, N'Bandeirantes', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3942, 4102505, N'Barbosa Ferraz', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3943, 4102604, N'Barracão', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3944, 4102703, N'Barra do Jacaré', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3945, 4102752, N'Bela Vista da Caroba', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3946, 4102802, N'Bela Vista do Paraíso', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3947, 4102901, N'Bituruna', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3948, 4103008, N'Boa Esperança', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3949, 4103024, N'Boa Esperança do Iguaçu', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3950, 4103040, N'Boa Ventura de São Roque', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3951, 4103057, N'Boa Vista da Aparecida', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3952, 4103107, N'Bocaiúva do Sul', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3953, 4103156, N'Bom Jesus do Sul', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3954, 4103206, N'Bom Sucesso', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3955, 4103222, N'Bom Sucesso do Sul', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3956, 4103305, N'Borrazópolis', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3957, 4103354, N'Braganey', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3958, 4103370, N'Brasilândia do Sul', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3959, 4103404, N'Cafeara', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3960, 4103453, N'Cafelândia', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3961, 4103479, N'Cafezal do Sul', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3962, 4103503, N'Califórnia', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3963, 4103602, N'Cambará', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3964, 4103701, N'Cambé', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3965, 4103800, N'Cambira', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3966, 4103909, N'Campina da Lagoa', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3967, 4103958, N'Campina do Simão', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3968, 4104006, N'Campina Grande do Sul', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3969, 4104055, N'Campo Bonito', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3970, 4104105, N'Campo do Tenente', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3971, 4104204, N'Campo Largo', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3972, 4104253, N'Campo Magro', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3973, 4104303, N'Campo Mourão', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3974, 4104402, N'Cândido de Abreu', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3975, 4104428, N'Candói', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3976, 4104451, N'Cantagalo', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3977, 4104501, N'Capanema', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3978, 4104600, N'Capitão Leônidas Marques', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3979, 4104659, N'Carambeí', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3980, 4104709, N'Carlópolis', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3981, 4104808, N'Cascavel', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3982, 4104907, N'Castro', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3983, 4105003, N'Catanduvas', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3984, 4105102, N'Centenário do Sul', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3985, 4105201, N'Cerro Azul', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3986, 4105300, N'Céu Azul', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3987, 4105409, N'Chopinzinho', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3988, 4105508, N'Cianorte', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3989, 4105607, N'Cidade Gaúcha', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3990, 4105706, N'Clevelândia', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3991, 4105805, N'Colombo', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3992, 4105904, N'Colorado', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3993, 4106001, N'Congonhinhas', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3994, 4106100, N'Conselheiro Mairinck', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3995, 4106209, N'Contenda', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3996, 4106308, N'Corbélia', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3997, 4106407, N'Cornélio Procópio', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3998, 4106456, N'Coronel Domingos Soares', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (3999, 4106506, N'Coronel Vivida', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4000, 4106555, N'Corumbataí do Sul', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4001, 4106571, N'Cruzeiro do Iguaçu', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4002, 4106605, N'Cruzeiro do Oeste', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4003, 4106704, N'Cruzeiro do Sul', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4004, 4106803, N'Cruz Machado', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4005, 4106852, N'Cruzmaltina', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4006, 4106902, N'Curitiba', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4007, 4107009, N'Curiúva', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4008, 4107108, N'Diamante do Norte', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4009, 4107124, N'Diamante do Sul', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4010, 4107157, N'Diamante D´oeste', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4011, 4107207, N'Dois Vizinhos', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4012, 4107256, N'Douradina', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4013, 4107306, N'Doutor Camargo', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4014, 4107405, N'Enéas Marques', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4015, 4107504, N'Engenheiro Beltrão', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4016, 4107520, N'Esperança Nova', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4017, 4107538, N'Entre Rios do Oeste', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4018, 4107546, N'Espigão Alto do Iguaçu', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4019, 4107553, N'Farol', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4020, 4107603, N'Faxinal', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4021, 4107652, N'Fazenda Rio Grande', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4022, 4107702, N'Fênix', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4023, 4107736, N'Fernandes Pinheiro', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4024, 4107751, N'Figueira', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4025, 4107801, N'Floraí', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4026, 4107850, N'Flor da Serra do Sul', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4027, 4107900, N'Floresta', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4028, 4108007, N'Florestópolis', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4029, 4108106, N'Flórida', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4030, 4108205, N'Formosa do Oeste', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4031, 4108304, N'Foz do Iguaçu', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4032, 4108320, N'Francisco Alves', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4033, 4108403, N'Francisco Beltrão', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4034, 4108452, N'Foz do Jordão', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4035, 4108502, N'General Carneiro', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4036, 4108551, N'Godoy Moreira', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4037, 4108601, N'Goioerê', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4038, 4108650, N'Goioxim', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4039, 4108700, N'Grandes Rios', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4040, 4108809, N'Guaíra', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4041, 4108908, N'Guairaçá', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4042, 4108957, N'Guamiranga', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4043, 4109005, N'Guapirama', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4044, 4109104, N'Guaporema', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4045, 4109203, N'Guaraci', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4046, 4109302, N'Guaraniaçu', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4047, 4109401, N'Guarapuava', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4048, 4109500, N'Guaraqueçaba', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4049, 4109609, N'Guaratuba', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4050, 4109658, N'Honório Serpa', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4051, 4109708, N'Ibaiti', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4052, 4109757, N'Ibema', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4053, 4109807, N'Ibiporã', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4054, 4109906, N'Icaraíma', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4055, 4110003, N'Iguaraçu', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4056, 4110052, N'Iguatu', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4057, 4110078, N'Imbaú', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4058, 4110102, N'Imbituva', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4059, 4110201, N'Inácio Martins', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4060, 4110300, N'Inajá', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4061, 4110409, N'Indianópolis', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4062, 4110508, N'Ipiranga', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4063, 4110607, N'Iporã', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4064, 4110656, N'Iracema do Oeste', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4065, 4110706, N'Irati', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4066, 4110805, N'Iretama', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4067, 4110904, N'Itaguajé', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4068, 4110953, N'Itaipulândia', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4069, 4111001, N'Itambaracá', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4070, 4111100, N'Itambé', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4071, 4111209, N'Itapejara D´oeste', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4072, 4111258, N'Itaperuçu', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4073, 4111308, N'Itaúna do Sul', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4074, 4111407, N'Ivaí', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4075, 4111506, N'Ivaiporã', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4076, 4111555, N'Ivaté', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4077, 4111605, N'Ivatuba', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4078, 4111704, N'Jaboti', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4079, 4111803, N'Jacarezinho', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4080, 4111902, N'Jaguapitã', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4081, 4112009, N'Jaguariaíva', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4082, 4112108, N'Jandaia do Sul', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4083, 4112207, N'Janiópolis', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4084, 4112306, N'Japira', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4085, 4112405, N'Japurá', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4086, 4112504, N'Jardim Alegre', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4087, 4112603, N'Jardim Olinda', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4088, 4112702, N'Jataizinho', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4089, 4112751, N'Jesuítas', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4090, 4112801, N'Joaquim Távora', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4091, 4112900, N'Jundiaí do Sul', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4092, 4112959, N'Juranda', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4093, 4113007, N'Jussara', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4094, 4113106, N'Kaloré', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4095, 4113205, N'Lapa', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4096, 4113254, N'Laranjal', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4097, 4113304, N'Laranjeiras do Sul', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4098, 4113403, N'Leópolis', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4099, 4113429, N'Lidianópolis', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4100, 4113452, N'Lindoeste', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4101, 4113502, N'Loanda', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4102, 4113601, N'Lobato', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4103, 4113700, N'Londrina', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4104, 4113734, N'Luiziana', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4105, 4113759, N'Lunardelli', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4106, 4113809, N'Lupionópolis', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4107, 4113908, N'Mallet', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4108, 4114005, N'Mamborê', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4109, 4114104, N'Mandaguaçu', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4110, 4114203, N'Mandaguari', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4111, 4114302, N'Mandirituba', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4112, 4114351, N'Manfrinópolis', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4113, 4114401, N'Mangueirinha', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4114, 4114500, N'Manoel Ribas', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4115, 4114609, N'Marechal Cândido Rondon', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4116, 4114708, N'Maria Helena', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4117, 4114807, N'Marialva', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4118, 4114906, N'Marilândia do Sul', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4119, 4115002, N'Marilena', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4120, 4115101, N'Mariluz', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4121, 4115200, N'Maringá', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4122, 4115309, N'Mariópolis', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4123, 4115358, N'Maripá', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4124, 4115408, N'Marmeleiro', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4125, 4115457, N'Marquinho', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4126, 4115507, N'Marumbi', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4127, 4115606, N'Matelândia', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4128, 4115705, N'Matinhos', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4129, 4115739, N'Mato Rico', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4130, 4115754, N'Mauá da Serra', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4131, 4115804, N'Medianeira', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4132, 4115853, N'Mercedes', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4133, 4115903, N'Mirador', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4134, 4116000, N'Miraselva', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4135, 4116059, N'Missal', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4136, 4116109, N'Moreira Sales', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4137, 4116208, N'Morretes', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4138, 4116307, N'Munhoz de Melo', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4139, 4116406, N'Nossa Senhora Das Graças', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4140, 4116505, N'Nova Aliança do Ivaí', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4141, 4116604, N'Nova América da Colina', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4142, 4116703, N'Nova Aurora', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4143, 4116802, N'Nova Cantu', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4144, 4116901, N'Nova Esperança', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4145, 4116950, N'Nova Esperança do Sudoeste', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4146, 4117008, N'Nova Fátima', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4147, 4117057, N'Nova Laranjeiras', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4148, 4117107, N'Nova Londrina', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4149, 4117206, N'Nova Olímpia', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4150, 4117214, N'Nova Santa Bárbara', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4151, 4117222, N'Nova Santa Rosa', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4152, 4117255, N'Nova Prata do Iguaçu', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4153, 4117271, N'Nova Tebas', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4154, 4117297, N'Novo Itacolomi', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4155, 4117305, N'Ortigueira', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4156, 4117404, N'Ourizona', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4157, 4117453, N'Ouro Verde do Oeste', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4158, 4117503, N'Paiçandu', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4159, 4117602, N'Palmas', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4160, 4117701, N'Palmeira', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4161, 4117800, N'Palmital', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4162, 4117909, N'Palotina', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4163, 4118006, N'Paraíso do Norte', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4164, 4118105, N'Paranacity', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4165, 4118204, N'Paranaguá', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4166, 4118303, N'Paranapoema', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4167, 4118402, N'Paranavaí', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4168, 4118451, N'Pato Bragado', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4169, 4118501, N'Pato Branco', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4170, 4118600, N'Paula Freitas', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4171, 4118709, N'Paulo Frontin', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4172, 4118808, N'Peabiru', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4173, 4118857, N'Perobal', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4174, 4118907, N'Pérola', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4175, 4119004, N'Pérola D´oeste', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4176, 4119103, N'Piên', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4177, 4119152, N'Pinhais', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4178, 4119202, N'Pinhalão', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4179, 4119251, N'Pinhal de São Bento', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4180, 4119301, N'Pinhão', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4181, 4119400, N'Piraí do Sul', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4182, 4119509, N'Piraquara', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4183, 4119608, N'Pitanga', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4184, 4119657, N'Pitangueiras', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4185, 4119707, N'Planaltina do Paraná', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4186, 4119806, N'Planalto', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4187, 4119905, N'Ponta Grossa', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4188, 4119954, N'Pontal do Paraná', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4189, 4120002, N'Porecatu', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4190, 4120101, N'Porto Amazonas', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4191, 4120150, N'Porto Barreiro', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4192, 4120200, N'Porto Rico', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4193, 4120309, N'Porto Vitória', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4194, 4120333, N'Prado Ferreira', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4195, 4120358, N'Pranchita', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4196, 4120408, N'Presidente Castelo Branco', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4197, 4120507, N'Primeiro de Maio', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4198, 4120606, N'Prudentópolis', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4199, 4120655, N'Quarto Centenário', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4200, 4120705, N'Quatiguá', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4201, 4120804, N'Quatro Barras', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4202, 4120853, N'Quatro Pontes', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4203, 4120903, N'Quedas do Iguaçu', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4204, 4121000, N'Querência do Norte', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4205, 4121109, N'Quinta do Sol', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4206, 4121208, N'Quitandinha', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4207, 4121257, N'Ramilândia', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4208, 4121307, N'Rancho Alegre', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4209, 4121356, N'Rancho Alegre D´oeste', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4210, 4121406, N'Realeza', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4211, 4121505, N'Rebouças', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4212, 4121604, N'Renascença', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4213, 4121703, N'Reserva', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4214, 4121752, N'Reserva do Iguaçu', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4215, 4121802, N'Ribeirão Claro', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4216, 4121901, N'Ribeirão do Pinhal', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4217, 4122008, N'Rio Azul', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4218, 4122107, N'Rio Bom', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4219, 4122156, N'Rio Bonito do Iguaçu', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4220, 4122172, N'Rio Branco do Ivaí', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4221, 4122206, N'Rio Branco do Sul', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4222, 4122305, N'Rio Negro', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4223, 4122404, N'Rolândia', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4224, 4122503, N'Roncador', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4225, 4122602, N'Rondon', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4226, 4122651, N'Rosário do Ivaí', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4227, 4122701, N'Sabáudia', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4228, 4122800, N'Salgado Filho', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4229, 4122909, N'Salto do Itararé', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4230, 4123006, N'Salto do Lontra', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4231, 4123105, N'Santa Amélia', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4232, 4123204, N'Santa Cecília do Pavão', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4233, 4123303, N'Santa Cruz de Monte Castelo', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4234, 4123402, N'Santa fé', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4235, 4123501, N'Santa Helena', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4236, 4123600, N'Santa Inês', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4237, 4123709, N'Santa Isabel do Ivaí', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4238, 4123808, N'Santa Izabel do Oeste', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4239, 4123824, N'Santa Lúcia', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4240, 4123857, N'Santa Maria do Oeste', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4241, 4123907, N'Santa Mariana', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4242, 4123956, N'Santa Mônica', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4243, 4124004, N'Santana do Itararé', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4244, 4124020, N'Santa Tereza do Oeste', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4245, 4124053, N'Santa Terezinha de Itaipu', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4246, 4124103, N'Santo Antônio da Platina', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4247, 4124202, N'Santo Antônio do Caiuá', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4248, 4124301, N'Santo Antônio do Paraíso', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4249, 4124400, N'Santo Antônio do Sudoeste', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4250, 4124509, N'Santo Inácio', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4251, 4124608, N'São Carlos do Ivaí', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4252, 4124707, N'São Jerônimo da Serra', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4253, 4124806, N'São João', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4254, 4124905, N'São João do Caiuá', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4255, 4125001, N'São João do Ivaí', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4256, 4125100, N'São João do Triunfo', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4257, 4125209, N'São Jorge D´oeste', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4258, 4125308, N'São Jorge do Ivaí', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4259, 4125357, N'São Jorge do Patrocínio', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4260, 4125407, N'São José da Boa Vista', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4261, 4125456, N'São José Das Palmeiras', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4262, 4125506, N'São José Dos Pinhais', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4263, 4125555, N'São Manoel do Paraná', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4264, 4125605, N'São Mateus do Sul', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4265, 4125704, N'São Miguel do Iguaçu', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4266, 4125753, N'São Pedro do Iguaçu', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4267, 4125803, N'São Pedro do Ivaí', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4268, 4125902, N'São Pedro do Paraná', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4269, 4126009, N'São Sebastião da Amoreira', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4270, 4126108, N'São Tomé', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4271, 4126207, N'Sapopema', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4272, 4126256, N'Sarandi', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4273, 4126272, N'Saudade do Iguaçu', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4274, 4126306, N'Sengés', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4275, 4126355, N'Serranópolis do Iguaçu', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4276, 4126405, N'Sertaneja', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4277, 4126504, N'Sertanópolis', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4278, 4126603, N'Siqueira Campos', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4279, 4126652, N'Sulina', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4280, 4126678, N'Tamarana', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4281, 4126702, N'Tamboara', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4282, 4126801, N'Tapejara', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4283, 4126900, N'Tapira', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4284, 4127007, N'Teixeira Soares', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4285, 4127106, N'Telêmaco Borba', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4286, 4127205, N'Terra Boa', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4287, 4127304, N'Terra Rica', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4288, 4127403, N'Terra Roxa', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4289, 4127502, N'Tibagi', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4290, 4127601, N'Tijucas do Sul', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4291, 4127700, N'Toledo', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4292, 4127809, N'Tomazina', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4293, 4127858, N'Três Barras do Paraná', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4294, 4127882, N'Tunas do Paraná', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4295, 4127908, N'Tuneiras do Oeste', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4296, 4127957, N'Tupãssi', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4297, 4127965, N'Turvo', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4298, 4128005, N'Ubiratã', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4299, 4128104, N'Umuarama', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4300, 4128203, N'União da Vitória', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4301, 4128302, N'Uniflor', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4302, 4128401, N'Uraí', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4303, 4128500, N'Wenceslau Braz', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4304, 4128534, N'Ventania', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4305, 4128559, N'Vera Cruz do Oeste', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4306, 4128609, N'Verê', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4307, 4128625, N'Vila Alta', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4308, 4128633, N'Doutor Ulysses', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4309, 4128658, N'Virmond', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4310, 4128708, N'Vitorino', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4311, 4128807, N'Xambrê', 18)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4312, 4200051, N'Abdon Batista', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4313, 4200101, N'Abelardo Luz', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4314, 4200200, N'Agrolândia', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4315, 4200309, N'Agronômica', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4316, 4200408, N'Água Doce', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4317, 4200507, N'Águas de Chapecó', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4318, 4200556, N'Águas Frias', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4319, 4200606, N'Águas Mornas', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4320, 4200705, N'Alfredo Wagner', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4321, 4200754, N'Alto Bela Vista', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4322, 4200804, N'Anchieta', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4323, 4200903, N'Angelina', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4324, 4201000, N'Anita Garibaldi', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4325, 4201109, N'Anitápolis', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4326, 4201208, N'Antônio Carlos', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4327, 4201257, N'Apiúna', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4328, 4201273, N'Arabutã', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4329, 4201307, N'Araquari', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4330, 4201406, N'Araranguá', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4331, 4201505, N'Armazém', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4332, 4201604, N'Arroio Trinta', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4333, 4201653, N'Arvoredo', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4334, 4201703, N'Ascurra', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4335, 4201802, N'Atalanta', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4336, 4201901, N'Aurora', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4337, 4201950, N'Balneário Arroio do Silva', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4338, 4202008, N'Balneário Camboriú', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4339, 4202057, N'Balneário Barra do Sul', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4340, 4202073, N'Balneário Gaivota', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4341, 4202081, N'Bandeirante', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4342, 4202099, N'Barra Bonita', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4343, 4202107, N'Barra Velha', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4344, 4202131, N'Bela Vista do Toldo', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4345, 4202156, N'Belmonte', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4346, 4202206, N'Benedito Novo', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4347, 4202305, N'Biguaçu', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4348, 4202404, N'Blumenau', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4349, 4202438, N'Bocaina do Sul', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4350, 4202453, N'Bombinhas', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4351, 4202503, N'Bom Jardim da Serra', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4352, 4202537, N'Bom Jesus', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4353, 4202578, N'Bom Jesus do Oeste', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4354, 4202602, N'Bom Retiro', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4355, 4202701, N'Botuverá', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4356, 4202800, N'Braço do Norte', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4357, 4202859, N'Braço do Trombudo', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4358, 4202875, N'Brunópolis', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4359, 4202909, N'Brusque', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4360, 4203006, N'Caçador', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4361, 4203105, N'Caibi', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4362, 4203154, N'Calmon', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4363, 4203204, N'Camboriú', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4364, 4203253, N'Capão Alto', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4365, 4203303, N'Campo Alegre', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4366, 4203402, N'Campo Belo do Sul', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4367, 4203501, N'Campo Erê', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4368, 4203600, N'Campos Novos', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4369, 4203709, N'Canelinha', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4370, 4203808, N'Canoinhas', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4371, 4203907, N'Capinzal', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4372, 4203956, N'Capivari de Baixo', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4373, 4204004, N'Catanduvas', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4374, 4204103, N'Caxambu do Sul', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4375, 4204152, N'Celso Ramos', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4376, 4204178, N'Cerro Negro', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4377, 4204194, N'Chapadão do Lageado', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4378, 4204202, N'Chapecó', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4379, 4204251, N'Cocal do Sul', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4380, 4204301, N'Concórdia', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4381, 4204350, N'Cordilheira Alta', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4382, 4204400, N'Coronel Freitas', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4383, 4204459, N'Coronel Martins', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4384, 4204509, N'Corupá', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4385, 4204558, N'Correia Pinto', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4386, 4204608, N'Criciúma', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4387, 4204707, N'Cunha Porã', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4388, 4204756, N'Cunhataí', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4389, 4204806, N'Curitibanos', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4390, 4204905, N'Descanso', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4391, 4205001, N'Dionísio Cerqueira', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4392, 4205100, N'Dona Emma', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4393, 4205159, N'Doutor Pedrinho', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4394, 4205175, N'Entre Rios', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4395, 4205191, N'Ermo', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4396, 4205209, N'Erval Velho', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4397, 4205308, N'Faxinal Dos Guedes', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4398, 4205357, N'Flor do Sertão', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4399, 4205407, N'Florianópolis', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4400, 4205431, N'Formosa do Sul', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4401, 4205456, N'Forquilhinha', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4402, 4205506, N'Fraiburgo', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4403, 4205555, N'Frei Rogério', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4404, 4205605, N'Galvão', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4405, 4205704, N'Garopaba', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4406, 4205803, N'Garuva', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4407, 4205902, N'Gaspar', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4408, 4206009, N'Governador Celso Ramos', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4409, 4206108, N'Grão Pará', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4410, 4206207, N'Gravatal', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4411, 4206306, N'Guabiruba', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4412, 4206405, N'Guaraciaba', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4413, 4206504, N'Guaramirim', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4414, 4206603, N'Guarujá do Sul', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4415, 4206652, N'Guatambú', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4416, 4206702, N'Herval D´oeste', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4417, 4206751, N'Ibiam', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4418, 4206801, N'Ibicaré', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4419, 4206900, N'Ibirama', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4420, 4207007, N'Içara', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4421, 4207106, N'Ilhota', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4422, 4207205, N'Imaruí', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4423, 4207304, N'Imbituba', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4424, 4207403, N'Imbuia', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4425, 4207502, N'Indaial', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4426, 4207577, N'Iomerê', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4427, 4207601, N'Ipira', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4428, 4207650, N'Iporã do Oeste', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4429, 4207684, N'Ipuaçu', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4430, 4207700, N'Ipumirim', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4431, 4207759, N'Iraceminha', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4432, 4207809, N'Irani', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4433, 4207858, N'Irati', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4434, 4207908, N'Irineópolis', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4435, 4208005, N'Itá', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4436, 4208104, N'Itaiópolis', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4437, 4208203, N'Itajaí', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4438, 4208302, N'Itapema', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4439, 4208401, N'Itapiranga', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4440, 4208450, N'Itapoá', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4441, 4208500, N'Ituporanga', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4442, 4208609, N'Jaborá', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4443, 4208708, N'Jacinto Machado', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4444, 4208807, N'Jaguaruna', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4445, 4208906, N'Jaraguá do Sul', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4446, 4208955, N'Jardinópolis', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4447, 4209003, N'Joaçaba', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4448, 4209102, N'Joinville', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4449, 4209151, N'José Boiteux', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4450, 4209177, N'Jupiá', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4451, 4209201, N'Lacerdópolis', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4452, 4209300, N'Lages', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4453, 4209409, N'Laguna', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4454, 4209458, N'Lajeado Grande', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4455, 4209508, N'Laurentino', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4456, 4209607, N'Lauro Muller', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4457, 4209706, N'Lebon Régis', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4458, 4209805, N'Leoberto Leal', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4459, 4209854, N'Lindóia do Sul', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4460, 4209904, N'Lontras', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4461, 4210001, N'Luiz Alves', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4462, 4210035, N'Luzerna', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4463, 4210050, N'Macieira', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4464, 4210100, N'Mafra', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4465, 4210209, N'Major Gercino', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4466, 4210308, N'Major Vieira', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4467, 4210407, N'Maracajá', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4468, 4210506, N'Maravilha', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4469, 4210555, N'Marema', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4470, 4210605, N'Massaranduba', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4471, 4210704, N'Matos Costa', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4472, 4210803, N'Meleiro', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4473, 4210852, N'Mirim Doce', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4474, 4210902, N'Modelo', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4475, 4211009, N'Mondaí', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4476, 4211058, N'Monte Carlo', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4477, 4211108, N'Monte Castelo', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4478, 4211207, N'Morro da Fumaça', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4479, 4211256, N'Morro Grande', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4480, 4211306, N'Navegantes', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4481, 4211405, N'Nova Erechim', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4482, 4211454, N'Nova Itaberaba', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4483, 4211504, N'Nova Trento', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4484, 4211603, N'Nova Veneza', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4485, 4211652, N'Novo Horizonte', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4486, 4211702, N'Orleans', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4487, 4211751, N'Otacílio Costa', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4488, 4211801, N'Ouro', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4489, 4211850, N'Ouro Verde', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4490, 4211876, N'Paial', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4491, 4211892, N'Painel', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4492, 4211900, N'Palhoça', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4493, 4212007, N'Palma Sola', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4494, 4212056, N'Palmeira', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4495, 4212106, N'Palmitos', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4496, 4212205, N'Papanduva', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4497, 4212239, N'Paraíso', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4498, 4212254, N'Passo de Torres', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4499, 4212270, N'Passos Maia', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4500, 4212304, N'Paulo Lopes', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4501, 4212403, N'Pedras Grandes', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4502, 4212502, N'Penha', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4503, 4212601, N'Peritiba', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4504, 4212650, N'Pescaria Brava', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4505, 4212700, N'Petrolândia', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4506, 4212809, N'Piçarras', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4507, 4212908, N'Pinhalzinho', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4508, 4213005, N'Pinheiro Preto', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4509, 4213104, N'Piratuba', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4510, 4213153, N'Planalto Alegre', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4511, 4213203, N'Pomerode', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4512, 4213302, N'Ponte Alta', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4513, 4213351, N'Ponte Alta do Norte', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4514, 4213401, N'Ponte Serrada', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4515, 4213500, N'Porto Belo', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4516, 4213609, N'Porto União', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4517, 4213708, N'Pouso Redondo', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4518, 4213807, N'Praia Grande', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4519, 4213906, N'Presidente Castelo Branco', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4520, 4214003, N'Presidente Getúlio', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4521, 4214102, N'Presidente Nereu', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4522, 4214151, N'Princesa', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4523, 4214201, N'Quilombo', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4524, 4214300, N'Rancho Queimado', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4525, 4214409, N'Rio Das Antas', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4526, 4214508, N'Rio do Campo', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4527, 4214607, N'Rio do Oeste', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4528, 4214706, N'Rio Dos Cedros', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4529, 4214805, N'Rio do Sul', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4530, 4214904, N'Rio Fortuna', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4531, 4215000, N'Rio Negrinho', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4532, 4215059, N'Rio Rufino', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4533, 4215075, N'Riqueza', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4534, 4215109, N'Rodeio', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4535, 4215208, N'Romelândia', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4536, 4215307, N'Salete', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4537, 4215356, N'Saltinho', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4538, 4215406, N'Salto Veloso', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4539, 4215455, N'Sangão', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4540, 4215505, N'Santa Cecília', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4541, 4215554, N'Santa Helena', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4542, 4215604, N'Santa Rosa de Lima', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4543, 4215653, N'Santa Rosa do Sul', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4544, 4215679, N'Santa Terezinha', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4545, 4215687, N'Santa Terezinha do Progresso', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4546, 4215695, N'Santiago do Sul', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4547, 4215703, N'Santo Amaro da Imperatriz', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4548, 4215752, N'São Bernardino', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4549, 4215802, N'São Bento do Sul', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4550, 4215901, N'São Bonifácio', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4551, 4216008, N'São Carlos', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4552, 4216057, N'São Cristovão do Sul', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4553, 4216107, N'São Domingos', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4554, 4216206, N'São Francisco do Sul', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4555, 4216255, N'São João do Oeste', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4556, 4216305, N'São João Batista', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4557, 4216354, N'São João do Itaperiú', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4558, 4216404, N'São João do Sul', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4559, 4216503, N'São Joaquim', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4560, 4216602, N'São José', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4561, 4216701, N'São José do Cedro', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4562, 4216800, N'São José do Cerrito', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4563, 4216909, N'São Lourenço do Oeste', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4564, 4217006, N'São Ludgero', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4565, 4217105, N'São Martinho', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4566, 4217154, N'São Miguel da Boa Vista', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4567, 4217204, N'São Miguel do Oeste', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4568, 4217253, N'São Pedro de Alcântara', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4569, 4217303, N'Saudades', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4570, 4217402, N'Schroeder', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4571, 4217501, N'Seara', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4572, 4217550, N'Serra Alta', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4573, 4217600, N'Siderópolis', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4574, 4217709, N'Sombrio', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4575, 4217758, N'Sul Brasil', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4576, 4217808, N'Taió', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4577, 4217907, N'Tangará', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4578, 4217956, N'Tigrinhos', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4579, 4218004, N'Tijucas', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4580, 4218103, N'Timbé do Sul', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4581, 4218202, N'Timbó', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4582, 4218251, N'Timbó Grande', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4583, 4218301, N'Três Barras', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4584, 4218350, N'Treviso', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4585, 4218400, N'Treze de Maio', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4586, 4218509, N'Treze Tílias', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4587, 4218608, N'Trombudo Central', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4588, 4218707, N'Tubarão', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4589, 4218756, N'Tunápolis', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4590, 4218806, N'Turvo', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4591, 4218855, N'União do Oeste', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4592, 4218905, N'Urubici', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4593, 4218954, N'Urupema', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4594, 4219002, N'Urussanga', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4595, 4219101, N'Vargeão', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4596, 4219150, N'Vargem', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4597, 4219176, N'Vargem Bonita', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4598, 4219200, N'Vidal Ramos', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4599, 4219309, N'Videira', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4600, 4219358, N'Vitor Meireles', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4601, 4219408, N'Witmarsum', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4602, 4219507, N'Xanxerê', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4603, 4219606, N'Xavantina', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4604, 4219705, N'Xaxim', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4605, 4219853, N'Zortéa', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4606, 4220000, N'Balneário Rincão', 24)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4607, 4300034, N'Aceguá', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4608, 4300059, N'Água Santa', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4609, 4300109, N'Agudo', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4610, 4300208, N'Ajuricaba', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4611, 4300307, N'Alecrim', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4612, 4300406, N'Alegrete', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4613, 4300455, N'Alegria', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4614, 4300471, N'Almirante Tamandaré do Sul', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4615, 4300505, N'Alpestre', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4616, 4300554, N'Alto Alegre', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4617, 4300570, N'Alto Feliz', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4618, 4300604, N'Alvorada', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4619, 4300638, N'Amaral Ferrador', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4620, 4300646, N'Ametista do Sul', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4621, 4300661, N'André da Rocha', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4622, 4300703, N'Anta Gorda', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4623, 4300802, N'Antônio Prado', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4624, 4300851, N'Arambaré', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4625, 4300877, N'Araricá', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4626, 4300901, N'Aratiba', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4627, 4301008, N'Arroio do Meio', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4628, 4301057, N'Arroio do Sal', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4629, 4301073, N'Arroio do Padre', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4630, 4301107, N'Arroio Dos Ratos', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4631, 4301206, N'Arroio do Tigre', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4632, 4301305, N'Arroio Grande', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4633, 4301404, N'Arvorezinha', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4634, 4301503, N'Augusto Pestana', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4635, 4301552, N'Áurea', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4636, 4301602, N'Bagé', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4637, 4301636, N'Balneário Pinhal', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4638, 4301651, N'Barão', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4639, 4301701, N'Barão de Cotegipe', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4640, 4301750, N'Barão do Triunfo', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4641, 4301800, N'Barracão', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4642, 4301859, N'Barra do Guarita', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4643, 4301875, N'Barra do Quaraí', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4644, 4301909, N'Barra do Ribeiro', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4645, 4301925, N'Barra do Rio Azul', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4646, 4301958, N'Barra Funda', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4647, 4302006, N'Barros Cassal', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4648, 4302055, N'Benjamin Constant do Sul', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4649, 4302105, N'Bento Gonçalves', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4650, 4302154, N'Boa Vista Das Missões', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4651, 4302204, N'Boa Vista do Buricá', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4652, 4302220, N'Boa Vista do Cadeado', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4653, 4302238, N'Boa Vista do Incra', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4654, 4302253, N'Boa Vista do Sul', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4655, 4302303, N'Bom Jesus', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4656, 4302352, N'Bom Princípio', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4657, 4302378, N'Bom Progresso', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4658, 4302402, N'Bom Retiro do Sul', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4659, 4302451, N'Boqueirão do Leão', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4660, 4302501, N'Bossoroca', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4661, 4302584, N'Bozano', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4662, 4302600, N'Braga', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4663, 4302659, N'Brochier', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4664, 4302709, N'Butiá', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4665, 4302808, N'Caçapava do Sul', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4666, 4302907, N'Cacequi', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4667, 4303004, N'Cachoeira do Sul', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4668, 4303103, N'Cachoeirinha', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4669, 4303202, N'Cacique Doble', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4670, 4303301, N'Caibaté', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4671, 4303400, N'Caiçara', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4672, 4303509, N'Camaquã', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4673, 4303558, N'Camargo', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4674, 4303608, N'Cambará do Sul', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4675, 4303673, N'Campestre da Serra', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4676, 4303707, N'Campina Das Missões', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4677, 4303806, N'Campinas do Sul', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4678, 4303905, N'Campo Bom', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4679, 4304002, N'Campo Novo', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4680, 4304101, N'Campos Borges', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4681, 4304200, N'Candelária', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4682, 4304309, N'Cândido Godói', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4683, 4304358, N'Candiota', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4684, 4304408, N'Canela', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4685, 4304507, N'Canguçu', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4686, 4304606, N'Canoas', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4687, 4304614, N'Canudos do Vale', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4688, 4304622, N'Capão Bonito do Sul', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4689, 4304630, N'Capão da Canoa', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4690, 4304655, N'Capão do Cipó', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4691, 4304663, N'Capão do Leão', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4692, 4304671, N'Capivari do Sul', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4693, 4304689, N'Capela de Santana', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4694, 4304697, N'Capitão', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4695, 4304705, N'Carazinho', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4696, 4304713, N'Caraá', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4697, 4304804, N'Carlos Barbosa', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4698, 4304853, N'Carlos Gomes', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4699, 4304903, N'Casca', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4700, 4304952, N'Caseiros', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4701, 4305009, N'Catuípe', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4702, 4305108, N'Caxias do Sul', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4703, 4305116, N'Centenário', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4704, 4305124, N'Cerrito', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4705, 4305132, N'Cerro Branco', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4706, 4305157, N'Cerro Grande', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4707, 4305173, N'Cerro Grande do Sul', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4708, 4305207, N'Cerro Largo', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4709, 4305306, N'Chapada', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4710, 4305355, N'Charqueadas', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4711, 4305371, N'Charrua', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4712, 4305405, N'Chiapetta', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4713, 4305439, N'Chuí', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4714, 4305447, N'Chuvisca', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4715, 4305454, N'Cidreira', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4716, 4305504, N'Ciríaco', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4717, 4305587, N'Colinas', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4718, 4305603, N'Colorado', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4719, 4305702, N'Condor', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4720, 4305801, N'Constantina', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4721, 4305835, N'Coqueiro Baixo', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4722, 4305850, N'Coqueiros do Sul', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4723, 4305871, N'Coronel Barros', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4724, 4305900, N'Coronel Bicaco', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4725, 4305934, N'Coronel Pilar', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4726, 4305959, N'Cotiporã', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4727, 4305975, N'Coxilha', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4728, 4306007, N'Crissiumal', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4729, 4306056, N'Cristal', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4730, 4306072, N'Cristal do Sul', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4731, 4306106, N'Cruz Alta', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4732, 4306130, N'Cruzaltense', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4733, 4306205, N'Cruzeiro do Sul', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4734, 4306304, N'David Canabarro', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4735, 4306320, N'Derrubadas', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4736, 4306353, N'Dezesseis de Novembro', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4737, 4306379, N'Dilermando de Aguiar', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4738, 4306403, N'Dois Irmãos', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4739, 4306429, N'Dois Irmãos Das Missões', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4740, 4306452, N'Dois Lajeados', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4741, 4306502, N'Dom Feliciano', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4742, 4306551, N'Dom Pedro de Alcântara', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4743, 4306601, N'Dom Pedrito', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4744, 4306700, N'Dona Francisca', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4745, 4306734, N'Doutor Maurício Cardoso', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4746, 4306759, N'Doutor Ricardo', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4747, 4306767, N'Eldorado do Sul', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4748, 4306809, N'Encantado', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4749, 4306908, N'Encruzilhada do Sul', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4750, 4306924, N'Engenho Velho', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4751, 4306932, N'Entre-ijuís', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4752, 4306957, N'Entre Rios do Sul', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4753, 4306973, N'Erebango', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4754, 4307005, N'Erechim', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4755, 4307054, N'Ernestina', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4756, 4307104, N'Herval', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4757, 4307203, N'Erval Grande', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4758, 4307302, N'Erval Seco', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4759, 4307401, N'Esmeralda', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4760, 4307450, N'Esperança do Sul', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4761, 4307500, N'Espumoso', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4762, 4307559, N'Estação', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4763, 4307609, N'Estância Velha', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4764, 4307708, N'Esteio', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4765, 4307807, N'Estrela', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4766, 4307815, N'Estrela Velha', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4767, 4307831, N'Eugênio de Castro', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4768, 4307864, N'Fagundes Varela', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4769, 4307906, N'Farroupilha', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4770, 4308003, N'Faxinal do Soturno', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4771, 4308052, N'Faxinalzinho', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4772, 4308078, N'Fazenda Vilanova', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4773, 4308102, N'Feliz', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4774, 4308201, N'Flores da Cunha', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4775, 4308250, N'Floriano Peixoto', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4776, 4308300, N'Fontoura Xavier', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4777, 4308409, N'Formigueiro', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4778, 4308433, N'Forquetinha', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4779, 4308458, N'Fortaleza Dos Valos', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4780, 4308508, N'Frederico Westphalen', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4781, 4308607, N'Garibaldi', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4782, 4308656, N'Garruchos', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4783, 4308706, N'Gaurama', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4784, 4308805, N'General Câmara', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4785, 4308854, N'Gentil', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4786, 4308904, N'Getúlio Vargas', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4787, 4309001, N'Giruá', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4788, 4309050, N'Glorinha', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4789, 4309100, N'Gramado', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4790, 4309126, N'Gramado Dos Loureiros', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4791, 4309159, N'Gramado Xavier', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4792, 4309209, N'Gravataí', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4793, 4309258, N'Guabiju', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4794, 4309308, N'Guaíba', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4795, 4309407, N'Guaporé', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4796, 4309506, N'Guarani Das Missões', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4797, 4309555, N'Harmonia', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4798, 4309571, N'Herveiras', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4799, 4309605, N'Horizontina', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4800, 4309654, N'Hulha Negra', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4801, 4309704, N'Humaitá', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4802, 4309753, N'Ibarama', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4803, 4309803, N'Ibiaçá', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4804, 4309902, N'Ibiraiaras', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4805, 4309951, N'Ibirapuitã', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4806, 4310009, N'Ibirubá', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4807, 4310108, N'Igrejinha', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4808, 4310207, N'Ijuí', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4809, 4310306, N'Ilópolis', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4810, 4310330, N'Imbé', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4811, 4310363, N'Imigrante', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4812, 4310405, N'Independência', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4813, 4310413, N'Inhacorá', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4814, 4310439, N'Ipê', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4815, 4310462, N'Ipiranga do Sul', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4816, 4310504, N'Iraí', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4817, 4310538, N'Itaara', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4818, 4310553, N'Itacurubi', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4819, 4310579, N'Itapuca', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4820, 4310603, N'Itaqui', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4821, 4310652, N'Itati', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4822, 4310702, N'Itatiba do Sul', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4823, 4310751, N'Ivorá', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4824, 4310801, N'Ivoti', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4825, 4310850, N'Jaboticaba', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4826, 4310876, N'Jacuizinho', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4827, 4310900, N'Jacutinga', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4828, 4311007, N'Jaguarão', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4829, 4311106, N'Jaguari', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4830, 4311122, N'Jaquirana', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4831, 4311130, N'Jari', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4832, 4311155, N'Jóia', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4833, 4311205, N'Júlio de Castilhos', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4834, 4311239, N'Lagoa Bonita do Sul', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4835, 4311254, N'Lagoão', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4836, 4311270, N'Lagoa Dos Três Cantos', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4837, 4311304, N'Lagoa Vermelha', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4838, 4311403, N'Lajeado', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4839, 4311429, N'Lajeado do Bugre', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4840, 4311502, N'Lavras do Sul', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4841, 4311601, N'Liberato Salzano', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4842, 4311627, N'Lindolfo Collor', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4843, 4311643, N'Linha Nova', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4844, 4311700, N'Machadinho', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4845, 4311718, N'Maçambara', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4846, 4311734, N'Mampituba', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4847, 4311759, N'Manoel Viana', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4848, 4311775, N'Maquiné', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4849, 4311791, N'Maratá', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4850, 4311809, N'Marau', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4851, 4311908, N'Marcelino Ramos', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4852, 4311981, N'Mariana Pimentel', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4853, 4312005, N'Mariano Moro', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4854, 4312054, N'Marques de Souza', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4855, 4312104, N'Mata', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4856, 4312138, N'Mato Castelhano', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4857, 4312153, N'Mato Leitão', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4858, 4312179, N'Mato Queimado', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4859, 4312203, N'Maximiliano de Almeida', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4860, 4312252, N'Minas do Leão', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4861, 4312302, N'Miraguaí', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4862, 4312351, N'Montauri', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4863, 4312377, N'Monte Alegre Dos Campos', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4864, 4312385, N'Monte Belo do Sul', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4865, 4312401, N'Montenegro', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4866, 4312427, N'Mormaço', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4867, 4312443, N'Morrinhos do Sul', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4868, 4312450, N'Morro Redondo', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4869, 4312476, N'Morro Reuter', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4870, 4312500, N'Mostardas', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4871, 4312609, N'Muçum', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4872, 4312617, N'Muitos Capões', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4873, 4312625, N'Muliterno', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4874, 4312658, N'Não-me-toque', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4875, 4312674, N'Nicolau Vergueiro', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4876, 4312708, N'Nonoai', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4877, 4312757, N'Nova Alvorada', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4878, 4312807, N'Nova Araçá', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4879, 4312906, N'Nova Bassano', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4880, 4312955, N'Nova Boa Vista', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4881, 4313003, N'Nova Bréscia', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4882, 4313011, N'Nova Candelária', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4883, 4313037, N'Nova Esperança do Sul', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4884, 4313060, N'Nova Hartz', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4885, 4313086, N'Nova Pádua', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4886, 4313102, N'Nova Palma', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4887, 4313201, N'Nova Petrópolis', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4888, 4313300, N'Nova Prata', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4889, 4313334, N'Nova Ramada', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4890, 4313359, N'Nova Roma do Sul', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4891, 4313375, N'Nova Santa Rita', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4892, 4313391, N'Novo Cabrais', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4893, 4313409, N'Novo Hamburgo', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4894, 4313425, N'Novo Machado', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4895, 4313441, N'Novo Tiradentes', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4896, 4313466, N'Novo Xingu', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4897, 4313490, N'Novo Barreiro', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4898, 4313508, N'Osório', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4899, 4313607, N'Paim Filho', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4900, 4313656, N'Palmares do Sul', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4901, 4313706, N'Palmeira Das Missões', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4902, 4313805, N'Palmitinho', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4903, 4313904, N'Panambi', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4904, 4313953, N'Pantano Grande', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4905, 4314001, N'Paraí', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4906, 4314027, N'Paraíso do Sul', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4907, 4314035, N'Pareci Novo', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4908, 4314050, N'Parobé', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4909, 4314068, N'Passa Sete', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4910, 4314076, N'Passo do Sobrado', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4911, 4314100, N'Passo Fundo', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4912, 4314134, N'Paulo Bento', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4913, 4314159, N'Paverama', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4914, 4314175, N'Pedras Altas', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4915, 4314209, N'Pedro Osório', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4916, 4314308, N'Pejuçara', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4917, 4314407, N'Pelotas', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4918, 4314423, N'Picada Café', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4919, 4314456, N'Pinhal', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4920, 4314464, N'Pinhal da Serra', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4921, 4314472, N'Pinhal Grande', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4922, 4314498, N'Pinheirinho do Vale', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4923, 4314506, N'Pinheiro Machado', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4924, 4314548, N'Pinto Bandeira', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4925, 4314555, N'Pirapó', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4926, 4314605, N'Piratini', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4927, 4314704, N'Planalto', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4928, 4314753, N'Poço Das Antas', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4929, 4314779, N'Pontão', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4930, 4314787, N'Ponte Preta', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4931, 4314803, N'Portão', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4932, 4314902, N'Porto Alegre', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4933, 4315008, N'Porto Lucena', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4934, 4315057, N'Porto Mauá', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4935, 4315073, N'Porto Vera Cruz', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4936, 4315107, N'Porto Xavier', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4937, 4315131, N'Pouso Novo', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4938, 4315149, N'Presidente Lucena', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4939, 4315156, N'Progresso', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4940, 4315172, N'Protásio Alves', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4941, 4315206, N'Putinga', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4942, 4315305, N'Quaraí', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4943, 4315313, N'Quatro Irmãos', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4944, 4315321, N'Quevedos', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4945, 4315354, N'Quinze de Novembro', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4946, 4315404, N'Redentora', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4947, 4315453, N'Relvado', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4948, 4315503, N'Restinga Seca', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4949, 4315552, N'Rio Dos Índios', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4950, 4315602, N'Rio Grande', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4951, 4315701, N'Rio Pardo', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4952, 4315750, N'Riozinho', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4953, 4315800, N'Roca Sales', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4954, 4315909, N'Rodeio Bonito', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4955, 4315958, N'Rolador', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4956, 4316006, N'Rolante', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4957, 4316105, N'Ronda Alta', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4958, 4316204, N'Rondinha', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4959, 4316303, N'Roque Gonzales', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4960, 4316402, N'Rosário do Sul', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4961, 4316428, N'Sagrada Família', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4962, 4316436, N'Saldanha Marinho', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4963, 4316451, N'Salto do Jacuí', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4964, 4316477, N'Salvador Das Missões', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4965, 4316501, N'Salvador do Sul', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4966, 4316600, N'Sananduva', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4967, 4316709, N'Santa Bárbara do Sul', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4968, 4316733, N'Santa Cecília do Sul', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4969, 4316758, N'Santa Clara do Sul', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4970, 4316808, N'Santa Cruz do Sul', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4971, 4316907, N'Santa Maria', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4972, 4316956, N'Santa Maria do Herval', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4973, 4316972, N'Santa Margarida do Sul', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4974, 4317004, N'Santana da Boa Vista', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4975, 4317103, N'Santana do Livramento', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4976, 4317202, N'Santa Rosa', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4977, 4317251, N'Santa Tereza', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4978, 4317301, N'Santa Vitória do Palmar', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4979, 4317400, N'Santiago', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4980, 4317509, N'Santo Ângelo', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4981, 4317558, N'Santo Antônio do Palma', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4982, 4317608, N'Santo Antônio da Patrulha', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4983, 4317707, N'Santo Antônio Das Missões', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4984, 4317756, N'Santo Antônio do Planalto', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4985, 4317806, N'Santo Augusto', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4986, 4317905, N'Santo Cristo', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4987, 4317954, N'Santo Expedito do Sul', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4988, 4318002, N'São Borja', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4989, 4318051, N'São Domingos do Sul', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4990, 4318101, N'São Francisco de Assis', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4991, 4318200, N'São Francisco de Paula', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4992, 4318309, N'São Gabriel', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4993, 4318408, N'São Jerônimo', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4994, 4318424, N'São João da Urtiga', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4995, 4318432, N'São João do Polêsine', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4996, 4318440, N'São Jorge', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4997, 4318457, N'São José Das Missões', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4998, 4318465, N'São José do Herval', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (4999, 4318481, N'São José do Hortêncio', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5000, 4318499, N'São José do Inhacorá', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5001, 4318507, N'São José do Norte', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5002, 4318606, N'São José do Ouro', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5003, 4318614, N'São José do Sul', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5004, 4318622, N'São José Dos Ausentes', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5005, 4318705, N'São Leopoldo', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5006, 4318804, N'São Lourenço do Sul', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5007, 4318903, N'São Luiz Gonzaga', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5008, 4319000, N'São Marcos', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5009, 4319109, N'São Martinho', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5010, 4319125, N'São Martinho da Serra', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5011, 4319158, N'São Miguel Das Missões', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5012, 4319208, N'São Nicolau', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5013, 4319307, N'São Paulo Das Missões', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5014, 4319356, N'São Pedro da Serra', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5015, 4319364, N'São Pedro Das Missões', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5016, 4319372, N'São Pedro do Butiá', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5017, 4319406, N'São Pedro do Sul', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5018, 4319505, N'São Sebastião do Caí', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5019, 4319604, N'São Sepé', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5020, 4319703, N'São Valentim', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5021, 4319711, N'São Valentim do Sul', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5022, 4319737, N'São Valério do Sul', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5023, 4319752, N'São Vendelino', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5024, 4319802, N'São Vicente do Sul', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5025, 4319901, N'Sapiranga', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5026, 4320008, N'Sapucaia do Sul', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5027, 4320107, N'Sarandi', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5028, 4320206, N'Seberi', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5029, 4320230, N'Sede Nova', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5030, 4320263, N'Segredo', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5031, 4320305, N'Selbach', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5032, 4320321, N'Senador Salgado Filho', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5033, 4320354, N'Sentinela do Sul', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5034, 4320404, N'Serafina Corrêa', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5035, 4320453, N'Sério', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5036, 4320503, N'Sertão', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5037, 4320552, N'Sertão Santana', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5038, 4320578, N'Sete de Setembro', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5039, 4320602, N'Severiano de Almeida', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5040, 4320651, N'Silveira Martins', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5041, 4320677, N'Sinimbu', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5042, 4320701, N'Sobradinho', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5043, 4320800, N'Soledade', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5044, 4320859, N'Tabaí', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5045, 4320909, N'Tapejara', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5046, 4321006, N'Tapera', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5047, 4321105, N'Tapes', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5048, 4321204, N'Taquara', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5049, 4321303, N'Taquari', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5050, 4321329, N'Taquaruçu do Sul', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5051, 4321352, N'Tavares', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5052, 4321402, N'Tenente Portela', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5053, 4321436, N'Terra de Areia', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5054, 4321451, N'Teutônia', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5055, 4321469, N'Tio Hugo', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5056, 4321477, N'Tiradentes do Sul', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5057, 4321493, N'Toropi', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5058, 4321501, N'Torres', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5059, 4321600, N'Tramandaí', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5060, 4321626, N'Travesseiro', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5061, 4321634, N'Três Arroios', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5062, 4321667, N'Três Cachoeiras', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5063, 4321709, N'Três Coroas', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5064, 4321808, N'Três de Maio', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5065, 4321832, N'Três Forquilhas', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5066, 4321857, N'Três Palmeiras', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5067, 4321907, N'Três Passos', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5068, 4321956, N'Trindade do Sul', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5069, 4322004, N'Triunfo', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5070, 4322103, N'Tucunduva', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5071, 4322152, N'Tunas', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5072, 4322186, N'Tupanci do Sul', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5073, 4322202, N'Tupanciretã', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5074, 4322251, N'Tupandi', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5075, 4322301, N'Tuparendi', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5076, 4322327, N'Turuçu', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5077, 4322343, N'Ubiretama', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5078, 4322350, N'União da Serra', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5079, 4322376, N'Unistalda', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5080, 4322400, N'Uruguaiana', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5081, 4322509, N'Vacaria', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5082, 4322525, N'Vale Verde', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5083, 4322533, N'Vale do Sol', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5084, 4322541, N'Vale Real', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5085, 4322558, N'Vanini', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5086, 4322608, N'Venâncio Aires', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5087, 4322707, N'Vera Cruz', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5088, 4322806, N'Veranópolis', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5089, 4322855, N'Vespasiano Correa', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5090, 4322905, N'Viadutos', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5091, 4323002, N'Viamão', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5092, 4323101, N'Vicente Dutra', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5093, 4323200, N'Victor Graeff', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5094, 4323309, N'Vila Flores', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5095, 4323358, N'Vila Lângaro', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5096, 4323408, N'Vila Maria', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5097, 4323457, N'Vila Nova do Sul', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5098, 4323507, N'Vista Alegre', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5099, 4323606, N'Vista Alegre do Prata', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5100, 4323705, N'Vista Gaúcha', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5101, 4323754, N'Vitória Das Missões', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5102, 4323770, N'Westfalia', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5103, 4323804, N'Xangri-lá', 23)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5104, 5000203, N'Água Clara', 12)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5105, 5000252, N'Alcinópolis', 12)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5106, 5000609, N'Amambaí', 12)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5107, 5000708, N'Anastácio', 12)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5108, 5000807, N'Anaurilândia', 12)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5109, 5000856, N'Angélica', 12)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5110, 5000906, N'Antônio João', 12)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5111, 5001003, N'Aparecida do Taboado', 12)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5112, 5001102, N'Aquidauana', 12)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5113, 5001243, N'Aral Moreira', 12)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5114, 5001508, N'Bandeirantes', 12)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5115, 5001904, N'Bataguassu', 12)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5116, 5002001, N'Batayporã', 12)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5117, 5002100, N'Bela Vista', 12)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5118, 5002159, N'Bodoquena', 12)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5119, 5002209, N'Bonito', 12)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5120, 5002308, N'Brasilândia', 12)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5121, 5002407, N'Caarapó', 12)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5122, 5002605, N'Camapuã', 12)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5123, 5002704, N'Campo Grande', 12)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5124, 5002803, N'Caracol', 12)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5125, 5002902, N'Cassilândia', 12)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5126, 5002951, N'Chapadão do Sul', 12)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5127, 5003108, N'Corguinho', 12)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5128, 5003157, N'Coronel Sapucaia', 12)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5129, 5003207, N'Corumbá', 12)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5130, 5003256, N'Costa Rica', 12)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5131, 5003306, N'Coxim', 12)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5132, 5003454, N'Deodápolis', 12)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5133, 5003488, N'Dois Irmãos do Buriti', 12)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5134, 5003504, N'Douradina', 12)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5135, 5003702, N'Dourados', 12)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5136, 5003751, N'Eldorado', 12)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5137, 5003801, N'Fátima do Sul', 12)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5138, 5003900, N'Figueirão', 12)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5139, 5004007, N'Glória de Dourados', 12)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5140, 5004106, N'Guia Lopes da Laguna', 12)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5141, 5004304, N'Iguatemi', 12)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5142, 5004403, N'Inocência', 12)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5143, 5004502, N'Itaporã', 12)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5144, 5004601, N'Itaquiraí', 12)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5145, 5004700, N'Ivinhema', 12)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5146, 5004809, N'Japorã', 12)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5147, 5004908, N'Jaraguari', 12)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5148, 5005004, N'Jardim', 12)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5149, 5005103, N'Jateí', 12)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5150, 5005152, N'Juti', 12)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5151, 5005202, N'Ladário', 12)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5152, 5005251, N'Laguna Carapã', 12)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5153, 5005400, N'Maracaju', 12)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5154, 5005608, N'Miranda', 12)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5155, 5005681, N'Mundo Novo', 12)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5156, 5005707, N'Naviraí', 12)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5157, 5005806, N'Nioaque', 12)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5158, 5006002, N'Nova Alvorada do Sul', 12)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5159, 5006200, N'Nova Andradina', 12)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5160, 5006259, N'Novo Horizonte do Sul', 12)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5161, 5006275, N'Paraíso das Águas', 12)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5162, 5006309, N'Paranaíba', 12)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5163, 5006358, N'Paranhos', 12)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5164, 5006408, N'Pedro Gomes', 12)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5165, 5006606, N'Ponta Porã', 12)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5166, 5006903, N'Porto Murtinho', 12)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5167, 5007109, N'Ribas do Rio Pardo', 12)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5168, 5007208, N'Rio Brilhante', 12)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5169, 5007307, N'Rio Negro', 12)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5170, 5007406, N'Rio Verde de Mato Grosso', 12)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5171, 5007505, N'Rochedo', 12)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5172, 5007554, N'Santa Rita do Pardo', 12)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5173, 5007695, N'São Gabriel do Oeste', 12)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5174, 5007703, N'Sete Quedas', 12)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5175, 5007802, N'Selvíria', 12)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5176, 5007901, N'Sidrolândia', 12)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5177, 5007935, N'Sonora', 12)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5178, 5007950, N'Tacuru', 12)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5179, 5007976, N'Taquarussu', 12)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5180, 5008008, N'Terenos', 12)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5181, 5008305, N'Três Lagoas', 12)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5182, 5008404, N'Vicentina', 12)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5183, 5100102, N'Acorizal', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5184, 5100201, N'Água Boa', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5185, 5100250, N'Alta Floresta', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5186, 5100300, N'Alto Araguaia', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5187, 5100359, N'Alto Boa Vista', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5188, 5100409, N'Alto Garças', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5189, 5100508, N'Alto Paraguai', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5190, 5100607, N'Alto Taquari', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5191, 5100805, N'Apiacás', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5192, 5101001, N'Araguaiana', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5193, 5101209, N'Araguainha', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5194, 5101258, N'Araputanga', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5195, 5101308, N'Arenápolis', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5196, 5101407, N'Aripuanã', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5197, 5101605, N'Barão de Melgaço', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5198, 5101704, N'Barra do Bugres', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5199, 5101803, N'Barra do Garças', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5200, 5101852, N'Bom Jesus do Araguaia', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5201, 5101902, N'Brasnorte', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5202, 5102504, N'Cáceres', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5203, 5102603, N'Campinápolis', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5204, 5102637, N'Campo Novo do Parecis', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5205, 5102678, N'Campo Verde', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5206, 5102686, N'Campos de Júlio', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5207, 5102694, N'Canabrava do Norte', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5208, 5102702, N'Canarana', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5209, 5102793, N'Carlinda', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5210, 5102850, N'Castanheira', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5211, 5103007, N'Chapada Dos Guimarães', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5212, 5103056, N'Cláudia', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5213, 5103106, N'Cocalinho', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5214, 5103205, N'Colíder', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5215, 5103254, N'Colniza', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5216, 5103304, N'Comodoro', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5217, 5103353, N'Confresa', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5218, 5103361, N'Conquista D´oeste', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5219, 5103379, N'Cotriguaçu', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5220, 5103403, N'Cuiabá', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5221, 5103437, N'Curvelândia', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5222, 5103452, N'Denise', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5223, 5103502, N'Diamantino', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5224, 5103601, N'Dom Aquino', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5225, 5103700, N'Feliz Natal', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5226, 5103809, N'Figueirópolis D´oeste', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5227, 5103858, N'Gaúcha do Norte', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5228, 5103908, N'General Carneiro', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5229, 5103957, N'Glória D´oeste', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5230, 5104104, N'Guarantã do Norte', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5231, 5104203, N'Guiratinga', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5232, 5104500, N'Indiavaí', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5233, 5104526, N'Ipiranga do Norte', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5234, 5104542, N'Itanhangá', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5235, 5104559, N'Itaúba', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5236, 5104609, N'Itiquira', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5237, 5104807, N'Jaciara', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5238, 5104906, N'Jangada', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5239, 5105002, N'Jauru', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5240, 5105101, N'Juara', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5241, 5105150, N'Juína', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5242, 5105176, N'Juruena', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5243, 5105200, N'Juscimeira', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5244, 5105234, N'Lambari D´oeste', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5245, 5105259, N'Lucas do Rio Verde', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5246, 5105309, N'Luciára', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5247, 5105507, N'Vila Bela da Santíssima Trindade', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5248, 5105580, N'Marcelândia', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5249, 5105606, N'Matupá', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5250, 5105622, N'Mirassol D´oeste', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5251, 5105903, N'Nobres', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5252, 5106000, N'Nortelândia', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5253, 5106109, N'Nossa Senhora do Livramento', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5254, 5106158, N'Nova Bandeirantes', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5255, 5106174, N'Nova Nazaré', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5256, 5106182, N'Nova Lacerda', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5257, 5106190, N'Nova Santa Helena', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5258, 5106208, N'Nova Brasilândia', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5259, 5106216, N'Nova Canaã do Norte', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5260, 5106224, N'Nova Mutum', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5261, 5106232, N'Nova Olímpia', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5262, 5106240, N'Nova Ubiratã', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5263, 5106257, N'Nova Xavantina', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5264, 5106265, N'Novo Mundo', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5265, 5106273, N'Novo Horizonte do Norte', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5266, 5106281, N'Novo São Joaquim', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5267, 5106299, N'Paranaíta', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5268, 5106307, N'Paranatinga', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5269, 5106315, N'Novo Santo Antônio', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5270, 5106372, N'Pedra Preta', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5271, 5106422, N'Peixoto de Azevedo', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5272, 5106455, N'Planalto da Serra', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5273, 5106505, N'Poconé', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5274, 5106653, N'Pontal do Araguaia', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5275, 5106703, N'Ponte Branca', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5276, 5106752, N'Pontes e Lacerda', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5277, 5106778, N'Porto Alegre do Norte', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5278, 5106802, N'Porto Dos Gaúchos', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5279, 5106828, N'Porto Esperidião', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5280, 5106851, N'Porto Estrela', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5281, 5107008, N'Poxoréo', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5282, 5107040, N'Primavera do Leste', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5283, 5107065, N'Querência', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5284, 5107107, N'São José Dos Quatro Marcos', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5285, 5107156, N'Reserva do Cabaçal', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5286, 5107180, N'Ribeirão Cascalheira', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5287, 5107198, N'Ribeirãozinho', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5288, 5107206, N'Rio Branco', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5289, 5107248, N'Santa Carmem', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5290, 5107263, N'Santo Afonso', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5291, 5107297, N'São José do Povo', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5292, 5107305, N'São José do Rio Claro', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5293, 5107354, N'São José do Xingu', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5294, 5107404, N'São Pedro da Cipa', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5295, 5107578, N'Rondolândia', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5296, 5107602, N'Rondonópolis', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5297, 5107701, N'Rosário Oeste', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5298, 5107743, N'Santa Cruz do Xingu', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5299, 5107750, N'Salto do Céu', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5300, 5107768, N'Santa Rita do Trivelato', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5301, 5107776, N'Santa Terezinha', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5302, 5107792, N'Santo Antônio do Leste', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5303, 5107800, N'Santo Antônio do Leverger', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5304, 5107859, N'São Félix do Araguaia', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5305, 5107875, N'Sapezal', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5306, 5107883, N'Serra Nova Dourada', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5307, 5107909, N'Sinop', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5308, 5107925, N'Sorriso', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5309, 5107941, N'Tabaporã', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5310, 5107958, N'Tangará da Serra', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5311, 5108006, N'Tapurah', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5312, 5108055, N'Terra Nova do Norte', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5313, 5108105, N'Tesouro', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5314, 5108204, N'Torixoréu', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5315, 5108303, N'União do Sul', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5316, 5108352, N'Vale de São Domingos', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5317, 5108402, N'Várzea Grande', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5318, 5108501, N'Vera', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5319, 5108600, N'Vila Rica', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5320, 5108808, N'Nova Guarita', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5321, 5108857, N'Nova Marilândia', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5322, 5108907, N'Nova Maringá', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5323, 5108956, N'Nova Monte Verde', 13)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5324, 5200050, N'Abadia de Goiás', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5325, 5200100, N'Abadiânia', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5326, 5200134, N'Acreúna', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5327, 5200159, N'Adelândia', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5328, 5200175, N'Água Fria de Goiás', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5329, 5200209, N'Água Limpa', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5330, 5200258, N'Águas Lindas de Goiás', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5331, 5200308, N'Alexânia', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5332, 5200506, N'Aloândia', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5333, 5200555, N'Alto Horizonte', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5334, 5200605, N'Alto Paraíso de Goiás', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5335, 5200803, N'Alvorada do Norte', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5336, 5200829, N'Amaralina', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5337, 5200852, N'Americano do Brasil', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5338, 5200902, N'Amorinópolis', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5339, 5201108, N'Anápolis', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5340, 5201207, N'Anhanguera', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5341, 5201306, N'Anicuns', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5342, 5201405, N'Aparecida de Goiânia', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5343, 5201454, N'Aparecida do Rio Doce', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5344, 5201504, N'Aporé', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5345, 5201603, N'Araçu', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5346, 5201702, N'Aragarças', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5347, 5201801, N'Aragoiânia', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5348, 5202155, N'Araguapaz', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5349, 5202353, N'Arenópolis', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5350, 5202502, N'Aruanã', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5351, 5202601, N'Aurilândia', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5352, 5202809, N'Avelinópolis', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5353, 5203104, N'Baliza', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5354, 5203203, N'Barro Alto', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5355, 5203302, N'Bela Vista de Goiás', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5356, 5203401, N'Bom Jardim de Goiás', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5357, 5203500, N'Bom Jesus de Goiás', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5358, 5203559, N'Bonfinópolis', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5359, 5203575, N'Bonópolis', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5360, 5203609, N'Brazabrantes', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5361, 5203807, N'Britânia', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5362, 5203906, N'Buriti Alegre', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5363, 5203939, N'Buriti de Goiás', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5364, 5203962, N'Buritinópolis', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5365, 5204003, N'Cabeceiras', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5366, 5204102, N'Cachoeira Alta', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5367, 5204201, N'Cachoeira de Goiás', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5368, 5204250, N'Cachoeira Dourada', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5369, 5204300, N'Caçu', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5370, 5204409, N'Caiapônia', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5371, 5204508, N'Caldas Novas', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5372, 5204557, N'Caldazinha', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5373, 5204607, N'Campestre de Goiás', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5374, 5204656, N'Campinaçu', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5375, 5204706, N'Campinorte', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5376, 5204805, N'Campo Alegre de Goiás', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5377, 5204854, N'Campo Limpo de Goiás', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5378, 5204904, N'Campos Belos', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5379, 5204953, N'Campos Verdes', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5380, 5205000, N'Carmo do Rio Verde', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5381, 5205059, N'Castelândia', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5382, 5205109, N'Catalão', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5383, 5205208, N'Caturaí', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5384, 5205307, N'Cavalcante', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5385, 5205406, N'Ceres', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5386, 5205455, N'Cezarina', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5387, 5205471, N'Chapadão do Céu', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5388, 5205497, N'Cidade Ocidental', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5389, 5205513, N'Cocalzinho de Goiás', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5390, 5205521, N'Colinas do Sul', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5391, 5205703, N'Córrego do Ouro', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5392, 5205802, N'Corumbá de Goiás', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5393, 5205901, N'Corumbaíba', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5394, 5206206, N'Cristalina', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5395, 5206305, N'Cristianópolis', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5396, 5206404, N'Crixás', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5397, 5206503, N'Cromínia', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5398, 5206602, N'Cumari', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5399, 5206701, N'Damianópolis', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5400, 5206800, N'Damolândia', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5401, 5206909, N'Davinópolis', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5402, 5207105, N'Diorama', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5403, 5207253, N'Doverlândia', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5404, 5207352, N'Edealina', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5405, 5207402, N'Edéia', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5406, 5207501, N'Estrela do Norte', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5407, 5207535, N'Faina', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5408, 5207600, N'Fazenda Nova', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5409, 5207808, N'Firminópolis', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5410, 5207907, N'Flores de Goiás', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5411, 5208004, N'Formosa', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5412, 5208103, N'Formoso', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5413, 5208152, N'Gameleira de Goiás', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5414, 5208301, N'Divinópolis de Goiás', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5415, 5208400, N'Goianápolis', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5416, 5208509, N'Goiandira', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5417, 5208608, N'Goianésia', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5418, 5208707, N'Goiânia', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5419, 5208806, N'Goianira', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5420, 5208905, N'Goiás', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5421, 5209101, N'Goiatuba', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5422, 5209150, N'Gouvelândia', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5423, 5209200, N'Guapó', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5424, 5209291, N'Guaraíta', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5425, 5209408, N'Guarani de Goiás', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5426, 5209457, N'Guarinos', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5427, 5209606, N'Heitoraí', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5428, 5209705, N'Hidrolândia', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5429, 5209804, N'Hidrolina', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5430, 5209903, N'Iaciara', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5431, 5209937, N'Inaciolândia', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5432, 5209952, N'Indiara', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5433, 5210000, N'Inhumas', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5434, 5210109, N'Ipameri', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5435, 5210158, N'Ipiranga de Goiás', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5436, 5210208, N'Iporá', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5437, 5210307, N'Israelândia', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5438, 5210406, N'Itaberaí', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5439, 5210562, N'Itaguari', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5440, 5210604, N'Itaguaru', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5441, 5210802, N'Itajá', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5442, 5210901, N'Itapaci', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5443, 5211008, N'Itapirapuã', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5444, 5211206, N'Itapuranga', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5445, 5211305, N'Itarumã', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5446, 5211404, N'Itauçu', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5447, 5211503, N'Itumbiara', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5448, 5211602, N'Ivolândia', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5449, 5211701, N'Jandaia', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5450, 5211800, N'Jaraguá', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5451, 5211909, N'Jataí', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5452, 5212006, N'Jaupaci', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5453, 5212055, N'Jesúpolis', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5454, 5212105, N'Joviânia', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5455, 5212204, N'Jussara', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5456, 5212253, N'Lagoa Santa', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5457, 5212303, N'Leopoldo de Bulhões', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5458, 5212501, N'Luziânia', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5459, 5212600, N'Mairipotaba', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5460, 5212709, N'Mambaí', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5461, 5212808, N'Mara Rosa', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5462, 5212907, N'Marzagão', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5463, 5212956, N'Matrinchã', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5464, 5213004, N'Maurilândia', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5465, 5213053, N'Mimoso de Goiás', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5466, 5213087, N'Minaçu', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5467, 5213103, N'Mineiros', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5468, 5213400, N'Moiporá', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5469, 5213509, N'Monte Alegre de Goiás', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5470, 5213707, N'Montes Claros de Goiás', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5471, 5213756, N'Montividiu', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5472, 5213772, N'Montividiu do Norte', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5473, 5213806, N'Morrinhos', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5474, 5213855, N'Morro Agudo de Goiás', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5475, 5213905, N'Mossâmedes', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5476, 5214002, N'Mozarlândia', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5477, 5214051, N'Mundo Novo', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5478, 5214101, N'Mutunópolis', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5479, 5214408, N'Nazário', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5480, 5214507, N'Nerópolis', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5481, 5214606, N'Niquelândia', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5482, 5214705, N'Nova América', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5483, 5214804, N'Nova Aurora', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5484, 5214838, N'Nova Crixás', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5485, 5214861, N'Nova Glória', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5486, 5214879, N'Nova Iguaçu de Goiás', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5487, 5214903, N'Nova Roma', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5488, 5215009, N'Nova Veneza', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5489, 5215207, N'Novo Brasil', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5490, 5215231, N'Novo Gama', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5491, 5215256, N'Novo Planalto', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5492, 5215306, N'Orizona', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5493, 5215405, N'Ouro Verde de Goiás', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5494, 5215504, N'Ouvidor', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5495, 5215603, N'Padre Bernardo', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5496, 5215652, N'Palestina de Goiás', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5497, 5215702, N'Palmeiras de Goiás', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5498, 5215801, N'Palmelo', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5499, 5215900, N'Palminópolis', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5500, 5216007, N'Panamá', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5501, 5216304, N'Paranaiguara', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5502, 5216403, N'Paraúna', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5503, 5216452, N'Perolândia', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5504, 5216809, N'Petrolina de Goiás', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5505, 5216908, N'Pilar de Goiás', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5506, 5217104, N'Piracanjuba', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5507, 5217203, N'Piranhas', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5508, 5217302, N'Pirenópolis', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5509, 5217401, N'Pires do Rio', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5510, 5217609, N'Planaltina', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5511, 5217708, N'Pontalina', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5512, 5218003, N'Porangatu', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5513, 5218052, N'Porteirão', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5514, 5218102, N'Portelândia', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5515, 5218300, N'Posse', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5516, 5218391, N'Professor Jamil', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5517, 5218508, N'Quirinópolis', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5518, 5218607, N'Rialma', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5519, 5218706, N'Rianápolis', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5520, 5218789, N'Rio Quente', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5521, 5218805, N'Rio Verde', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5522, 5218904, N'Rubiataba', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5523, 5219001, N'Sanclerlândia', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5524, 5219100, N'Santa Bárbara de Goiás', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5525, 5219209, N'Santa Cruz de Goiás', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5526, 5219258, N'Santa fé de Goiás', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5527, 5219308, N'Santa Helena de Goiás', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5528, 5219357, N'Santa Isabel', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5529, 5219407, N'Santa Rita do Araguaia', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5530, 5219456, N'Santa Rita do Novo Destino', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5531, 5219506, N'Santa Rosa de Goiás', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5532, 5219605, N'Santa Tereza de Goiás', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5533, 5219704, N'Santa Terezinha de Goiás', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5534, 5219712, N'Santo Antônio da Barra', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5535, 5219738, N'Santo Antônio de Goiás', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5536, 5219753, N'Santo Antônio do Descoberto', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5537, 5219803, N'São Domingos', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5538, 5219902, N'São Francisco de Goiás', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5539, 5220009, N'São João D´aliança', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5540, 5220058, N'São João da Paraúna', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5541, 5220108, N'São Luís de Montes Belos', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5542, 5220157, N'São Luíz do Norte', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5543, 5220207, N'São Miguel do Araguaia', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5544, 5220264, N'São Miguel do Passa Quatro', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5545, 5220280, N'São Patrício', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5546, 5220405, N'São Simão', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5547, 5220454, N'Senador Canedo', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5548, 5220504, N'Serranópolis', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5549, 5220603, N'Silvânia', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5550, 5220686, N'Simolândia', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5551, 5220702, N'Sítio D´abadia', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5552, 5221007, N'Taquaral de Goiás', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5553, 5221080, N'Teresina de Goiás', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5554, 5221197, N'Terezópolis de Goiás', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5555, 5221304, N'Três Ranchos', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5556, 5221403, N'Trindade', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5557, 5221452, N'Trombas', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5558, 5221502, N'Turvânia', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5559, 5221551, N'Turvelândia', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5560, 5221577, N'Uirapuru', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5561, 5221601, N'Uruaçu', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5562, 5221700, N'Uruana', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5563, 5221809, N'Urutaí', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5564, 5221858, N'Valparaíso de Goiás', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5565, 5221908, N'Varjão', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5566, 5222005, N'Vianópolis', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5567, 5222054, N'Vicentinópolis', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5568, 5222203, N'Vila Boa', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5569, 5222302, N'Vila Propício', 9)
GO
INSERT [dbo].[Cidades] ([Id], [IBGE], [Nome], [IdEstados]) VALUES (5570, 5300108, N'Brasília', 7)
GO
SET IDENTITY_INSERT [dbo].[Cidades] OFF
GO
SET IDENTITY_INSERT [dbo].[Estados] ON 
GO
INSERT [dbo].[Estados] ([Id], [Nome], [UF]) VALUES (1, N'Acre', N'AC')
GO
INSERT [dbo].[Estados] ([Id], [Nome], [UF]) VALUES (2, N'Alagoas', N'AL')
GO
INSERT [dbo].[Estados] ([Id], [Nome], [UF]) VALUES (3, N'Amazonas', N'AM')
GO
INSERT [dbo].[Estados] ([Id], [Nome], [UF]) VALUES (4, N'Amapá', N'AP')
GO
INSERT [dbo].[Estados] ([Id], [Nome], [UF]) VALUES (5, N'Bahia', N'BA')
GO
INSERT [dbo].[Estados] ([Id], [Nome], [UF]) VALUES (6, N'Ceará', N'CE')
GO
INSERT [dbo].[Estados] ([Id], [Nome], [UF]) VALUES (7, N'Distrito Federal', N'DF')
GO
INSERT [dbo].[Estados] ([Id], [Nome], [UF]) VALUES (8, N'Espírito Santo', N'ES')
GO
INSERT [dbo].[Estados] ([Id], [Nome], [UF]) VALUES (9, N'Goiás', N'GO')
GO
INSERT [dbo].[Estados] ([Id], [Nome], [UF]) VALUES (10, N'Maranhão', N'MA')
GO
INSERT [dbo].[Estados] ([Id], [Nome], [UF]) VALUES (11, N'Minas Gerais', N'MG')
GO
INSERT [dbo].[Estados] ([Id], [Nome], [UF]) VALUES (12, N'Mato Grosso do Sul', N'MS')
GO
INSERT [dbo].[Estados] ([Id], [Nome], [UF]) VALUES (13, N'Mato Grosso', N'MT')
GO
INSERT [dbo].[Estados] ([Id], [Nome], [UF]) VALUES (14, N'Pará', N'PA')
GO
INSERT [dbo].[Estados] ([Id], [Nome], [UF]) VALUES (15, N'Paraíba', N'PB')
GO
INSERT [dbo].[Estados] ([Id], [Nome], [UF]) VALUES (16, N'Pernambuco', N'PE')
GO
INSERT [dbo].[Estados] ([Id], [Nome], [UF]) VALUES (17, N'Piauí', N'PI')
GO
INSERT [dbo].[Estados] ([Id], [Nome], [UF]) VALUES (18, N'Paraná', N'PR')
GO
INSERT [dbo].[Estados] ([Id], [Nome], [UF]) VALUES (19, N'Rio de Janeiro', N'RJ')
GO
INSERT [dbo].[Estados] ([Id], [Nome], [UF]) VALUES (20, N'Rio Grande do Norte', N'RN')
GO
INSERT [dbo].[Estados] ([Id], [Nome], [UF]) VALUES (21, N'Rondônia', N'RO')
GO
INSERT [dbo].[Estados] ([Id], [Nome], [UF]) VALUES (22, N'Roraima', N'RR')
GO
INSERT [dbo].[Estados] ([Id], [Nome], [UF]) VALUES (23, N'Rio Grande do Sul', N'RS')
GO
INSERT [dbo].[Estados] ([Id], [Nome], [UF]) VALUES (24, N'Santa Catarina', N'SC')
GO
INSERT [dbo].[Estados] ([Id], [Nome], [UF]) VALUES (25, N'Sergipe', N'SE')
GO
INSERT [dbo].[Estados] ([Id], [Nome], [UF]) VALUES (26, N'São Paulo', N'SP')
GO
INSERT [dbo].[Estados] ([Id], [Nome], [UF]) VALUES (27, N'Tocantins', N'TO')
GO
SET IDENTITY_INSERT [dbo].[Estados] OFF
GO
SET IDENTITY_INSERT [dbo].[Imovel] ON 
GO
INSERT [dbo].[Imovel] ([Id], [Descricao], [Detalhamento], [LinkFoto], [Cep], [Numero], [Logradouro], [Bairro], [Cidade], [Complemento], [UF], [VrAluguel], [Tamanho], [Quartos], [Banheiros], [Vagas], [IdLocador], [IdLocatario], [IdTipoImovel], [Salas]) VALUES (4, N'Apartamento com 2 quartos Nova Gameleira', N'APARTAMENTO 2 QUARTOS COM ARMÁRIOS PLANEJADOS, SALA, COZINHA CONJUGADA COM ÁREA DE SERVIÇO AZULEJADAS COM ARMÁRIOS, BANHEIRO COM BOX, PISO DOS QUARTOS E SALA DE TABUA CORRIDA, RESTANTE CERÂMICA, 3° ANDAR, ESTACIONAMENTO, QUADRA, PLAYGROUN', N'4_Imov.png', N'30730500', N'156', N'Rua Olinto Magalhães ', N'Padre Eustáquio', N'Belo Horizonte ', N'', N'MG', CAST(600.25 AS Decimal(18, 2)), CAST(25.00 AS Decimal(8, 2)), 1, 1, 1, 3, 3, 1, 0)
GO
INSERT [dbo].[Imovel] ([Id], [Descricao], [Detalhamento], [LinkFoto], [Cep], [Numero], [Logradouro], [Bairro], [Cidade], [Complemento], [UF], [VrAluguel], [Tamanho], [Quartos], [Banheiros], [Vagas], [IdLocador], [IdLocatario], [IdTipoImovel], [Salas]) VALUES (7, N'Apartamento com 3 quartos para lançamento no bairro Niterói', N'A melhor localização. Próximo a PUC a 5 minutos do centro.
Visite o Stand de vendas e conheça o apartamento decorado.', N'7_Imov.png', N'32672175', N'327 ', N'Av. Manhuaçu', N'Niterói', N'Betim', N'', N'MG', CAST(1123.00 AS Decimal(18, 2)), CAST(84.00 AS Decimal(8, 2)), 2, 1, 1, 5, 5, 1, 0)
GO
INSERT [dbo].[Imovel] ([Id], [Descricao], [Detalhamento], [LinkFoto], [Cep], [Numero], [Logradouro], [Bairro], [Cidade], [Complemento], [UF], [VrAluguel], [Tamanho], [Quartos], [Banheiros], [Vagas], [IdLocador], [IdLocatario], [IdTipoImovel], [Salas]) VALUES (10, N'Casa em Vila Santa Mônica', N'1º Pavimento:
° Sala ampla para 2 ambientes com pé direito duplo e varanda;
° Lavabo com bancada esculpida;
° 3 Quartos sendo 1 Suíte com Closet;
° Banheiro da Suíte e Social com bancada esculpida, nicho na área de banho e pré disposição para aquecimento solar nos chuveiros e torneiras;
° Cozinha em conceito aberto com bancada em granito', N'10_Imov.png', N'31530290', N'545', N'Rua dos Bororós', N'Santa Monica', N'Belo Horizonte', N'', N'MG', CAST(1500.00 AS Decimal(18, 2)), CAST(240.00 AS Decimal(8, 2)), 4, 2, 1, 3, 3, 3, 0)
GO
INSERT [dbo].[Imovel] ([Id], [Descricao], [Detalhamento], [LinkFoto], [Cep], [Numero], [Logradouro], [Bairro], [Cidade], [Complemento], [UF], [VrAluguel], [Tamanho], [Quartos], [Banheiros], [Vagas], [IdLocador], [IdLocatario], [IdTipoImovel], [Salas]) VALUES (14, N'Comercial, Bairro Santo Antônio', N'Ótima casa comercial, excelente ponto na região centro sul, toda reformada com rebaixamento de teto em gesso, piso laminado, ar condicionado, de fácil acesso e perto dos pontos principais da região.1º piso: 3 salas com ar condicionado, piso em laminado, rebaixamento de teto em gesso', N'14_Imov.png', N'30310702', N'111', N'Rua Montes Claros', N'Carmo Sion', N'Belo Horizonte', N'', N'MG', CAST(1300.00 AS Decimal(18, 2)), CAST(112.00 AS Decimal(8, 2)), 2, 1, 1, 5, 5, 6, 0)
GO
INSERT [dbo].[Imovel] ([Id], [Descricao], [Detalhamento], [LinkFoto], [Cep], [Numero], [Logradouro], [Bairro], [Cidade], [Complemento], [UF], [VrAluguel], [Tamanho], [Quartos], [Banheiros], [Vagas], [IdLocador], [IdLocatario], [IdTipoImovel], [Salas]) VALUES (16, N'Apartamento 2 quartos para alugar 70m²', N'Apartamento 2 quartos para locação Luxemburgo!

Localizado Próximo da Praça Jose Cavaline, comércio variado, excelentes padarias, bancos, escolas.

Prédio com porteiro físico 24 horas, 2 elevadores, piscina e quadra poliesportiva.

Apartamento com sala ampla para 2 ambientes com varanda e piso em tábua corrida com teto em gesso com iluminação embutida', N'16_Imov.png', N'30380000', N'1150', N'Av. Prudente de Morais', N'Luxemburgo', N'Belo Horizonte', N'', N'MG', CAST(1900.00 AS Decimal(18, 2)), CAST(266.00 AS Decimal(8, 2)), 2, 1, 1, 3, 3, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[Imovel] OFF
GO
SET IDENTITY_INSERT [dbo].[ImovelFotos] ON 
GO
INSERT [dbo].[ImovelFotos] ([Id], [Titulo], [Detalhamento], [LinkFoto], [IdMovel]) VALUES (1, N' ', N' ', N'4_Imov.png', 4)
GO
INSERT [dbo].[ImovelFotos] ([Id], [Titulo], [Detalhamento], [LinkFoto], [IdMovel]) VALUES (2, NULL, NULL, N'4_Imov.png', 7)
GO
INSERT [dbo].[ImovelFotos] ([Id], [Titulo], [Detalhamento], [LinkFoto], [IdMovel]) VALUES (3, NULL, NULL, N'4_Imov.png', 10)
GO
INSERT [dbo].[ImovelFotos] ([Id], [Titulo], [Detalhamento], [LinkFoto], [IdMovel]) VALUES (4, NULL, NULL, N'4_Imov.png', 14)
GO
INSERT [dbo].[ImovelFotos] ([Id], [Titulo], [Detalhamento], [LinkFoto], [IdMovel]) VALUES (5, NULL, NULL, N'4_Imov.png', 16)
GO
SET IDENTITY_INSERT [dbo].[ImovelFotos] OFF
GO
SET IDENTITY_INSERT [dbo].[TipoImovel] ON 
GO
INSERT [dbo].[TipoImovel] ([Id], [Nome]) VALUES (1, N'Apartamento')
GO
INSERT [dbo].[TipoImovel] ([Id], [Nome]) VALUES (2, N'Andar inteiro')
GO
INSERT [dbo].[TipoImovel] ([Id], [Nome]) VALUES (3, N'Casa normal(morar)')
GO
INSERT [dbo].[TipoImovel] ([Id], [Nome]) VALUES (4, N'Casa em Condomínio')
GO
INSERT [dbo].[TipoImovel] ([Id], [Nome]) VALUES (5, N'Casa na praia')
GO
INSERT [dbo].[TipoImovel] ([Id], [Nome]) VALUES (6, N'Casa comercial')
GO
INSERT [dbo].[TipoImovel] ([Id], [Nome]) VALUES (7, N'Edifício')
GO
INSERT [dbo].[TipoImovel] ([Id], [Nome]) VALUES (8, N'Comercio')
GO
INSERT [dbo].[TipoImovel] ([Id], [Nome]) VALUES (9, N'Galpão')
GO
INSERT [dbo].[TipoImovel] ([Id], [Nome]) VALUES (10, N'Garagem')
GO
INSERT [dbo].[TipoImovel] ([Id], [Nome]) VALUES (11, N'Oficina/industria')
GO
INSERT [dbo].[TipoImovel] ([Id], [Nome]) VALUES (12, N'Sala')
GO
INSERT [dbo].[TipoImovel] ([Id], [Nome]) VALUES (13, N'Salão Festa')
GO
INSERT [dbo].[TipoImovel] ([Id], [Nome]) VALUES (14, N'Sitio')
GO
INSERT [dbo].[TipoImovel] ([Id], [Nome]) VALUES (15, N'Studio')
GO
INSERT [dbo].[TipoImovel] ([Id], [Nome]) VALUES (16, N'Terraço/Cobertura')
GO
SET IDENTITY_INSERT [dbo].[TipoImovel] OFF
GO
SET IDENTITY_INSERT [dbo].[UsuarioLocacao] ON 
GO
INSERT [dbo].[UsuarioLocacao] ([Id], [Nome], [Documento], [email], [Senha], [Celular], [TelefoneFixo]) VALUES (3, N'Tudor Ativos S.A', N'0455445545', N'tudorativos@bol.com.br', N'4545', NULL, NULL)
GO
INSERT [dbo].[UsuarioLocacao] ([Id], [Nome], [Documento], [email], [Senha], [Celular], [TelefoneFixo]) VALUES (5, N'Imobiliária Bom Destino Ltda', N'7888', N'bomdestino@altavista.com.br', N'1215', NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[UsuarioLocacao] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Nome_UNIQUE]    Script Date: 05/12/2022 22:14:09 ******/
CREATE UNIQUE NONCLUSTERED INDEX [Nome_UNIQUE] ON [dbo].[UsuarioLocacao]
(
	[Nome] ASC,
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Bairros]  WITH CHECK ADD  CONSTRAINT [FK_Bairros_Cidades] FOREIGN KEY([IdCidade])
REFERENCES [dbo].[Cidades] ([Id])
GO
ALTER TABLE [dbo].[Bairros] CHECK CONSTRAINT [FK_Bairros_Cidades]
GO
ALTER TABLE [dbo].[Cidades]  WITH CHECK ADD  CONSTRAINT [FK_Cidades_Estados] FOREIGN KEY([IdEstados])
REFERENCES [dbo].[Estados] ([Id])
GO
ALTER TABLE [dbo].[Cidades] CHECK CONSTRAINT [FK_Cidades_Estados]
GO
ALTER TABLE [dbo].[Imovel]  WITH CHECK ADD  CONSTRAINT [FK_IdLocador_IdUsuarioLocacao] FOREIGN KEY([IdLocador])
REFERENCES [dbo].[UsuarioLocacao] ([Id])
GO
ALTER TABLE [dbo].[Imovel] CHECK CONSTRAINT [FK_IdLocador_IdUsuarioLocacao]
GO
ALTER TABLE [dbo].[Imovel]  WITH CHECK ADD  CONSTRAINT [FK_IdLocatario_IdUsuarioLocacao] FOREIGN KEY([IdLocatario])
REFERENCES [dbo].[UsuarioLocacao] ([Id])
GO
ALTER TABLE [dbo].[Imovel] CHECK CONSTRAINT [FK_IdLocatario_IdUsuarioLocacao]
GO
ALTER TABLE [dbo].[Imovel]  WITH CHECK ADD  CONSTRAINT [FK_Imovel_TipoImovel] FOREIGN KEY([IdTipoImovel])
REFERENCES [dbo].[TipoImovel] ([Id])
GO
ALTER TABLE [dbo].[Imovel] CHECK CONSTRAINT [FK_Imovel_TipoImovel]
GO
ALTER TABLE [dbo].[ImovelFotos]  WITH CHECK ADD  CONSTRAINT [FK_ImovelFotos_Imovel] FOREIGN KEY([IdMovel])
REFERENCES [dbo].[Imovel] ([Id])
GO
ALTER TABLE [dbo].[ImovelFotos] CHECK CONSTRAINT [FK_ImovelFotos_Imovel]
GO
