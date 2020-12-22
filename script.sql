USE [master]
GO
/****** Object:  Database [QLSHOP]    Script Date: 12/22/2020 8:40:50 PM ******/
CREATE DATABASE [QLSHOP]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLSHOP', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\QLSHOP.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QLSHOP_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\QLSHOP_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [QLSHOP] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLSHOP].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLSHOP] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLSHOP] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLSHOP] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLSHOP] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLSHOP] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLSHOP] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QLSHOP] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLSHOP] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLSHOP] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLSHOP] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLSHOP] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLSHOP] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLSHOP] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLSHOP] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLSHOP] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QLSHOP] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLSHOP] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLSHOP] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLSHOP] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLSHOP] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLSHOP] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLSHOP] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLSHOP] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QLSHOP] SET  MULTI_USER 
GO
ALTER DATABASE [QLSHOP] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLSHOP] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLSHOP] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLSHOP] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QLSHOP] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QLSHOP] SET QUERY_STORE = OFF
GO
USE [QLSHOP]
GO
/****** Object:  Table [dbo].[admin]    Script Date: 12/22/2020 8:40:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admin](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[boardnew]    Script Date: 12/22/2020 8:40:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[boardnew](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](200) NOT NULL,
	[content] [nvarchar](4000) NOT NULL,
	[image_link] [nvarchar](4000) NOT NULL,
	[author] [nvarchar](50) NOT NULL,
	[created] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[catalog]    Script Date: 12/22/2020 8:40:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[catalog](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[parent_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ordered]    Script Date: 12/22/2020 8:40:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ordered](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[product_id] [int] NOT NULL,
	[transaction_id] [int] NOT NULL,
	[qty] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product]    Script Date: 12/22/2020 8:40:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[catalog_id] [int] NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[price] [nvarchar](20) NOT NULL,
	[status] [int] NOT NULL,
	[description] [nvarchar](4000) NOT NULL,
	[content] [nvarchar](4000) NOT NULL,
	[discount] [int] NULL,
	[image_link] [nvarchar](4000) NOT NULL,
	[created] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[review]    Script Date: 12/22/2020 8:40:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[review](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[product_id] [int] NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[email] [nvarchar](50) NOT NULL,
	[content] [nvarchar](4000) NOT NULL,
	[created] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[transactions]    Script Date: 12/22/2020 8:40:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[transactions](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_session] [nvarchar](50) NOT NULL,
	[user_name] [nvarchar](50) NOT NULL,
	[user_mail] [nvarchar](50) NOT NULL,
	[user_phone] [nvarchar](20) NOT NULL,
	[address] [nvarchar](300) NOT NULL,
	[message] [nvarchar](4000) NOT NULL,
	[amount] [nvarchar](20) NOT NULL,
	[payment] [nvarchar](30) NOT NULL,
	[status] [nvarchar](30) NULL,
	[created] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 12/22/2020 8:40:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[email] [nvarchar](50) NOT NULL,
	[phone] [nvarchar](20) NOT NULL,
	[username] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[created] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[admin] ON 

INSERT [dbo].[admin] ([id], [username], [password], [name]) VALUES (1, N'admin', N'123456', N'Lê Thạch')
SET IDENTITY_INSERT [dbo].[admin] OFF
GO
SET IDENTITY_INSERT [dbo].[boardnew] ON 

INSERT [dbo].[boardnew] ([id], [title], [content], [image_link], [author], [created]) VALUES (1, N'Thực phẩm sạch tăng mạnh sau dịch Covid-19', N'Trong giai đoạn dịch Covid-19 bùng phát, ý thức về việc nâng cao sức khỏe của người dân ngày càng cao, thực phẩm sạch, an toàn đã được kiểm chứng đang là lựa chọn hàng đầu được nhiều gia đình hướng đến. <br> <br>Trước tình trạng thực phẩm kém chất lượng, hàng giả tràn lan trên thị trường, người tiêu dùng đang dần khắt khe hơn trong sự lựa chọn của mình. Trong vài năm trở lại đây, xu hướng thực phẩm an toàn, có nguồn gốc tự nhiên, thân thiện với môi trường trở nên phổ biến và trở thành một xu hướng mới trong ngành thực phẩm tại Việt Nam. Các cơ sở kinh doanh, chuỗi cửa hàng thực phẩm an toàn ngày càng nhiều với đủ mọi mặt hàng để phục vụ nhu cầu của người tiêu dùng. <br> <br>Báo cáo xu hướng tiêu dùng thực phẩm hữu cơ của AC Nielsen cho thấy có đến 86% người tiêu dùng Việt Nam ưu tiên lựa chọn sản phẩm organic cho những bữa ăn hàng ngày bởi tính an toàn, giàu dinh dưỡng và hương vị thơm ngon. Các chuyên gia cũng cho rằng, khi thu nhập của người dân tăng lên, nhu cầu về đời sống cao hơn, tỷ lệ dân số trẻ cao và tầng lớp trung lưu phát triển, người tiêu dùng sẽ dần trở thành những người tiêu dùng thông minh và hướng đến một lối sống xanh và lành mạnh thông qua việc sử dụng các thực phẩm có nguồn gốc hữu cơ và nguyên liệu sạch. <br> <br>Kinh doanh thực phẩm sạch đã 3 năm nay, cơ sở rau Khánh Thành cho biết nhiều khi “cung không đủ cầu”, bởi nhu cầu của khách hàng rất cao mà nguồn thực phẩm chất lượng lại có hạn. Thực phẩm ở cửa hàng của của chị đều có xuất xứ rõ ràng, từ các vùng trên khắp cả nước và có cả thực phẩm nhập khẩu, chủ yếu là các mặt hàng như thịt, rau củ quả, hải sản… Theo co sở, tuy giá của các loại thực phẩm hữu cơ, có nguồn gốc tự nhiên có giá thành cao hơn những thực phẩm thông thường nhưng khách hàng vẫn sẵn sàng chi trả để đảm bảo sức khỏe cho gia đình.<br> <br>Để khách hàng tin tưởng, cơ sở rau Khánh Thành đều công khai nguồn gốc xuất xứ, đồng thời dán tem QR code để có thể truy xuất nguồn gốc thực phẩm cùng những thông tin cơ bản. Mỗi ngày cửa hàng của chị nhận được hàng chục đơn hàng, lúc cao điểm có thể lên tới hàng trăm đơn. Tất cả các thực phẩm được sản xuất tại công ty luôn đảm bảo tiêu chuẩn VietGAP dựa trên 4 tiêu chí (Tiêu chuẩn về kỹ thuật sản xuất, An toàn thực phẩm, Môi trường làm việc, Truy tìm nguồn gốc sản phẩm) để tới tay người tiêu dùng. <br> <br>Dọc quanh các con phố, không khó để bắt gặp hình ảnh các cửa hàng thực phẩm hữu cơ, hoa quả sạch. Không chỉ đẩy mạnh việc bán hàng trực tiếp, các cửa hàng này còn phát triển các kênh bán hàng online, quảng bá về sản phẩm. <br> <br>', N'blog_1.jpg', N'Kim Vy', CAST(N'2020-06-05' AS Date))
INSERT [dbo].[boardnew] ([id], [title], [content], [image_link], [author], [created]) VALUES (2, N'Phát hiện loại rau củ chứa chất chữa được bệnh nan y', N'Rau củ "siêu giàu" vitamin A đã giúp các nhà khoa học tạo ra thuốc chữa. <br><br>Điều đáng ngạc nhiên là chất cơ bản để họ tạo nên "thần dược" này lại là axit retinoic, một chất rất dễ tìm kiếm trong tự nhiên. Axit retinoic là hóa chất được tạo ra trong quá trình cơ thể chúng ta phân hủy vitamin A "siêu nạp" – được tìm thấy trong các loại rau củ được biết đến rất giàu vitamin A như cà rốt hay các loại rau mầm như cải brussel.<br><br>Theo các tác giả, axit retinoic là một hóa chất cực kỳ tốt cho hệ thần kinh. Khi được ứng dụng vào thuốc, nó có thể đem lại tác động mạnh mẽ hơn nhiều so với cách ăn trực tiếp và sẽ có tác dụng chữa bệnh. <br><br>Giáo sư Peter McCaffery, đến từ Đại học Aberdeen, thành viên nhóm nghiên cứu mô tả thuốc như một phiên bản khuyếch đại những gì mà quá trình phân hủy vitamin A đã tạo ra cho cơ thể. <br><br>Với cách ăn trực tiếp, các loại rau củ giàu vitamin A chỉ dừng lại ở mức tăng cường sức khỏe mắt, hệ thần kinh, ngăn ngừa các nguy cơ bệnh tật, hỗ trợ điều trị… chưa thể tác động mạnh mẽ như một loại thuốc thực sự. <br><br>Axit retinoic kích thích khả năng tái tạo các dây thần kinh và tế bào não, vì vậy ngoài Alzheimer, họ còn định ứng dụng hóa chất kỳ diệu này làm thuốc chữa bệnh Parkinson và một số bệnh thần kinh vận động khác.<br><br>Dự án có giá trị lên đến 250.000 bảng Anh và đã được thực hiện suốt 2 năm qua. Nhóm nghiên cứu cho biết hóa chất họ tạo nên đang trong giai đoạn kiểm tra lần cuối. Sẽ cần thêm một số thủ tục để nó được ứng dụng ra thị trường. Chi tiết nghiên cứu sẽ được công bố trên tạp chí khoa học trong năm tới.', N'blog_2.jpg', N'Lan Ngọc', CAST(N'2020-05-22' AS Date))
INSERT [dbo].[boardnew] ([id], [title], [content], [image_link], [author], [created]) VALUES (3, N'Phù phép rau chợ đầu mối thành rau sạch tuồn vào trường học', N'Rau mua ngoài chợ, sau đó được sơ chế và phù phép thành các loại rau an toàn, rồi chuyển đến các trường tiểu học và mầm non trên địa bàn quận Tây Hồ (Hà Nội) <br><br>Thông tin từ Phòng cảnh sát phòng chống tội phạm về môi trường (PC49 - Công an Hà Nội), 2h30 sáng 14/1, tại chợ đầu mối rau Vân Nội (Đông Anh, Hà Nội), các nhân viên của Cty Rau củ quả Trung Thành (địa chỉ: Xóm Đầm, Vân Nội, huyện Đông Anh) đi thu mua rau tại chợ. Chỉ trong vòng 30 phút, họ đã thu gom được hàng trăm kg rau, củ quả. <br><br>3h30 sáng, ngay tại sân của Cty này, số hàng trên đã được sơ chế và phù phép thành các loại rau an toàn, sau đó được chất lên những chiếc xe máy chuyển đến các trường tiểu học và mầm non trên địa bàn quận Tây Hồ.<br><br>Sau quá trình trinh sát và thu thập chứng cứ, 6h30 cùng ngày, tổ công tác gồm Đội 4, PC49 và Thanh tra Sở NN-PTNT Hà Nội kiểm tra, phát hiện nhân viên của Cty CP Rau củ quả Trung Thành là Trần Văn Đỗ đang vận chuyển gần 2 tạ rau, củ, quả cho 2 trường mầm non trên địa bàn quận Tây Hồ là trường Mầm non Nhật Tân và trường mầm non Tứ Liên.<br><br>Tại thời điểm kiểm tra, chủ hàng không xuất trình được bất kỳ giấy tờ nào chứng minh nguồn gốc của sản phẩm. Điều đáng nói là hợp đồng ký kết giữa Cty Trung Thành và nhà trường cam kết với hàng ngàn phụ huynh học sinh của trường này cung cấp rau và thực phẩm an toàn có nguồn gốc xuất xứ.<br><br>Tuy nhiên, theo khẳng định của PC49, số thực phẩm này không thể đảm bảo để nhà trường chế biến thành các suất ăn. Đáng chú ý, nguồn cung cấp rau của Cty Trung Thành trước đây là HTX rau Đạo Đức, đã bị cơ quan công an phát hiện hành vi trà trộn rau bẩn vào rau an toàn hồi tháng 6 vừa qua.', N'blog_3.jpg', N'Lê Thạch', CAST(N'2020-05-22' AS Date))
INSERT [dbo].[boardnew] ([id], [title], [content], [image_link], [author], [created]) VALUES (4, N'Việt Nam đứng thứ 6 thế giới về xuất khẩu mật ong', N'Theo Cục Chăn nuôi, các nhà nuôi ong và đàn ong nằm rải rác khắp cả nước, nhưng tập trung chủ yếu ở miền núi và trung du (trên 442.000 đàn), Tây Nguyên (trên 361.000 đàn), đây là những vùng sinh thái được đánh giá có tiềm năng để trở thành vùng SX mật ong tập trung. Thấp nhất là ĐBSCL (trên 35.000 đàn).<br><br>So với năm 2017 thì số lượng đàn ong năm 2018 tăng 6,7%; khu vực tăng cao nhất là vùng ĐBSH (14,34%), tăng thấp nhất là Tây Nguyên (2,95%), đặc biệt là vùng ĐBSCL số lượng đàn ong giảm 18,53%.<br><br>Nghề nuôi ong mật không những mang lại hiệu quả kinh tế cao, mà còn là nghề góp phần bảo vệ môi trường sinh thái, đem lại lợi ích cho cây trồng. Việc phát triển cây trồng cũng là tăng cường nguồn thức ăn tự nhiên cho đàn ong mật. Nghề nuôi ong đã chuyển dần từ hình thức chăn nuôi tự phát, nhỏ lẻ sang hình thức đầu tư nuôi ong tập trung với số lượng lớn. Hình thành các mô hình câu lạc bộ, HTX hoạt động có hiệu quả và nhanh chóng nhân rộng.<br><br>Một số tỉnh như Hà Giang, Sơn La đã xây dựng được thương hiệu, được Cục Sở hữu trí tuệ (Bộ Khoa học và Công nghệ) cấp giấy chứng nhận đăng ký chỉ dẫn địa lý cho sản phẩm mật ong bạc hà Mèo Vạc, cấp giấy chứng nhận đăng ký nhãn hiệu tập thể mật ong Sơn La…<br><br>Chất lượng sản phẩm tạo ra từ nuôi ong mật như mật ong, sữa ong chúa, sáp ong, keo ong, phấn hoa… được nâng lên, được người tiêu dùng trong và ngoài nước quan tâm, ưa chuộng.<br><br>Tại Hòa Bình, hiện có khoảng 60.000 đàn ong, với sản lượng mật đạt 600 tấn/năm. Chăn nuôi ong hiện nay trên địa bàn tỉnh đã thực sự là 1 nghề khai thác tốt tiềm năng, lợi thế góp phần xóa đói giảm nghèo.<br><br>Ong được nuôi để lấy mật trên địa bàn tỉnh chủ yếu là 2 loại giống: Ong ngoại và ong nội. Trong đó, ong nội chiếm chủ yếu. Năng suất ong nội đạt bình quân 12kg mật/đàn/năm, ong ngoại đạt trên 25kg mật/đàn/năm.<br><br>', N'blog_4.png', N'Lan Ngọc', CAST(N'2020-05-22' AS Date))
SET IDENTITY_INSERT [dbo].[boardnew] OFF
GO
SET IDENTITY_INSERT [dbo].[catalog] ON 

INSERT [dbo].[catalog] ([id], [name], [parent_id]) VALUES (1, N'Mẫu áo', NULL)
INSERT [dbo].[catalog] ([id], [name], [parent_id]) VALUES (2, N'Mẫu quần', NULL)
INSERT [dbo].[catalog] ([id], [name], [parent_id]) VALUES (3, N'Giày dép', NULL)
INSERT [dbo].[catalog] ([id], [name], [parent_id]) VALUES (4, N'Phụ kiện', NULL)
INSERT [dbo].[catalog] ([id], [name], [parent_id]) VALUES (5, N'Sản Phẩm Mới', NULL)
INSERT [dbo].[catalog] ([id], [name], [parent_id]) VALUES (6, N'Sản Phẩm Bán Chạy', NULL)
INSERT [dbo].[catalog] ([id], [name], [parent_id]) VALUES (7, N'Sản Phẩm Giảm Giá', NULL)
SET IDENTITY_INSERT [dbo].[catalog] OFF
GO
SET IDENTITY_INSERT [dbo].[ordered] ON 

INSERT [dbo].[ordered] ([id], [product_id], [transaction_id], [qty]) VALUES (1, 2, 1, 1)
INSERT [dbo].[ordered] ([id], [product_id], [transaction_id], [qty]) VALUES (2, 3, 2, 1)
SET IDENTITY_INSERT [dbo].[ordered] OFF
GO
SET IDENTITY_INSERT [dbo].[product] ON 

INSERT [dbo].[product] ([id], [catalog_id], [name], [price], [status], [description], [content], [discount], [image_link], [created]) VALUES (1, 1, N'UNIVERSE BLAZER', N'900.000', 1, N'Phiên bản giới hạn', N'mẫu áo đẹp', 0, N'uni_blazer.jpg', CAST(N'2020-05-22' AS Date))
INSERT [dbo].[product] ([id], [catalog_id], [name], [price], [status], [description], [content], [discount], [image_link], [created]) VALUES (2, 1, N'SPECIAL NECK', N'699.000', 1, N'', N'', 10, N'special_neck1.jpg', CAST(N'2020-05-22' AS Date))
INSERT [dbo].[product] ([id], [catalog_id], [name], [price], [status], [description], [content], [discount], [image_link], [created]) VALUES (3, 1, N'SPECIAL NECK X', N'699.000', 1, N'', N'', 0, N'special_neck.jpg', CAST(N'2020-05-22' AS Date))
INSERT [dbo].[product] ([id], [catalog_id], [name], [price], [status], [description], [content], [discount], [image_link], [created]) VALUES (4, 1, N'Meilleur Homme Short SleeveS', N'649.000', 1, N'', N'', 10, N'homme.jpg', CAST(N'2020-05-22' AS Date))
INSERT [dbo].[product] ([id], [catalog_id], [name], [price], [status], [description], [content], [discount], [image_link], [created]) VALUES (5, 1, N'Midnight Sweater Pink', N'499.000', 1, N'', N'', 10, N'homme_pink.jpg', CAST(N'2020-05-22' AS Date))
INSERT [dbo].[product] ([id], [catalog_id], [name], [price], [status], [description], [content], [discount], [image_link], [created]) VALUES (6, 1, N'Sweater BluX', N'399.000', 1, N'', N'', 10, N'sweater_xanh.jpg', CAST(N'2020-05-22' AS Date))
INSERT [dbo].[product] ([id], [catalog_id], [name], [price], [status], [description], [content], [discount], [image_link], [created]) VALUES (7, 1, N'Hoodie Special', N'550.000', 1, N'', N'', 10, N'hoodie_nau.jpg', CAST(N'2020-05-22' AS Date))
INSERT [dbo].[product] ([id], [catalog_id], [name], [price], [status], [description], [content], [discount], [image_link], [created]) VALUES (8, 1, N'LINE BLAZER', N'900.000', 1, N'', N'', 10, N'line_blazer.jpg', CAST(N'2020-05-22' AS Date))
INSERT [dbo].[product] ([id], [catalog_id], [name], [price], [status], [description], [content], [discount], [image_link], [created]) VALUES (9, 2, N'Quần Vải Nam Kẻ Sọc Form Slim', N'399.000', 1, N'', N'', 5, N'quan_kesoc.jpg', CAST(N'2017-01-01' AS Date))
INSERT [dbo].[product] ([id], [catalog_id], [name], [price], [status], [description], [content], [discount], [image_link], [created]) VALUES (10, 2, N'Jean Form Skinny Crop', N'400.000', 1, N'', N'', 0, N'jean_rachgoi.jpg', CAST(N'2020-05-22' AS Date))
INSERT [dbo].[product] ([id], [catalog_id], [name], [price], [status], [description], [content], [discount], [image_link], [created]) VALUES (11, 2, N'Jean Nam Dài Rách Gối Form Straight Crop', N'450.000', 1, N'', N'', 20, N'jean_rachgoi1.jpg', CAST(N'2020-05-22' AS Date))
INSERT [dbo].[product] ([id], [catalog_id], [name], [price], [status], [description], [content], [discount], [image_link], [created]) VALUES (12, 2, N'Quần Vải Nam Form Jogger', N'450.000', 1, N'', N'', 0, N'jogger.jpg', CAST(N'2020-05-22' AS Date))
INSERT [dbo].[product] ([id], [catalog_id], [name], [price], [status], [description], [content], [discount], [image_link], [created]) VALUES (13, 2, N'Jeans Nam Rách Gối Skinny Lửng', N'400.000', 1, N'', N'', 20, N'jean_rachgoi2.jpg', CAST(N'2020-05-22' AS Date))
INSERT [dbo].[product] ([id], [catalog_id], [name], [price], [status], [description], [content], [discount], [image_link], [created]) VALUES (14, 2, N'Kẻ Sọc Form Jogger', N'400.000', 1, N'', N'', 20, N'jogger_kesoc.jpg', CAST(N'2020-05-22' AS Date))
INSERT [dbo].[product] ([id], [catalog_id], [name], [price], [status], [description], [content], [discount], [image_link], [created]) VALUES (15, 2, N'Quần Vải Nam Kẻ Caro', N'450.000', 1, N'', N'', 0, N'quan_caro.jpg', CAST(N'2020-05-22' AS Date))
INSERT [dbo].[product] ([id], [catalog_id], [name], [price], [status], [description], [content], [discount], [image_link], [created]) VALUES (16, 2, N'Jean Nam Form Loose', N'499.000', 1, N'', N'', 10, N'jean_loose.jpg', CAST(N'2020-05-22' AS Date))
INSERT [dbo].[product] ([id], [catalog_id], [name], [price], [status], [description], [content], [discount], [image_link], [created]) VALUES (17, 3, N'Sneaker 10S20SHO001', N'640.000', 1, N'', N'', 10, N'sneaker.jpg', CAST(N'2020-05-22' AS Date))
INSERT [dbo].[product] ([id], [catalog_id], [name], [price], [status], [description], [content], [discount], [image_link], [created]) VALUES (18, 3, N'Giày Nam Slip On Da Lộn', N'690.000', 1, N'', N'', 0, N'giay_slip.jpg', CAST(N'2020-05-22' AS Date))
INSERT [dbo].[product] ([id], [catalog_id], [name], [price], [status], [description], [content], [discount], [image_link], [created]) VALUES (19, 3, N'Giày Nam Sneaker Đáp Xanh Rêu', N'650.000', 1, N'', N'', 10, N'sneaker1.jpg', CAST(N'2020-05-22' AS Date))
INSERT [dbo].[product] ([id], [catalog_id], [name], [price], [status], [description], [content], [discount], [image_link], [created]) VALUES (20, 3, N'Sneaker cổ cao', N'850.000', 1, N'', N'', 15, N'sneaker2.jpg', CAST(N'2020-05-22' AS Date))
INSERT [dbo].[product] ([id], [catalog_id], [name], [price], [status], [description], [content], [discount], [image_link], [created]) VALUES (21, 3, N'Sneaker Canvas', N'690.000', 1, N'', N'', 0, N'sneaker3.jpg', CAST(N'2020-05-22' AS Date))
INSERT [dbo].[product] ([id], [catalog_id], [name], [price], [status], [description], [content], [discount], [image_link], [created]) VALUES (22, 3, N'Sandal 2 Bản Có Quai', N'350.000', 1, N'', N'', 5, N'sandal.jpg', CAST(N'2020-05-22' AS Date))
INSERT [dbo].[product] ([id], [catalog_id], [name], [price], [status], [description], [content], [discount], [image_link], [created]) VALUES (23, 3, N'Dép Nam Xỏ Ngón Flip Flop', N'150.000', 1, N'', N'', 5, N'dep.jpg', CAST(N'2020-05-22' AS Date))
INSERT [dbo].[product] ([id], [catalog_id], [name], [price], [status], [description], [content], [discount], [image_link], [created]) VALUES (24, 3, N'Giày Nam Chukka', N'990.000', 1, N'', N'', 5, N'giay_chukka.jpg', CAST(N'2020-05-22' AS Date))
INSERT [dbo].[product] ([id], [catalog_id], [name], [price], [status], [description], [content], [discount], [image_link], [created]) VALUES (25, 4, N'Caravat Nam Họa Tiết', N'200.000', 1, N'', N'', 10, N'caravat.jpg', CAST(N'2020-05-22' AS Date))
INSERT [dbo].[product] ([id], [catalog_id], [name], [price], [status], [description], [content], [discount], [image_link], [created]) VALUES (26, 4, N'Mũ Len Nam NO30100', N'150.000', 1, N'', N'', 5, N'mulen.jpg', CAST(N'2020-05-22' AS Date))
INSERT [dbo].[product] ([id], [catalog_id], [name], [price], [status], [description], [content], [discount], [image_link], [created]) VALUES (27, 4, N'Nón vành', N'180.000', 1, N'', N'', 5, N'non_vann.jpg', CAST(N'2020-05-22' AS Date))
INSERT [dbo].[product] ([id], [catalog_id], [name], [price], [status], [description], [content], [discount], [image_link], [created]) VALUES (28, 4, N'Túi đeo chéo thời trang', N'240.000', 1, N'', N'', 5, N'tuideocheo.jpg', CAST(N'2020-05-22' AS Date))
INSERT [dbo].[product] ([id], [catalog_id], [name], [price], [status], [description], [content], [discount], [image_link], [created]) VALUES (29, 4, N'Vớ hài solid', N'70.000', 1, N'', N'', 0, N'vo.jpg', CAST(N'2020-05-22' AS Date))
INSERT [dbo].[product] ([id], [catalog_id], [name], [price], [status], [description], [content], [discount], [image_link], [created]) VALUES (30, 4, N'Thắt lưng nam', N'250.000', 1, N'', N'', 10, N'thatlung.jpg', CAST(N'2020-05-22' AS Date))
INSERT [dbo].[product] ([id], [catalog_id], [name], [price], [status], [description], [content], [discount], [image_link], [created]) VALUES (31, 5, N'Hoodie CopyRight', N'350.000', 1, N'', N'', 0, N'hoodie_copy.jpg', CAST(N'2020-05-22' AS Date))
INSERT [dbo].[product] ([id], [catalog_id], [name], [price], [status], [description], [content], [discount], [image_link], [created]) VALUES (32, 5, N'T-shirt Black Viền', N'200.000', 1, N'', N'', 10, N'line_shirt.jpg', CAST(N'2020-05-22' AS Date))
INSERT [dbo].[product] ([id], [catalog_id], [name], [price], [status], [description], [content], [discount], [image_link], [created]) VALUES (33, 5, N'T-shirt White Plus', N'200.000', 1, N'', N'', 0, N'special_neck2.jpg', CAST(N'2020-05-22' AS Date))
INSERT [dbo].[product] ([id], [catalog_id], [name], [price], [status], [description], [content], [discount], [image_link], [created]) VALUES (34, 5, N'Sweater Black', N'300.000', 1, N'', N'', 10, N'sweater_den.jpg', CAST(N'2020-05-22' AS Date))
INSERT [dbo].[product] ([id], [catalog_id], [name], [price], [status], [description], [content], [discount], [image_link], [created]) VALUES (35, 5, N'Thun Trắng Trơn', N'150.000', 1, N'', N'', 10, N'shirt_trang.jpg', CAST(N'2020-05-22' AS Date))
INSERT [dbo].[product] ([id], [catalog_id], [name], [price], [status], [description], [content], [discount], [image_link], [created]) VALUES (36, 6, N'Thun RedPlus', N'200.000', 1, N'', N'', 5, N'thun.jpg', CAST(N'2020-05-22' AS Date))
INSERT [dbo].[product] ([id], [catalog_id], [name], [price], [status], [description], [content], [discount], [image_link], [created]) VALUES (37, 6, N'Áo khác lạnh', N'250.000', 1, N'', N'', 0, N'khoac_den.jpg', CAST(N'2020-05-22' AS Date))
INSERT [dbo].[product] ([id], [catalog_id], [name], [price], [status], [description], [content], [discount], [image_link], [created]) VALUES (38, 6, N'Thun BluX', N'250.000', 1, N'', N'', 5, N'thun_xanh.jpg', CAST(N'2020-05-22' AS Date))
INSERT [dbo].[product] ([id], [catalog_id], [name], [price], [status], [description], [content], [discount], [image_link], [created]) VALUES (39, 6, N'T-shirt Đen+', N'190.000', 1, N'', N'', 0, N'somi_den.jpg', CAST(N'2020-05-22' AS Date))
INSERT [dbo].[product] ([id], [catalog_id], [name], [price], [status], [description], [content], [discount], [image_link], [created]) VALUES (40, 6, N'Hoodie bánh mật', N'400.000', 1, N'', N'', 5, N'hoodie_cam.jpg', CAST(N'2020-05-22' AS Date))
INSERT [dbo].[product] ([id], [catalog_id], [name], [price], [status], [description], [content], [discount], [image_link], [created]) VALUES (41, 7, N'Vest Cao Cấp', N'800.000', 1, N'', N'', 0, N'blazer.jpg', CAST(N'2020-05-22' AS Date))
INSERT [dbo].[product] ([id], [catalog_id], [name], [price], [status], [description], [content], [discount], [image_link], [created]) VALUES (42, 7, N'Jean From Đứng', N'500.000', 1, N'', N'', 5, N'jean_play.jpg', CAST(N'2020-05-22' AS Date))
INSERT [dbo].[product] ([id], [catalog_id], [name], [price], [status], [description], [content], [discount], [image_link], [created]) VALUES (43, 7, N'Blazer Black+', N'450.000', 1, N'', N'', 15, N'jean_dark.jpg', CAST(N'2020-05-22' AS Date))
INSERT [dbo].[product] ([id], [catalog_id], [name], [price], [status], [description], [content], [discount], [image_link], [created]) VALUES (44, 7, N'Sweater One+', N'350.000', 1, N'', N'', 20, N'ao_taydai.jpg', CAST(N'2020-05-22' AS Date))
INSERT [dbo].[product] ([id], [catalog_id], [name], [price], [status], [description], [content], [discount], [image_link], [created]) VALUES (45, 7, N'Vest Purple', N'700.000', 1, N'', N'', 0, N'vest.jpg', CAST(N'2020-05-22' AS Date))
SET IDENTITY_INSERT [dbo].[product] OFF
GO
SET IDENTITY_INSERT [dbo].[review] ON 

INSERT [dbo].[review] ([id], [product_id], [name], [email], [content], [created]) VALUES (1, 3, N'Kim Vy', N'kimvy@gmail.com', N'An toàn, sạch sẽ!', CAST(N'2020-10-10' AS Date))
INSERT [dbo].[review] ([id], [product_id], [name], [email], [content], [created]) VALUES (2, 4, N'Kim Vy', N'kimvy@gmail.com', N'Sản phẩm chất lượng', CAST(N'2020-10-11' AS Date))
INSERT [dbo].[review] ([id], [product_id], [name], [email], [content], [created]) VALUES (3, 5, N'Kim Vy', N'kimvy@gmail.com', N'Ngon, lần sau tôi sẽ mua tiếp', CAST(N'2020-10-12' AS Date))
SET IDENTITY_INSERT [dbo].[review] OFF
GO
SET IDENTITY_INSERT [dbo].[transactions] ON 

INSERT [dbo].[transactions] ([id], [user_session], [user_name], [user_mail], [user_phone], [address], [message], [amount], [payment], [status], [created]) VALUES (1, N'thuantran', N'thuan', N'thuantran0164@gmail.com', N'0966959148', N'thủ đức', N'đóng gói cẩn thận', N'629.100', N'0', NULL, CAST(N'2020-12-10' AS Date))
INSERT [dbo].[transactions] ([id], [user_session], [user_name], [user_mail], [user_phone], [address], [message], [amount], [payment], [status], [created]) VALUES (2, N'thuantran', N'thuan', N'thuantran0164@gmail.com', N'0966959148', N'quận 9', N'gói kĩ', N'699.000', N'0', NULL, CAST(N'2020-12-13' AS Date))
SET IDENTITY_INSERT [dbo].[transactions] OFF
GO
SET IDENTITY_INSERT [dbo].[users] ON 

INSERT [dbo].[users] ([id], [name], [email], [phone], [username], [password], [created]) VALUES (1, N'thuan tran', N'thuantran0164@gmail.com', N'0966959148', N'thuantran', N'123456', CAST(N'2020-12-01' AS Date))
SET IDENTITY_INSERT [dbo].[users] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__admin__F3DBC572A38090BA]    Script Date: 12/22/2020 8:40:50 PM ******/
ALTER TABLE [dbo].[admin] ADD UNIQUE NONCLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__users__AB6E6164B481D92A]    Script Date: 12/22/2020 8:40:50 PM ******/
ALTER TABLE [dbo].[users] ADD UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__users__F3DBC572E6D2F16F]    Script Date: 12/22/2020 8:40:50 PM ******/
ALTER TABLE [dbo].[users] ADD UNIQUE NONCLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ordered]  WITH CHECK ADD FOREIGN KEY([product_id])
REFERENCES [dbo].[product] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ordered]  WITH CHECK ADD FOREIGN KEY([transaction_id])
REFERENCES [dbo].[transactions] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD FOREIGN KEY([catalog_id])
REFERENCES [dbo].[catalog] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[review]  WITH CHECK ADD FOREIGN KEY([product_id])
REFERENCES [dbo].[product] ([id])
ON DELETE CASCADE
GO
USE [master]
GO
ALTER DATABASE [QLSHOP] SET  READ_WRITE 
GO
