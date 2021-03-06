USE [Library]
GO
/****** Object:  Table [dbo].[UserLib]    Script Date: 12/09/2018 23:03:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserLib](
	[id_user] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[login_user] [nvarchar](50) NOT NULL,
	[password_user] [nvarchar](50) NULL,
	[user_email] [nvarchar](50) NULL,
 CONSTRAINT [PK_UserId] PRIMARY KEY CLUSTERED 
(
	[id_user] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[UserLib] ON
INSERT [dbo].[UserLib] ([id_user], [name], [login_user], [password_user], [user_email]) VALUES (1, N'Vlad', N'Vlad1987', N'frkug48U', N'vladGrish@mail.ru')
INSERT [dbo].[UserLib] ([id_user], [name], [login_user], [password_user], [user_email]) VALUES (2, N'Svetlana', N'sveta2000', N'vbaot18iuRT', N'grizina@rambler.ru')
INSERT [dbo].[UserLib] ([id_user], [name], [login_user], [password_user], [user_email]) VALUES (3, N'Dima', N'dimKrit', N'kritnovHREwqm', N'kritnovv@mail.ru')
INSERT [dbo].[UserLib] ([id_user], [name], [login_user], [password_user], [user_email]) VALUES (4, N'Alisa', N'alisaSW', N'kaiwey219DE', N'swetlakova@rambler.ru')
INSERT [dbo].[UserLib] ([id_user], [name], [login_user], [password_user], [user_email]) VALUES (5, N'Gleb', N'gleb1990', N'klwicbrty219L', N'glebglebov@gmail.ru')
SET IDENTITY_INSERT [dbo].[UserLib] OFF
/****** Object:  Table [dbo].[Publisher]    Script Date: 12/09/2018 23:03:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Publisher](
	[id_publisher] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[p_address] [nvarchar](50) NULL,
 CONSTRAINT [PK_PublisherId] PRIMARY KEY CLUSTERED 
(
	[id_publisher] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Publisher] ON
INSERT [dbo].[Publisher] ([id_publisher], [name], [p_address]) VALUES (1, N'Альфа-книга ', N'125565, Москва, а/я 4')
INSERT [dbo].[Publisher] ([id_publisher], [name], [p_address]) VALUES (2, N'Пальмира', N'Россия, г. Санкт-Петербург ')
INSERT [dbo].[Publisher] ([id_publisher], [name], [p_address]) VALUES (4, N'Мартин', N'107023, г. Москва, Мажоров переулок, д. 10')
INSERT [dbo].[Publisher] ([id_publisher], [name], [p_address]) VALUES (5, N'Азбука', N'115093 , г. Москва, ул. Павловская, д. 7')
INSERT [dbo].[Publisher] ([id_publisher], [name], [p_address]) VALUES (6, N'Вече', N'129337, Москва, а/я 63')
INSERT [dbo].[Publisher] ([id_publisher], [name], [p_address]) VALUES (7, N'Слово', N'Москва,Марксистская ул., дом 34 корп. 10')
INSERT [dbo].[Publisher] ([id_publisher], [name], [p_address]) VALUES (8, N'ИД Мещерякова ', N'Москва, Лужнецкая наб. д.2/4')
SET IDENTITY_INSERT [dbo].[Publisher] OFF
/****** Object:  Table [dbo].[Mark]    Script Date: 12/09/2018 23:03:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mark](
	[id_mark] [int] IDENTITY(1,1) NOT NULL,
	[value] [nvarchar](15) NULL,
 CONSTRAINT [PK_MarkId] PRIMARY KEY CLUSTERED 
(
	[id_mark] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Mark] ON
INSERT [dbo].[Mark] ([id_mark], [value]) VALUES (1, N'bad')
INSERT [dbo].[Mark] ([id_mark], [value]) VALUES (2, N'low')
INSERT [dbo].[Mark] ([id_mark], [value]) VALUES (3, N'satisfactory')
INSERT [dbo].[Mark] ([id_mark], [value]) VALUES (4, N'good')
INSERT [dbo].[Mark] ([id_mark], [value]) VALUES (5, N'excellent')
SET IDENTITY_INSERT [dbo].[Mark] OFF
/****** Object:  Table [dbo].[Author]    Script Date: 12/09/2018 23:03:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Author](
	[id_author] [int] IDENTITY(1,1) NOT NULL,
	[lastname] [nvarchar](50) NOT NULL,
	[name] [nvarchar](30) NOT NULL,
	[auth_emai] [nvarchar](50) NULL,
	[auth_address] [nvarchar](50) NULL,
 CONSTRAINT [PK_AuthorId] PRIMARY KEY CLUSTERED 
(
	[id_author] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Author] ON
INSERT [dbo].[Author] ([id_author], [lastname], [name], [auth_emai], [auth_address]) VALUES (1, N'Байтелл', N'Шон', NULL, NULL)
INSERT [dbo].[Author] ([id_author], [lastname], [name], [auth_emai], [auth_address]) VALUES (2, N'Булгаков', N'Михаил', NULL, NULL)
INSERT [dbo].[Author] ([id_author], [lastname], [name], [auth_emai], [auth_address]) VALUES (3, N'Уайльд', N'Оскар', NULL, NULL)
INSERT [dbo].[Author] ([id_author], [lastname], [name], [auth_emai], [auth_address]) VALUES (4, N'Рид', N'Майн', NULL, NULL)
INSERT [dbo].[Author] ([id_author], [lastname], [name], [auth_emai], [auth_address]) VALUES (5, N'Дойл', N'Конан', NULL, NULL)
INSERT [dbo].[Author] ([id_author], [lastname], [name], [auth_emai], [auth_address]) VALUES (6, N'Джованьоли', N'Рафаэлло', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Author] OFF
/****** Object:  Table [dbo].[Books]    Script Date: 12/09/2018 23:03:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Books](
	[id_book] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[book_description] [nvarchar](200) NOT NULL,
	[year_publish] [int] NULL,
	[number_pages] [int] NULL,
	[id_publish] [int] NULL,
	[id_author] [int] NULL,
	[picture] [nvarchar](50) NULL,
 CONSTRAINT [PK_BookId] PRIMARY KEY CLUSTERED 
(
	[id_book] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Books] ON
INSERT [dbo].[Books] ([id_book], [name], [book_description], [year_publish], [number_pages], [id_publish], [id_author], [picture]) VALUES (2, N'Приключения Шерлока Холмса ', N'Шерлок Холмс берётся расследовать самые запутанные дела, которые оказываются не по зубам полицейским из Скотленд-Ярда. ', 2017, 200, 8, 5, N'sherlok.jpg')
INSERT [dbo].[Books] ([id_book], [name], [book_description], [year_publish], [number_pages], [id_publish], [id_author], [picture]) VALUES (4, N'Записки о Шерлоке Холмсе ', N'Четвёртая книга о Шерлоке Холмсе и докторе Ватсоне. Благородный сыщик открывает тайну своему другу - на протяжении нескольких лет он "сплетает сеть" вокруг зловещего профессора Мориарти ', 2018, 254, 8, 5, N'sherlokNotes.jpg')
INSERT [dbo].[Books] ([id_book], [name], [book_description], [year_publish], [number_pages], [id_publish], [id_author], [picture]) VALUES (5, N'Дневник книготорговца ', N'В остроумном дневнике Шона Байтелла, владельца самого крупного в Шотландии букинистического магазина и активного участника фестиваля, описаны будни и радости книготорговли. ', 2018, 194, 5, 1, N'b1.jpg')
INSERT [dbo].[Books] ([id_book], [name], [book_description], [year_publish], [number_pages], [id_publish], [id_author], [picture]) VALUES (6, N'Всадник без головы ', N'Олень готов бежать, но что-то в облике всадника - что-то странное, неестественное - приковывает его к месту. Силы небесные! У всадника нет головы! ', 2016, 307, 6, 4, N'vsadnik.jpg')
INSERT [dbo].[Books] ([id_book], [name], [book_description], [year_publish], [number_pages], [id_publish], [id_author], [picture]) VALUES (7, N'Оцеола - вождь семинолов. На море ', N'Реальным событиям отчаянной борьбы индейского племени семинолов за право жить на своей земле посвящен многократно издававшийся на русском языке роман "Оцеола—вождь семинолов". ', 1998, 332, 7, 4, N'oceola.jpg')
INSERT [dbo].[Books] ([id_book], [name], [book_description], [year_publish], [number_pages], [id_publish], [id_author], [picture]) VALUES (8, N'Мастер и Маргарита ', N'Роман М.А.Булгакова "Мастер и Маргарита" создавался тринадцать лет, ждал первой публикации двадцать шесть, но стал и остается до сих пор одним из самых известных русских текстов XX века. ', 2018, 450, 2, 2, N'master.jpg')
INSERT [dbo].[Books] ([id_book], [name], [book_description], [year_publish], [number_pages], [id_publish], [id_author], [picture]) VALUES (10, N'Спартак', N'Это роман о крупнейшем в истории Римской империи восстании рабов, о его предводителе, римском гладиаторе, имя которого стало символом стремления к свободе, роман о героях и злодеях', 2016, 564, 1, 6, N'spartak.jpg')
INSERT [dbo].[Books] ([id_book], [name], [book_description], [year_publish], [number_pages], [id_publish], [id_author], [picture]) VALUES (11, N'Портрет Дориана Грея ', N'Драматичная история, захватывающая с первых же строк, погружает читателя в пугающий мир тайных желаний и сокровенных мыслей, держит в напряжении до последней страницы. ', 2017, 249, 4, 3, N'dorian.jpg')
SET IDENTITY_INSERT [dbo].[Books] OFF
/****** Object:  Table [dbo].[ForSearch]    Script Date: 12/09/2018 23:03:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ForSearch](
	[id_k] [int] IDENTITY(1,1) NOT NULL,
	[key_value] [nvarchar](50) NOT NULL,
	[id_book] [int] NOT NULL,
 CONSTRAINT [PK_Keywords_id] PRIMARY KEY CLUSTERED 
(
	[id_k] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ForSearch] ON
INSERT [dbo].[ForSearch] ([id_k], [key_value], [id_book]) VALUES (1, N'Шерлок', 2)
INSERT [dbo].[ForSearch] ([id_k], [key_value], [id_book]) VALUES (2, N'Холмс', 2)
INSERT [dbo].[ForSearch] ([id_k], [key_value], [id_book]) VALUES (3, N'берётся', 2)
INSERT [dbo].[ForSearch] ([id_k], [key_value], [id_book]) VALUES (4, N'расследовать', 2)
INSERT [dbo].[ForSearch] ([id_k], [key_value], [id_book]) VALUES (5, N'запутанные', 2)
INSERT [dbo].[ForSearch] ([id_k], [key_value], [id_book]) VALUES (6, N'дела', 2)
INSERT [dbo].[ForSearch] ([id_k], [key_value], [id_book]) VALUES (7, N'оказываются', 2)
INSERT [dbo].[ForSearch] ([id_k], [key_value], [id_book]) VALUES (8, N'Скотленд-Ярда', 2)
INSERT [dbo].[ForSearch] ([id_k], [key_value], [id_book]) VALUES (11, N'полицейским', 2)
INSERT [dbo].[ForSearch] ([id_k], [key_value], [id_book]) VALUES (12, N'полицейские', 2)
INSERT [dbo].[ForSearch] ([id_k], [key_value], [id_book]) VALUES (14, N'Скотленд-Ярд', 2)
INSERT [dbo].[ForSearch] ([id_k], [key_value], [id_book]) VALUES (15, N'Шерлоке', 2)
INSERT [dbo].[ForSearch] ([id_k], [key_value], [id_book]) VALUES (16, N'Холмсе', 2)
INSERT [dbo].[ForSearch] ([id_k], [key_value], [id_book]) VALUES (17, N'Шерлок', 4)
INSERT [dbo].[ForSearch] ([id_k], [key_value], [id_book]) VALUES (18, N'Шерлоке', 4)
INSERT [dbo].[ForSearch] ([id_k], [key_value], [id_book]) VALUES (19, N'Холмсе', 4)
INSERT [dbo].[ForSearch] ([id_k], [key_value], [id_book]) VALUES (20, N'доктор', 4)
INSERT [dbo].[ForSearch] ([id_k], [key_value], [id_book]) VALUES (21, N'докторе', 4)
INSERT [dbo].[ForSearch] ([id_k], [key_value], [id_book]) VALUES (22, N'Ватсоне', 4)
INSERT [dbo].[ForSearch] ([id_k], [key_value], [id_book]) VALUES (23, N'Ватсон', 4)
INSERT [dbo].[ForSearch] ([id_k], [key_value], [id_book]) VALUES (24, N'Благородный', 4)
INSERT [dbo].[ForSearch] ([id_k], [key_value], [id_book]) VALUES (25, N'сыщик', 4)
INSERT [dbo].[ForSearch] ([id_k], [key_value], [id_book]) VALUES (26, N'открывает', 4)
INSERT [dbo].[ForSearch] ([id_k], [key_value], [id_book]) VALUES (27, N'тайну', 4)
INSERT [dbo].[ForSearch] ([id_k], [key_value], [id_book]) VALUES (28, N'тайна', 4)
INSERT [dbo].[ForSearch] ([id_k], [key_value], [id_book]) VALUES (29, N'профессор', 4)
INSERT [dbo].[ForSearch] ([id_k], [key_value], [id_book]) VALUES (30, N'профессора', 4)
INSERT [dbo].[ForSearch] ([id_k], [key_value], [id_book]) VALUES (31, N'МориартиL', 4)
INSERT [dbo].[ForSearch] ([id_k], [key_value], [id_book]) VALUES (32, N'другу', 4)
INSERT [dbo].[ForSearch] ([id_k], [key_value], [id_book]) VALUES (33, N'друг', 4)
INSERT [dbo].[ForSearch] ([id_k], [key_value], [id_book]) VALUES (34, N'дневнике', 5)
INSERT [dbo].[ForSearch] ([id_k], [key_value], [id_book]) VALUES (35, N'дневник', 5)
INSERT [dbo].[ForSearch] ([id_k], [key_value], [id_book]) VALUES (36, N'Шона', 5)
INSERT [dbo].[ForSearch] ([id_k], [key_value], [id_book]) VALUES (37, N'Шон', 5)
INSERT [dbo].[ForSearch] ([id_k], [key_value], [id_book]) VALUES (38, N'Байтелла', 5)
INSERT [dbo].[ForSearch] ([id_k], [key_value], [id_book]) VALUES (39, N'Байтелл', 5)
INSERT [dbo].[ForSearch] ([id_k], [key_value], [id_book]) VALUES (40, N'владельца', 5)
INSERT [dbo].[ForSearch] ([id_k], [key_value], [id_book]) VALUES (41, N'Шотландии', 5)
INSERT [dbo].[ForSearch] ([id_k], [key_value], [id_book]) VALUES (42, N'букинистического', 5)
INSERT [dbo].[ForSearch] ([id_k], [key_value], [id_book]) VALUES (43, N'магазина', 5)
INSERT [dbo].[ForSearch] ([id_k], [key_value], [id_book]) VALUES (44, N'книготорговли', 5)
INSERT [dbo].[ForSearch] ([id_k], [key_value], [id_book]) VALUES (45, N'будни', 5)
INSERT [dbo].[ForSearch] ([id_k], [key_value], [id_book]) VALUES (46, N'фестиваля', 5)
INSERT [dbo].[ForSearch] ([id_k], [key_value], [id_book]) VALUES (47, N'Олень', 6)
INSERT [dbo].[ForSearch] ([id_k], [key_value], [id_book]) VALUES (48, N'всадника', 6)
INSERT [dbo].[ForSearch] ([id_k], [key_value], [id_book]) VALUES (49, N'всадник', 6)
INSERT [dbo].[ForSearch] ([id_k], [key_value], [id_book]) VALUES (50, N'бежать', 6)
INSERT [dbo].[ForSearch] ([id_k], [key_value], [id_book]) VALUES (51, N'нет', 6)
INSERT [dbo].[ForSearch] ([id_k], [key_value], [id_book]) VALUES (52, N'головы', 6)
INSERT [dbo].[ForSearch] ([id_k], [key_value], [id_book]) VALUES (53, N'облике', 6)
INSERT [dbo].[ForSearch] ([id_k], [key_value], [id_book]) VALUES (54, N'странное', 6)
INSERT [dbo].[ForSearch] ([id_k], [key_value], [id_book]) VALUES (55, N'приковывает', 6)
INSERT [dbo].[ForSearch] ([id_k], [key_value], [id_book]) VALUES (56, N'индейского', 7)
INSERT [dbo].[ForSearch] ([id_k], [key_value], [id_book]) VALUES (58, N'индейское', 7)
INSERT [dbo].[ForSearch] ([id_k], [key_value], [id_book]) VALUES (59, N'племени', 7)
INSERT [dbo].[ForSearch] ([id_k], [key_value], [id_book]) VALUES (60, N'племя', 7)
INSERT [dbo].[ForSearch] ([id_k], [key_value], [id_book]) VALUES (61, N'семинолов', 7)
INSERT [dbo].[ForSearch] ([id_k], [key_value], [id_book]) VALUES (62, N'роман', 7)
INSERT [dbo].[ForSearch] ([id_k], [key_value], [id_book]) VALUES (63, N'Оцеола—вождь', 7)
INSERT [dbo].[ForSearch] ([id_k], [key_value], [id_book]) VALUES (64, N'право', 7)
INSERT [dbo].[ForSearch] ([id_k], [key_value], [id_book]) VALUES (65, N'жить', 7)
INSERT [dbo].[ForSearch] ([id_k], [key_value], [id_book]) VALUES (66, N'земле', 7)
INSERT [dbo].[ForSearch] ([id_k], [key_value], [id_book]) VALUES (67, N'Булгакова', 8)
INSERT [dbo].[ForSearch] ([id_k], [key_value], [id_book]) VALUES (68, N'мастер', 8)
INSERT [dbo].[ForSearch] ([id_k], [key_value], [id_book]) VALUES (69, N'Маргарита', 8)
INSERT [dbo].[ForSearch] ([id_k], [key_value], [id_book]) VALUES (70, N'роман', 8)
INSERT [dbo].[ForSearch] ([id_k], [key_value], [id_book]) VALUES (71, N'XX', 8)
INSERT [dbo].[ForSearch] ([id_k], [key_value], [id_book]) VALUES (72, N'создавался', 8)
INSERT [dbo].[ForSearch] ([id_k], [key_value], [id_book]) VALUES (73, N'тринадцать', 8)
INSERT [dbo].[ForSearch] ([id_k], [key_value], [id_book]) VALUES (74, N'лет', 8)
INSERT [dbo].[ForSearch] ([id_k], [key_value], [id_book]) VALUES (75, N'известный', 8)
INSERT [dbo].[ForSearch] ([id_k], [key_value], [id_book]) VALUES (76, N'известных', 8)
INSERT [dbo].[ForSearch] ([id_k], [key_value], [id_book]) VALUES (77, N'текстов', 8)
INSERT [dbo].[ForSearch] ([id_k], [key_value], [id_book]) VALUES (78, N'русских', 8)
INSERT [dbo].[ForSearch] ([id_k], [key_value], [id_book]) VALUES (79, N'роман', 10)
INSERT [dbo].[ForSearch] ([id_k], [key_value], [id_book]) VALUES (80, N'истории', 10)
INSERT [dbo].[ForSearch] ([id_k], [key_value], [id_book]) VALUES (81, N'Римской', 10)
INSERT [dbo].[ForSearch] ([id_k], [key_value], [id_book]) VALUES (82, N'империи', 10)
INSERT [dbo].[ForSearch] ([id_k], [key_value], [id_book]) VALUES (83, N'восстании', 10)
INSERT [dbo].[ForSearch] ([id_k], [key_value], [id_book]) VALUES (84, N'рабов', 10)
INSERT [dbo].[ForSearch] ([id_k], [key_value], [id_book]) VALUES (85, N'предводителе', 10)
INSERT [dbo].[ForSearch] ([id_k], [key_value], [id_book]) VALUES (86, N'гладиаторе', 10)
INSERT [dbo].[ForSearch] ([id_k], [key_value], [id_book]) VALUES (87, N'гладиатор', 10)
INSERT [dbo].[ForSearch] ([id_k], [key_value], [id_book]) VALUES (88, N'героях', 10)
INSERT [dbo].[ForSearch] ([id_k], [key_value], [id_book]) VALUES (89, N'злодеях', 10)
INSERT [dbo].[ForSearch] ([id_k], [key_value], [id_book]) VALUES (90, N'символ', 10)
INSERT [dbo].[ForSearch] ([id_k], [key_value], [id_book]) VALUES (91, N'свободы', 10)
INSERT [dbo].[ForSearch] ([id_k], [key_value], [id_book]) VALUES (92, N'символом', 10)
INSERT [dbo].[ForSearch] ([id_k], [key_value], [id_book]) VALUES (93, N'история', 11)
INSERT [dbo].[ForSearch] ([id_k], [key_value], [id_book]) VALUES (94, N'драматичная', 11)
INSERT [dbo].[ForSearch] ([id_k], [key_value], [id_book]) VALUES (95, N'мир', 11)
INSERT [dbo].[ForSearch] ([id_k], [key_value], [id_book]) VALUES (96, N'желаний', 11)
INSERT [dbo].[ForSearch] ([id_k], [key_value], [id_book]) VALUES (97, N'тайных', 11)
INSERT [dbo].[ForSearch] ([id_k], [key_value], [id_book]) VALUES (98, N'сокровенных', 11)
INSERT [dbo].[ForSearch] ([id_k], [key_value], [id_book]) VALUES (99, N'держит', 11)
INSERT [dbo].[ForSearch] ([id_k], [key_value], [id_book]) VALUES (100, N'напряжении', 11)
SET IDENTITY_INSERT [dbo].[ForSearch] OFF
/****** Object:  Table [dbo].[Comment]    Script Date: 12/09/2018 23:03:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comment](
	[id_comment] [int] IDENTITY(1,1) NOT NULL,
	[comment_text] [nvarchar](300) NOT NULL,
	[id_mark] [int] NULL,
	[id_user] [int] NULL,
	[id_book] [int] NULL,
 CONSTRAINT [PK_CommentId] PRIMARY KEY CLUSTERED 
(
	[id_comment] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Comment] ON
INSERT [dbo].[Comment] ([id_comment], [comment_text], [id_mark], [id_user], [id_book]) VALUES (1, N'Советую всем ознакомиться не только с работами, но и с биографией автора. ', 4, 2, 11)
INSERT [dbo].[Comment] ([id_comment], [comment_text], [id_mark], [id_user], [id_book]) VALUES (2, N'Огромный смысл заложен в данном произведении. Дориан - определенно герой нашего времени. Написано легко, история живая и проникновенная. Книгу однозначно должен прочитать каждый! ', 5, 1, 11)
INSERT [dbo].[Comment] ([id_comment], [comment_text], [id_mark], [id_user], [id_book]) VALUES (3, N'На самом деле, это первая книжка от которой у меня слезы навернулись. Ни одна экранизация Спартака по драматизму не провзошла произведение Рафаэлло Джованьоли. И взаключении.По всему видно, что автор поставил целью при написании данного романа воодушевить соотечественников на подъем боевого духа. ', 5, 5, 10)
INSERT [dbo].[Comment] ([id_comment], [comment_text], [id_mark], [id_user], [id_book]) VALUES (4, N'От финальной сцены с лунной дорожкой и бредущим по ней прокуратором, сопровождаемым самым верным своим другом - псом Банго, у меня просто мурашки бегут... Наверное, это самая красивая и трогательная сцена, которую я вообще могу вспомнить в литературе. ', 5, 4, 8)
INSERT [dbo].[Comment] ([id_comment], [comment_text], [id_mark], [id_user], [id_book]) VALUES (5, N'Остаётся лишь сказать "спасибо" Булгакову за то, что у меня не без его участия пробудился интерес к библейским отсылкам в художественной литературе. Увы и ах, это просто не мой роман. ', 3, 5, 8)
INSERT [dbo].[Comment] ([id_comment], [comment_text], [id_mark], [id_user], [id_book]) VALUES (6, N'Мне книга очень понравилась. И читалась очень легко. Даже не смотря на сравнительно не маленький объем - время на ее прочтение тратится совсем мало. И сюжет очень интересный. ', 5, 3, 6)
INSERT [dbo].[Comment] ([id_comment], [comment_text], [id_mark], [id_user], [id_book]) VALUES (7, N'Сюжет интригует и так захватывает, что сама не замечаешь, как страница за страницей убывает со стремительной скоростью. И вообще, понравилось как описаны герои, как они продуманы ', 5, 2, 6)
INSERT [dbo].[Comment] ([id_comment], [comment_text], [id_mark], [id_user], [id_book]) VALUES (9, N'В книге нет никаких философских изысканий, зато в ней есть жизнь, бурлящая, кипучая, полная страстей. Да и разве может она быть иной, когда вокруг палящее солнце, знойный ветер и бескрайние прерии, где пасутся прекрасные мустанги, и живут свободолюбивые индейцы. ', 3, 4, 7)
INSERT [dbo].[Comment] ([id_comment], [comment_text], [id_mark], [id_user], [id_book]) VALUES (10, N'рассказ не оправдывает моих ожиданий. "Последнее дело Холмса" - от истории с таким названием я ждал чего-то более значимого, более эффектного, настоящую "лебединую песнь" Шерлока Холмса. Вместо этого перед нами довольно стандартный рассказ о великом сыщике ', 4, 1, 4)
SET IDENTITY_INSERT [dbo].[Comment] OFF
/****** Object:  ForeignKey [FK_BooksToAUthor]    Script Date: 12/09/2018 23:03:26 ******/
ALTER TABLE [dbo].[Books]  WITH CHECK ADD  CONSTRAINT [FK_BooksToAUthor] FOREIGN KEY([id_author])
REFERENCES [dbo].[Author] ([id_author])
GO
ALTER TABLE [dbo].[Books] CHECK CONSTRAINT [FK_BooksToAUthor]
GO
/****** Object:  ForeignKey [FK_BooksToPublisher]    Script Date: 12/09/2018 23:03:26 ******/
ALTER TABLE [dbo].[Books]  WITH CHECK ADD  CONSTRAINT [FK_BooksToPublisher] FOREIGN KEY([id_publish])
REFERENCES [dbo].[Publisher] ([id_publisher])
GO
ALTER TABLE [dbo].[Books] CHECK CONSTRAINT [FK_BooksToPublisher]
GO
/****** Object:  ForeignKey [FK_CommentToBooks]    Script Date: 12/09/2018 23:03:26 ******/
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_CommentToBooks] FOREIGN KEY([id_book])
REFERENCES [dbo].[Books] ([id_book])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_CommentToBooks]
GO
/****** Object:  ForeignKey [FK_CommentToMark]    Script Date: 12/09/2018 23:03:26 ******/
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_CommentToMark] FOREIGN KEY([id_mark])
REFERENCES [dbo].[Mark] ([id_mark])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_CommentToMark]
GO
/****** Object:  ForeignKey [FK_CommentToUser]    Script Date: 12/09/2018 23:03:26 ******/
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_CommentToUser] FOREIGN KEY([id_user])
REFERENCES [dbo].[UserLib] ([id_user])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_CommentToUser]
GO
/****** Object:  ForeignKey [FK_KeyToBooks]    Script Date: 12/09/2018 23:03:26 ******/
ALTER TABLE [dbo].[ForSearch]  WITH CHECK ADD  CONSTRAINT [FK_KeyToBooks] FOREIGN KEY([id_book])
REFERENCES [dbo].[Books] ([id_book])
GO
ALTER TABLE [dbo].[ForSearch] CHECK CONSTRAINT [FK_KeyToBooks]
GO
