/****** Object:  Table [dbo].[Authors]    Script Date: 6/29/2016 8:21:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Authors]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Authors](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[DateOfBirth] [date] NOT NULL,
	[DateOfDeath] [date] NULL,
 CONSTRAINT [PK_Authors] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Awards]    Script Date: 6/29/2016 8:21:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Awards]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Awards](
	[ID] [int] NOT NULL,
	[AwardName] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Awards] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Nominations]    Script Date: 6/29/2016 8:21:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Nominations]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Nominations](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[BookID] [int] NOT NULL,
	[AwardID] [int] NOT NULL,
	[YearNominated] [int] NULL,
	[IsWinner] [bit] NULL,
 CONSTRAINT [PK_Nominations] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Novels]    Script Date: 6/29/2016 8:21:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Novels]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Novels](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](150) NOT NULL,
	[AuthorID] [int] NOT NULL,
	[IsRead] [bit] NULL,
 CONSTRAINT [PK_HugoNovels] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[Authors] ON 

GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (78, N'Edgar Rice Burroughs', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (79, N'E. E. Smith', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (80, N'Jack Williamson', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (81, N'C. S. Lewis', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (82, N'T. H. White', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (83, N'A. E. van Vogt', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (85, N'Fritz Leiber', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (86, N'Edmond Hamilton', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (87, N'Isaac Asimov', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (89, N'Edward E. Smith', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (90, N'Jack Vance', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (92, N'Robert A. Heinlein', CAST(N'1907-07-07' AS Date), CAST(N'1988-05-08' AS Date))
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (93, N'Alfred Bester', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (94, N'Hal Clement', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (95, N'Arthur C. Clarke', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (97, N'Theodore Sturgeon', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (98, N'Ray Bradbury', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (99, N'Mark Clifton and Frank Riley', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (102, N'Poul Anderson', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (103, N'Algis Budrys', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (105, N'Robert Sheckley', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (106, N'James Blish', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (107, N'Gordon R. Dickson', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (108, N'Murray Leinster', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (109, N'Mark Phillips', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (110, N'Kurt Vonnegut', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (114, N'Harry Harrison', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (116, N'Walter M. Miller, Jr.', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (117, N'Daniel F. Galouye', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (119, N'Clifford D. Simak', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (120, N'James White', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (122, N'Marion Zimmer Bradley', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (123, N'H. Beam Piper', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (124, N'Jean Bruller', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (126, N'Philip K. Dick', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (128, N'Andre Norton', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (131, N'John Brunner', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (132, N'Edgar Pangborn', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (133, N'Cordwainer Smith', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (137, N'Frank Herbert', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (138, N'Roger Zelazny', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (139, N'Samuel R. Delany', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (140, N'Randall Garrett', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (141, N'James H. Schmitz', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (142, N'Thomas Burnett Swann', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (143, N'Daniel Keyes', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (146, N'Piers Anthony', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (147, N'Chester Anderson', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (148, N'Robert Silverberg', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (150, N'Alexei Panshin', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (152, N'R. A. Lafferty', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (157, N'Norman Spinrad', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (159, N'Ursula K. Le Guin', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (162, N'Wilson Tucker', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (164, N'Larry Niven', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (166, N'Anne McCaffrey', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (169, N'Philip José Farmer', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (170, N'David Gerrold', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (183, N'Christopher Priest', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (184, N'Larry Niven and Jerry Pournelle', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (190, N'Joe Haldeman', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (192, N'Frederik Pohl', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (195, N'Kate Wilhelm', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (198, N'George R. R. Martin', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (202, N'C. J. Cherryh', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (203, N'Tom Reamy', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (204, N'Vonda N. McIntyre', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (205, N'John Varley', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (207, N'Patricia A. McKillip', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (208, N'Thomas Disch', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (214, N'Joan D. Vinge', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (215, N'Gene Wolfe', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (216, N'Julian May', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (218, N'John Crowley', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (222, N'Donald Kingsbury', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (226, N'R. A. MacAvoy', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (230, N'David Brin', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (231, N'David R. Palmer', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (232, N'Vernor Vinge', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (235, N'William Gibson', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (239, N'Greg Bear', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (240, N'Orson Scott Card', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (241, N'Bob Shaw', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (244, N'L. Ron Hubbard', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (246, N'George Alec Effinger', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (252, N'Bruce Sterling', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (254, N'Lois McMaster Bujold', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (259, N'Sheri S. Tepper', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (260, N'Dan Simmons', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (262, N'Michael P. Kube-McDowell', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (266, N'Emma Bull', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (268, N'Michael Swanwick', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (272, N'Maureen F. McHugh', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (274, N'Kim Stanley Robinson', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (276, N'Connie Willis', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (278, N'Nancy Kress', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (282, N'John Barnes', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (284, N'Michael Bishop', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (285, N'James Morrow', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (287, N'Stephen Baxter', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (289, N'Robert J. Sawyer', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (291, N'Neal Stephenson', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (292, N'Elizabeth Moon', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (297, N'Walter Jon Williams', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (302, N'Mary Doria Russell', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (303, N'Robert Charles Wilson', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (310, N'J. K. Rowling', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (314, N'Ken MacLeod', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (315, N'Nalo Hopkinson', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (318, N'China Miéville', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (322, N'Neil Gaiman', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (329, N'Charles Stross', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (333, N'Ian McDonald', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (334, N'Iain M. Banks', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (337, N'Susanna Clarke', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (340, N'John Scalzi', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (344, N'Naomi Novik', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (345, N'Michael F. Flynn', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (346, N'Peter Watts', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (352, N'Michael Chabon', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (353, N'Cory Doctorow', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (358, N'Cherie Priest', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (360, N'Catherynne M. Valente', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (362, N'Paolo Bacigalupi', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (366, N'Mira Grant', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (367, N'N. K. Jemisin', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (372, N'James S. A. Corey', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (373, N'Jo Walton', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (377, N'Saladin Ahmed', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (381, N'Larry Correia', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (382, N'Robert Jordan and Brandon Sanderson', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (383, N'Ann Leckie', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (384, N'Katherine Addison', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (385, N'Kevin J. Anderson', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (386, N'Jim Butcher', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (388, N'Cixin Liu', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (391, N'Theodore L. Thomas & Kate Wilhelm', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (394, N'Thomas M. Disch', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (395, N'William S. Burroughs', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (396, N'Keith Laumer', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (397, N'Avram Davidson', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (398, N'G. C. Edmondson', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (406, N'Hayden Howard', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (414, N'Joanna Russ', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (425, N'David G. Compton', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (431, N'T. J. Bass', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (434, N'Isaac Asimov*', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (442, N'Thomas Pynchon', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (451, N'Arthur Byron Cover', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (452, N'Tanith Lee', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (456, N'Ian Watson', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (460, N'Barry N. Malzberg', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (462, N'Italo Calvino', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (464, N'Katherine MacLean', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (465, N'Larry Niven & Jerry Pournelle', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (466, N'E. L. Doctorow', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (470, N'Marta Randall', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (475, N'Terry Carr', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (476, N'Gregory Benford', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (478, N'Richard A. Lupoff', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (482, N'Gore Vidal', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (483, N'Gardner Dozois', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (488, N'Richard Cowper', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (492, N'Walter Tevis', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (493, N'Robert Stallman', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (499, N'A. A. Attanasio', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (500, N'Russell Hoban', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (501, N'Suzy McKee Charnas', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (505, N'Brian Aldiss', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (515, N'Lewis Shiner', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (518, N'Jack Dann', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (522, N'Tim Powers', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (530, N'Margaret Atwood', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (531, N'Leigh Kennedy', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (532, N'James K. Morrow', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (533, N'Pat Murphy', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (541, N'George Turner', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (546, N'Elizabeth Ann Scarborough', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (549, N'John Kessel', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (550, N'Mike Resnick', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (551, N'Jane Yolen', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (553, N'Valerie Martin', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (556, N'John E. Stith', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (562, N'Pat Cadigan', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (563, N'Bruce Sterling & William Gibson', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (566, N'Karen Joy Fowler', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (571, N'Kevin J. Anderson & Doug Beason ', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (576, N'Octavia E. Butler', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (577, N'Jonathan Lethem', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (579, N'Rachel Pollack', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (585, N'Paul Park', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (588, N'Nicola Griffith', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (589, N'Nina Kiriki Hoffman', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (596, N'Kate Elliott', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (598, N'Jack McDevitt', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (602, N'Catherine Asaro', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (604, N'Harry Turtledove', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (605, N'Martha Wells', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (611, N'Sean Stewart', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (615, N'Kathleen Ann Goonan', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (618, N'Charles de Lint', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (620, N'Jeffrey Carver', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (621, N'Geoffrey A. Landis', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (623, N'Wil McCarthy', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (628, N'Kelley Eskridge', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (630, N'Robert A. Metzger', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (635, N'Carol Emshwiller', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (642, N'David Mitchell', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (648, N'Terry Pratchett', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (649, N'Geoff Ryman', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (650, N'John C. Wright', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (652, N'Ellen Kushner', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (653, N'Jeffrey Ford', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (655, N'Richard Bowes', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (661, N'Tobias S. Buckell', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (667, N'David J. Schwartz', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (669, N'Christopher Barzak', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (670, N'Laura Anne Gilman', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (673, N'Jeff VanderMeer', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (675, N'M. K. Hobson', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (677, N'Mary Robinette Kowal', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (679, N'Nnedi Okorafor', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (683, N'Kameron Hurley', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (684, N'Genevieve Valentine', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (688, N'Tina Connolly', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (690, N'Caitlín R. Kiernan', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (695, N'Charles E. Gannon', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (697, N'Linda Nagata', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (698, N'Sofia Samatar', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (699, N'Helene Wecker', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (709, N'Ken Liu', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (711, N'Lawrence M. Schoen', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (712, N'Fran Wilde', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (713, N'Коста Петров', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (726, N'Jules Verne', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (727, N'F. M. Dosoyevsky', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (728, N'Lav Tolstoy', CAST(N'1951-01-01' AS Date), NULL)
GO
INSERT [dbo].[Authors] ([ID], [Name], [DateOfBirth], [DateOfDeath]) VALUES (729, N'O''Connor', CAST(N'1951-01-01' AS Date), NULL)
GO
SET IDENTITY_INSERT [dbo].[Authors] OFF
GO
INSERT [dbo].[Awards] ([ID], [AwardName]) VALUES (1, N'Hugo')
GO
INSERT [dbo].[Awards] ([ID], [AwardName]) VALUES (2, N'Nebula')
GO
SET IDENTITY_INSERT [dbo].[Nominations] ON 

GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (1, 1, 2, 1981, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (2, 2, 1, 1946, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (3, 3, 1, 1969, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (4, 3, 2, 1968, 1)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (5, 4, 1, 1976, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (6, 4, 2, 1975, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (7, 5, 1, 1953, 1)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (8, 6, 2, 1993, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (9, 7, 1, 1961, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (10, 8, 1, 1959, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (11, 9, 1, 1964, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (12, 10, 1, 2014, 1)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (13, 10, 2, 2013, 1)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (14, 11, 2, 2015, NULL)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (15, 12, 1, 2015, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (16, 12, 2, 2014, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (17, 13, 1, 1992, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (18, 14, 1, 1972, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (19, 15, 1, 1984, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (20, 16, 1, 1979, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (21, 17, 2, 1975, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (22, 18, 1, 1983, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (23, 19, 1, 1963, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (24, 20, 1, 1954, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (25, 21, 1, 1974, 1)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (26, 21, 2, 1973, 1)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (27, 22, 1, 1980, 1)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (28, 22, 2, 1979, 1)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (29, 23, 2, 1965, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (30, 24, 2, 1987, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (31, 25, 2, 1975, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (32, 26, 2, 1985, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (33, 27, 1, 1987, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (34, 28, 2, 1982, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (35, 29, 2, 1985, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (36, 30, 1, 1999, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (37, 31, 1, 1997, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (38, 32, 1, 1989, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (39, 33, 2, 1985, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (40, 34, 2, 1991, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (41, 35, 1, 1986, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (42, 36, 1, 1989, 1)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (43, 37, 1, 1982, 1)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (44, 38, 1, 1979, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (45, 38, 2, 1978, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (46, 39, 1, 1983, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (47, 40, 1, 1939, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (48, 41, 1, 1946, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (49, 42, 1, 1951, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (50, 43, 2, 2012, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (51, 44, 2, 2003, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (52, 45, 2, 1998, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (53, 46, 2, 2001, 1)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (54, 47, 1, 2010, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (55, 48, 2, 2000, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (56, 49, 2, 2013, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (57, 50, 2, 2015, NULL)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (58, 51, 2, 2014, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (59, 52, 1, 2006, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (60, 53, 1, 2007, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (61, 54, 1, 2008, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (62, 55, 1, 2005, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (63, 56, 1, 2014, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (64, 57, 1, 2009, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (65, 58, 1, 2004, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (66, 59, 1, 2010, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (67, 59, 2, 2009, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (68, 60, 1, 1968, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (69, 61, 1, 2012, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (70, 61, 2, 2011, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (71, 62, 1, 2005, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (72, 63, 1, 2002, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (73, 63, 2, 2002, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (74, 64, 1, 2010, 1)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (75, 64, 2, 2009, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (76, 65, 1, 2003, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (77, 66, 2, 2009, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (78, 67, 1, 1975, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (79, 68, 1, 2015, 1)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (80, 68, 2, 2014, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (81, 69, 1, 1973, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (82, 70, 2, 1965, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (83, 71, 1, 1982, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (84, 72, 1, 1969, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (85, 73, 1, 1962, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (86, 74, 1, 1964, 1)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (87, 75, 2, 1997, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (88, 76, 1, 2011, 1)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (89, 76, 2, 2010, 1)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (90, 77, 1, 1993, 1)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (91, 77, 2, 1992, 1)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (92, 78, 1, 2002, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (93, 78, 2, 2001, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (94, 79, 1, 1996, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (95, 80, 1, 1999, 1)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (96, 80, 2, 1998, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (97, 81, 1, 1965, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (98, 82, 2, 2004, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (99, 83, 1, 2009, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (100, 83, 2, 2008, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (101, 84, 1, 1990, 1)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (102, 85, 1, 2004, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (103, 86, 1, 1991, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (104, 86, 2, 1990, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (105, 87, 1, 1998, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (106, 88, 1, 1962, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (107, 89, 1, 1967, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (108, 89, 2, 1966, 1)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (109, 90, 1, 1996, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (110, 91, 1, 1991, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (111, 92, 1, 1994, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (112, 93, 1, 2003, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (113, 94, 1, 1984, 1)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (114, 94, 2, 1983, 1)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (115, 95, 1, 1986, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (116, 95, 2, 1985, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (117, 96, 1, 1988, 1)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (118, 96, 2, 1987, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (119, 97, 2, 1970, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (120, 98, 2, 1977, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (121, 99, 1, 1974, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (122, 99, 2, 1973, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (123, 100, 1, 1973, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (124, 100, 2, 1972, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (125, 101, 2, 2008, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (126, 102, 2, 2004, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (127, 103, 1, 1985, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (128, 104, 1, 1983, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (129, 105, 1, 1939, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (130, 106, 2, 1975, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (131, 107, 1, 1965, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (132, 108, 1, 1939, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (133, 109, 1, 1946, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (134, 110, 1, 1951, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (135, 111, 1, 1966, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (136, 112, 2, 1989, 1)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (137, 113, 1, 1997, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (138, 114, 2, 2003, 1)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (139, 115, 2, 2006, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (140, 116, 1, 1992, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (141, 116, 2, 1991, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (142, 117, 2, 2015, NULL)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (143, 118, 1, 1977, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (144, 119, 1, 1966, 1)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (145, 119, 2, 1965, 1)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (146, 120, 1, 1981, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (147, 120, 2, 1980, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (148, 121, 1, 1978, 1)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (149, 121, 2, 1977, 1)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (150, 122, 1, 1980, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (151, 122, 2, 1979, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (152, 123, 1, 1977, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (153, 123, 2, 1976, 1)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (154, 124, 1, 1946, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (155, 125, 1, 1958, 1)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (156, 126, 1, 1965, 1)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (157, 127, 2, 1965, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (158, 128, 2, 1978, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (159, 129, 2, 1995, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (160, 130, 2, 1986, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (161, 131, 2, 1993, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (162, 132, 2, 1987, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (163, 133, 2, 1983, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (164, 134, 1, 1982, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (165, 134, 2, 1981, 1)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (166, 135, 2, 2004, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (167, 136, 2, 1980, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (168, 137, 1, 1983, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (169, 137, 2, 1982, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (170, 138, 1, 1988, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (171, 138, 2, 1988, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (172, 139, 2, 2011, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (173, 140, 2, 2005, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (174, 141, 2, 2001, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (175, 142, 1, 1990, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (176, 143, 2, 1972, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (177, 144, 1, 1988, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (178, 144, 2, 1987, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (179, 145, 2, 1999, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (180, 146, 1, 2012, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (181, 147, 1, 2006, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (182, 148, 2, 1997, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (183, 149, 1, 2001, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (184, 149, 2, 2001, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (185, 150, 1, 1978, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (186, 151, 2, 1988, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (187, 152, 1, 1960, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (188, 153, 1, 1978, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (189, 154, 2, 1978, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (190, 155, 1, 1986, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (191, 155, 2, 1985, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (192, 156, 1, 2000, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (193, 156, 2, 2000, 1)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (194, 157, 1, 1994, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (195, 157, 2, 1994, 1)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (196, 158, 1, 1991, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (197, 159, 1, 1988, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (198, 159, 2, 1987, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (199, 160, 2, 1983, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (200, 161, 2, 1988, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (201, 162, 2, 1977, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (202, 163, 2, 1980, 1)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (203, 164, 1, 1963, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (204, 165, 1, 1954, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (205, 166, 1, 1971, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (206, 167, 1, 1961, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (207, 168, 1, 1962, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (208, 169, 2, 1998, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (209, 170, 2, 1967, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (210, 171, 2, 2013, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (211, 172, 1, 2005, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (212, 173, 1, 2008, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (213, 173, 2, 2008, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (214, 174, 1, 2005, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (215, 175, 1, 2011, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (216, 176, 2, 1975, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (217, 177, 1, 1983, 1)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (218, 177, 2, 1982, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (219, 178, 1, 1951, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (220, 179, 1, 1954, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (221, 180, 1, 1973, 1)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (222, 180, 2, 1972, 1)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (223, 181, 1, 1946, 1)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (224, 182, 1, 1984, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (225, 183, 2, 1975, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (226, 184, 1, 2001, 1)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (227, 185, 1, 2000, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (228, 186, 2, 1984, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (229, 187, 2, 1997, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (230, 188, 2, 2008, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (231, 189, 2, 2003, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (232, 190, 2, 2014, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (233, 191, 2, 2010, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (234, 192, 2, 2011, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (235, 193, 2, 2000, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (236, 194, 2, 1998, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (237, 195, 2, 2007, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (238, 196, 2, 2004, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (239, 197, 2, 2005, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (240, 198, 2, 2006, 1)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (241, 199, 2, 1983, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (242, 200, 1, 1951, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (243, 201, 1, 1939, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (244, 202, 1, 1959, 1)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (245, 203, 2, 1968, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (246, 204, 1, 1967, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (247, 205, 2, 1990, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (248, 206, 2, 1986, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (249, 207, 1, 1995, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (250, 207, 2, 1994, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (251, 208, 1, 2012, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (252, 209, 1, 1962, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (253, 210, 2, 1965, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (254, 211, 2, 1992, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (255, 212, 2, 1989, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (256, 213, 2, 1990, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (257, 214, 1, 1963, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (258, 215, 2, 2014, 1)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (259, 216, 2, 2009, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (260, 217, 2, 2001, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (261, 218, 2, 2006, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (262, 219, 1, 2015, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (263, 220, 1, 2012, 1)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (264, 220, 2, 2011, 1)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (265, 221, 2, 2006, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (266, 222, 1, 1981, 1)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (267, 222, 2, 1980, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (268, 223, 1, 1992, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (269, 224, 2, 1970, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (270, 225, 2, 1968, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (271, 226, 2, 1975, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (272, 227, 2, 2005, 1)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (273, 228, 1, 1998, 1)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (274, 228, 2, 1998, 1)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (275, 229, 1, 1977, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (276, 230, 2, 2007, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (277, 231, 1, 1976, 1)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (278, 231, 2, 1975, 1)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (279, 232, 2, 1992, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (280, 233, 1, 1995, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (281, 233, 2, 1995, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (282, 234, 2, 1991, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (283, 235, 1, 1969, 1)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (284, 235, 2, 1968, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (285, 236, 2, 1969, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (286, 237, 2, 1972, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (287, 238, 1, 1966, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (288, 239, 1, 1965, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (289, 240, 2, 2005, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (290, 241, 1, 1982, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (291, 241, 2, 1981, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (292, 242, 2, 1990, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (293, 243, 2, 1989, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (294, 244, 1, 2006, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (295, 245, 1, 2013, 1)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (296, 246, 1, 2008, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (297, 247, 1, 2009, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (298, 248, 1, 1984, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (299, 249, 1, 1993, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (300, 250, 1, 1980, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (301, 250, 2, 1979, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (302, 251, 1, 1981, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (303, 252, 2, 1994, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (304, 253, 1, 1982, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (305, 254, 2, 1981, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (306, 255, 2, 2011, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (307, 256, 2, 1992, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (308, 257, 2, 2013, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (309, 258, 2, 1997, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (310, 259, 2, 1979, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (311, 260, 2, 1971, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (312, 261, 1, 1977, 1)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (313, 261, 2, 1976, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (314, 262, 1, 2015, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (315, 262, 2, 2014, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (316, 263, 2, 1975, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (317, 264, 2, 2000, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (318, 265, 2, 2003, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (319, 266, 2, 1965, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (320, 267, 2, 2002, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (321, 268, 2, 2015, NULL)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (322, 269, 1, 2002, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (323, 270, 1, 2006, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (324, 271, 2, 1999, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (325, 272, 1, 2001, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (326, 273, 1, 2015, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (327, 274, 2, 1993, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (328, 275, 1, 2013, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (329, 275, 2, 2012, 1)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (330, 276, 1, 1997, 1)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (331, 277, 1, 1994, 1)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (332, 277, 2, 1994, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (333, 278, 1, 1993, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (334, 278, 2, 1993, 1)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (335, 279, 2, 1984, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (336, 280, 1, 2003, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (337, 281, 1, 1964, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (338, 282, 1, 1970, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (339, 282, 2, 1969, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (340, 283, 1, 1960, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (341, 284, 1, 1987, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (342, 285, 1, 2014, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (343, 286, 1, 1974, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (344, 287, 1, 1971, 1)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (345, 287, 2, 1970, 1)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (346, 288, 1, 1985, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (347, 288, 2, 1984, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (348, 289, 1, 1981, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (349, 290, 1, 1976, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (350, 290, 2, 1976, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (351, 291, 1, 1975, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (352, 291, 2, 1975, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (353, 292, 1, 1986, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (354, 293, 1, 1978, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (355, 294, 2, 2009, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (356, 295, 2, 2015, NULL)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (357, 296, 2, 1986, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (358, 297, 2, 1988, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (359, 298, 2, 1984, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (360, 299, 2, 2013, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (361, 300, 1, 2000, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (362, 300, 2, 2000, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (363, 301, 1, 1992, 1)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (364, 301, 2, 1991, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (365, 302, 1, 2013, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (366, 303, 1, 2011, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (367, 304, 2, 2003, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (368, 305, 1, 1989, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (369, 305, 2, 1988, 1)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (370, 306, 1, 1997, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (371, 306, 2, 1997, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (372, 307, 1, 1995, 1)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (373, 308, 1, 2004, 1)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (374, 308, 2, 2004, 1)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (375, 309, 1, 2002, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (376, 310, 1, 1991, 1)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (377, 311, 2, 2010, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (378, 312, 2, 1986, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (379, 313, 1, 1978, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (380, 314, 2, 1975, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (381, 315, 1, 1963, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (382, 316, 1, 1955, 1)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (383, 317, 1, 1960, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (384, 318, 2, 1976, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (385, 319, 2, 1998, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (386, 320, 1, 1999, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (387, 321, 2, 2012, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (388, 322, 2, 2010, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (389, 323, 1, 1993, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (390, 323, 2, 1992, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (391, 324, 2, 1999, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (392, 325, 2, 1975, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (393, 326, 1, 1995, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (394, 327, 2, 1982, 1)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (395, 328, 1, 2008, 1)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (396, 328, 2, 2007, 1)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (397, 329, 1, 2007, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (398, 330, 1, 1991, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (399, 331, 1, 2003, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (400, 331, 2, 2002, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (401, 332, 1, 1998, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (402, 333, 1, 1992, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (403, 333, 2, 1991, 1)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (404, 334, 2, 1989, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (405, 335, 1, 2013, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (406, 336, 1, 2012, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (407, 337, 1, 2011, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (408, 338, 1, 2014, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (409, 339, 1, 1960, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (410, 340, 2, 2015, NULL)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (411, 341, 1, 2011, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (412, 341, 2, 2010, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (413, 342, 2, 2012, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (414, 343, 2, 2011, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (415, 344, 1, 2001, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (416, 344, 2, 2000, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (417, 345, 2, 2007, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (418, 346, 2, 2003, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (419, 347, 1, 1995, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (420, 347, 2, 1995, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (421, 348, 1, 1994, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (422, 348, 2, 1993, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (423, 349, 1, 2007, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (424, 350, 2, 2015, NULL)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (425, 351, 1, 2009, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (426, 352, 1, 2000, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (427, 353, 1, 1996, 1)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (428, 353, 2, 1996, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (429, 354, 1, 2002, 1)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (430, 354, 2, 2002, 1)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (431, 355, 1, 2009, 1)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (432, 356, 2, 2013, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (433, 357, 2, 2013, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (434, 358, 2, 1996, 1)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (435, 359, 2, 1996, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (436, 360, 2, 2010, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (437, 361, 1, 1970, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (438, 361, 2, 1969, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (439, 362, 2, 1972, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (440, 363, 2, 1983, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (441, 364, 2, 1994, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (442, 365, 2, 1999, 1)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (443, 366, 1, 1986, 1)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (444, 366, 2, 1985, 1)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (445, 367, 1, 1990, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (446, 367, 2, 1989, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (447, 368, 1, 1989, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (448, 368, 2, 1988, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (449, 369, 1, 1988, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (450, 370, 1, 1987, 1)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (451, 370, 2, 1986, 1)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (452, 371, 1, 1992, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (453, 372, 1, 2010, 1)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (454, 372, 2, 2009, 1)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (455, 373, 2, 1991, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (456, 374, 2, 1987, 1)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (457, 375, 1, 1980, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (458, 376, 2, 2001, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (459, 377, 2, 1996, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (460, 378, 2, 1995, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (461, 379, 1, 2007, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (462, 380, 1, 1972, 1)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (463, 381, 2, 1968, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (464, 382, 2, 1965, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (465, 383, 1, 1975, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (466, 383, 2, 1974, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (467, 384, 1, 1963, 1)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (468, 385, 2, 1965, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (469, 386, 2, 1982, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (470, 387, 1, 1968, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (471, 387, 2, 1967, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (472, 388, 1, 1970, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (473, 389, 2, 1975, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (474, 390, 1, 1975, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (475, 391, 1, 1971, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (476, 392, 1, 1990, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (477, 392, 2, 1989, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (478, 393, 2, 1971, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (479, 394, 1, 1961, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (480, 395, 1, 1974, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (481, 395, 2, 1973, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (482, 396, 2, 1965, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (483, 397, 1, 1973, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (484, 398, 1, 1959, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (485, 399, 2, 1970, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (486, 400, 1, 1969, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (487, 400, 2, 1968, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (488, 401, 2, 1971, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (489, 402, 1, 1984, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (490, 402, 2, 1983, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (491, 403, 2, 1994, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (492, 404, 1, 1967, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (493, 405, 1, 1954, 1)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (494, 406, 2, 1977, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (495, 407, 2, 2006, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (496, 408, 2, 1979, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (497, 409, 1, 1956, 1)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (498, 410, 1, 1951, 1)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (499, 411, 1, 1983, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (500, 411, 2, 1982, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (501, 412, 1, 1964, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (502, 413, 1, 1959, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (503, 414, 1, 1985, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (504, 414, 2, 1984, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (505, 415, 1, 1960, 1)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (506, 416, 1, 1962, 1)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (507, 417, 1, 1967, 1)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (508, 417, 2, 1966, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (509, 418, 1, 1974, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (510, 418, 2, 1973, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (511, 419, 2, 2002, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (512, 420, 1, 2004, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (513, 421, 1, 1999, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (514, 422, 1, 2010, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (515, 423, 1, 2006, 1)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (516, 424, 1, 2002, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (517, 425, 1, 2001, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (518, 426, 1, 1999, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (519, 427, 1, 1998, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (520, 428, 1, 2003, 1)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (521, 429, 1, 2004, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (522, 430, 1, 2008, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (523, 431, 1, 1997, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (524, 431, 2, 1996, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (525, 432, 1, 1996, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (526, 432, 2, 1995, 1)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (527, 433, 1, 2010, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (528, 434, 1, 2014, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (529, 435, 1, 1959, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (530, 436, 1, 1972, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (531, 436, 2, 1971, 1)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (532, 437, 1, 1973, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (533, 437, 2, 1972, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (534, 438, 1, 1981, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (535, 439, 1, 1977, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (536, 439, 2, 1976, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (537, 440, 1, 1973, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (538, 440, 2, 1972, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (539, 441, 2, 1968, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (540, 442, 1, 1976, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (541, 442, 2, 1975, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (542, 443, 1, 1968, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (543, 443, 2, 1967, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (544, 444, 1, 1971, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (545, 444, 2, 1970, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (546, 445, 1, 1970, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (547, 445, 2, 1969, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (548, 446, 2, 1980, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (549, 447, 1, 1966, 1)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (550, 448, 2, 1994, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (551, 449, 1, 1976, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (552, 449, 2, 1975, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (553, 450, 2, 1969, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (554, 451, 1, 1972, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (555, 452, 1, 1968, 1)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (556, 452, 2, 1967, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (557, 453, 2, 1981, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (558, 454, 1, 2013, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (559, 454, 2, 2012, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (560, 455, 1, 1967, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (561, 455, 2, 1966, 1)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (562, 456, 2, 1975, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (563, 457, 1, 1969, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (564, 458, 1, 1968, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (565, 458, 2, 1967, 1)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (566, 459, 2, 1976, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (567, 460, 2, 1999, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (568, 461, 2, 2004, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (569, 462, 1, 1990, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (570, 463, 2, 2013, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (571, 464, 1, 1996, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (572, 465, 1, 2005, 1)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (573, 465, 2, 2005, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (574, 466, 2, 1981, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (575, 467, 1, 1939, 1)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (576, 468, 2, 1971, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (577, 469, 2, 1974, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (578, 470, 2, 1975, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (579, 471, 2, 1977, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (580, 472, 2, 2005, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (581, 473, 2, 2008, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (582, 474, 2, 1965, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (583, 475, 1, 1954, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (584, 476, 1, 1961, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (585, 477, 1, 1967, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (586, 478, 2, 1974, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (587, 479, 1, 1980, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (588, 479, 2, 1979, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (589, 480, 2, 1965, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (590, 481, 2, 1973, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (591, 482, 2, 2001, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (592, 483, 2, 1985, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (593, 484, 2, 1996, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (594, 485, 2, 2012, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (595, 486, 2, 2007, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (596, 487, 1, 1979, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (597, 487, 2, 1979, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (598, 488, 2, 2008, 1)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (599, 489, 2, 1990, 1)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (600, 490, 1, 1975, 1)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (601, 490, 2, 1974, 1)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (602, 491, 1, 1972, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (603, 491, 2, 1971, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (604, 492, 1, 1970, 1)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (605, 492, 2, 1969, 1)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (606, 493, 2, 2002, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (607, 494, 2, 1990, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (608, 495, 1, 2000, 1)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (609, 495, 2, 1999, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (610, 496, 1, 1993, 1)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (611, 496, 2, 1992, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (612, 497, 1, 1987, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (613, 498, 1, 2007, 1)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (614, 499, 1, 1985, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (615, 500, 1, 1979, 1)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (616, 500, 2, 1978, 1)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (617, 501, 2, 1975, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (618, 502, 2, 1997, 1)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (619, 503, 1, 1998, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (620, 503, 2, 1997, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (621, 504, 2, 1995, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (622, 505, 1, 1961, 1)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (623, 506, 2, 1980, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (624, 507, 2, 2001, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (625, 508, 2, 2006, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (626, 509, 1, 1987, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (627, 509, 2, 1986, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (628, 510, 1, 1989, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (629, 510, 2, 1988, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (630, 511, 1, 1985, 1)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (631, 511, 2, 1984, 1)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (632, 512, 1, 1994, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (633, 513, 2, 1965, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (634, 514, 1, 1971, 0)
GO
INSERT [dbo].[Nominations] ([ID], [BookID], [AwardID], [YearNominated], [IsWinner]) VALUES (635, 514, 2, 1970, 0)
GO
SET IDENTITY_INSERT [dbo].[Nominations] OFF
GO
SET IDENTITY_INSERT [dbo].[Novels] ON 

GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (1, N'Radix', 499, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (2, N'The World of Null-A', 83, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (3, N'Rite of Passage', 150, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (4, N'The Computer Connection', 93, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (5, N'The Demolished Man', 93, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (6, N'Hard Landing', 103, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (7, N'Rogue Moon', 103, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (8, N'Who?', 103, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (9, N'Witch World', 128, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (10, N'Ancillary Justice', 383, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (11, N'Ancillary Mercy', 383, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (12, N'Ancillary Sword', 383, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (13, N'All the Weyrs of Pern', 166, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (14, N'Dragonquest', 166, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (15, N'Moreta: Dragonlady of Pern', 166, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (16, N'The White Dragon', 166, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (17, N'Autumn Angels', 451, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (18, N'2010: Odyssey Two', 95, 1)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (19, N'A Fall of Moondust', 95, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (20, N'Childhood''s End', 95, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (21, N'Rendezvous with Rama', 95, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (22, N'The Fountains of Paradise', 95, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (23, N'Rogue Dragon', 397, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (24, N'Vergil in Averno', 397, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (25, N'Guernica Night', 460, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (26, N'The Remaking of Sigmund Freud', 460, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (27, N'The Ragged Astronauts', 241, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (28, N'Helliconia Spring', 505, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (29, N'Helliconia Winter', 505, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (30, N'Distraction', 252, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (31, N'Holy Fire', 252, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (32, N'Islands in the Net', 252, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (33, N'Schismatrix', 252, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (34, N'The Difference Engine', 563, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (35, N'Cuckoo''s Egg', 202, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (36, N'Cyteen', 202, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (37, N'Downbelow Station', 202, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (38, N'The Faded Sun: Kesrith', 202, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (39, N'The Pride of Chanur', 202, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (40, N'Out of the Silent Planet', 81, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (41, N'That Hideous Strength', 81, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (42, N'The Lion, the Witch and the Wardrobe', 81, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (43, N'The Drowning Girl', 690, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (44, N'The Mount', 635, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (45, N'The Last Hawk', 602, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (46, N'The Quantum Rose', 602, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (47, N'Palimpsest', 360, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (48, N'Forests of the Heart', 618, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (49, N'Fire with Fire', 695, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (50, N'Raising Caine', 695, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (51, N'Trial by Fire', 695, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (52, N'Accelerando', 329, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (53, N'Glasshouse', 329, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (54, N'Halting State', 329, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (55, N'Iron Sunrise', 329, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (56, N'Neptune''s Brood', 329, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (57, N'Saturn''s Children', 329, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (58, N'Singularity Sky', 329, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (59, N'Boneshaker', 358, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (60, N'The Butterfly Kid', 147, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (61, N'Embassytown', 318, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (62, N'Iron Council', 318, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (63, N'Perdido Street Station', 318, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (64, N'The City & the City', 318, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (65, N'The Scar', 318, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (66, N'The Love We Share Without Knowing', 669, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (67, N'Inverted World', 183, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (68, N'The Three-Body Problem', 388, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (69, N'A Choice of Gods', 119, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (70, N'All Flesh is Grass', 119, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (71, N'Project Pope', 119, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (72, N'The Goblin Reservation', 119, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (73, N'Time Is the Simplest Thing', 119, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (74, N'Way Station', 119, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (75, N'Bellwether', 276, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (76, N'Blackout/All Clear', 276, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (77, N'Doomsday Book', 276, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (78, N'Passage', 276, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (79, N'Remake', 276, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (80, N'To Say Nothing of the Dog', 276, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (81, N'The Planet Buyer', 133, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (82, N'Down and Out in the Magic Kingdom', 353, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (83, N'Little Brother', 353, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (84, N'Hyperion', 260, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (85, N'Ilium', 260, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (86, N'The Fall of Hyperion', 260, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (87, N'The Rise of Endymion', 260, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (88, N'Dark Universe', 117, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (89, N'Flowers for Algernon', 143, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (90, N'Brightness Reef', 230, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (91, N'Earth', 230, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (92, N'Glory Season', 230, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (93, N'Kil''n People', 230, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (94, N'Startide Rising', 230, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (95, N'The Postman', 230, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (96, N'The Uplift War', 230, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (97, N'The Steel Crocodile', 425, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (98, N'Moonstar Odyssey', 170, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (99, N'The Man Who Folded Himself', 170, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (100, N'When Harlie Was One', 170, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (101, N'Superpowers', 667, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (102, N'Cloud Atlas', 642, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (103, N'Emergence', 231, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (104, N'Courtship Rite', 222, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (105, N'Galactic Patrol', 79, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (106, N'Ragtime', 466, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (107, N'Davy', 132, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (108, N'Carson of Venus', 78, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (109, N'Red Sun of Danger', 86, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (110, N'First Lensman', 89, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (111, N'Skylark DuQuesne', 89, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (112, N'The Healer''s War', 546, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (113, N'Remnant Population', 292, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (114, N'The Speed of Dark', 292, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (115, N'The Privilege of the Sword', 652, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (116, N'Bone Dance', 266, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (117, N'Updraft', 712, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (118, N'Children of Dune', 137, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (119, N'Dune', 137, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (120, N'Beyond the Blue Event Horizon', 192, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (121, N'Gateway', 192, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (122, N'Jem', 192, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (123, N'Man Plus', 192, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (124, N'Destiny Times Three', 85, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (125, N'The Big Time', 85, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (126, N'The Wanderer', 85, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (127, N'The Ship That Sailed the Time Stream', 398, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (128, N'Strangers', 483, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (129, N'Calde of the Long Sun', 215, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (130, N'Free Live Free', 215, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (131, N'Nightside the Long Sun', 215, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (132, N'Soldier of the Mist', 215, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (133, N'The Citadel of the Autarch', 215, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (134, N'The Claw of the Conciliator', 215, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (135, N'The Knight', 215, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (136, N'The Shadow of the Torturer', 215, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (137, N'The Sword of the Lictor', 215, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (138, N'The Urth of the New Sun', 215, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (139, N'Mechanique: a Tale of the Circus Tresaulti', 684, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (140, N'Air', 649, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (141, N'Mars Crossing', 621, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (142, N'A Fire in the Sun', 246, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (143, N'What Entropy Means to Me', 246, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (144, N'When Gravity Fails', 246, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (145, N'A Clash of Kings', 198, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (146, N'A Dance with Dragons', 198, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (147, N'A Feast for Crows', 198, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (148, N'A Game of Thrones', 198, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (149, N'A Storm of Swords', 198, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (150, N'Dying of the Light', 198, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (151, N'Drowning Towers', 541, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (152, N'Dorsai!', 107, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (153, N'Time Storm', 107, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (154, N'Kalki', 482, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (155, N'Blood Music', 239, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (156, N'Darwin''s Radio', 239, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (157, N'Moving Mars', 239, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (158, N'Queen of Angels', 239, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (159, N'The Forge of God', 239, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (160, N'Against Infinity', 476, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (161, N'Great Sky River', 476, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (162, N'In the Ocean of Night', 476, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (163, N'Timescape', 476, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (164, N'Little Fuzzy', 123, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (165, N'Mission of Gravity', 94, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (166, N'Star Light', 94, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (167, N'Deathworld', 114, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (168, N'Planet of the Damned', 114, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (169, N'How Few Remain', 604, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (170, N'The Eskimo Invasion', 406, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (171, N'The Golem and the Jinni', 699, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (172, N'The Algebraist', 334, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (173, N'Brasyl', 333, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (174, N'River of Gods', 333, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (175, N'The Dervish House', 333, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (176, N'The Embedding', 456, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (177, N'Foundation''s Edge', 87, 1)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (178, N'Pebble in the Sky', 87, 1)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (179, N'The Caves of Steel', 87, 1)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (180, N'The Gods Themselves', 87, 1)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (181, N'The Mule', 87, 1)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (182, N'The Robots of Dawn', 87, 1)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (183, N'Invisible Cities', 462, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (184, N'Harry Potter and the Goblet of Fire', 310, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (185, N'Harry Potter and the Prisoner of Azkaban', 310, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (186, N'The Man Who Melted', 518, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (187, N'Ancient Shores', 598, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (188, N'Cauldron', 598, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (189, N'Chindi', 598, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (190, N'Coming Home', 598, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (191, N'Echo', 598, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (192, N'Firebird', 598, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (193, N'Infinity Beach', 598, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (194, N'Moonfall', 598, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (195, N'Odyssey', 598, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (196, N'Omega', 598, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (197, N'Polaris', 598, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (198, N'Seeker', 598, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (199, N'Lyonesse', 90, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (200, N'The Dying Earth', 90, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (201, N'The Legion of Time', 80, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (202, N'A Case of Conscience', 106, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (203, N'Black Easter', 106, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (204, N'The Witches of Karres', 141, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (205, N'Only Begotten Daughter', 532, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (206, N'This is the Way the World Ends', 532, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (207, N'Towing Jehovah', 532, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (208, N'Leviathan Wakes', 372, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (209, N'Second Ending', 120, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (210, N'The Escape Orbit', 120, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (211, N'Briar Rose', 551, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (212, N'Sister Light, Sister Dark', 551, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (213, N'White Jenna', 551, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (214, N'Sylva', 124, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (215, N'Annihilation', 673, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (216, N'Finch', 673, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (217, N'Eternity''s End', 620, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (218, N'The Girl in the Glass', 653, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (219, N'Skin Game', 386, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (220, N'Among Others', 373, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (221, N'Farthing', 373, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (222, N'The Snow Queen', 214, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (223, N'The Summer Queen', 214, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (224, N'And Chaos Died', 414, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (225, N'Picnic on Paradise', 414, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (226, N'The Female Man', 414, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (227, N'Camouflage', 190, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (228, N'Forever Peace', 190, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (229, N'Mindbridge', 190, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (230, N'The Accidental Time Machine', 190, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (231, N'The Forever War', 190, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (232, N'A Million Open Doors', 282, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (233, N'Mother of Storms', 282, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (234, N'Orbital Resonance', 282, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (235, N'Stand on Zanzibar', 131, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (236, N'The Jagged Orbit', 131, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (237, N'The Sheep Look Up', 131, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (238, N'The Squares of the City', 131, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (239, N'The Whole Man', 131, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (240, N'Orphans of Chaos', 650, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (241, N'Little, Big', 218, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (242, N'Redshift Rendezvous', 556, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (243, N'Good News From Outer Space', 549, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (244, N'Old Man''s War', 340, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (245, N'Redshirts', 340, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (246, N'The Last Colony', 340, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (247, N'Zoe''s Tale', 340, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (248, N'Millennium', 205, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (249, N'Steel Beach', 205, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (250, N'Titan', 205, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (251, N'Wizard', 205, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (252, N'Gun, with Occasional Music', 577, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (253, N'The Many Colored Land', 216, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (254, N'The Many-Colored Land', 216, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (255, N'God''s War', 683, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (256, N'Sarah Canary', 566, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (257, N'We Are All Completely Beside Ourselves', 566, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (258, N'King''s Dragon', 596, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (259, N'Juniper Time', 195, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (260, N'Margaret and I', 195, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (261, N'Where Late the Sweet Birds Sang', 195, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (262, N'The Goblin Emperor', 384, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (263, N'The Missing Man', 464, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (264, N'Crescent City Rhapsody', 615, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (265, N'Light Music', 615, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (266, N'A Plague of Demons', 396, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (267, N'Solitaire', 628, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (268, N'The Grace of Kings', 709, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (269, N'Cosmonaut Keep', 314, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (270, N'Learning the World', 314, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (271, N'The Cassini Division', 314, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (272, N'The Sky Road', 314, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (273, N'The Dark Between the Stars', 385, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (274, N'Assemblers of Infinity', 571, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (275, N'2312', 274, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (276, N'Blue Mars', 274, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (277, N'Green Mars', 274, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (278, N'Red Mars', 274, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (279, N'The Wild Shore', 274, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (280, N'The Years of Rice and Salt', 274, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (281, N'Cat''s Cradle', 110, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (282, N'Slaughterhouse-Five', 110, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (283, N'The Sirens of Titan', 110, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (284, N'Black Genesis', 244, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (285, N'Warbound', 381, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (286, N'Protector', 164, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (287, N'Ringworld', 164, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (288, N'The Integral Trees', 164, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (289, N'The Ringworld Engineers', 164, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (290, N'Inferno', 465, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (291, N'The Mote in God''s Eye', 465, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (292, N'Footfall', 184, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (293, N'Lucifer''s Hammer', 184, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (294, N'Flesh and Fire', 670, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (295, N'Barsk: The Elephants'' Graveyard', 711, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (296, N'The Journal of Nicholas the American', 531, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (297, N'Deserted Cities of the Heart', 515, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (298, N'Frontera', 515, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (299, N'The Red: First Light', 697, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (300, N'A Civil Campaign', 254, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (301, N'Barrayar', 254, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (302, N'Captain Vorpatril''s Alliance', 254, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (303, N'Cryoburn', 254, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (304, N'Diplomatic Immunity', 254, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (305, N'Falling Free', 254, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (306, N'Memory', 254, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (307, N'Mirror Dance', 254, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (308, N'Paladin of Souls', 254, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (309, N'The Curse of Chalion', 254, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (310, N'The Vor Game', 254, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (311, N'The Native Star', 675, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (312, N'The Handmaid''s Tale', 530, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (313, N'The Forbidden Tower', 122, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (314, N'The Heritage of Hastur', 122, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (315, N'The Sword of Aldones', 122, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (316, N'They''d Rather Be Right', 99, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (317, N'That Sweet Little Old Lady', 109, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (318, N'Islands', 470, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (319, N'Death of the Necromancer', 605, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (320, N'Children of God', 302, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (321, N'Glamour in Glass', 677, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (322, N'Shades of Milk and Honey', 677, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (323, N'China Mountain Zhang', 272, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (324, N'Mission Child', 272, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (325, N'A Funeral for the Eyes of Fire', 284, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (326, N'Brittle Innings', 284, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (327, N'No Enemy But Time', 284, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (328, N'The Yiddish Policemen''s Union', 352, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (329, N'Eifelheim', 345, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (330, N'The Quiet Pools', 262, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (331, N'Bones of the Earth', 268, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (332, N'Jack Faust', 268, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (333, N'Stations of the Tide', 268, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (334, N'Ivory: A Legend of Past and Future', 550, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (335, N'Blackout', 366, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (336, N'Deadline', 366, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (337, N'Feed', 366, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (338, N'Parasite', 366, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (339, N'The Pirates of Ersatz', 108, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (340, N'The Fifth Season', 367, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (341, N'The Hundred Thousand Kingdoms', 367, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (342, N'The Killing Moon', 367, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (343, N'The Kingdom of Gods', 367, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (344, N'Midnight Robber', 315, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (345, N'The New Moon''s Arms', 315, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (346, N'The Salt Roads', 315, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (347, N'Beggars and Choosers', 278, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (348, N'Beggars in Spain', 278, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (349, N'His Majesty''s Dragon', 344, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (350, N'Uprooted', 344, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (351, N'Anathem', 291, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (352, N'Cryptonomicon', 291, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (353, N'The Diamond Age', 291, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (354, N'American Gods', 322, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (355, N'The Graveyard Book', 322, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (356, N'The Ocean at the End of the Lane', 322, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (357, N'Hild', 588, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (358, N'Slow River', 588, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (359, N'The Silent Strength of Stones', 589, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (360, N'Who Fears Death', 679, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (361, N'Bug Jack Barron', 157, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (362, N'The Iron Dream', 157, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (363, N'The Void Captain''s Tale', 157, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (364, N'Parable of the Sower', 576, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (365, N'Parable of the Talents', 576, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (366, N'Ender''s Game', 240, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (367, N'Prentice Alvin', 240, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (368, N'Red Prophet', 240, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (369, N'Seventh Son', 240, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (370, N'Speaker for the Dead', 240, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (371, N'Xenocide', 240, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (372, N'The Windup Girl', 362, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (373, N'Synners', 562, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (374, N'The Falling Woman', 533, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (375, N'Harpist in the Wind', 207, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (376, N'The Tower at Stony Wood', 207, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (377, N'Winter Rose', 207, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (378, N'Celestis', 585, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (379, N'Blindsight', 346, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (380, N'To Your Scattered Bodies Go', 169, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (381, N'Do Androids Dream of Electric Sheep?', 126, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (382, N'Dr. Bloodmoney, or How We Got Along After the Bomb', 126, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (383, N'Flow My Tears, the Policeman Said', 126, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (384, N'The Man in the High Castle', 126, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (385, N'The Three Stigmata of Palmer Eldritch', 126, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (386, N'The Transmigration of Timothy Archer', 126, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (387, N'Chthon', 146, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (388, N'Macroscope', 146, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (389, N'A Midsummer Tempest', 102, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (390, N'Fire Time', 102, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (391, N'Tau Zero', 102, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (392, N'The Boat of a Million Years', 102, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (393, N'The Byworlder', 102, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (394, N'The High Crusade', 102, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (395, N'The People of the Wind', 102, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (396, N'The Star Fox', 102, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (397, N'There Will Be Time', 102, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (398, N'We Have Fed Our Sea', 102, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (399, N'Fourth Mansions', 152, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (400, N'Past Master', 152, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (401, N'The Devil is Dead', 152, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (402, N'Tea with the Black Dragon', 226, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (403, N'Temporary Agency', 579, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (404, N'Too Many Magicians', 140, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (405, N'Fahrenheit 451', 98, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (406, N'Sword of Demon', 478, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (407, N'From the Files of the Time Rangers', 655, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (408, N'The Road to Corlay', 488, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (409, N'Double Star', 92, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (410, N'Farmer in the Sky', 92, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (411, N'Friday', 92, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (412, N'Glory Road', 92, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (413, N'Have Space Suit — Will Travel', 92, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (414, N'Job: A Comedy of Justice', 92, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (415, N'Starship Troopers', 92, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (416, N'Stranger in a Strange Land', 92, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (417, N'The Moon Is a Harsh Mistress', 92, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (418, N'Time Enough for Love', 92, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (419, N'Picoverse', 630, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (420, N'Blind Lake', 303, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (421, N'Darwinia', 303, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (422, N'Julian Comstock', 303, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (423, N'Spin', 303, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (424, N'The Chronoliths', 303, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (425, N'Calculating God', 289, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (426, N'Factoring Humanity', 289, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (427, N'Frameshift', 289, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (428, N'Hominids', 289, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (429, N'Humans', 289, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (430, N'Rollback', 289, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (431, N'Starplex', 289, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (432, N'The Terminal Experiment', 289, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (433, N'Wake', 289, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (434, N'The Wheel of Time', 382, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (435, N'Time Killer', 105, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (436, N'A Time of Changes', 148, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (437, N'Dying Inside', 148, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (438, N'Lord Valentine''s Castle', 148, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (439, N'Shadrach in the Furnace', 148, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (440, N'The Book of Skulls', 148, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (441, N'The Masks of Time', 148, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (442, N'The Stochastic Man', 148, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (443, N'Thorns', 148, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (444, N'Tower of Glass', 148, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (445, N'Up the Line', 148, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (446, N'The Orphan', 493, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (447, N'...And Call Me Conrad', 138, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (448, N'A Night in the Lonesome October', 138, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (449, N'Doorways in the Sand', 138, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (450, N'Isle of the Dead', 138, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (451, N'Jack of Shadows', 138, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (452, N'Lord of Light', 138, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (453, N'Riddley Walker', 500, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (454, N'Throne of the Crescent Moon', 377, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (455, N'Babel-17', 139, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (456, N'Dhalgren', 139, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (457, N'Nova', 139, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (458, N'The Einstein Intersection', 139, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (459, N'Triton', 139, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (460, N'Mockingbird', 611, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (461, N'Perfect Circle', 611, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (462, N'Grass', 259, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (463, N'A Stranger in Olondria', 698, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (464, N'The Time Ships', 287, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (465, N'Jonathan Strange & Mr Norrell', 337, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (466, N'The Vampire Tapestry', 501, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (467, N'The Sword in the Stone', 82, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (468, N'Half Past Human', 431, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (469, N'The Godwhale', 431, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (470, N'The Birthgrave', 452, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (471, N'Cirque', 475, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (472, N'Going Postal', 648, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (473, N'Making Money', 648, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (474, N'The Clone', 391, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (475, N'More Than Human', 97, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (476, N'Venus Plus X', 97, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (477, N'Day of the Minotaur', 142, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (478, N'334', 394, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (479, N'On Wings of Song', 394, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (480, N'The Genocides', 394, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (481, N'Gravity''s Rainbow', 442, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (482, N'Declare', 522, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (483, N'Dinner at Deviant''s Palace', 522, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (484, N'Expiration Date', 522, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (485, N'Ironskin', 688, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (486, N'Ragamuffin', 661, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (487, N'Blind Voices', 203, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (488, N'Powers', 159, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (489, N'Tehanu: The Last Book of Earthsea', 159, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (490, N'The Dispossessed', 159, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (491, N'The Lathe of Heaven', 159, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (492, N'The Left Hand of Darkness', 159, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (493, N'The Other Wind', 159, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (494, N'Mary Reilly', 553, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (495, N'A Deepness in the Sky', 232, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (496, N'A Fire Upon the Deep', 232, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (497, N'Marooned in Realtime', 232, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (498, N'Rainbows End', 232, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (499, N'The Peace War', 232, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (500, N'Dreamsnake', 204, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (501, N'The Exile Waiting', 204, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (502, N'The Moon and the Sun', 204, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (503, N'City on Fire', 297, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (504, N'Metropolitan', 297, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (505, N'A Canticle for Leibowitz', 116, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (506, N'Mockingbird', 492, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (507, N'The Collapsium', 623, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (508, N'To Crush the Moon', 623, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (509, N'Count Zero', 235, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (510, N'Mona Lisa Overdrive', 235, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (511, N'Neuromancer', 235, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (512, N'Virtual Light', 235, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (513, N'Nova Express', 395, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (514, N'The Year of the Quiet Sun', 162, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (515, N'Aurora', 274, 0)
GO
INSERT [dbo].[Novels] ([ID], [Title], [AuthorID], [IsRead]) VALUES (1515, N'Around the world in 80 days', 726, 0)
GO
SET IDENTITY_INSERT [dbo].[Novels] OFF
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Authors]    Script Date: 6/29/2016 8:21:14 PM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Authors]') AND name = N'IX_Authors')
CREATE UNIQUE NONCLUSTERED INDEX [IX_Authors] ON [dbo].[Authors]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Nominations_Awards]') AND parent_object_id = OBJECT_ID(N'[dbo].[Nominations]'))
ALTER TABLE [dbo].[Nominations]  WITH CHECK ADD  CONSTRAINT [FK_Nominations_Awards] FOREIGN KEY([AwardID])
REFERENCES [dbo].[Awards] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Nominations_Awards]') AND parent_object_id = OBJECT_ID(N'[dbo].[Nominations]'))
ALTER TABLE [dbo].[Nominations] CHECK CONSTRAINT [FK_Nominations_Awards]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Nominations_Novels]') AND parent_object_id = OBJECT_ID(N'[dbo].[Nominations]'))
ALTER TABLE [dbo].[Nominations]  WITH CHECK ADD  CONSTRAINT [FK_Nominations_Novels] FOREIGN KEY([BookID])
REFERENCES [dbo].[Novels] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Nominations_Novels]') AND parent_object_id = OBJECT_ID(N'[dbo].[Nominations]'))
ALTER TABLE [dbo].[Nominations] CHECK CONSTRAINT [FK_Nominations_Novels]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_HugoNovels_Authors]') AND parent_object_id = OBJECT_ID(N'[dbo].[Novels]'))
ALTER TABLE [dbo].[Novels]  WITH CHECK ADD  CONSTRAINT [FK_HugoNovels_Authors] FOREIGN KEY([AuthorID])
REFERENCES [dbo].[Authors] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_HugoNovels_Authors]') AND parent_object_id = OBJECT_ID(N'[dbo].[Novels]'))
ALTER TABLE [dbo].[Novels] CHECK CONSTRAINT [FK_HugoNovels_Authors]
GO
