USE [CINElmaDB]
GO
/****** Object:  Table [dbo].[tbl_bilet]    Script Date: 24.01.2025 22:55:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_bilet](
	[ıd] [smallint] IDENTITY(1,1) NOT NULL,
	[film] [nvarchar](50) NULL,
	[salonadı] [char](10) NULL,
	[tarih] [char](10) NULL,
	[saat] [nvarchar](20) NULL,
	[adsoyad] [nvarchar](100) NULL,
	[koltukno] [nvarchar](50) NULL,
	[tarife] [nvarchar](20) NULL,
	[biletno] [nvarchar](20) NULL,
 CONSTRAINT [PK_tbl_bilet] PRIMARY KEY CLUSTERED 
(
	[ıd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_filmler]    Script Date: 24.01.2025 22:55:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_filmler](
	[ID] [smallint] IDENTITY(1,1) NOT NULL,
	[ADI] [nvarchar](50) NULL,
	[TÜRÜ] [nvarchar](100) NULL,
	[ÖZELLİK] [nvarchar](100) NULL,
	[YÖNETMEN] [nvarchar](100) NULL,
	[OYUNCU] [nvarchar](200) NULL,
	[AFİŞ] [nvarchar](max) NULL,
	[DİL] [nvarchar](50) NULL,
	[TARİH] [nvarchar](30) NULL,
	[DETAY] [nvarchar](300) NULL,
	[DURUM] [nchar](1) NULL,
 CONSTRAINT [PK_tbl_filmler] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_kontrol]    Script Date: 24.01.2025 22:55:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_kontrol](
	[FİLMADI] [nvarchar](50) NULL,
	[TARİH] [nvarchar](10) NULL,
	[SEANS] [char](5) NULL,
	[SALONADI] [nvarchar](20) NULL,
	[KOLTUKLAR] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_oyuncu]    Script Date: 24.01.2025 22:55:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_oyuncu](
	[ID] [smallint] IDENTITY(1,1) NOT NULL,
	[İSİM] [nvarchar](50) NULL,
	[SOYİSİM] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_oyuncu] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_salonlar]    Script Date: 24.01.2025 22:55:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_salonlar](
	[ID] [smallint] IDENTITY(1,1) NOT NULL,
	[SALONADI] [nvarchar](20) NULL,
	[KOLTUKSAYISI] [char](10) NULL,
 CONSTRAINT [PK_tbl_salonlar] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_seçilenler]    Script Date: 24.01.2025 22:55:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_seçilenler](
	[KİŞİ] [nvarchar](50) NULL,
	[TÜR] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Users]    Script Date: 24.01.2025 22:55:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Users](
	[ID] [smallint] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[Name] [nvarchar](50) NULL,
	[Surname] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_Users] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_yönetmenler]    Script Date: 24.01.2025 22:55:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_yönetmenler](
	[ID] [smallint] IDENTITY(1,1) NOT NULL,
	[İSİM] [nvarchar](50) NULL,
	[SOYİSİM] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_yönetmenler_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbl_bilet] ON 

INSERT [dbo].[tbl_bilet] ([ıd], [film], [salonadı], [tarih], [saat], [adsoyad], [koltukno], [tarife], [biletno]) VALUES (1, N'Inception', N'SALON 2   ', N'1-3-2025  ', N'19:00', N'ERDEM YEŞİLYAPRAK', N'E1,E2', N'Öğrenci', N'BAC5B302729')
INSERT [dbo].[tbl_bilet] ([ıd], [film], [salonadı], [tarih], [saat], [adsoyad], [koltukno], [tarife], [biletno]) VALUES (2, N'ESARETİN BEDELİ', N'SALON 2   ', N'10-2-2025 ', N'13:00', N'ERDEM YEŞİLYAPRAK', N'E6,E7', N'Öğrenci', N'813A9A9463E')
INSERT [dbo].[tbl_bilet] ([ıd], [film], [salonadı], [tarih], [saat], [adsoyad], [koltukno], [tarife], [biletno]) VALUES (3, N'Beautiful Mind', N'SALON 1   ', N'13-2-2025 ', N'21:00', N'SADFSD ASDAS', N'B1,B2', N'Yetişkin', N'E9GC24AC871')
SET IDENTITY_INSERT [dbo].[tbl_bilet] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_filmler] ON 

INSERT [dbo].[tbl_filmler] ([ID], [ADI], [TÜRÜ], [ÖZELLİK], [YÖNETMEN], [OYUNCU], [AFİŞ], [DİL], [TARİH], [DETAY], [DURUM]) VALUES (1, N'ESARETİN BEDELİ', N'Dram', N'Genel İzleyici', N'Frank Darabont', N'Bob Gunton ,Morgan Freeman
 ,Tim Robbins
 ,William Sadler', N'C:\Users\yslyp\Downloads\Esaretin-bedeli.jpg', N'Altyazı', N'10-2-2025', N'STEPHEN KİNG''İN RİTA HAYWORTH VE SHAWSHANK''İN KEFARETİ ADLI NOVELLASINDAN UYARLANAN FİLM, MASUMİYETİNİ İDDİA ETMESİNE RAĞMEN KARISINI VE SEVGİLİSİNİ ÖLDÜRDÜĞÜ GEREKÇESİYLE SHAWSHANK DEVLET CEZAEVİ''NDE YAKLAŞIK 20 YILINI GEÇİREN BANKACI ANDY DUFRESNE''İN HİKÂYESİNİ ANLATIR.', N'1')
INSERT [dbo].[tbl_filmler] ([ID], [ADI], [TÜRÜ], [ÖZELLİK], [YÖNETMEN], [OYUNCU], [AFİŞ], [DİL], [TARİH], [DETAY], [DURUM]) VALUES (4, N'ER RYAN''I KURTARMAK', N'Aksiyon', N'Şiddet ve Korku ,+13', N'Steven Spielberg', N'Tom Hanks
 ,Tom Sizemore ,Matt Damon
', N'C:\Users\yslyp\Downloads\Er-Ryani-kurtarmak-poster.png', N'İngilizce', N'12-2-2025', N'FİLM, YÜZBAŞI JOHN H. MİLLER VE YANINDA BULUNAN ASKERLERİN DİĞER ÜÇ KARDEŞİ SAVAŞ SIRASINDA FARKLI CEPHELERDE ÖLEN, BUNUN SONUCUNDA EVE DÖNÜŞ VİZESİ ALAN JAMES FRANCİS RYAN İSİMLİ ASKERİ BULMAYA ÇALIŞIRKEN BAŞLARINDAN GEÇENLERİ KONU ALMAKTADIR.', N'1')
INSERT [dbo].[tbl_filmler] ([ID], [ADI], [TÜRÜ], [ÖZELLİK], [YÖNETMEN], [OYUNCU], [AFİŞ], [DİL], [TARİH], [DETAY], [DURUM]) VALUES (5, N'Forrest Gump', N'Dram,Romantik,Komedi', N'Genel İzleyici', N'Robert Zemeckis', N'Tom Hanks ,Robin Wright ,Gary Sinise', N'C:\Users\yslyp\Downloads\Forrest_Gump_(film,_1994).jpg', N'Altyazı', N'12-2-2025', N'Film, öğrenme güçlüğü yaşayan ancak atletik olarak inanılmaz yeteneklere sahip Forrest Gump''ın, doğum yılı olan 1944 ve 1982 yılları arasında gerçekleşmiş, bazen sadece gözlemlediği, bazen de başkalarına ilham verdiği 20. yüzyılın dönüm noktası olaylarını betimler.', N'1')
INSERT [dbo].[tbl_filmler] ([ID], [ADI], [TÜRÜ], [ÖZELLİK], [YÖNETMEN], [OYUNCU], [AFİŞ], [DİL], [TARİH], [DETAY], [DURUM]) VALUES (6, N'Inception', N'Aksiyon,BilimKurgu', N'Genel İzleyici', N'Christopher Nolan', N'Leonardo DiCaprio,Joseph Gordon-Levitt,Elliot Page', N'C:\Users\yslyp\Downloads\Başlangıç.jpg', N'İngilizce', N'13-2-2025', N'Rüya paylaşım teknolojisi kullanarak şirket sırlarını çalan bir hırsız, bir CEO''nun zihnine bir fikir yerleştirme göreviyle karşı karşıya kalır, ancak trajik geçmişi projeyi ve ekibini felakete sürükleyecektir.', N'1')
INSERT [dbo].[tbl_filmler] ([ID], [ADI], [TÜRÜ], [ÖZELLİK], [YÖNETMEN], [OYUNCU], [AFİŞ], [DİL], [TARİH], [DETAY], [DURUM]) VALUES (7, N'Dövüş Kulübü', N'Dram,Gerilim', N'Genel İzleyici', N'David Fincher', N'Brad Pitt, Edward Norton,Meat Loaf', N'C:\Users\yslyp\Downloads\Dövüş_Kulübü_film_afişi.jpg', N'Türkçe', N'13-2-2025', N'Uykusuz bir ofis çalışanı ile umursamaz bir sabun üreticisi, çok daha fazlasına dönüşen bir yeraltı dövüş kulübü kurarlar.', N'1')
INSERT [dbo].[tbl_filmler] ([ID], [ADI], [TÜRÜ], [ÖZELLİK], [YÖNETMEN], [OYUNCU], [AFİŞ], [DİL], [TARİH], [DETAY], [DURUM]) VALUES (8, N'Beautiful Mind', N'Dram', N'Genel İzleyici', N'Ron Howard', N'Russell Crowe,Ed Harris,Jennifer Connelly', N'C:\Users\yslyp\Downloads\Beautiful_mind.jpg', N'Altyazı', N'13-2-2025', N'Matematik dehası John Nash, kariyerinin başlarında şaşırtıcı bir keşif yaptı ve uluslararası beğeniye kavuşmak üzereydi. Ancak yakışıklı ve kibirli Nash, kısa süre sonra kendini ürkütücü bir öz keşif yolculuğunda buldu.


', N'1')
INSERT [dbo].[tbl_filmler] ([ID], [ADI], [TÜRÜ], [ÖZELLİK], [YÖNETMEN], [OYUNCU], [AFİŞ], [DİL], [TARİH], [DETAY], [DURUM]) VALUES (9, N'Interstellar', N'Dram,Bilim Kurgu', N'Genel İzleyici', N'Christopher Nolan', N'Matthew McConaughey,Anne Hathaway,Jessica Chastain', N'C:\Users\yslyp\Downloads\Interstellar_film_poster.jpg', N'Altyazı', N'28-2-2025', N'Gelecekte Dünya yaşanmaz hale geldiğinde, çiftçi ve eski NASA pilotu Joseph Cooper, insanlık için yeni bir gezegen bulmak üzere bir araştırma ekibiyle birlikte bir uzay aracı pilotluğu yapma göreviyle görevlendirilir.', N'1')
INSERT [dbo].[tbl_filmler] ([ID], [ADI], [TÜRÜ], [ÖZELLİK], [YÖNETMEN], [OYUNCU], [AFİŞ], [DİL], [TARİH], [DETAY], [DURUM]) VALUES (10, N'3 Idiots', N'Komedi,Dram', N'Genel İzleyici', N'
Rajkumar Hirani', N'Aamir Khan, Madhavan, Mona Singh', N'C:\Users\yslyp\Downloads\3_idiots_poster.jpg', N'Türkçe', N'28-2-2025', N'İki arkadaş, uzun zamandır kayıp olan yoldaşlarını arıyorlar. Üniversite günlerine geri dönüp, dünyanın geri kalanı onları "aptal" diye çağırırken bile farklı düşünmeye teşvik eden arkadaşlarının anılarını yad ediyorlar.', N'1')
INSERT [dbo].[tbl_filmler] ([ID], [ADI], [TÜRÜ], [ÖZELLİK], [YÖNETMEN], [OYUNCU], [AFİŞ], [DİL], [TARİH], [DETAY], [DURUM]) VALUES (11, N'Truman Show', N'Komedi,Dram', N'Genel İzleyici', N' Peter Weir', N'Jim Carrey,Ed Harris,Laura Linney', N'C:\Users\yslyp\Downloads\Five_hundred_days_of_summer.jpg', N'İngilizce', N'15-2-2025', N'Bir sigorta satıcısı, tüm hayatının aslında bir tür gerçeklik şovu olduğundan şüphelenmeye başlar. 
', N'1')
INSERT [dbo].[tbl_filmler] ([ID], [ADI], [TÜRÜ], [ÖZELLİK], [YÖNETMEN], [OYUNCU], [AFİŞ], [DİL], [TARİH], [DETAY], [DURUM]) VALUES (12, N'(500) Days of Summer', N'Dram,Aşk,Komedi', N'Genel İzleyici', N'Marc Webb', N'Zooey Deschanel,Joseph Gordon-Levitt', N'C:\Users\yslyp\Downloads\Five_hundred_days_of_summer.jpg', N'Altyazı', N'1-3-2025', N'Kaderinin tek sevgilisi olduğuna inandığı kız tarafından terk edildikten sonra, umutsuz romantik Tom Hansen, ilişkiyi gözden geçirerek her şeyin nasıl yanlış gittiğini ve onu geri kazanmanın yolunu bulmaya çalışır. 
', N'1')
SET IDENTITY_INSERT [dbo].[tbl_filmler] OFF
GO
INSERT [dbo].[tbl_kontrol] ([FİLMADI], [TARİH], [SEANS], [SALONADI], [KOLTUKLAR]) VALUES (N'ESARETİN BEDELİ', N'10-2-2025', N'10:00', N'SALON 1', N'A1')
INSERT [dbo].[tbl_kontrol] ([FİLMADI], [TARİH], [SEANS], [SALONADI], [KOLTUKLAR]) VALUES (N'ESARETİN BEDELİ', N'10-2-2025', N'13:00', N'SALON 2', N'B6,D8,A10,B2,B3,B4,D2,D3,D4,A1,A2,A3,E1,E2,E3,G3,G4,G5,E6,E7')
INSERT [dbo].[tbl_kontrol] ([FİLMADI], [TARİH], [SEANS], [SALONADI], [KOLTUKLAR]) VALUES (N'ER RYAN''I KURTARMAK', N'12-2-2025', N'10:00', N'SALON 1', N'C9,D7,B6')
INSERT [dbo].[tbl_kontrol] ([FİLMADI], [TARİH], [SEANS], [SALONADI], [KOLTUKLAR]) VALUES (N'ER RYAN''I KURTARMAK', N'12-2-2025', N'15:00', N'SALON 3', NULL)
INSERT [dbo].[tbl_kontrol] ([FİLMADI], [TARİH], [SEANS], [SALONADI], [KOLTUKLAR]) VALUES (N'ER RYAN''I KURTARMAK', N'20-2-2025', N'13:00', N'SALON 1', NULL)
INSERT [dbo].[tbl_kontrol] ([FİLMADI], [TARİH], [SEANS], [SALONADI], [KOLTUKLAR]) VALUES (N'Forrest Gump', N'12-2-2025', N'10:00', N'SALON 2', NULL)
INSERT [dbo].[tbl_kontrol] ([FİLMADI], [TARİH], [SEANS], [SALONADI], [KOLTUKLAR]) VALUES (N'Forrest Gump', N'12-2-2025', N'13:00', N'SALON 4', N'C1,A4,H5')
INSERT [dbo].[tbl_kontrol] ([FİLMADI], [TARİH], [SEANS], [SALONADI], [KOLTUKLAR]) VALUES (N'Forrest Gump', N'20-2-2025', N'10:00', N'SALON 1', NULL)
INSERT [dbo].[tbl_kontrol] ([FİLMADI], [TARİH], [SEANS], [SALONADI], [KOLTUKLAR]) VALUES (N'Forrest Gump', N'20-2-2025', N'17:00', N'SALON 3', NULL)
INSERT [dbo].[tbl_kontrol] ([FİLMADI], [TARİH], [SEANS], [SALONADI], [KOLTUKLAR]) VALUES (N'Inception', N'13-2-2025', N'15:00', N'SALON 1', NULL)
INSERT [dbo].[tbl_kontrol] ([FİLMADI], [TARİH], [SEANS], [SALONADI], [KOLTUKLAR]) VALUES (N'Inception', N'18-2-2025', N'19:00', N'SALON 2', NULL)
INSERT [dbo].[tbl_kontrol] ([FİLMADI], [TARİH], [SEANS], [SALONADI], [KOLTUKLAR]) VALUES (N'Inception', N'18-2-2025', N'23:00', N'SALON 1', NULL)
INSERT [dbo].[tbl_kontrol] ([FİLMADI], [TARİH], [SEANS], [SALONADI], [KOLTUKLAR]) VALUES (N'Dövüş Kulübü', N'13-2-2025', N'13:00', N'SALON 3', N',C1,C2,C3')
INSERT [dbo].[tbl_kontrol] ([FİLMADI], [TARİH], [SEANS], [SALONADI], [KOLTUKLAR]) VALUES (N'Dövüş Kulübü', N'13-2-2025', N'15:00', N'SALON 2', N'A1,B5,D7,G6')
INSERT [dbo].[tbl_kontrol] ([FİLMADI], [TARİH], [SEANS], [SALONADI], [KOLTUKLAR]) VALUES (N'Beautiful Mind', N'13-2-2025', N'17:00', N'SALON 4', N',D1,D2,D3')
INSERT [dbo].[tbl_kontrol] ([FİLMADI], [TARİH], [SEANS], [SALONADI], [KOLTUKLAR]) VALUES (N'Beautiful Mind', N'13-2-2025', N'21:00', N'SALON 1', N'D1,D2,E1,E2,E3,E4,B1,B2')
INSERT [dbo].[tbl_kontrol] ([FİLMADI], [TARİH], [SEANS], [SALONADI], [KOLTUKLAR]) VALUES (N'Beautiful Mind', N'18-2-2025', N'21:00', N'SALON 3', N'A6,F5,D7')
INSERT [dbo].[tbl_kontrol] ([FİLMADI], [TARİH], [SEANS], [SALONADI], [KOLTUKLAR]) VALUES (N'Interstellar', N'28-2-2025', N'17:00', N'SALON1', NULL)
INSERT [dbo].[tbl_kontrol] ([FİLMADI], [TARİH], [SEANS], [SALONADI], [KOLTUKLAR]) VALUES (N'Interstellar', N'28-2-2025', N'21:00', N'SALON 2', NULL)
INSERT [dbo].[tbl_kontrol] ([FİLMADI], [TARİH], [SEANS], [SALONADI], [KOLTUKLAR]) VALUES (N'3 Idiots', N'28-2-2025', N'17:00', N'SALON 3', N',C1,C2,C3')
INSERT [dbo].[tbl_kontrol] ([FİLMADI], [TARİH], [SEANS], [SALONADI], [KOLTUKLAR]) VALUES (N'3 Idiots', N'28-2-2025', N'21:00', N'SALON 4', N',D1,D2,D3,D4')
INSERT [dbo].[tbl_kontrol] ([FİLMADI], [TARİH], [SEANS], [SALONADI], [KOLTUKLAR]) VALUES (N'Truman Show', N'15-2-2025', N'17:00', N'SALON 1', N',C5,C4,C3,C2,E5')
INSERT [dbo].[tbl_kontrol] ([FİLMADI], [TARİH], [SEANS], [SALONADI], [KOLTUKLAR]) VALUES (N'Truman Show', N'15-2-2025', N'20:00', N'SALON 4', NULL)
INSERT [dbo].[tbl_kontrol] ([FİLMADI], [TARİH], [SEANS], [SALONADI], [KOLTUKLAR]) VALUES (N'(500) Days of Summer', N'1-3-2025', N'19:00', N'SALON 1', NULL)
INSERT [dbo].[tbl_kontrol] ([FİLMADI], [TARİH], [SEANS], [SALONADI], [KOLTUKLAR]) VALUES (N'(500) Days of Summer', N'1-3-2025', N'23:00', N'SALON 3', NULL)
INSERT [dbo].[tbl_kontrol] ([FİLMADI], [TARİH], [SEANS], [SALONADI], [KOLTUKLAR]) VALUES (N'Inception', N'1-3-2025', N'19:00', N'SALON 2', N',B1,B2,B3,B4,F1,F2,E1,E2')
INSERT [dbo].[tbl_kontrol] ([FİLMADI], [TARİH], [SEANS], [SALONADI], [KOLTUKLAR]) VALUES (N'ER RYAN''I KURTARMAK', N'15-2-2025', N'21:00', N'SALON 3', NULL)
INSERT [dbo].[tbl_kontrol] ([FİLMADI], [TARİH], [SEANS], [SALONADI], [KOLTUKLAR]) VALUES (N'ESARETİN BEDELİ', N'18-2-2025', N'20:00', N'SALON 4', N',A1,A2,A3,C1,C2,C3')
INSERT [dbo].[tbl_kontrol] ([FİLMADI], [TARİH], [SEANS], [SALONADI], [KOLTUKLAR]) VALUES (N'Dövüş Kulübü', N'1-3-2025', N'23:00', N'SALON 1', N',B4,B5,B6,B4 ,B5 ,B6 ,C3')
GO
SET IDENTITY_INSERT [dbo].[tbl_oyuncu] ON 

INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (1, N'Johnny', N'Depp
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (2, N'Leonardo', N'DiCaprio
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (3, N'Brad', N'Pitt
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (4, N'Will', N'Smith
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (5, N'Tom', N'Hanks
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (6, N'Angelina', N'Jolie
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (7, N'Nicolas', N'Cage
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (8, N'Morgan', N'Freeman
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (9, N'Robert', N'Downey')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (10, N'Adam', N'Sandler
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (11, N'Edward', N'Norton
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (12, N'Al', N'Pacino
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (13, N'Bruce', N'Willis
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (14, N'Scarlett', N'Johansson
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (15, N'Kristen', N'Stewart
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (16, N'Anne', N'Hathaway
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (17, N'Tom', N'Cruise
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (18, N'Vin', N'Diesel
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (19, N'Jessica', N'Alba
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (20, N'Matt', N'Damon
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (21, N'Cameron', N'Diaz
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (22, N'Robert', N'De')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (23, N'Milla', N'Jovovich
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (24, N'Sandra', N'Bullock
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (25, N'Mel', N'Gibson
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (26, N'Drew', N'Barrymore
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (27, N'Ashton', N'Kutcher
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (28, N'Denzel', N'Washington
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (29, N'Ashley', N'Greene
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (30, N'Elijah', N'Wood
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (31, N'Paul', N'Walker
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (32, N'Robin', N'Williams
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (33, N'Jennifer', N'Aniston
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (34, N'Megan', N'Fox
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (35, N'Jake', N'Gyllenhaal
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (36, N'Taylor', N'Lautner
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (37, N'Bradley', N'Cooper
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (38, N'Ben', N'Stiller
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (39, N'Samuel', N'L.')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (40, N'Sylvester', N'Stallone
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (41, N'Julia', N'Roberts
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (42, N'George', N'Clooney
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (43, N'Michelle', N'Rodriguez
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (44, N'Jack', N'Nicholson
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (45, N'Adrien', N'Brody
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (46, N'Jennifer', N'Connelly
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (47, N'Eva', N'Mendes
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (48, N'Brendan', N'Fraser
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (49, N'Liv', N'Tyler
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (50, N'Jensen', N'Ackles
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (51, N'John', N'Travolta
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (52, N'James', N'Franco
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (53, N'Zac', N'Efron
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (54, N'Shia', N'LaBeouf
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (55, N'Ian', N'Somerhalder
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (56, N'Quentin', N'Tarantino
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (57, N'Uma', N'Thurman
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (58, N'Mark', N'Wahlberg
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (59, N'Kirsten', N'Dunst
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (60, N'Mila', N'Kunis
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (61, N'Tim', N'Burton
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (62, N'Jessica', N'Biel
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (63, N'Hilary', N'Duff
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (64, N'Neil', N'Patrick')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (65, N'Tobey', N'Maguire
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (66, N'Jodie', N'Foster
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (67, N'Joseph', N'Gordon-Levitt
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (68, N'Dakota', N'Fanning
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (69, N'Chris', N'Evans
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (70, N'Channing', N'Tatum
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (71, N'Dwayne', N'Johnson
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (72, N'Eddie', N'Murphy
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (73, N'Zooey', N'Deschanel
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (74, N'Ben', N'Affleck
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (75, N'Josh', N'Duhamel
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (76, N'Arnold', N'Schwarzenegger
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (77, N'Owen', N'Wilson
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (78, N'Amanda', N'Seyfried
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (79, N'Hilary', N'Swank
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (80, N'Kate', N'Hudson
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (81, N'Viggo', N'Mortensen
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (82, N'Emma', N'Stone
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (83, N'Steven', N'Spielberg
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (84, N'Clint', N'Eastwood
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (85, N'Justin', N'Timberlake
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (86, N'Blake', N'Lively
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (87, N'Leighton', N'Meester
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (88, N'Amber', N'Heard
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (89, N'Jared', N'Padalecki
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (90, N'Zach', N'Galifianakis
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (91, N'Reese', N'Witherspoon
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (92, N'Kevin', N'Spacey
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (93, N'Vanessa', N'Hudgens
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (94, N'Marlon', N'Brando
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (95, N'Tim', N'Robbins
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (96, N'Josh', N'Hartnett
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (97, N'Josh', N'Holloway
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (98, N'John', N'Cusack
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (99, N'Logan', N'Lerman
')
GO
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (100, N'Katherine', N'Heigl
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (101, N'Jennifer', N'Lawrence
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (102, N'Meg', N'Ryan
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (103, N'Jennifer', N'Lopez
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (104, N'Amy', N'Adams
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (105, N'Kellan', N'Lutz
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (106, N'Kristen', N'Bell
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (107, N'Jennifer', N'Garner
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (108, N'Ali', N'Larter
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (109, N'Tobin', N'Bell
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (110, N'Matthew', N'Fox
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (111, N'Dustin', N'Hoffman
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (112, N'Selena', N'Gomez
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (113, N'Adam', N'Brody
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (114, N'Ashley', N'Tisdale
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (115, N'Halle', N'Berry
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (116, N'Gwyneth', N'Paltrow
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (117, N'Mark', N'Ruffalo
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (118, N'Anna', N'Faris
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (119, N'Miley', N'Cyrus
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (120, N'Emma', N'Roberts
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (121, N'Lucy', N'Liu
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (122, N'Meryl', N'Streep
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (123, N'Stephen', N'King
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (124, N'Michael', N'Clarke')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (125, N'Sean', N'Penn
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (126, N'Josh', N'Hutcherson
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (127, N'Chace', N'Crawford
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (128, N'Jackson', N'Rathbone
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (129, N'Jared', N'Leto
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (130, N'Demi', N'Lovato
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (131, N'Robert', N'Knepper
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (132, N'Kevin', N'Costner
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (133, N'Amy', N'Smart
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (134, N'Richard', N'Gere
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (135, N'Harrison', N'Ford
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (136, N'Rob', N'Schneider
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (137, N'Jennifer', N'Love')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (138, N'Wesley', N'Snipes
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (139, N'Abigail', N'Breslin
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (140, N'Anna', N'Kendrick
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (141, N'Michelle', N'Trachtenberg
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (142, N'Lindsay', N'Lohan
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (143, N'Steve', N'Carell
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (144, N'Jeffrey', N'Dean')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (145, N'Laurence', N'Fishburne
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (146, N'Chad', N'Michael')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (147, N'Nikki', N'Reed
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (148, N'Olivia', N'Wilde
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (149, N'Sarah', N'Wayne')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (150, N'Chris', N'Pine
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (151, N'Tyrese', N'Gibson
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (152, N'Paul', N'Wesley
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (153, N'Chris', N'Tucker
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (154, N'Mary', N'Elizabeth')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (155, N'Amanda', N'Bynes
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (156, N'Michelle', N'Monaghan
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (157, N'Andy', N'Garcia
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (158, N'Taylor', N'Swift
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (159, N'Ethan', N'Hawke
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (160, N'Matthew', N'McConaughey
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (161, N'Alyson', N'Hannigan
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (162, N'Renée', N'Zellweger
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (163, N'Jeremy', N'Renner
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (164, N'Jason', N'Segel
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (165, N'Vera', N'Farmiga
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (166, N'Cam', N'Gigandet
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (167, N'David', N'Fincher
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (168, N'Maggie', N'Grace
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (169, N'Martin', N'Lawrence
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (170, N'Katy', N'Perry
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (171, N'Zachary', N'Levi
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (172, N'Winona', N'Ryder
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (173, N'Timothy', N'Olyphant
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (174, N'Jamie', N'Foxx
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (175, N'Demi', N'Moore
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (176, N'James', N'Marsden
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (177, N'Michael', N'C.')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (178, N'Justin', N'Bartha
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (179, N'Hayden', N'Panettiere
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (180, N'Julianne', N'Moore
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (181, N'AnnaSophia', N'Robb
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (182, N'Jack', N'Black
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (183, N'Beyoncé', N'Knowles
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (184, N'Rachel', N'Bilson
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (185, N'Zoe', N'Saldana
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (186, N'Chloë', N'Grace')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (187, N'Sharon', N'Stone
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (188, N'Willem', N'Dafoe
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (189, N'Martin', N'Scorsese
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (190, N'Josh', N'Radnor
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (191, N'Stanley', N'Kubrick
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (192, N'Christopher', N'Walken
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (193, N'Sean', N'Faris
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (194, N'Justin', N'Long
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (195, N'Misha', N'Collins
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (196, N'Alexandra', N'Daddario
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (197, N'Michelle', N'Pfeiffer
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (198, N'Aaron', N'Eckhart
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (199, N'Seann', N'William')
GO
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (200, N'Elizabeth', N'Banks
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (201, N'Tommy', N'Lee')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (202, N'Andrew', N'Garfield
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (203, N'Eva', N'Longoria
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (204, N'Adam', N'G.')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (205, N'Woody', N'Harrelson
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (206, N'Marlon', N'Wayans
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (207, N'Carla', N'Gugino
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (208, N'Michael', N'Jackson
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (209, N'Jaden', N'Smith
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (210, N'Peter', N'Facinelli
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (211, N'William', N'Fichtner
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (212, N'Jesse', N'Eisenberg
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (213, N'Kevin', N'Bacon
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (214, N'Joe', N'Jonas
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (215, N'Danny', N'Glover
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (216, N'Arielle', N'Kebbel
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (217, N'Katie', N'Holmes
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (218, N'Elle', N'Fanning
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (219, N'Emmy', N'Rossum
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (220, N'Bruce', N'Lee
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (221, N'Sienna', N'Miller
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (222, N'John', N'Malkovich
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (223, N'Kate', N'Mara
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (224, N'Carmen', N'Electra
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (225, N'Joaquin', N'Phoenix
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (226, N'Steve', N'Martin
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (227, N'Penn', N'Badgley
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (228, N'Amanda', N'Peet
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (229, N'Lauren', N'Cohan
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (230, N'Britney', N'Spears
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (231, N'Charlie', N'Sheen
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (232, N'Kevin', N'James
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (233, N'Nick', N'Jonas
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (234, N'Sara', N'Paxton
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (235, N'Mickey', N'Rourke
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (236, N'Sarah', N'Michelle')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (237, N'Jonathan', N'Bennett
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (238, N'Michael', N'Douglas
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (239, N'Stephenie', N'Meyer
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (240, N'Elizabeth', N'Reaser
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (241, N'Norman', N'Reedus
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (242, N'Sophia', N'Bush
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (243, N'Odette', N'Annable
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (244, N'Jim', N'Parsons
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (245, N'Ed', N'Harris
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (246, N'Mary-Kate', N'Olsen
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (247, N'Isabelle', N'Fuhrman
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (248, N'Paul', N'Giamatti
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (249, N'Devon', N'Aoki
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (250, N'Emile', N'Hirsch
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (251, N'Billy', N'Zane
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (252, N'Rosario', N'Dawson
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (253, N'Jason', N'Biggs
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (254, N'Robert', N'Hoffman
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (255, N'Forest', N'Whitaker
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (256, N'Sam', N'Rockwell
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (257, N'Steven', N'R.')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (258, N'Taylor', N'Momsen
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (259, N'Sigourney', N'Weaver
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (260, N'Eminem
', N'')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (261, N'Marilyn', N'Monroe
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (262, N'Milo', N'Ventimiglia
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (263, N'Steve', N'Buscemi
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (264, N'Alec', N'Baldwin
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (265, N'Woody', N'Allen
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (266, N'Kate', N'Bosworth
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (267, N'Macaulay', N'Culkin
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (268, N'Dylan', N'O''Brien
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (269, N'Liev', N'Schreiber
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (270, N'Gary', N'Sinise
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (271, N'Kurt', N'Russell
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (272, N'Briana', N'Evigan
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (273, N'Anthony', N'Anderson
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (274, N'Michael', N'Jai')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (275, N'Dennis', N'Quaid
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (276, N'Ashley', N'Benson
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (277, N'Michelle', N'Williams
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (278, N'Natalie', N'Martinez
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (279, N'David', N'Morse
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (280, N'Billy', N'Burke
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (281, N'Evan', N'Rachel')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (282, N'Mandy', N'Moore
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (283, N'Christina', N'Ricci
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (284, N'Julia', N'Stiles
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (285, N'Ashley', N'Olsen
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (286, N'Candice', N'Accola
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (287, N'Katie', N'Cassidy
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (288, N'Malese', N'Jow
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (289, N'Britt', N'Robertson
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (290, N'Tom', N'Welling
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (291, N'Ben', N'Foster
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (292, N'Michael', N'Emerson
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (293, N'Haley', N'Joel')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (294, N'Jessica', N'Szohr
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (295, N'Giovanni', N'Ribisi
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (296, N'Sterling', N'Knight
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (297, N'Patrick', N'Dempsey
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (298, N'Paris', N'Hilton
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (299, N'Lucas', N'Black
')
GO
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (300, N'Dane', N'Cook
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (301, N'Jim', N'Caviezel
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (302, N'Lucas', N'Grabeel
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (303, N'Thomas', N'Dekker
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (304, N'Kat', N'Graham
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (305, N'Peyton', N'List
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (306, N'Anthony', N'Quinn
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (307, N'Luke', N'Wilson
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (308, N'Kelly', N'Hu
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (309, N'Alyson', N'Stoner
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (310, N'Adam', N'Baldwin
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (311, N'Lucas', N'Till
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (312, N'Tara', N'Reid
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (313, N'Danny', N'Trejo
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (314, N'Jenna', N'Dewan
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (315, N'David', N'Lynch
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (316, N'Jeff', N'Bridges
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (317, N'Claire', N'Danes
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (318, N'Courteney', N'Cox
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (319, N'Bryce', N'Dallas')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (320, N'Jake', N'Abel
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (321, N'Aaron', N'Yoo
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (322, N'Patrick', N'Wilson
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (323, N'Camilla', N'Belle
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (324, N'Queen', N'Latifah
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (325, N'Kaley', N'Cuoco
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (326, N'Bill', N'Murray
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (327, N'Brittany', N'Murphy
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (328, N'Val', N'Kilmer
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (329, N'Keri', N'Russell
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (330, N'Maria', N'Bello
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (331, N'Chandler', N'Canterbury
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (332, N'Vince', N'Vaughn
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (333, N'Matt', N'Dallas
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (334, N'Lucy', N'Hale
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (335, N'Bridgit', N'Mendler
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (336, N'Matt', N'Lanter
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (337, N'Don', N'Cheadle
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (338, N'Lady', N'Gaga
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (339, N'Peter', N'Dinklage
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (340, N'Stan', N'Lee
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (341, N'Maggie', N'Gyllenhaal
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (342, N'Jonah', N'Hill
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (343, N'Jennifer', N'Morrison
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (344, N'Danielle', N'Panabaker
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (345, N'Adam', N'Robert')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (346, N'Michael', N'Angarano
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (347, N'Sarah', N'Jessica')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (348, N'Alison', N'Lohman
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (349, N'Susan', N'Sarandon
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (350, N'Alexis', N'Bledel
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (351, N'Jennifer', N'Carpenter
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (352, N'Sean', N'Astin
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (353, N'Darren', N'Aronofsky
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (354, N'Corbin', N'Bleu
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (355, N'Jaime', N'King
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (356, N'Paula', N'Patton
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (357, N'Matthew', N'Lillard
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (358, N'Helen', N'Hunt
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (359, N'Kathy', N'Bates
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (360, N'Michael', N'Madsen
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (361, N'Ron', N'Perlman
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (362, N'Marisa', N'Tomei
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (363, N'Shailene', N'Woodley
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (364, N'Terrence', N'Howard
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (365, N'Diane', N'Lane
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (366, N'Michael', N'Keaton
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (367, N'David', N'Henrie
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (368, N'50', N'Cent
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (369, N'Christina', N'Aguilera
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (370, N'John', N'Cena
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (371, N'Heather', N'Graham
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (372, N'Linkin', N'Park
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (373, N'Jason', N'Bateman
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (374, N'Robert', N'Englund
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (375, N'Zachary', N'Quinto
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (376, N'Shane', N'West
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (377, N'Thomas', N'Jane
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (378, N'Christopher', N'Lloyd
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (379, N'J.K.', N'Simmons
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (380, N'Rose', N'McGowan
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (381, N'Amy', N'Lee
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (382, N'Hunter', N'Parrish
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (383, N'Ray', N'Liotta
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (384, N'Freddie', N'Prinze')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (385, N'Paul', N'Rudd
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (386, N'Joe', N'Pesci
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (387, N'Jaimie', N'Alexander
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (388, N'Dianna', N'Agron
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (389, N'Miranda', N'Cosgrove
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (390, N'Frank', N'Darabont
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (391, N'Michael', N'Bay
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (392, N'Ben', N'McKenzie
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (393, N'Bryan', N'Cranston
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (394, N'Whoopi', N'Goldberg
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (395, N'Aaron', N'Paul
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (396, N'Nicola', N'Peltz
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (397, N'Bella', N'Thorne
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (398, N'Peter', N'Sarsgaard
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (399, N'Emily', N'Osment
')
GO
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (400, N'Francis', N'Ford')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (401, N'John', N'Turturro
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (402, N'Austin', N'Robert')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (403, N'Cuba', N'Gooding')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (404, N'Chris', N'Rock
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (405, N'January', N'Jones
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (406, N'Rachel', N'Nichols
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (407, N'Debby', N'Ryan
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (408, N'Brittany', N'Snow
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (409, N'Kyle', N'Gallner
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (410, N'Steve', N'Talley
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (411, N'Mark', N'Dacascos
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (412, N'Shawnee', N'Smith
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (413, N'Jaime', N'Pressly
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (414, N'Tyler', N'Hoechlin
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (415, N'Laura', N'Ramsey
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (416, N'Julie', N'Benz
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (417, N'Maggie', N'Q
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (418, N'Robert', N'Duvall
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (419, N'Sarah', N'Roemer
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (420, N'Kim', N'Basinger
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (421, N'Brandon', N'Routh
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (422, N'Michael', N'Trevino
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (423, N'Lee', N'Pace
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (424, N'Danny', N'DeVito
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (425, N'Jason', N'Momoa
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (426, N'Summer', N'Glau
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (427, N'Ryan', N'Phillippe
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (428, N'Jamie', N'Chung
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (429, N'Alex', N'Meraz
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (430, N'Kristanna', N'Loken
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (431, N'Wes', N'Bentley
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (432, N'Jorge', N'Garcia
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (433, N'J.J.', N'Abrams
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (434, N'Jesse', N'Bradford
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (435, N'Seth', N'Green
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (436, N'Cole', N'Sprouse
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (437, N'Robert', N'Redford
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (438, N'Teri', N'Hatcher
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (439, N'Elizabeth', N'Mitchell
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (440, N'Robert', N'Rodriguez
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (441, N'Tyler', N'Posey
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (442, N'Denise', N'Richards
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (443, N'Lyndsy', N'Fonseca
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (444, N'Garrett', N'Hedlund
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (445, N'Will', N'Ferrell
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (446, N'Dan', N'Brown
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (447, N'Aly', N'Michalka
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (448, N'Desmond', N'Harrington
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (449, N'Chris', N'Carmack
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (450, N'Chester', N'Bennington
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (451, N'Eliza', N'Dushku
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (452, N'Ving', N'Rhames
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (453, N'Josh', N'Lucas
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (454, N'Madeline', N'Carroll
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (455, N'Terry', N'O''Quinn
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (456, N'Madonna
', N'')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (457, N'Diane', N'Keaton
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (458, N'Robert', N'Patrick
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (459, N'Jayma', N'Mays
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (460, N'Crystal', N'Reed
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (461, N'Mena', N'Suvari
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (462, N'Danielle', N'Campbell
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (463, N'Kat', N'Dennings
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (464, N'Matthew', N'Davis
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (465, N'Chelsea', N'Kane
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (466, N'Henry', N'Fonda
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (467, N'Jessica', N'Simpson
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (468, N'Rick', N'Malambri
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (469, N'Haley', N'Bennett
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (470, N'Robert', N'Zemeckis
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (471, N'Ellen', N'DeGeneres
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (472, N'Philip', N'Seymour')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (473, N'Leslie', N'Bibb
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (474, N'Ashley', N'Judd
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (475, N'Jennette', N'McCurdy
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (476, N'Bridget', N'Moynahan
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (477, N'Sean', N'Patrick')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (478, N'Steven', N'Seagal
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (479, N'Drake', N'Bell
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (480, N'AnnaLynne', N'McCord
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (481, N'Casey', N'Affleck
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (482, N'Leslie', N'Mann
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (483, N'Mike', N'Vogel
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (484, N'Ginnifer', N'Goodwin
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (485, N'Lee', N'Van')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (486, N'Patrick', N'Swayze
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (487, N'Dylan', N'Sprouse
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (488, N'Sarah', N'Lancaster
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (489, N'Gabriel', N'Macht
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (490, N'Nicholas', N'D''Agosto
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (491, N'Kristin', N'Chenoweth
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (492, N'Piper', N'Perabo
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (493, N'David', N'Carradine
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (494, N'Jodi', N'Lyn')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (495, N'Jesse', N'Metcalfe
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (496, N'James', N'Dean
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (497, N'Jesse', N'McCartney
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (498, N'Rami', N'Malek
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (499, N'Haylie', N'Duff
')
GO
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (500, N'Dermot', N'Mulroney
')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (501, N'Bob', N'Gunton')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (502, N'William', N'Sadler')
INSERT [dbo].[tbl_oyuncu] ([ID], [İSİM], [SOYİSİM]) VALUES (503, N'Tom', N'Sizemore')
SET IDENTITY_INSERT [dbo].[tbl_oyuncu] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_salonlar] ON 

INSERT [dbo].[tbl_salonlar] ([ID], [SALONADI], [KOLTUKSAYISI]) VALUES (1, N'SALON 1', N'50        ')
INSERT [dbo].[tbl_salonlar] ([ID], [SALONADI], [KOLTUKSAYISI]) VALUES (2, N'SALON 2', N'85        ')
INSERT [dbo].[tbl_salonlar] ([ID], [SALONADI], [KOLTUKSAYISI]) VALUES (3, N'SALON 3', N'75        ')
INSERT [dbo].[tbl_salonlar] ([ID], [SALONADI], [KOLTUKSAYISI]) VALUES (4, N'SALON 4', N'70        ')
INSERT [dbo].[tbl_salonlar] ([ID], [SALONADI], [KOLTUKSAYISI]) VALUES (5, N'SALON 5', N'60        ')
SET IDENTITY_INSERT [dbo].[tbl_salonlar] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Users] ON 

INSERT [dbo].[tbl_Users] ([ID], [Username], [Password], [Name], [Surname]) VALUES (1, N'elyn', N'admin', N'Erdem', N'Yeşilyaprak')
INSERT [dbo].[tbl_Users] ([ID], [Username], [Password], [Name], [Surname]) VALUES (2, N'ketax', N'user', N'Celil', N'Yeşilyaprak')
SET IDENTITY_INSERT [dbo].[tbl_Users] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_yönetmenler] ON 

INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (1, N'Sara', N'Sugarman')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (2, N'Charles', N'Chaplin')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (3, N'Steve', N'Loter')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (4, N'Q.', N'Allan Brocka')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (5, N'Dhyan', N'Sreenivasan')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (6, N'Gerardo', N'Naranjo')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (7, N'Merian', N'C. Cooper')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (8, N'Ernest', N'B. Schoedsack')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (9, N'Heather', N'Hawthorn Doyle')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (10, N'Matias', N'Lira')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (11, N'Yograj', N'Bhat')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (12, N'Meher', N'Tej')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (13, N'Charles', N'Taze Russell')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (14, N'Bao', N'Da')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (15, N'David', N'Greene')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (16, N'Nadia', N'Zoe')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (17, N'Alexis', N'Langlois')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (18, N'Martin', N'Guigui')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (19, N'Vincent', N'Boy Kars')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (20, N'Russell', N'Eatough')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (21, N'Peter', N'Greenaway')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (22, N'Colin', N'Bressler')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (23, N'Georg', N'Wilhelm Pabst')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (24, N'Alfredo', N'Rates')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (25, N'Vladimir', N'Siversen')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (26, N'Mikio', N'Naruse')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (27, N'Michael', N'Podogil')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (28, N'Stuart', N'Bateup')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (29, N'David', N'Robertson')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (30, N'Julia', N'Aks')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (31, N'Steve', N'Pinder')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (32, N'Claire', N'Walding')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (33, N'Gaston', N'Velle')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (34, N'Ilya', N'Averbakh')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (35, N'Pablo', N'Vazquez')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (36, N'German', N'Livanov')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (37, N'Nikolai', N'Larin')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (38, N'Ismael', N'Rodríguez')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (39, N'Brad', N'Graham')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (40, N'Sebastian', N'Dehnhardt')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (41, N'Heesook', N'Sohn')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (42, N'Dane', N'Anderson')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (43, N'Bryan', N'C. Watkins')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (44, N'John', N'Wyver')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (45, N'Francisco', N'di Doménico')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (46, N'Srikanth', N'Nahatha')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (47, N'Lauryn', N'Anthony')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (48, N'Anushka', N'Tina Nair')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (49, N'Kay', N'Nguyen')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (50, N'Lianne', N'Klapper-McNally')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (51, N'Luke', N'Hyams')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (52, N'Joe', N'McClean')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (53, N'Rio', N'Rena')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (54, N'Bodil', N'Ipsen')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (55, N'Joe', N'Burke')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (56, N'Francis', N'Boggs')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (57, N'Katsuhide', N'Motoki')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (58, N'Ullrich', N'Kasten')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (59, N'Nicholas', N'Clifford')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (60, N'Juan', N'de Orduña')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (61, N'Danny', N'Diaz')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (62, N'Randie', N'Levine-Miller')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (63, N'Adam', N'Bluboi')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (64, N'Rosser', N'Goodman')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (65, N'Selena', N'Brown')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (66, N'Douglas', N'T. Green')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (67, N'Victor', N'Kasyanov')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (68, N'Desmond', N'Dickinson')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (69, N'Gerald', N'Gibbs')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (70, N'Lloyd', N'Richards')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (71, N'Sergej', N'Moya')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (72, N'Ilias', N'Florakis')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (73, N'Nadim', N'Hamed')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (74, N'Vassilis', N'Kalamakis')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (75, N'Stelios', N'Koukouvitakis')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (76, N'Chrysa', N'Lagou')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (77, N'Alessandro', N'Spiliotopulos')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (78, N'Yorgos', N'Taxiarchopoulos')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (79, N'Eleni', N'Theodoridou')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (80, N'Thodoris', N'Vournas')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (81, N'Thomas', N'Lee')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (82, N'Patrice', N'Laliberté')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (83, N'Katsuhiko', N'Fujii')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (84, N'Swaylee', N'Loughnane')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (85, N'Daniel', N'Eghan')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (86, N'Lee', N'Westwick')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (87, N'Nikita', N'Lavretski')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (88, N'Yulia', N'Shatun')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (89, N'Alexey', N'Svirsky')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (90, N'Manju', N'Karthik')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (91, N'Vlad', N'Trandafir')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (92, N'Marc', N'Brasse')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (93, N'Cristina', N'Karrer')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (94, N'Wagner', N'Patricia')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (95, N'Viggo', N'Larsen')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (96, N'Alejandra', N'Rojo')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (97, N'Melanie', N'Martinez')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (98, N'Aju', N'Kizhumala')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (99, N'Seyi', N'Babatope')
GO
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (100, N'John', N'Robb Saunders')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (101, N'Boris', N'Nirenburg')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (102, N'Stan', N'Brakhage')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (103, N'Yves', N'Dessca')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (104, N'Masayuki', N'Suzuki')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (105, N'Jeffrey', N'Lerner')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (106, N'Norman', N'Taurog')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (107, N'Joe', N'Flowers')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (108, N'Mathew', N'Grodsky')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (109, N'Steven', N'M. Hirohama')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (110, N'Jeffrey', N'Zablotny')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (111, N'Anna', N'Mastro')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (112, N'Jeremiah', N'Ocanas')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (113, N'Aubrey', N'Singer')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (114, N'Matt', N'Thiesen')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (115, N'Riar', N'Rizaldi')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (116, N'Inés', N'de León')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (117, N'Lukas', N'Revzin')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (118, N'John', N'McTiernan')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (119, N'Joe', N'Dante')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (120, N'Eric', N'Goldberg')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (121, N'Anirudh', N'Iyer')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (122, N'Steven', N'Zaillian')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (123, N'Joseph', N'Zito')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (124, N'Craig', N'R. Baxley')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (125, N'Tim', N'Kirkby')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (126, N'Shady', N'Al Ramly')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (127, N'Lance', N'Hool')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (128, N'Michael', N'Apted')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (129, N'Seth', N'Porges')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (130, N'Chris', N'Charles Scott III')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (131, N'Aaron', N'Norris')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (132, N'Vipul', N'Amrutlal Shah')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (133, N'Álex', N'de la Iglesia')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (134, N'Lloyd', N'Bacon')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (135, N'Byron', N'Haskin')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (136, N'Raoul', N'Walsh')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (137, N'Abrid', N'Shine')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (138, N'Prabhu', N'Deva')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (139, N'Javier', N'Ruiz Caldera')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (140, N'Allan', N'Ungar')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (141, N'David', N'Miller')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (142, N'Yûichi', N'Fukuda')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (143, N'Deepak', N'Sidhanth')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (144, N'Sidney', N'J. Furie')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (145, N'Sidney', N'Poitier')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (146, N'Vali', N'Dobrogeanu')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (147, N'Oliver', N'Harper')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (148, N'Sundar', N'C.')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (149, N'William', N'Lau')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (150, N'Sylvain', N'Blais')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (151, N'Mihiraam', N'Vynateyaa')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (152, N'John', N'Stewart')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (153, N'Tôichirô', N'Rutô')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (154, N'Lee', N'Eon-hie')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (155, N'Brad', N'Martin')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (156, N'Steve', N'DiMarco')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (157, N'Paul', N'Ziller')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (158, N'Robert', N'Z. Leonard')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (159, N'Mitsuru', N'Hongô')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (160, N'Jean', N'Delannoy')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (161, N'Léonide', N'Moguy')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (162, N'Jeff', N'Chang')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (163, N'Brent', N'Christy')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (164, N'Marino', N'Girolami')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (165, N'Sergio', N'Martino')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (166, N'Jerry', N'P. Jacobs')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (167, N'Dwayne', N'Johnson-Cochran')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (168, N'Daniel', N'Mann')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (169, N'Gareth', N'Evans')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (170, N'Terence', N'Young')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (171, N'Tinto', N'Brass')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (172, N'Keith', N'R. Clarke')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (173, N'Gary', N'Weis')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (174, N'Morgan', N'Jon Fox')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (175, N'Orestis', N'Laskos')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (176, N'Bryan', N'Buckley')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (177, N'Shawn', N'Christensen')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (178, N'Yan', N'England')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (179, N'Euros', N'Lyn')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (180, N'Max', N'Porter')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (181, N'Gary', N'Andrews')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (182, N'Clint', N'Butler')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (183, N'Romolo', N'Guerrieri')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (184, N'James', N'H. White')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (185, N'Vince', N'DeGaetano')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (186, N'Aaron', N'Fronk')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (187, N'Cooper', N'Johnson')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (188, N'Otmar', N'Bauer')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (189, N'Brian', N'Katkin')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (190, N'Ben', N'Rivers')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (191, N'Velcrow', N'Ripper')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (192, N'G.', N'David Schine')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (193, N'Rohit', N'Gupta')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (194, N'Daniel', N'Vogelmann')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (195, N'Carlos', N'Benpar')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (196, N'Anil', N'Sunkara')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (197, N'Sean', N'Kenealy')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (198, N'Eric', N'Silvera')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (199, N'Robin', N'Spry')
GO
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (200, N'David', N'Douglas')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (201, N'John', N'Harlow')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (202, N'Peter', N'Fitzgerald')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (203, N'Marshall', N'Curry')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (204, N'Delphine', N'Girard')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (205, N'Maurice', N'Labro')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (206, N'Hunter', N'G. Williams')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (207, N'Godfrey', N'Ho')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (208, N'Action', N'Bronson')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (209, N'Justin', N'Lutsky')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (210, N'Tim', N'Hill')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (211, N'Bret', N'McCormick')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (212, N'Jim', N'Bultas')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (213, N'Richard', N'Kern')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (214, N'Teddy', N'Page')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (215, N'Ninì', N'Grassia')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (216, N'Jérémy', N'Comte')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (217, N'Marianne', N'Farley')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (218, N'Vincent', N'Lambe')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (219, N'Leo', N'Wang')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (220, N'Liu', N'Bayin')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (221, N'Steven', N'Burch')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (222, N'John', N'Moffett')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (223, N'Chris', N'Woods')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (224, N'Martin', N'Scorsese')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (225, N'Woody', N'Allen')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (226, N'Alain', N'Berbérian')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (227, N'Greg', N'Berlanti')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (228, N'Stephen', N'Chow')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (229, N'Lik-Chi', N'Lee')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (230, N'Jacques', N'Tourneur')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (231, N'Louis', N'C.K.')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (232, N'Spike', N'Lee')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (233, N'Joel', N'Gallen')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (234, N'Rick', N'Alverson')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (235, N'Vince', N'Offer')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (236, N'C.B.', N'Harding')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (237, N'Nachiket', N'Samant')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (238, N'Albert', N'Brooks')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (239, N'Claude', N'Chabrol')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (240, N'Catherine', N'Breillat')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (241, N'Michael', N'Blieden')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (242, N'Clarence', N'Brown')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (243, N'Jim', N'Gaffigan')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (244, N'Herman', N'Yau')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (245, N'Ari', N'Sandel')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (246, N'Lance', N'Bangs')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (247, N'Peter', N'Dalle')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (248, N'João', N'César Monteiro')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (249, N'Kevin', N'Pollak')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (250, N'William', N'Keighley')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (251, N'Louis', N'J. Horvitz')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (252, N'Arthur', N'Hiller')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (253, N'Rocco', N'Urbisci')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (254, N'John', N'Fortenberry')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (255, N'Raúl', N'Ruiz')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (256, N'Bobcat', N'Goldthwait')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (257, N'Stevan', N'Mena')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (258, N'Jonathan', N'Nossiter')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (259, N'Lu', N'Liu')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (260, N'Shen', N'Zhou')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (261, N'Sanna', N'Lenken')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (262, N'Jackson', N'Douglas')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (263, N'Brian', N'Iles')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (264, N'Page', N'Hurwitz')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (265, N'Ryan', N'Polito')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (266, N'Kim', N'Sky')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (267, N'Evan', N'Seplow')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (268, N'Scott', N'Rodgers')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (269, N'Daniel', N'Gray Longino')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (270, N'Ian', N'McCrudden')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (271, N'Elizabeth', N'Sankey')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (272, N'Robert', N'Youngson')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (273, N'Steve', N'Purcell')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (274, N'Reg', N'Harkema')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (275, N'Leander', N'Haußmann')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (276, N'Michael', N'Simon')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (277, N'Kazuto', N'Nakazawa')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (278, N'Truck', N'Hudson')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (279, N'Rodrigo', N'Guardiola')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (280, N'Gabriel', N'Nuncio')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (281, N'Julian', N'Radlmaier')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (282, N'Leslie', N'Small')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (283, N'Jeb', N'Brien')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (284, N'Rajesh', N'Bajaj')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (285, N'Lucky', N'Kohli')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (286, N'Alvin', N'Rakoff')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (287, N'John', N'Scheinfeld')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (288, N'Peter', N'DeLuise')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (289, N'Maureen', N'Muldaur')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (290, N'Robert', N'Townsend')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (291, N'Ellen', N'Brown')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (292, N'Steve', N'Lumley')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (293, N'Chad', N'Callner')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (294, N'Stan', N'Lathan')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (295, N'Yashowardhan', N'Mishra')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (296, N'Mohammad', N'Hadi Karimi')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (297, N'Kip', N'Walton')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (298, N'Harold', N'Lloyd')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (299, N'Barry', N'Bruce')
GO
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (300, N'Michael', N'Schultz')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (301, N'James', N'Cellan Jones')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (302, N'Jeff', N'Valdez')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (303, N'Linda', N'Mendoza')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (304, N'Justin', N'Fair')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (305, N'Jay', N'Chapman')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (306, N'Chuck', N'Jones')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (307, N'Richard', N'Reens')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (308, N'Trent', N'O''Donnell')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (309, N'John', N'Landis')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (310, N'Bo', N'Arne Vibenius')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (311, N'Garth', N'Jennings')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (312, N'Venkateswarlu', N'Karadi')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (313, N'Nelson', N'George')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (314, N'Dallas', N'Jackson')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (315, N'Sean', N'Bishop')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (316, N'Gary', N'Trousdale')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (317, N'Jerry', N'Kramer')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (318, N'Brian', N'Klein')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (319, N'Phil', N'Churchward')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (320, N'David', N'Kittredge')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (321, N'B.', N'Unnikrishnan')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (322, N'Sally', N'Potter')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (323, N'Aziz', N'Sejawal')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (324, N'Michal', N'Bielawski')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (325, N'Scott', N'Sublett')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (326, N'Masayuki', N'Ochiai')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (327, N'Ram', N'Gopal Varma')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (328, N'Lynn', N'Silver')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (329, N'Sachin', N'Dushi')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (330, N'Salla', N'Tykkä')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (331, N'Jörg', N'Falbe')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (332, N'Jamie', N'Dwyer')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (333, N'Justin', N'Ulloa')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (334, N'Wim', N'Reygaert')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (335, N'Barbara', N'Toennies')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (336, N'Michael', N'S. Olson')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (337, N'Peter', N'Normark')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (338, N'Mike', N'Dare')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (339, N'Thomas', N'Berdinski')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (340, N'Ruchir', N'Jha')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (341, N'Saurabh', N'Varma')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (342, N'Jim', N'Kaufman')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (343, N'Massimo', N'Guglielmi')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (344, N'Sudarshan', N'Reddy Tippana')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (345, N'Wendy', N'Pini')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (346, N'Giuseppe', N'Marco Albano')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (347, N'Timothy', N'Williams')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (348, N'Konstantin', N'Vlas')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (349, N'Robert', N'Lorenz')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (350, N'Gareth', N'Williams')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (351, N'Fabien', N'Soazandry')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (352, N'Kalina', N'de Moura')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (353, N'Art', N'Hall')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (354, N'Michael', N'Siegel')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (355, N'Pitt', N'de Grooth')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (356, N'Ruben', N'Rubio')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (357, N'Mark', N'Anthony Petrucelli')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (358, N'Jack', N'Percy')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (359, N'Rob', N'Gordon Bralver')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (360, N'Christopher', N'Whitlow')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (361, N'Dupuy', N'Fatal III')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (362, N'Joël', N'Colburn')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (363, N'Jarrod', N'Knowles')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (364, N'Jatarius', N'Jarrett')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (365, N'Dev', N'Kalidhasan')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (366, N'Harshath', N'Khan')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (367, N'Derina', N'Sreed')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (368, N'Shane', N'Abbess')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (369, N'Brant', N'Sersen')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (370, N'Robert', N'Head')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (371, N'Steven', N'Judd')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (372, N'Sam', N'Javor')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (373, N'Nic', N'Main')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (374, N'Joshua', N'Cravy')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (375, N'Alain', N'Dahan')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (376, N'Todd', N'Jeffery')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (377, N'Omer', N'Pasha')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (378, N'Matt', N'Reeves')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (379, N'Christopher', N'Petit')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (380, N'Bady', N'Minck')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (381, N'David', N'McDonald')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (382, N'Robert', N'Glickert')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (383, N'Christian', N'Den Besten')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (384, N'James', N'Ward')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (385, N'Eric', N'Holman')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (386, N'Eliot', N'Shear')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (387, N'Josh', N'Oreck')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (388, N'Tony', N'Scott')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (389, N'John', N'Turturro')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (390, N'Eldar', N'Ryazanov')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (391, N'Maneesh', N'Sharma')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (392, N'Martin', N'Ritt')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (393, N'George', N'Roy Hill')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (394, N'Sion', N'Sono')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (395, N'Mack', N'Sennett')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (396, N'Charles', N'Bennett')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (397, N'Justin', N'G. Dyck')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (398, N'Werner', N'Herzog')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (399, N'Mark', N'Griffiths')
GO
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (400, N'Michael', N'Curtiz')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (401, N'Busby', N'Berkeley')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (402, N'Menhaj', N'Huda')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (403, N'Michael', N'Robison')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (404, N'Jonathan', N'Wright')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (405, N'Bradford', N'May')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (406, N'David', N'Winning')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (407, N'Benny', N'Chan')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (408, N'Lee', N'Rose')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (409, N'Éric', N'Rohmer')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (410, N'Terry', N'Ingram')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (411, N'Mark', N'Jean')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (412, N'Maurice', N'Noble')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (413, N'Colin', N'Theys')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (414, N'Alex', N'Zamm')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (415, N'Francis', N'Lawrence')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (416, N'Mark', N'Rosman')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (417, N'David', N'Weaver')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (418, N'Brian', N'Herzlinger')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (419, N'Tom', N'O''Brien')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (420, N'Jason', N'Bourque')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (421, N'W.D.', N'Hogan')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (422, N'Kim', N'Han-Gyul')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (423, N'Leif', N'Bristow')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (424, N'Richard', N'Gabai')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (425, N'Tae-gyun', N'Kim')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (426, N'William', N'A. Seiter')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (427, N'Sheldon', N'Larry')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (428, N'Richard', N'Thorpe')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (429, N'Christie', N'Will Wolf')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (430, N'Brian', N'Brough')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (431, N'Yuki', N'Tanada')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (432, N'Cecil', N'B. DeMille')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (433, N'Ernie', N'Barbarash')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (434, N'Stephen', N'Roberts')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (435, N'Jeong-hoon', N'Kim')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (436, N'Liz', N'Farrer')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (437, N'Max', N'McGuire')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (438, N'Samantha', N'Wan')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (439, N'Roy', N'Rowland')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (440, N'Douglas', N'Barr')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (441, N'Marco', N'Martani')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (442, N'Annika', N'Appelin')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (443, N'Guel', N'Arraes')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (444, N'Lucie', N'Guest')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (445, N'Pyotr', N'Todorovskiy')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (446, N'Grigoriy', N'Aleksandrov')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (447, N'Sergei', N'Eisenstein')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (448, N'Sam', N'Irvin')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (449, N'Marco', N'Deufemia')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (450, N'King', N'Vidor')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (451, N'Robert', N'Young')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (452, N'Danny', N'J. Boyle')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (453, N'Linda', N'Yellen')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (454, N'Marita', N'Grabiak')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (455, N'Jake', N'Helgren')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (456, N'Emily', N'Hagins')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (457, N'Bobby', N'Roth')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (458, N'Christine', N'Conradt')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (459, N'Jean', N'van de Velde')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (460, N'Frank', N'Tashlin')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (461, N'D.W.', N'Griffith')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (462, N'Zackary', N'Adler')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (463, N'Leonardo', N'Favio')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (464, N'Danny', N'Roth')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (465, N'Shawna', N'Steele')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (466, N'Lawrence', N'Gordon Clark')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (467, N'Rowan', N'Devereux')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (468, N'Ben', N'Lewin')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (469, N'Edwin', N'S. Porter')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (470, N'Amelle', N'Chahbi')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (471, N'Hyun-seok', N'Kim')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (472, N'Gene', N'Saks')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (473, N'Wonsuk', N'Lee')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (474, N'Ron', N'Oliver')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (475, N'Nick', N'Park')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (476, N'Jeff', N'Broadstreet')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (477, N'Andrew', N'Chan')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (478, N'Roger', N'Allers')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (479, N'Mark', N'Henn')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (480, N'Lauren', N'MacMullan')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (481, N'Nobutaka', N'Yoda')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (482, N'Don', N'Hertzfeldt')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (483, N'John', N'D. Hancock')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (484, N'Hiroyuki', N'Yamaga')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (485, N'Ben', N'Johnson')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (486, N'Takaharu', N'Ozaki')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (487, N'Victor', N'Caire')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (488, N'Gabriel', N'Grapperon')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (489, N'Glen', N'Keane')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (490, N'Len', N'Lye')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (491, N'Dean', N'A. Berko')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (492, N'Christopher', N'Padilla')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (493, N'Walter', N'Santucci')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (494, N'Keith', N'Alcorn')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (495, N'Laurence', N'Arcadias')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (496, N'Joel', N'Brinkerhoff')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (497, N'Tim', N'Burton')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (498, N'Toshirô', N'Hamamura')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (499, N'Jeff', N'Kurtti')
GO
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (500, N'Alan', N'Becker')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (501, N'Naoto', N'Hosoda')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (502, N'Vivienne', N'Medrano')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (503, N'Akitarô', N'Daichi')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (504, N'Winsor', N'McCay')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (505, N'Hiroyasu', N'Kobayashi')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (506, N'Kat', N'Alioshin')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (507, N'Nick', N'Gibbons')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (508, N'Geefwee', N'Boedoe')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (509, N'Bastien', N'Dubois')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (510, N'Max', N'Lang')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (511, N'Quentin', N'Baillieux')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (512, N'Lia', N'Bertels')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (513, N'Jac', N'Clinch')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (514, N'Motoki', N'Tanaka')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (515, N'Laurent', N'Bouzereau')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (516, N'Rachel', N'Max')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (517, N'Don', N'Hahn')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (518, N'Torill', N'Kove')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (519, N'Erica', N'Milsom')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (520, N'Michael', N'Govier')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (521, N'Gísli', N'Darri Halldórsson')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (522, N'Will', N'McCormack')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (523, N'Christian', N'Faber')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (524, N'Jan', N'Kjær')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (525, N'Stefan', N'Müller')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (526, N'Luis', N'Nieto')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (527, N'Genndy', N'Tartakovsky')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (528, N'Hillary', N'Bradfield')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (529, N'Walt', N'Disney')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (530, N'Jacob', N'Frey')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (531, N'Sally', N'Roy')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (532, N'Pierre', N'Lachapelle')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (533, N'Howard', N'Beckerman')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (534, N'Julianna', N'Cox')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (535, N'John', N'Semper')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (536, N'Tex', N'Avery')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (537, N'Shamus', N'Culhane')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (538, N'Peter', N'Sweenen')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (539, N'Eric', N'Matthies')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (540, N'Chris', N'Lavis')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (541, N'Aleksandr', N'Petrov')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (542, N'Josh', N'Raskin')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (543, N'Ichirô', N'Itano')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (544, N'Yoshikazu', N'Yasuhiko')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (545, N'Michael', N'J. Sudyn')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (546, N'David', N'Tart')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (547, N'Vince', N'Collins')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (548, N'Katelyn', N'Howes')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (549, N'Thomas', N'Bourdis')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (550, N'Konstantin', N'Bronzit')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (551, N'Martin', N'de Coutenhove')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (552, N'Caroline', N'Domergue')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (553, N'Isabelle', N'Favez')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (554, N'Janette', N'Goodey')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (555, N'Melissa', N'Johnson')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (556, N'Colin', N'Laubry')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (557, N'John', N'Lewis')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (558, N'Babak', N'Nekooei')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (559, N'Behnoud', N'Nekooei')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (560, N'Avi', N'Ofer')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (561, N'Amanda', N'Palmer')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (562, N'Burcu', N'Sankur')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (563, N'Lynn', N'Tomlinson')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (564, N'Florian', N'Vecchione')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (565, N'Conor', N'Whelan')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (566, N'Robertino', N'Zambrano')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (567, N'Iris', N'Alexandre')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (568, N'Alan', N'Barillaro')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (569, N'Ainslie', N'Henderson')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (570, N'Gregory', N'Ecklund')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (571, N'David', N'Lipson')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (572, N'Jeffrey', N'Perlmutter')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (573, N'Raymond', N'S. Persi')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (574, N'Miles', N'Thompson')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (575, N'Christen', N'Bach')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (576, N'Scott', N'Benson')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (577, N'Brendan', N'Carroll')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (578, N'Will', N'Vinton')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (579, N'Josh', N'Prikryl')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (580, N'David', N'Donar')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (581, N'Craig', N'McCracken')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (582, N'Steve', N'Baker')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (583, N'Efim', N'Gamburg')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (584, N'Fyodor', N'Khitruk')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (585, N'Andrey', N'Khrzhanovskiy')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (586, N'Eben', N'Ezer Purba')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (587, N'Shan', N'Jairo T. Hoyle')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (588, N'Kiara', N'Alexa T. Tadic')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (589, N'Sebastian', N'Barfield')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (590, N'David', N'Cazares')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (591, N'Dmitri', N'Tcherbadji')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (592, N'Thevanayagam', N'Thayanantha')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (593, N'Osbert', N'Parker')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (594, N'Stephanie', N'Chan')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (595, N'Alexis', N'Chaviaras')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (596, N'Dimitar', N'Dimitrov')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (597, N'James', N'Rolfe')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (598, N'Tony', N'Kaye')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (599, N'David', N'Cronenberg')
GO
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (600, N'Mel', N'Brooks')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (601, N'Armando', N'Iannucci')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (602, N'Nicholas', N'Hytner')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (603, N'Greg', N'Mottola')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (604, N'Justin', N'Kurzel')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (605, N'Dinesh', N'D''Souza')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (606, N'Bruce', N'Schooley')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (607, N'Yoshihiro', N'Ueda')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (608, N'Daisuke', N'Nishio')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (609, N'Errol', N'Morris')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (610, N'Robert', N'Altman')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (611, N'Chris', N'Waitt')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (612, N'John', N'Mitchell')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (613, N'Jeremy', N'Kipp Walker')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (614, N'M.', N'Padmakumar')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (615, N'Frank', N'Borzage')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (616, N'Lav', N'Diaz')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (617, N'Steve', N'Barron')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (618, N'Bob', N'Giraldi')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (619, N'Bruce', N'Gowers')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (620, N'Joe', N'Pytka')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (621, N'Herb', N'Ritts')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (622, N'Nick', N'Saxton')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (623, N'John', N'Singleton')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (624, N'Xavier', N'Burgin')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (625, N'Radu', N'Jude')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (626, N'Benoît', N'Delépine')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (627, N'Gustave', N'Kervern')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (628, N'Daniel', N'Farrands')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (629, N'Cristian', N'Ponce')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (630, N'Matt', N'Tyrnauer')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (631, N'Thomas', N'Purifoy')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (632, N'Randall', N'Lobb')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (633, N'Robert', N'McCallum')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (634, N'Kier-La', N'Janisse')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (635, N'Nicholas', N'Brandt')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (636, N'Colin', N'Chilvers')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (637, N'Wayne', N'Isham')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (638, N'Michael', N'Jackson')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (639, N'Don', N'Mischer')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (640, N'Vincent', N'Paterson')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (641, N'Mark', N'Romanek')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (642, N'James', N'Yukich')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (643, N'Ricky', N'Kennedy')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (644, N'Radu', N'Mihaileanu')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (645, N'Ani', N'Simon-Kennedy')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (646, N'Tom', N'Stern')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (647, N'Mark', N'Lewis')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (648, N'Danny', N'Wolf')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (649, N'Heber', N'Cannon')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (650, N'Bertrand', N'Blier')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (651, N'Mike', N'Leigh')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (652, N'Aram', N'Rappaport')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (653, N'Douglas', N'Cohen')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (654, N'Derek', N'Waters')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (655, N'Jeremy', N'Konner')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (656, N'Rodrigo', N'Bittencourt')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (657, N'Daniel', N'M. Smith')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (658, N'Tomasz', N'Baginski')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (659, N'Stacey', N'N. Harding')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (660, N'Tony', N'Kaplan')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (661, N'Bo', N'Mirhosseni')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (662, N'Ferdinand', N'Zecca')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (663, N'Harold', N'Moss')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (664, N'Peter', N'Curtis Pardini')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (665, N'Chris', N'Chapman')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (666, N'Ray', N'Greene')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (667, N'Anthony', N'Pelissier')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (668, N'Michael', N'Maren')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (669, N'Caco', N'Souza')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (670, N'Paul', N'A. Kaufman')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (671, N'Camilo', N'Cavalcante')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (672, N'Yasuichirô', N'Yamamoto')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (673, N'Joe', N'Swanberg')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (674, N'Alex', N'Harding')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (675, N'Jude', N'Ho')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (676, N'Kevin', N'Dunn')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (677, N'Benjamín', N'Naishtat')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (678, N'Bart', N'Phillips')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (679, N'Danièle', N'Huillet')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (680, N'Jean-Marie', N'Straub')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (681, N'Pip', N'Chodorov')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (682, N'Tracy', N'Atkinson')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (683, N'Joan', N'Baran')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (684, N'Dave', N'Flitton')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (685, N'Peter', N'Kerekes')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (686, N'Matthew', N'Amos')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (687, N'Jianjie', N'Lin')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (688, N'Michael', N'Coulter')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (689, N'Chris', N'Graves')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (690, N'Trey', N'Parker')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (691, N'Shôhei', N'Imamura')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (692, N'Libia', N'Stella Gómez')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (693, N'Roberta', N'Grossman')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (694, N'Fenton', N'Bailey')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (695, N'Randy', N'Barbato')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (696, N'Dewi', N'Humphreys')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (697, N'Paul', N'Jackson')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (698, N'Matt', N'Lipsey')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (699, N'Bill', N'Brummel')
GO
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (700, N'Constantine', N'Nasr')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (701, N'Ryszard', N'Sztoch')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (702, N'Sergey', N'Loznitsa')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (703, N'Gillies', N'MacKinnon')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (704, N'Mike', N'Schiff')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (705, N'Jacques', N'Duron')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (706, N'Alethea', N'Jones')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (707, N'Michael', N'Mills')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (708, N'Harry', N'Shearer')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (709, N'Henry', N'Joost')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (710, N'Ariel', N'Schulman')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (711, N'Sonja', N'Prosenc')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (712, N'Karen', N'Collins')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (713, N'Ion', N'Popescu-Gopo')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (714, N'Jason', N'Georgiades')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (715, N'Jason', N'Pine')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (716, N'Scott', N'Prestin')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (717, N'Jim', N'Sharman')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (718, N'Andrew', N'Douglas')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (719, N'F.W.', N'Murnau')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (720, N'Stuart', N'Rosenberg')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (721, N'Terence', N'Fisher')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (722, N'Roberto', N'De Feo')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (723, N'Paolo', N'Strippoli')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (724, N'Eugenio', N'Martín')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (725, N'Grant', N'Harvey')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (726, N'Steven', N'Hoban')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (727, N'Brett', N'Sullivan')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (728, N'Kenny', N'Ortega')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (729, N'Jérôme', N'Cohen-Olivar')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (730, N'Jun', N'Fukuda')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (731, N'Roy', N'Ward Baker')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (732, N'Daniel', N'Haller')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (733, N'James', N'Isaac')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (734, N'David', N'Blyth')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (735, N'Dutch', N'Marich')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (736, N'Julian', N'Richards')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (737, N'Tara', N'Subkoff')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (738, N'Bill', N'Froehlich')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (739, N'Sandor', N'Stern')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (740, N'Del', N'Tenney')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (741, N'Stacy', N'Title')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (742, N'Jimmy', N'Sangster')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (743, N'Andrew', N'Monument')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (744, N'Oliver', N'Park')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (745, N'Jason', N'Bognacki')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (746, N'A.J.', N'Briones')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (747, N'Robert', N'S. Fiveson')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (748, N'Massimo', N'Pupillo')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (749, N'David', N'Winters')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (750, N'Choi', N'Jin-sung')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (751, N'Ayush', N'Raina')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (752, N'Eric', N'Walter')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (753, N'Scott', N'Slone')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (754, N'Antony', N'Balch')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (755, N'Nicolás', N'Onetti')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (756, N'Caye', N'Casas')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (757, N'Alejandro', N'Damiani')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (758, N'Carlos', N'Aured')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (759, N'Nick', N'Simon')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (760, N'Luigi', N'Cozzi')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (761, N'Ricky', N'Hess')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (762, N'Michael', N'Armstrong')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (763, N'Gerry', N'Levy')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (764, N'David', N'Lowell Rich')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (765, N'Antonio', N'Margheriti')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (766, N'Larry', N'N. Stouffer')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (767, N'Viktors', N'Ritelis')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (768, N'Al', N'Adamson')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (769, N'Dante', N'Tomaselli')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (770, N'Leigh', N'Scott')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (771, N'George', N'Waggner')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (772, N'Barbara', N'Bell')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (773, N'Anna', N'Lorentzon')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (774, N'Darin', N'Scott')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (775, N'Christopher', N'Luscombe')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (776, N'David', N'L. Hewitt')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (777, N'Jung', N'Bum-shik')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (778, N'Ji-Yeong', N'Hong')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (779, N'Gok', N'Kim')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (780, N'Nicolas', N'Kleiman')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (781, N'Rob', N'Lindsay')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (782, N'Kevin', N'Brownlow')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (783, N'Zandashé', N'Brown')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (784, N'Robin', N'Givens')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (785, N'Rob', N'Greenlea')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (786, N'Anthony', N'Masi')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (787, N'Alfred', N'Vohrer')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (788, N'Leon', N'Ferguson')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (789, N'Andrew', N'Jones')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (790, N'Richard', N'Casey')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (791, N'Brandon', N'Thaxton')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (792, N'Mike', N'Mendez')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (793, N'Dave', N'Parker')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (794, N'Michael', N'S. Rodriguez')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (795, N'Ted', N'Newsom')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (796, N'Bossi', N'Baker')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (797, N'Nicholas', N'Colla')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (798, N'Daniel', N'Daperis')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (799, N'Keith', N'Li')
GO
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (800, N'Michele', N'Soavi')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (801, N'Larry', N'Buchanan')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (802, N'Donald', N'Wolfe')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (803, N'Ho-Young', N'Kwon')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (804, N'José', N'Antonio Nieves Conde')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (805, N'Enrique', N'Piñeyro')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (806, N'Pablo', N'Tesoriere')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (807, N'Eun-kyung', N'Kim')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (808, N'Rob', N'Zombie')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (809, N'Brian', N'Dorton')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (810, N'Joseph', N'Graham')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (811, N'Manuel', N'Marín')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (812, N'Joy', N'N. Houck Jr.')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (813, N'Sung-ho', N'Kim')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (814, N'Hwi', N'Kim')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (815, N'Gabriele', N'Albanesi')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (816, N'Jun', N'Tsugita')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (817, N'Bryan', N'Chojnowski')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (818, N'Lisa', N'J Dooley')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (819, N'Ned', N'Ehrbar')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (820, N'Tony', N'Malanowski')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (821, N'John', N'Das')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (822, N'Brendan', N'Rudnicki')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (823, N'Harry', N'Preston')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (824, N'Harald', N'Reinl')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (825, N'James', N'Glenn Dudelson')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (826, N'Jung-min', N'Kim')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (827, N'Bill', N'Zebub')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (828, N'Kiyoshi', N'Kurosawa')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (829, N'Elizabeth', N'Knight')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (830, N'Kenneth', N'J. Hall')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (831, N'John', N'William Holt')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (832, N'Hironobu', N'Sakaguchi')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (833, N'Motonori', N'Sakakibara')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (834, N'Jeff', N'Wadlow')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (835, N'Tetsuya', N'Nomura')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (836, N'Takeshi', N'Nozue')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (837, N'Ryûsuke', N'Hamaguchi')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (838, N'Émile', N'Cohl')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (839, N'Yen-Ping', N'Chu')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (840, N'Morio', N'Asaka')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (841, N'Julien', N'Duvivier')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (842, N'Justin', N'Hardy')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (843, N'Jan', N'Svankmajer')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (844, N'Anton', N'Cropper')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (845, N'Kevin', N'Alber')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (846, N'Teruo', N'Noguchi')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (847, N'Kiyoshi', N'Yamamoto')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (848, N'Joseph', N'Knight')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (849, N'Takeo', N'Nakamura')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (850, N'Hesheng', N'Xiang')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (851, N'Qiuliang', N'Xiang')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (852, N'Charles', N'Randazzo')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (853, N'Jenna', N'Cato Bass')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (854, N'Jung-min', N'Ahn')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (855, N'Kelley', N'Cauthen')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (856, N'Lawrence', N'Jordan')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (857, N'Pavan', N'Kumar .R.')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (858, N'Arnold', N'Leibovit')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (859, N'Aman', N'Chang')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (860, N'David', N'Michael Latt')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (861, N'Noel', N'Nosseck')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (862, N'Edgar', N'Michael Bravo')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (863, N'Kônosuke', N'Uda')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (864, N'István', N'Zorkóczy')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (865, N'Shin''ichirô', N'Sawai')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (866, N'Henri', N'Lumiere')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (867, N'Gen', N'Urobuchi')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (868, N'Jia-Shiang', N'Wang')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (869, N'Chris', N'Huang')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (870, N'Freddy', N'Tang')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (871, N'Taylor', N'Wong')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (872, N'Masaru', N'Konuma')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (873, N'Jérémie', N'Périn')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (874, N'Norman', N'McLaren')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (875, N'Takefumi', N'Terada')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (876, N'Toru', N'Osanai')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (877, N'Dashiell', N'Demeter')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (878, N'Steve', N'Bendelack')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (879, N'Roger', N'Law')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (880, N'Christopher', N'Swann')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (881, N'Joseph', N'Chi')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (882, N'Steven', N'Lo')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (883, N'Peter', N'Ngor')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (884, N'Dane', N'Komljen')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (885, N'Ying', N'Chang')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (886, N'Kevin', N'Burns')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (887, N'Tony', N'Buba')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (888, N'Michael', N'Mak')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (889, N'Joseph', N'Henabery')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (890, N'Rudi', N'Dolezal')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (891, N'Hannes', N'Rossacher')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (892, N'Ken', N'Russell')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (893, N'Casey', N'Bennett')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (894, N'Jules', N'Katanyag')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (895, N'Sean', N'Travis')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (896, N'Blaine', N'Thurier')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (897, N'Arik', N'Lubetzki')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (898, N'Steven', N'Kostanski')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (899, N'Kunio', N'Kato')
GO
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (900, N'Milan', N'Filipovic')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (901, N'Kenzô', N'Masaoka')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (902, N'Todd', N'Cole')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (903, N'Marcos', N'Cabotá')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (904, N'Josh', N'Caras')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (905, N'Jon', N'Valde')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (906, N'Ian', N'J. Keeney')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (907, N'Bryant', N'Hicks')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (908, N'Ron', N'Meraska')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (909, N'Yoji', N'Shimizu')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (910, N'Marques', N'T. Owens')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (911, N'Johanne', N'Gomez Terrero')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (912, N'Robert', N'Iscove')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (913, N'Geoffrey', N'Brown')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (914, N'Derek', N'Strachan')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (915, N'Alica', N'Hansen')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (916, N'Zara', N'Kjellner')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (917, N'Vitek', N'Tracz')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (918, N'Jim', N'Terry')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (919, N'Andrew', N'Wall')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (920, N'Bille', N'Woodruff')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (921, N'Peter', N'Orton')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (922, N'Joshua', N'Adler')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (923, N'Chenliang', N'Zhu')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (924, N'David', N'Norman Lewis')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (925, N'Noah', N'Zoltan Sofian')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (926, N'Pierre', N'Bitoun')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (927, N'Renée', N'Blanchar')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (928, N'Raphaël', N'D''Orist')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (929, N'John', N'Davies')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (930, N'Alan', N'Metter')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (931, N'Jinming', N'Lu')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (932, N'Zhong', N'Yu')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (933, N'Howard', N'Deutch')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (934, N'Isuru', N'Gimhana')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (935, N'Jon', N'Woods')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (936, N'Gayle', N'Hollenbaugh')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (937, N'Suzanne', N'McCafferty')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (938, N'Yôji', N'Kuri')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (939, N'Christopher', N'Nolan')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (940, N'Frank', N'Darabont')
INSERT [dbo].[tbl_yönetmenler] ([ID], [İSİM], [SOYİSİM]) VALUES (941, N'Steven', N'Spielberg')
SET IDENTITY_INSERT [dbo].[tbl_yönetmenler] OFF
GO
