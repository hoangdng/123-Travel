USE [123Travel]
GO
SET IDENTITY_INSERT [dbo].[Areas] ON 

INSERT [dbo].[Areas] ([AreaId], [Name], [Description]) VALUES (1, N'haichau', N'Hải Châu')
INSERT [dbo].[Areas] ([AreaId], [Name], [Description]) VALUES (2, N'thanhkhe', N'Thanh Khê')
INSERT [dbo].[Areas] ([AreaId], [Name], [Description]) VALUES (3, N'sontra', N'Sơn Trà')
INSERT [dbo].[Areas] ([AreaId], [Name], [Description]) VALUES (4, N'lienchieu', N'Liên Chiểu')
INSERT [dbo].[Areas] ([AreaId], [Name], [Description]) VALUES (5, N'camle', N'Cẩm Lệ')
INSERT [dbo].[Areas] ([AreaId], [Name], [Description]) VALUES (6, N'hoavang', N'Hòa Vang')
INSERT [dbo].[Areas] ([AreaId], [Name], [Description]) VALUES (7, N'nguhanhson', N'Ngũ Hành Sơn')
SET IDENTITY_INSERT [dbo].[Areas] OFF
GO
SET IDENTITY_INSERT [dbo].[Posts] ON 

INSERT [dbo].[Posts] ([Id], [Title], [Content], [ImageURL], [DatePosted], [UserID], [AreaId]) VALUES (1, N'Cầu tình yêu Đà Nẵng – Nơi hẹn ước tình yêu vĩnh cửu', N'Cầu Tình yêu Đà Nẵng – là địa điểm thu hút khách du khách, đặc biệt là các cặp đôi tình nhân, đến đây như là nơi hẹn ước, minh chứng tình yêu vĩnh cữu. Với thiết kế mang phong cách Châu Âu hiện đại. Là điểm dừng chân lý tưởng ở mọi khung thời điểm.
 
Cầu Tình yêu Đà Nẵng nằm bắc qua sông Hàn, dịu dàng uốn cong hình vòng cung với chiều dài 68m. Được khánh thành vào giữa năm 2015, cầu tình yêu đón một lượng lớn khách thăm quan tới dự buổi lễ và 200 chiếc khóa tình yêu được phát miễn phí cũng nhanh chóng “cháy hàng” chỉ sau vài giờ.
Cây cầu này nằm giữa Cầu Rồng và cầu Sông Hàn, nằm hướng về phía giữa sông nên đứng từ đây, bạn có thể ngắm nhìn quang cảnh xung quanh và bờ bên kia của trung tâm thành phố. Đến cầu Tình yêu ở Đà Nẵng vào buổi tối là lí tưởng nhất vì khi ấy những chiếc đền lồng treo dọc theo thân cầu đã bắt đầu sáng đèn, phản chiếu ánh sáng đỏ long lanh xuống mặt sông dập dềnh sóng nước tạo nên cảnh vật vô cùng lãng mạn.
Cầu Tình yêu lấy ý tưởng từ những cây cầu nổi tiếng trên thế giới như: Pont des Arts (Pháp), Hohenzollern (Đức), Tretriakovsky (Nga) hay Milvio (Ý). Khác nhau về thiết kế nhưng giữa những cây cầu này có chung một ý nghĩa, đó là những cặp đôi yêu nhau sẽ tìm tới đây treo chiếc ổ khóa có khắc tên 2 người thì tình yêu của họ sẽ mãi mãi bền chặt, thủy chung, không gì có thể tách rời.
Vào những cuộc thi trình diễn pháo hoa quốc tế hoặc dịp lễ Tết, cầu tình yêu Đà Nẵng là địa điểm lí tưởng để chiêm ngưỡng trọn vẹn những màn pháo hoa đặc sắc với view đẹp, rộng, thoáng mát và quang đãng tuyệt đối.
Nhớ đừng bỏ qua nhé!
', N'1987ad67-e1f2-4297-8ea5-b6f2f7cdfb55-cau-tinh-yeu.jpg', CAST(N'2020-07-03T20:57:29.5960098' AS DateTime2), N'd78bd73a-0a9c-41f8-b8d5-989644c965be', 3)
INSERT [dbo].[Posts] ([Id], [Title], [Content], [ImageURL], [DatePosted], [UserID], [AreaId]) VALUES (2, N'Quán Le petit Café Đà Nẵng', N'•	Địa chỉ: Ngã 4 Hoàng Kế Viêm & Lê Quang Đạo, P.Mỹ An, Q.Ngũ Hành Sơn, Đà Nẵng
•	Giờ mở cửa: 7h – 22h30
•	Điện thoại: 093 477 66 91
Địa chỉ quán cafe kín đáo ở Đà Nẵng đầu tiên phải kể tới đó là Le Petit Café. Quán Le Petit có không gian riêng tư và kín đáo với trang trí đẹp, bắt mắt. Bạn có thể lựa chọn ngồi ở các bàn trên tầng hoặc dưới tầng trệt trong nhà hay ở ngoài sân tùy thích. Quán cafe này có thêm một số ưu điểm khác đó là đồ uống ngon, bánh ngon và nhân viên vô cùng dễ thương nữa.
', N'051f9fbc-68ff-4deb-94e9-63865c46a914-lepetit.jpg', CAST(N'2020-07-03T20:58:50.6641730' AS DateTime2), N'd78bd73a-0a9c-41f8-b8d5-989644c965be', 7)
INSERT [dbo].[Posts] ([Id], [Title], [Content], [ImageURL], [DatePosted], [UserID], [AreaId]) VALUES (3, N'Quán Cafe Nia ở Đà Nẵng', N'•	Địa chỉ: 3/14 Phan Thành Tài, Hòa Thuận Đông, Hải Châu, Đà Nẵng
•	Giờ mở cửa: 7h – 22h
•	Điện thoại: 093 880 09 62
Thêm một quán cafe kín đáo để hẹn hò ở Đà Nẵng cho mọi người lựa chọn đó là Cafe Nia. Cafe Nia có không gian rộng rãi, nhiều vị trí ngồi thưởng thức cafe cho bạn lựa chọn như các bàn trong góc, các bàn quanh hồ cá koi, các bàn trên tầng cao với sân vườn mát mẻ.
', N'64aec93a-a58e-4d26-909a-5af4e66a9069-nia.jpg', CAST(N'2020-07-03T20:59:44.0176198' AS DateTime2), N'd78bd73a-0a9c-41f8-b8d5-989644c965be', 1)
INSERT [dbo].[Posts] ([Id], [Title], [Content], [ImageURL], [DatePosted], [UserID], [AreaId]) VALUES (4, N'Quán cafe SIX ON SIX Đà Nẵng', N'•	Địa chỉ: 14 Lưu Quang Thuận, Bắc Mỹ An, Ngũ Hành Sơn, Đà Nẵng
•	Giờ mở cửa: 8h – 17h
•	Điện thoại: 094 611 49 67
Quán cafe kín đáo để hẹn hò ở Đà Nẵng cuối cùng mà các bạn không thể bỏ qua đó là Six On Six Cafe. Quán này có ưu điểm đó là không gian đẹp và rộng rãi với nhiều bàn để bạn lựa chọn. Ngoài ra quán còn phục vụ nhiều loại đồ ăn, thức uống ngon với cách bài trí bắt mắt. Tuy nhiên quán chỉ mở cửa tới 17h chiều nên bạn muốn đến đây uống cafe tâm sự thì phải tranh thủ thời gian nha.
', N'dd171284-f9ea-48b2-b61b-c9f65810ce1f-six.jpg', CAST(N'2020-07-03T21:00:51.9631114' AS DateTime2), N'd78bd73a-0a9c-41f8-b8d5-989644c965be', 7)
INSERT [dbo].[Posts] ([Id], [Title], [Content], [ImageURL], [DatePosted], [UserID], [AreaId]) VALUES (5, N'Du lịch Đà Nẵng tham gia 3 trò chơi mạo hiểm', N'Highwire là trò chơi mạo hiểm mới xuất hiện tại Đà Nẵng. Để thử sức với môn chơi này, người tham gia cần có sức khỏe, gan dạ và cả sự khéo léo. Nhằm đảm bảo an toàn, người chơi cần tuân thủ những quy định về thiết bị bảo hộ như: dây đai, móc an toàn, ròng rọc, dây dù và mũ bảo hiểm. Khi mang đầy đủ các thiết bị bạn phải cảm nhận chắc chắc mình đã được an toàn sau đó hãy bắt đầu thử sức.

Highwire là một trò chơi trải nghiệm ngoài trời được cấu tạo bởi nhiều tấm gỗ gắn trên trụ cáp, buộc vào cây to hoặc trụ bê tông. Người chơi sẽ trải qua nhiều chặng thử sức, cấp độ khó tăng dần theo thứ tự. Trên mỗi chặng bạn phải tập trung cao độ để vượt qua các chướng ngại vật được đặt trên một độ cao tương đối như leo lưới thang, băng qua các tấm ván rỗng, vượt cầu gỗ hay đi trên một chiếc dây cáp lơ lửng. Các chướng ngại vật sẽ được lắp đặt trong rừng để tạo cảm giác thân thiện, gần gũi với thiên nhiên và tăng độ hào hứng cho người chơi. Ở Việt Nam, bạn có thể được thử sức cảm giác mạnh này ở Đà Nẵng hoặc Huế.
', N'f6f513e3-8a8a-4b66-b3bd-1704891ea263-hi.jpg', CAST(N'2020-07-03T21:02:56.0603409' AS DateTime2), N'd78bd73a-0a9c-41f8-b8d5-989644c965be', 4)
INSERT [dbo].[Posts] ([Id], [Title], [Content], [ImageURL], [DatePosted], [UserID], [AreaId]) VALUES (6, N'Du lịch mạo hiểm leo núi Ngũ Hành Sơn', N'Du lịch mạo hiểm leo núi Ngũ Hành Sơn luôn mang lại cho du khách cảm giác hưng phấn, thích thú … là những cung bậc cảm xúc mà các bạn trẻ có niềm đam mê du lịch luôn thích khám phá những điều mới lạ. Khu du lịch thắng cảnh Ngũ Hành Sơn Đà Nẵng mặc dù sản phẩm du lịch leo núi mạo hiểm mới được đưa vào khai thác trong tháng 11 nhưng rất thu hút du khách đặc biệt là khách quốc tế đến .
 
Khi tham gia tour leo núi ở Ngũ Hành Sơn- Đà Nẵng, du khách sẽ di chuyển từ dưới chân núi lên tới đỉnh Vân Thông, sau đó sẽ “xuống núi” bằng cách đu dây qua vách đá thẳng đứng. Vượt qua độ cao gần 30m, trong tiếng reo hò, cổ vũ của các bạn đã leo xong đang đứng chờ ở dưới.

Nhiều du khách đã bày tỏ, lúc đầu leo ở phía bên ngoài nhiều bạn đã khóc vì sợ hãi, choáng ngợp khi nhìn thấy độ cao từ trên đỉnh Vân Thông. Sau đó, thấy các bạn khác đã làm được nên nhiều bạn trẻ đã quyết tâm phải làm bằng được  “Lần leo đầu tiên tuy rất sợ, vì chưa có kinh nghiệm nhưng nhiều bạn vẫn muốn làm lại. Lần thứ hai và đã tự tin hơn, rút kinh nghiệm từ lần trước và cố gắng vượt qua nỗi sợ của mình nên leo xuống cũng dễ dàng hơn”.
Tuy nhiên, để khai thác được môn thể thao này đòi hỏi phải có sự chuyên nghiệp trong hoạt động tour với đầy đủ các yếu tố như phải có trang thiết bị theo đúng chuẩn quốc tế, thiết kế tour hấp dẫn nhưng phải phù hợp theo địa hình và đội ngũ huấn luyện viên phải được đào tạo theo chuẩn quốc tế. “Ngũ Hành Sơn là một trong những địa hình rất độc đáo, rất khó có cái thứ hai ở Việt Nam.

Diện tích không quá lớn nhưng địa hình đa dạng có thể hình thành một trung tâm thể thao mạo hiểm ở đây và thiết kế được nhiều tour khác nhau như leo lên và leo xuống (hiện tại mới đang khai thác leo xuống) ở các cấp độ khó, dễ phù hợp với nhiều đối tượng khách”, ông Trung nhận xét.
', N'9bbf5466-313a-4e0f-b969-e7b34a2d5b53-leo.jpg', CAST(N'2020-07-03T21:03:40.4956332' AS DateTime2), N'd78bd73a-0a9c-41f8-b8d5-989644c965be', 7)
INSERT [dbo].[Posts] ([Id], [Title], [Content], [ImageURL], [DatePosted], [UserID], [AreaId]) VALUES (7, N'Flyboard - trải nghiệm cảm giác bay trên không', N'Flyboard là trò chơi mới lạ lần đầu tiên xuất hiện ở Việt Nam và thu hút rất đông những người yêu thích trò chơi này. Bạn sẽ được thỏa sức bay tà tà trên mặt nước, ngúng nguẩy như một chú cá heo hay nhấp nhổm bay lượn trên không như một Iron Man trong các bộ phim của Hollywood.

Flyborad sử dụng động cơ phản lực để hút nước và đẩy cơ thể lên không trung. Trò chơi nổi tiếng thế giới này sẽ mang lại cho bạn một cảm giác hoàn toàn mới như đang bay tự do trên mặt biển bao la.
', N'eea34832-d0cf-4f3b-9e08-56ef5ddd9198-fly.jpg', CAST(N'2020-07-03T21:04:50.7385888' AS DateTime2), N'd78bd73a-0a9c-41f8-b8d5-989644c965be', 3)
INSERT [dbo].[Posts] ([Id], [Title], [Content], [ImageURL], [DatePosted], [UserID], [AreaId]) VALUES (8, N'Mô Tô Nước – Trò Chơi Thể Thao Biển Đà Nẵng', N'Giá vé: 500k/ 15p, 650k/ 20p, 900k/ 30p
Mô tô trượt nước hay nói tắt là mô tô nước (tiếng anh là jetski). Đây là môn thể thao biển rất được yêu thích tại vùng biển Đà Nẵng. Là một môn thể thao biển thích hợp với những du khách thích trải nghiệm cảm giác mạnh.
Du khách sẽ được trang bị áo phao an toàn, được hướng dẫn viên hướng dẫn cho bạn cách điều khiển mô tô nước, cách điều khiển tay ga, cách giữ lái. Khi muốn mô tô dừng, chỉ cần nhả tay ga là an toàn. Với trò chơi này bạn có cơ hội chinh phục được những con sóng biển nhấp nhô với tốc độ 70-80 km/giờ.
Mô tô là nước là môn thể thao biển thu hút những du khách mê tốc độ. Một xe có thể đi hai người hoặc một người với chiếc mô tô nước làm bằng nhựa composite, điều khiển bằng tay ga.
', N'5f15c803-7d41-4fb1-93b9-a0ade0266369-unnamed.png', CAST(N'2020-07-03T21:06:27.2343638' AS DateTime2), N'd78bd73a-0a9c-41f8-b8d5-989644c965be', 3)
INSERT [dbo].[Posts] ([Id], [Title], [Content], [ImageURL], [DatePosted], [UserID], [AreaId]) VALUES (9, N'Cano Kéo Phao Trượt Nước – Trò Chơi Thể Thao Biển Đà Nẵng', N'Giá vé: 950k/ 15p/ 5 người
Đây là trò chơi thể thao cảm giác mạnh tuy nhiên không làm cho du khách quá sợ hãi. Trò này còn rất vui nhộn và là trò chơi đem lại nhiều tiếng cười nhất cho du khách. Sau những buổi chiều nằm phơi nắng trên những bờ cát dài. Xuống biển và tham gia trò chơi biển này thì còn gì tuyệt vời hơn.
Du khách phải mặc áo phao rồi ngồi lên thuyền phao chuối được cột với ca-nô máy bằng một sợi dây cáp chắc chắn. Ca-nô kéo thuyền đi với tốc độ cao từ 50-80km/giờ trong sự hò reo phấn khích của những người tham gia. Kéo phao chuối xứng đáng là hoạt động du lịch biển Đà Nẵng hấp dẫn nhất hè này.
', N'1353aa0f-66a8-4ba0-99b4-b84eca33d48b-unnamed.jpg', CAST(N'2020-07-03T21:09:26.0129891' AS DateTime2), N'd78bd73a-0a9c-41f8-b8d5-989644c965be', 3)
INSERT [dbo].[Posts] ([Id], [Title], [Content], [ImageURL], [DatePosted], [UserID], [AreaId]) VALUES (10, N'Lặn Biển Ngắm San Hô – Trò Chơi Thể Thao Biển Đà Nẵng', N'Biển Đà Nẵng nổi tiếng với những rặng san hô được đánh giá là đa dạng. Với quần thể sinh vật biển phong phú. Du khách đến Đà Nẵng rất thích thú với hoạt động lặn biển ngắm san hô. Đây có thể nói là một hoạt động thú vị dành cho một ngày hè nắng nóng.
Những địa điểm lặn biển ngắm san hô nổi tiếng của Đà Nẵng như là biển Mỹ Khê, bán đảo Sơn Trà.
Du khách sẽ được cano đưa ra điểm lặn giữa biển khơi. Huấn luyện viên sẽ trang bị đầy đủ và đảm bảo an toàn cho du khách trước khi xuống biển.

Đến Đà Nẵng vào một ngày hè nắng chói chang. Cùng hòa mình vào làn nước biển xanh mát, xả stress bằng những Trò Chơi Thể Thao Biển Đà Nẵng thì còn gì tuyệt vời hơn. Nào cùng xách balo lên và đi thôi!
', N'9c3cc3da-b9b1-41f1-8da0-4e2a8544508c-a.jpg', CAST(N'2020-07-03T21:10:03.1207326' AS DateTime2), N'd78bd73a-0a9c-41f8-b8d5-989644c965be', 3)
INSERT [dbo].[Posts] ([Id], [Title], [Content], [ImageURL], [DatePosted], [UserID], [AreaId]) VALUES (11, N'Khu nghỉ dưỡng InterContinental Đà Nẵng Sun Peninsula', N'Bãi Bắc, Quận Sơn Trà, Đà Nẵng
Giá từ19,777,111đ / đêm
 
Khu nghỉ dưỡng này là sự kết hợp hoàn hảo giữa thiên nhiên gần biển  và lối kiến trúc mang đậm phong cách của  Việt Nam. Điểm nổi bật thu hút nhiều du khách đên khu nghỉ dưỡng này chính là nhờ vị trí của các căn hộ được xây dựng trên sườn đồi và được ngắm trọn vẻ đẹp với tầm nhìn hướng ra biển. Nơi đây nằm trong danh sách những resort đà nẵng đẹp nhất thế giới.
Cảnh quan xung quanh tạo nên ấn tượng mạnh mẽ, nội thất lại lấy cảm hứng từ phong cách trang trí đậm nét Việt Nam. Sự kết hợp sắc sảo của hai tông màu đen và trắng tạo nên sự đối lập hài hòa màu sắc vô cùng tài tình. Du khách không chỉ được tận hưởng các dịch vụ cao cấp và tiện nghi mà còn có cơ hội khám phá thưởng thức ẩm thực phong phú, vui chơi hoàn toàn mới khi du lịch Đà Nẵng.
', N'2d9e39f6-9148-4cdd-8d9a-2140f46c6479-s.jpg', CAST(N'2020-07-03T21:11:29.6490603' AS DateTime2), N'd78bd73a-0a9c-41f8-b8d5-989644c965be', 3)
INSERT [dbo].[Posts] ([Id], [Title], [Content], [ImageURL], [DatePosted], [UserID], [AreaId]) VALUES (12, N'Biệt thự The Ocean', N'Đường Trường Sa,Phường Hòa Hải, Quận Ngũ Hành Sơn, Đà Nẵng
Giá từ3,079,990đ / đêm

Du khách khi đến đây sẽ có ấn tượng ngay từ cái nhìn đầu tiên về không gian tự nhiên xung quanh khu nghỉ dưỡng và có thiết kế căn hộ độc đáo, khác lạ. Bên cạnh đó, với lối đi cực đẹp cho du khách tản bộ. Tất cả các biệt thự ở đây đều có phòng khách và phòng ăn riêng rộng rãi, một quầy bar được trang bị đầy đủ, nhà bếp riêng, hồ bơi lớn nhìn trực diện ra biển và khu vực ngồi thư giãn ngoài trời. Khu nghỉ dưỡng này là một những khu có giá phòng resort Đà Nẵng không quá cao.
', N'8a551d20-733d-475f-9b22-afa3616ed054-175015311.jpg', CAST(N'2020-07-03T21:12:23.3923254' AS DateTime2), N'd78bd73a-0a9c-41f8-b8d5-989644c965be', 7)
INSERT [dbo].[Posts] ([Id], [Title], [Content], [ImageURL], [DatePosted], [UserID], [AreaId]) VALUES (13, N'VINPEARL ĐÀ NẴNG RESORT và VILLAS', N'Vinpearl Đà Nẵng Resort & Villas là khu nghỉ dưỡng 5 sao có vị trí đắc địa ở Đà Nẵng và là một trong những resort cao cấp, xa hoa của hệ thống nghỉ dưỡng Vinpearl. Vì thế, nơi đây chính là một trong những điểm dừng chân lý tưởng của du khách trong nước và quốc tế trong dịp du lịch Đà Nẵng.
Nằm cạnh dải biển Non Nước và tựa lưng vào dãy núi Ngũ Hành Sơn và cùng với lối kiến trúc lãng mạn, cổ điển và không kém phần sang trọng. Vinpearl Đà Nẵng Resort & Villas đã khiến bao người lữ khách phương xa mê đắm những phút giây lưu trú tại nơi đây.
Trong không gian của khu nghỉ dưỡng này, bạn sẽ được chiêm ngưỡng những khoảnh khắc thiên nhiên đẹp đến ngỡ ngàng, ngắm nhìn cảnh vật đẹp mê hồn và thả hồn cùng mây trời trong xanh, biển cả mênh mông,…
Vinpearl Đà Nẵng Resort & Villas có khu khách sạn gồm 200 phòng nghỉ sang trọng, tiện nghi và 39 căn biệt thự cao cấp có diện tích lớn. Tất cả đều được bối trí nội thất tinh tế, đẳng cấp, hài hòa, tạo nên không gian ấm cúng và có đầy đủ có thiết bị cần thiết cho bạn sử dụng.  
Ngoài ra, Vinpearl Đà Nẵng Resort & Villas còn có nhà hàng và những khu vui chơi, chăm sóc sức khỏe, làm đẹp,… phục vụ tối đa nhu cầu của du khách nữa đấy! Vậy nên, nếu có dịp du lịch Đà Nẵng bạn hãy thử chìm đắm trong thiên đường nghỉ dưỡng Vinpearl Đà Nẵng Resort & Villas nhé!

', N'915dfc7a-5389-412e-8d42-c6f312cbeeab-vinpearl-da-nang-ocean-resort-villas-597fe88f8eb6a-848x477.jpg', CAST(N'2020-07-03T21:13:29.9566652' AS DateTime2), N'd78bd73a-0a9c-41f8-b8d5-989644c965be', 7)
INSERT [dbo].[Posts] ([Id], [Title], [Content], [ImageURL], [DatePosted], [UserID], [AreaId]) VALUES (14, N'Nhà đảo ngược Đà Nẵng – Điểm check in “ảo tung chảo”', N'Chính thức được trình làng vào ngày 01/01/2018, nhà đảo ngược Đà Nẵng là địa điểm sống ảo đảo ngược với concept cực chất, cực độc. Lối kiến trúc và thiết kế độc lạ, phá vỡ mọi định luật vật lý, ngôi nhà này khiến bạn cảm thấy như hoang mang không biết đâu là sàn, đâu là nóc nhà.
Mô hình nhà đảo ngược này có tổng cộng 10 căn phòng với 10 chủ đề từ phòng khách, phòng ngủ, phòng học, nhà ăn, minimart cho đến nhà vệ sinh, phòng giặt đồ. Trong đó, có 3 phòng được trang trí theo phong cách vintage với bối cảnh tiệm cắt tóc và hàng ăn.
Mô hình nhà đảo ngược có 7 phòng trang trí theo kiểu các phòng ngủ, phòng bếp, phòng giặt,…
Bước vào bên trong ngôi nhà, du khách không khỏi sửng sốt bởi dưới chân không còn là sàn nữa mà chính là mái nhà. Những đồ vật được treo lơ lửng phía trên dường như bất chấp trọng lực mà cứ cố chấp bám vào tường. Mỗi căn phòng được thiết kế với phong cách riêng cùng với sự đảo lộn độc đáo này khiến cho du khách như được lạc vào một thế giới không trọng lực ở giữa vũ trụ.
Giá vé nhà đảo ngược Đà Nẵng
Nằm trên đường Hồ Xuân Hương, Đà Nẵng, Upside down world Danang là điểm du lịch mới ở Đà Nẵng thu hút đông đảo các bạn trẻ tới thử 1 lần được phá vỡ định luật vạn vật hấp dẫn.
Nhà đảo ngược thành phố Đà Nẵng mở cửa từ 10h – 22h hàng ngày. Giá vé vào cửa là 130.000đ/khách đối với người lớn và 70.000đ/khách đối với trẻ em.
Sự đảo lộn độc đáo kích thích trí tò mò của mỗi du khách khi đến với ngôi nhà này. Nếu có cơ hội du lịch Đà Nẵng các bạn đừng quên dành chút thời gian ghé thăm trải nghiệm không gian và giữ cho mình những pô ảnh chất, độc, lạ  cùng nhà đảo ngược Đà Nẵng nhé. Chúc các bạn có chuyến du lịch thật thú vị, trọn vẹn.
', N'a5f09fad-fcd9-4cab-bceb-2c924254a3e3-A.jpg', CAST(N'2020-07-03T21:14:47.6194485' AS DateTime2), N'ea7ec0ee-48f8-4fd9-92bd-0a403a1c5f21', 1)
INSERT [dbo].[Posts] ([Id], [Title], [Content], [ImageURL], [DatePosted], [UserID], [AreaId]) VALUES (15, N'Cầu Rồng - biểu tượng của thành phố Đà Nẵng', N'Được mệnh danh là “thành phố của những cây cầu” nên cứ vài cây số là bạn sẽ gặp ngay một cây cầu. Trong đó, nổi tiếng và thu hút nhiều khách tham quan nhất là cây cầu Rồng. Với thiết kế độc nhất vô nhị cùng nhiều hoạt động thú vị xoay quanh, cầu Rồng chính là điểm đến tiếp theo mà Traveloka muốn giới thiệu đến cho bạn trong cẩm nang du lịch Đà Nẵng này. Ngoài hình dáng và chiều dài kinh ngạc, cầu Rồng còn có một hoạt động cực thú vị, được ví như “thỏi nam châm hút khách”: phun lửa và phun nước. Cầu Rồng sẽ phun 18 ngọn lửa và 3 ngọn nước vào hai ngày cuối tuần – thứ Bảy và Chủ Nhật, bắt đầu từ 21 giờ. Bạn nhớ lưu ngay lại vào cẩm nang du lịch Đà Nẵng một ngày của bạn nhé!', N'd1b1dec2-cb58-45a6-8e45-fb4111e26ec9-s.jpg', CAST(N'2020-07-03T21:16:04.6787163' AS DateTime2), N'ea7ec0ee-48f8-4fd9-92bd-0a403a1c5f21', 1)
INSERT [dbo].[Posts] ([Id], [Title], [Content], [ImageURL], [DatePosted], [UserID], [AreaId]) VALUES (16, N'Khám phá nét đẹp biển Mỹ Khê', N'Không chỉ được Forbes vinh danh là một trong những bãi biển hấp dẫn nhất hành tinh, Mỹ Khê còn được tạp chí Australia – tờ Sunday Herald Sun bình chọn là một trong những bãi biển đẹp nhất châu Á. Nên sẽ thật đáng tiếc nếu như các bạn đã đến Đà Nẵng, vui chơi mọi nơi nhưng lại không dạo qua biển Mỹ Khê một lần.
Biển Mỹ Khê nổi tiếng với dòng nước tĩnh, bãi cát trắng phẳng mịn, lại ở gần khu trung tâm dễ tiếp cận, thích hợp cho mọi hoạt động vui chơi, nghỉ dưỡng và các trò chơi tập thể. Chưa kể với vẻ đẹp lung linh khi hoàng hôn xuống, tha hồ cho máy ảnh “tác nghiệp”.
', N'eeea0b80-b667-45a1-a531-403ab420125b-My-Khe-Quang-Ngai-2.png', CAST(N'2020-07-03T21:17:05.7960482' AS DateTime2), N'ea7ec0ee-48f8-4fd9-92bd-0a403a1c5f21', 3)
INSERT [dbo].[Posts] ([Id], [Title], [Content], [ImageURL], [DatePosted], [UserID], [AreaId]) VALUES (17, N'Lá phổi xanh bán đảo Sơn Trà', N'Nằm cách trung tâm thành phố chỉ 8 km, bán đảo Sơn Trà là khu rừng nguyên sinh xanh ngút ngàn, khí hậu mát mẻ quanh năm, xứng đáng nằm trong danh sách những điểm nên đến khi ghé Đà Nẵng. Các bạn nên ghé bán đảo Sơn Trà vào khoảng tháng 3 – tháng 9, bởi lúc này thời tiết đẹp, trời trong xanh, ít mưa, rất thuận tiện cho việc di chuyển. Từ Đà Nẵng, có rất nhiều con đường dẫn đến bán đảo, rất tiện cho các bạn lựa chọn cho hành trình cả nhóm đó.
Và dành cho các bạn ưa mạo hiểm, thích cảm giác mạnh và muốn thử bay lượn tự do như chim trời, chắc chắn nhảy dù là hoạt động không nên bỏ qua ở Sơn Trà. Đây là một hoạt động hoàn toàn mới mẻ, không phải ai đến bán đảo Sơn Trà cũng biết đâu nha!
', N'e9e9438f-f191-44b7-8a16-237e44238f99-ss.jpg', CAST(N'2020-07-03T21:17:51.1472890' AS DateTime2), N'ea7ec0ee-48f8-4fd9-92bd-0a403a1c5f21', 3)
INSERT [dbo].[Posts] ([Id], [Title], [Content], [ImageURL], [DatePosted], [UserID], [AreaId]) VALUES (18, N'Bánh tráng thịt heo – Món ăn ngon Đà Nẵng', N'Bánh tráng cuốn thịt heo Đà Nẵng – đây là món đặc sản trứ danh, gây nghiện cho biết bao nhiêu người. Miếng thịt heo luộc nạc mỡ xen nhau, cuốn với bánh tráng và rau tươi nõn nà, chấm kèm mắm nêm, phải nói là “ngon quên sầu”! Hương vị thanh mát của món ăn này chắc chắn sẽ khiến bạn nhớ mãi không nguôi!
 

Cẩm nang du lịch Đà Nẵng của Travel gợi ý cho bạn một số địa chỉ “nghìn like”:
•	Quán Trần: 4 Lê Duẩn, Q. Hải Châu (> 70.000 VND / phần)
•	Quán Bà Mua: 19-21 Trần Bình Trọng, Q. Hải Châu (> 50.000 VND / phần)
•	Quán Mậu Con: 215 Trưng Nữ Vương, Q. Hải Châu (40.000 – 70.000 VND / phần
', N'91812cc5-56fc-42ad-acd5-5c225518fd7c-A.jpg', CAST(N'2020-07-03T21:19:20.1672348' AS DateTime2), N'ea7ec0ee-48f8-4fd9-92bd-0a403a1c5f21', 1)
INSERT [dbo].[Posts] ([Id], [Title], [Content], [ImageURL], [DatePosted], [UserID], [AreaId]) VALUES (19, N'Mỳ quảng Đà Nẵng – Món ăn ngon Đà Nẵn', N'Mì Quảng là đặc sản, là một món ăn ngon Đà Nẵng mang đặc trưng của xứ Quảng. Mì Quảng thường được làm từ sợi mì bằng bột gạo xay mịn và tráng thành từng lớp bánh mỏng, sau đó thái theo chiều ngang để có những sợi mì mỏng khoảng 2mm.

 

Địa chỉ các quán Mỳ Quảng ngon Đà Nẵng:
	Mì Quảng 1A: số 1A đường Hải Phòng, quận Hải Châu.
	Mì Quảng Bà Vị: 166 Lê Đình Dương, quận Hải Châu.
	Mì Quảng Bà Mua: 19 – 21 Trần Bình Trọng và 231 Đống Đa, quận Hải Châu.
Mì quảng ếch Trang: 441 Ông Ích Khiêm, Quận Hải Châu
', N'523c0dfc-31a5-4302-ad0e-f81418f39214-s.jpg', CAST(N'2020-07-03T21:20:06.1423386' AS DateTime2), N'ea7ec0ee-48f8-4fd9-92bd-0a403a1c5f21', 1)
INSERT [dbo].[Posts] ([Id], [Title], [Content], [ImageURL], [DatePosted], [UserID], [AreaId]) VALUES (20, N'Cơm gà – Món ăn ngon Đà Nẵng', N'Cơm gà là món ăn ngon đơn giản được chế biến và trình bày với hình thức cơm và thịt gà. Cơm có thể dùng là cơm trắng hoặc cơm chiên, cơm rang và thịt gà được trình bày thông thường là đùi gà hay cánh gà. Món cơm gà tương đối dễ làm và phổ biến.

Địa chỉ các quán Cơm Gà Ngon Đà Nẵng:
 
	Cơm gà Hồng Ngọc: 193 Nguyễn Chí Thanh, Hải Châu, Q. Hải Châu, Đà Nẵng
	Cơm gà A Hải: 94 Thái Phiên, Phước Ninh, Hải Châu, Đà Nẵng
	 Cơm gà  Số Zách : 47 Trưng Nữ Vương, Quận Hải Châu, Đà Nẵng
', N'5c451325-c425-43e4-8b57-9c26a4c5b85d-H1-1.jpg', CAST(N'2020-07-03T21:20:59.6566665' AS DateTime2), N'ea7ec0ee-48f8-4fd9-92bd-0a403a1c5f21', 1)
INSERT [dbo].[Posts] ([Id], [Title], [Content], [ImageURL], [DatePosted], [UserID], [AreaId]) VALUES (21, N'Khám phá tất cả bán đảo Sơn Trà', N'Bán Đảo Sơn Trà luôn được coi là điểm du lịch hấp dẫn cho khách du lịch khi đến Đà Nẵng. Với chi phí gần như 0 đồng để bạn có thể tự trải nghiệm tất cả những địa điểm hấp dẫn nơi đây như : Chùa Linh Ứng, Cây Đa ngàn năm, Đỉnh Bàn Cờ, ngọn Hải Đăng và những điểm du lịch hấp dẫn hơn như Bãi Bụt, Bãi Rạm … Chắc chắn sẽ khiến bạn cảm thấy thật sự thích thú khi lựa chọn nơi đây.
Kinh nghiệm du lịch Bán Đảo Sơn Trà mình sẽ giúp bạn tự trải nghiệm tham quan 1 ngày với lịch trình và hướng dẫn tham quan đầy đủ. Giúp bạn có 1 kế hoạch du lịch Bán Đảo Sơn Trà trong 1 ngày hợp lý và vui vẻ. Và giờ đây Bán Đảo Sơn Trà là điểm tham quan mà chắc chắn bạn sẽ không thể bỏ qua khi đến du lịch tại Đà Nẵng.
Thời điểm thích hợp để đi du lịch Bán Đảo Sơn Trà
Bán Đảo Sơn Trà nằm ở trên Núi nhô ra biển vì thế nên thời điểm lý tưởng nhất vẫn là từ tháng 2 đến tháng 9. Thời tiết ở Đà Nẵng những tháng trên có nắng đẹp và ít có sương mù giúp bạn dễ dàng di chuyển không gặp nhiều khó khăn.
Ngoài ra có những điểm bạn có thể đi bất kỳ lúc nào mà không quan tâm nhiều đến thời tiết như : Chùa Linh Ứng, Bãi đá OBAMA, đảo khỉ … Bởi với khoảng cách chỉ 8km thì quá dễ dàng di chuyển rồi bởi thế cũng không quan trọng lắm khi đến đây phải không mọi người.
Những điểm khó di chuyển nhất đó là Cây Đa Ngàn Năm tuổi, ngọn Hải Đăng và đặc biệt là Đỉnh Bàn Cờ. Bởi những điểm trên nằm ở trên Núi rất cao và bạn phải đi lên bằng xe máy đường cực dốc và khó đi. Vì vậy bạn phải đi vào những ngày không mưa, ít sường mù và trời nắng đẹp khi bạn chuẩn bị sức khỏe thật tốt trước khi quyết định đi nhé.
Phương tiện di chuyển đi du lịch Bán Đảo Sơn Trà
+ XE MÁY : Đây vẫn là phương tiện mình khuyên bạn nên lựa chọn nhất. Với khoảng cách khá gần và đường đi như ở trên mình đã giới thiệu rồi rất rộng và đẹp thì xe máy vẫn là phương tiện di chuyển hợp lý. Khi bạn đi bằng xe máy lên Bán Đảo Sơn Trà thì những cảnh đẹp trên đường bạn có thể quay phim và chụp hình lại hoặc có thể dừng lại bất kỳ nơi nào bạn cảm thấy muốn check in mọi thứ.
Quảng đường đi lên những điểm như : Đỉnh Bàn Cờ, Cây Đa Ngàn Năm … khá dốc và khó đi. Bạn chỉ có thể đi bằng những xe số mới và mạnh mới lên nổi đấy nhé. Tốt nhất là để những bạn Nam điều khiển xe cho an toàn mọi người nhé.
+ Ô TÔ : Đối với những người lớn tuổi hoặc gia đình có nhiều trẻ nhỏ thì ô tô vẫn là lựa chọn phù hợp. Với giá thành đi Bán Đảo Sơn Trà cho xe 4 chỗ khoảng 250k và xe 7 chỗ là 350k 2 chiều bạn nhé.
Điểm hạn chế khi đi Ô Tô là bạn không được ngắm cảnh xung quanh và chỉ dừng lại tại điểm mà bạn đã đặt trước. Và ô tô cũng sẽ ít khi nhận chở lên các điểm như : Cây đa ngàn năm và đỉnh Bàn Cờ…
', N'9e410626-c472-4d94-b0d0-79a5153f0b40-aa.jpg', CAST(N'2020-07-03T21:22:20.5631391' AS DateTime2), N'a0aae953-a33f-47ba-8ae0-0c2f516188d3', 3)
INSERT [dbo].[Posts] ([Id], [Title], [Content], [ImageURL], [DatePosted], [UserID], [AreaId]) VALUES (22, N'Đỉnh Bàn Cờ – Ông Tiên', N'Đây có lẽ là điểm đến khó khăn nhất và thử thách bản thân của bạn. Để lên được Đỉnh Bàn Cờ bạn phải di chuyển 1 quãng đường dài và dốc thẳng đứng. Nên chuẩn bị sức khỏe thật tốt và phải có bạn đồng hành để hỗ trợ tránh trường hợp xấu nhất xảy ra. Lời khuyên nên đi theo nhóm khi lên đây nhé.
Đỉnh Bàn Cờ là nơi cao nhất ở trung tâm Đà Nẵng nhưng có lẽ không cao bằng khi bạn đi bởi lầu chuông trên Bà Nà cao tận 1493m so với mực nước biển. Trên này bạn có thể ngắm nhìn trọn vẹn thành phố Đà Nẵng xinh tươi và có rất nhiều các bạn phượt thủ từng ngủ qua đêm trên này rồi đấy. Nhưng để an toàn nhất mình khuyên các bạn không nên vì trên này rất nguy hiểm về thú rừng nhé.
Đỉnh Bàn Cờ tại Bán Đảo Sơn Trà có hình ông Tiên đang chơi cờ 1 mình. Với 1 nước cờ cuối cùng và từ xưa đến giờ chưa có 1 ai giải mã và cứu được nước cờ đó. Thật sự 1 lần trải nghiệm Đỉnh Bàn Cờ là bạn sẽ không bao giờ quên đâu đấy.
', N'52c40770-9c78-4a65-8949-341d63de412b-unnamed.png', CAST(N'2020-07-03T21:23:36.1735446' AS DateTime2), N'a0aae953-a33f-47ba-8ae0-0c2f516188d3', 3)
INSERT [dbo].[Posts] ([Id], [Title], [Content], [ImageURL], [DatePosted], [UserID], [AreaId]) VALUES (23, N'Ngọn Hải Đăng – Mắt thần Đông Dương', N'Thấp hơn Đỉnh Bàn Cờ và đường vô cùng dễ đi. Ngọn Hải Đăng được gọi tên khác là Mắt Thần tại Đà Nẵng và thực chất đây là trạm Ra Đa 29 để quan sát khu vực biển và máy bay. Đây là trạm Ra Đa quan sát để đảm bảo an toàn cho cả vùng biển thuộc thổ quyền lãnh thổ Việt Nam.

', N'baa8d1fb-0cfd-4a94-878a-22769ecfb662-qiongru-191023021044-hai-dang-ke-ga.jpg', CAST(N'2020-07-03T21:24:32.7462535' AS DateTime2), N'a0aae953-a33f-47ba-8ae0-0c2f516188d3', 7)
SET IDENTITY_INSERT [dbo].[Posts] OFF
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'1', N'Administrator', N'ADMINISTRATOR', NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Name], [DateJoined]) VALUES (N'a0aae953-a33f-47ba-8ae0-0c2f516188d3', N'user1@gmail.com', N'USER1@GMAIL.COM', N'user1@gmail.com', N'USER1@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEFZwVlY5Z7ujqjweTUMP3mgWWqyHM0VySMNn2cy7LcCjQtwz8LXHymR2S/udr3MzUg==', N'I4HRIM2WTCGAN4AO6SEWKDW7OHX7V76P', N'75409c42-ac51-41e7-ac45-3da72500b48d', NULL, 0, 0, NULL, 1, 0, NULL, CAST(N'2020-07-03T21:21:13.6388684' AS DateTime2))
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Name], [DateJoined]) VALUES (N'd78bd73a-0a9c-41f8-b8d5-989644c965be', N'admin@gmail.com', N'ADMIN@GMAIL.COM', N'admin@gmail.com', N'ADMIN@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEOHjF7eb/c6aOtB4z76oTUV+6BxBxOjfvf/ZI50s4uODIgUczhDMo4k9YhAcV27puA==', N'UGXSHINKCE3Z7DJCKGIBYZZDXUAVIYLY', N'1a066bd4-2e57-4f86-8aa4-54bb8fbabb43', NULL, 0, 0, NULL, 1, 0, NULL, CAST(N'2020-07-03T20:47:26.9325770' AS DateTime2))
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Name], [DateJoined]) VALUES (N'ea7ec0ee-48f8-4fd9-92bd-0a403a1c5f21', N'user@gmail.com', N'USER@GMAIL.COM', N'user@gmail.com', N'USER@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEM+qvTMH1w1vkozLEdvirSqhB+qMqZoldrv5q/7/LvnpB2yXtmraGE4HfcM9yMpsQg==', N'6FEDVC6BM7QALTQEXY4T2Q3SDEEZCHDW', N'f0ce8da8-426c-45e6-bbb7-66a6c521980c', NULL, 0, 0, NULL, 1, 0, NULL, CAST(N'2020-07-03T20:47:57.9123578' AS DateTime2))
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'd78bd73a-0a9c-41f8-b8d5-989644c965be', N'1')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200625022523_InitData', N'3.1.2')
GO
