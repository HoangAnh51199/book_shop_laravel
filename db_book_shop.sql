-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 18, 2021 lúc 11:47 AM
-- Phiên bản máy phục vụ: 10.4.17-MariaDB
-- Phiên bản PHP: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `db_book_shop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `log_login` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` tinyint(4) NOT NULL DEFAULT 1,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `phone`, `log_login`, `class`, `address`, `level`, `avatar`, `created_at`, `updated_at`) VALUES
(1, 'hoanganh', 'hoanganh51199@gmail.com', '$2y$10$7VLRCZIgkY4I3Vfg7edih.MEBBc..kbS3SM4B8l6mxJLOst5bcpK.', '0988999999', NULL, 'demo', '173 nguyen xi', 1, '2021-01-09__iconfinder-boss-132688.png', NULL, '2021-01-14 11:47:27'),
(2, 'Nhân viên', 'nhanvien@gmail.com', '$2y$10$CHR8tVZPgsKPuu2Tk76KMey6zhOtbzxuMSGWltzmB96RXvIC9tNMW', '0986420994', NULL, NULL, NULL, 2, NULL, '2020-06-13 06:23:32', '2021-03-09 06:18:43');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `a_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `a_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `a_hot` tinyint(4) NOT NULL DEFAULT 0,
  `a_active` tinyint(4) NOT NULL DEFAULT 1,
  `a_menu_id` int(11) NOT NULL DEFAULT 0,
  `a_view` int(11) NOT NULL DEFAULT 0,
  `a_description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a_avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `a_position_2` tinyint(4) NOT NULL DEFAULT 0,
  `a_position_1` tinyint(4) NOT NULL DEFAULT 0,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `articles`
--

INSERT INTO `articles` (`id`, `a_name`, `a_slug`, `a_hot`, `a_active`, `a_menu_id`, `a_view`, `a_description`, `a_avatar`, `a_content`, `created_at`, `a_position_2`, `a_position_1`, `updated_at`) VALUES
(1, 'Chiến lược thông minh giúp biến một cuốn sách tầm thường trở thành Best Seller', 'chien-luoc-thong-minh-giup-bien-mot-cuon-sach-tam-thuong-tro-thanh-best-seller', 1, 1, 1, 0, '\"Tác giả Robert Cialdini đã từng nói: \"Nếu bạn nghĩ về những gì bạn muốn làm và viết nó ra, thì bạn sẽ có thể làm được điều đó \", Ramdas chia sẻ.', '2020-07-18__photo-1-1489486596524.jpg', '<p style=\"text-align:justify\">7 05:29 PM&nbsp;|&nbsp;<a href=\"https://cafebiz.vn/cau-chuyen-kinh-doanh.chn\" title=\"Kinh doanh\">KINH DOANH</a></p>\r\n\r\n<p style=\"text-align:justify\"><a href=\"javascript:void(0);\" onclick=\"fbClient.shareClick(\'https://cafebiz.vn/news-20170314173022331.chn\')\" rel=\"nofollow\">0</a></p>\r\n\r\n<p style=\"text-align:justify\"><iframe frameborder=\"0\" height=\"1000px\" name=\"f3727002c9ea9c\" scrolling=\"no\" src=\"https://www.facebook.com/v2.8/plugins/like.php?action=like&amp;app_id=156966424493207&amp;channel=https%3A%2F%2Fstaticxx.facebook.com%2Fx%2Fconnect%2Fxd_arbiter%2F%3Fversion%3D46%23cb%3Dfb5d0f406c216c%26domain%3Dcafebiz.vn%26origin%3Dhttps%253A%252F%252Fcafebiz.vn%252Ff94b8b04498ef8%26relation%3Dparent.parent&amp;container_width=497&amp;href=https%3A%2F%2Fcafebiz.vn%2Fnews-20170314173022331.chn&amp;layout=button_count&amp;locale=vi_VN&amp;sdk=joey&amp;share=false&amp;show_faces=false&amp;size=small\" title=\"fb:like Facebook Social Plugin\" width=\"1000px\"></iframe></p>\r\n\r\n<h2 style=\"text-align:justify\">UJ Ramdas đ&atilde; c&oacute; một &yacute; tưởng, anh biết rằng mọi người c&oacute; thể sẽ th&iacute;ch cuốn sổ nhật k&iacute; của anh, nhưng sẽ kh&ocirc;ng c&oacute; nh&agrave; xuất bản n&agrave;o chấp nhận cuốn sổ n&agrave;y. Bời đ&acirc;y l&agrave; một cuốn sổ tầm thường. Vấn đề nằm ở đ&oacute;!</h2>\r\n\r\n<ul>\r\n</ul>\r\n\r\n<p style=\"text-align:justify\"><img alt=\"Chiến lược thông minh giúp biến một cuốn sách tầm thường trở thành Best Seller\" src=\"https://cafebiz.cafebizcdn.vn/thumb_w/600/2017/photo-1-1489486596524.jpg\" /></p>\r\n\r\n<p style=\"text-align:justify\">&quot;T&aacute;c giả Robert Cialdini đ&atilde; từng n&oacute;i: &quot;Nếu bạn nghĩ về những g&igrave; bạn muốn l&agrave;m v&agrave; viết n&oacute; ra, th&igrave; bạn sẽ c&oacute; thể l&agrave;m được điều đ&oacute; &quot;, Ramdas chia sẻ.</p>\r\n\r\n<p style=\"text-align:justify\">Anh bắt đầu viết nhật k&yacute; khi 19 tuổi v&agrave;, giờ đ&acirc;y khi anh 29 tuổi, anh vẫn viết rất hăng say. Nhưng anh biết rằng n&oacute; c&oacute; thể sẽ rất kh&oacute; b&aacute;n. Hầu hết mọi người sẽ kh&ocirc;ng d&agrave;nh 15-30 ph&uacute;t mỗi ng&agrave;y để &quot;xem x&eacute;t bản th&acirc;n&quot; như anh. Đ&oacute; l&agrave; l&yacute; do anh chọn&nbsp;<strong>Five Minute Journal</strong>&nbsp;l&agrave; t&ecirc;n cuốn sổ.</p>\r\n\r\n<p style=\"text-align:justify\">Anh đ&atilde; nghĩ &quot;Sao ch&uacute;ng ta kh&ocirc;ng tận dụng mọi thứ ch&uacute;ng ta biết từ c&aacute;c nguy&ecirc;n l&yacute; t&acirc;m l&yacute;, v&agrave; viết v&agrave;o cuốn s&aacute;ch ấy sự ph&aacute;t triển của nh&acirc;n c&aacute;ch bản th&acirc;n?&quot; Ramdas v&agrave; người bạn của m&igrave;nh l&agrave; Alex Ikonn, đ&atilde; đồng s&aacute;ng lập một c&ocirc;ng ty t&ecirc;n l&agrave; Intelligent Change v&agrave; đ&atilde; viết cuốn nhật k&iacute; The Five Minute Journal- một cuốn sổ được thiết kế đẹp, l&agrave; cuốn sổ để ghi lại c&aacute;c mục ti&ecirc;u bạn đặt ra mỗi ng&agrave;y v&agrave; xem x&eacute;t những g&igrave; bạn đ&atilde; đạt được v&agrave;o cuối ng&agrave;y, cuốn sổ c&ograve;n được in th&ecirc;m những lời kh&iacute;ch lệ t&iacute;ch cực.</p>\r\n\r\n<p style=\"text-align:justify\">Ramdas v&agrave; Ikonn trả tiền để chạy quảng c&aacute;o, gi&aacute; cuốn sổ l&agrave; 23 đ&ocirc; la, v&agrave; l&ecirc;n kế hoạch b&aacute;n cuốn sổ trực tiếp cho người ti&ecirc;u d&ugrave;ng. Nhưng nếu kh&ocirc;ng được c&aacute;c nh&agrave; xuất bản hỗ trợ hay kh&ocirc;ng đầu tư tiền v&agrave;o quảng c&aacute;o, th&igrave; cuốn sổ sẽ kh&ocirc;ng thể đến được tay mọi người. Ai sẽ ch&uacute; &yacute; đến một quyển sổ nhỏ như vậy?</p>\r\n\r\n<p style=\"text-align:justify\">Họ biết sẽ cần phải thực hiện một c&uacute; th&uacute;c mạnh, vậy n&ecirc;n đ&atilde; bắt đầu gửi cuốn sổ tới những người nổi tiếng. Đ&atilde; c&oacute; lần, họ gửi g&oacute;i bưu phẩm đến Chương tr&igrave;nh The Ellen DeGeneres với &aacute;p ph&iacute;ch, nh&atilde;n d&aacute;n v&agrave; sổ cho to&agrave;n bộ kh&aacute;n giả trong ph&ograve;ng thu, nhưng lại kh&ocirc;ng nhận lại được phản hồi n&agrave;o. &quot;Ch&uacute;ng t&ocirc;i kh&ocirc;ng biết chuyện g&igrave; đ&atilde; xảy ra. Ch&uacute;ng t&ocirc;i biết l&agrave; họ đ&atilde; nhận được cuốn sổ&quot;, &quot;Ch&uacute;ng t&ocirc;i đ&atilde; mất h&agrave;ng ng&agrave;n đ&ocirc; la.&quot;</p>\r\n\r\n<p style=\"text-align:justify\">Tiếp đ&oacute;, họ nhắm đến c&aacute;c hội nghị của c&aacute;c doanh nh&acirc;n v&agrave; những người y&ecirc;u th&iacute;ch thể dục thẩm mỹ, t&igrave;m đến &quot;những người nhận thấy gi&aacute; trị thiết thực của hạnh ph&uacute;c v&agrave; l&ograve;ng biết ơn, v&agrave; sẽ trả 23 đ&ocirc; la cho sản phẩm.&quot; Sau một thời gian, sự cố gắng bắt đầu được đền đ&aacute;p. Họ đ&atilde; gặp một số người c&oacute; sức ảnh hưởng, trong số đ&oacute; c&oacute; Dave Asprey, Abel James v&agrave; Tim Ferriss, những người c&oacute; hứng th&uacute; với cuốn sổ, v&agrave; đ&ocirc;i khi c&ograve;n kể cho người h&acirc;m mộ của họ về n&oacute;. Ramdas n&oacute;i, &quot;Đ&oacute; l&agrave; khi ch&uacute;ng t&ocirc;i nhận ra điều n&agrave;y l&agrave; khả thi&quot;. Nhưng Ramdas v&agrave; Alex vẫn gặp phải kh&oacute; khăn: L&agrave;m sao họ c&oacute; thể biến những người h&acirc;m mộ c&oacute; ảnh hưởng n&agrave;y th&agrave;nh những một lượng người mua lớn?</p>\r\n\r\n<p style=\"text-align:justify\">Rồi Ramdas v&agrave; Ikonn đ&atilde; c&oacute; một khoảnh khắc ngỡ ra rằng:&nbsp;<strong>Những người c&oacute; ảnh hưởng sẽ chơi với những người bạn c&oacute; ảnh hưởng!</strong>&nbsp;V&agrave; những người bạn &iacute;t nổi tiếng hơn gần như kh&ocirc;ng bị thu h&uacute;t với những thứ miễn ph&iacute;, c&oacute; nghĩa l&agrave; họ sẵn s&agrave;ng bỏ tiền ra mua. &quot;Khi mọi người bắt đầu một th&oacute;i quen mới, họ muốn kể với bạn b&egrave; về n&oacute;, đặc biệt l&agrave; nếu n&oacute; th&uacute; vị&quot;.</p>\r\n\r\n<p style=\"text-align:justify\">V&igrave; vậy, Ramdas v&agrave; Alex đ&atilde; thực hiện kế hoạch tiếp thị s&aacute;ch kiểu truyền thống - gửi những bản sao tới những người m&agrave; họ ngưỡng mộ, những người c&oacute; thể t&igrave;m ra người mua- đ&oacute; l&agrave; một bước tiến nữa. &quot;Ch&uacute;ng t&ocirc;i sẽ gửi hai đến năm cuốn sổ đến bất kỳ một người c&oacute; ảnh hưởng n&agrave;o&quot;- Ramdas n&oacute;i. Họ nhận thấy rằng một bản sao c&oacute; thể bị lờ đi hoặc thậm ch&iacute; bị vứt đi. Nhưng những người c&oacute; ảnh hưởng n&agrave;y sẽ khiến người nhận cuốn sổ ch&iacute; &iacute;t kh&ocirc;ng d&ugrave;ng đến n&oacute; th&igrave; cũng tặng n&oacute; cho bạn b&egrave;.</p>\r\n\r\n<p style=\"text-align:justify\">&quot;Ch&uacute;ng t&ocirc;i biết n&oacute; l&agrave; một m&oacute;n qu&agrave; tuyệt vời&rdquo;. V&agrave; việc l&agrave;m đ&atilde; c&oacute; hiệu quả. Những người c&oacute; ảnh hưởng được biết đến c&ugrave;ng với cuốn nhật k&iacute;, việc n&agrave;y gi&uacute;p tạo ra một trang web đ&atilde; b&aacute;n được tới hơn 100.000 bản (Trong khi tờ b&aacute;o b&aacute;n chạy New York Times c&oacute; khi chỉ b&aacute;n được &iacute;t hơn 10.000 bản).</p>\r\n\r\n<p style=\"text-align:justify\">Hal Elrod- t&aacute;c giả của cuốn The Miracle Morning, đ&atilde; nhắc đến Five Minute Journal trong chương tr&igrave;nh Smart Passive Income của Pat Flynn. &quot;Những điều như thế c&oacute; thể xảy ra, v&agrave; điều đ&oacute; rất quan trọng. Bạn cần phải c&oacute; một sản phẩm m&agrave; mọi người cần phải n&oacute;i về n&oacute;. &quot;</p>\r\n\r\n<p style=\"text-align:justify\">V&agrave; những g&igrave; bạn phải l&agrave;m l&agrave; cho họ một l&yacute; do để n&oacute;i về n&oacute;.</p>', '2020-07-17 13:29:54', 1, 1, '2021-01-24 00:13:11'),
(2, 'demo', 'demo', 0, 0, 2, 0, 'demo', '2021-01-09__ben-white-ggbuetcokjw-unsplash.jpg', '<p>&nbsp;</p>\r\n\r\n<h1>1. Khi&ecirc;u vũ với ng&ograve;i b&uacute;t</h1>\r\n\r\n<p>Cuốn s&aacute;ch n&agrave;y được viết bởi ph&ugrave; thủy quảng c&aacute;o nước Mỹ &ndash; Joseph Sugarman. Tại đ&acirc;y, &ocirc;ng từng bước hướng dẫn người đọc qu&aacute; tr&igrave;nh viết b&agrave;i quảng c&aacute;o: từ kh&acirc;u nghi&ecirc;n cứu thị trường v&agrave; sản phẩm, l&ecirc;n &yacute; tưởng rồi viết ra giấy, m&agrave;i giũa ch&uacute;ng sao cho thật hấp dẫn. Song song với đ&oacute; l&agrave; nhứng lời giải th&iacute;ch r&otilde; rằng về yếu tố sống c&ograve;n của một b&agrave;i viết, những b&iacute; quyết để thu phục kh&aacute;ch h&agrave;ng, l&agrave;m cho họ sẵn s&agrave;ng r&uacute;t tiền trong t&uacute;i để mua sản phẩm của bạn.</p>\r\n\r\n<p><img src=\"https://mcbooks.vn/wp-content/uploads/2019/04/Khi%C3%AAu-v%C5%A9-v%E1%BB%9Bi-ng%C3%B2i-b%C3%BAt.jpg\" /></p>\r\n\r\n<p>&ugrave; bạn mới bước ch&acirc;n v&agrave;o nghệ hay l&agrave; một cao thủ l&atilde;o luyện rồi th&igrave; cũng n&ecirc;n đọc cuốn&nbsp;<strong>s&aacute;ch dạy viết nội dung</strong>&nbsp;&ldquo;Khi&ecirc;u vũ với ng&ograve;i b&uacute;t&rdquo; một lần. H&atilde;y nhớ việc viết content l&agrave; tr&aacute;i tim v&agrave; linh hồn của chiến lược quảng c&aacute;o sản phẩm. Ch&iacute;nh v&igrave; vậy, sử dụng cuốn s&aacute;ch v&agrave; thực chiến ngay h&ocirc;m nay sẽ l&agrave; vũ kh&iacute; tối thượng gi&uacute;p bạn đạt được hiệu quả cao trong c&ocirc;ng việc.</p>\r\n\r\n<h1>2. HBR Guide to &ndash; Viết hay kh&ocirc;ng kh&oacute;</h1>\r\n\r\n<p>H&atilde;y thử tưởng tượng bạn đang l&ecirc;n nội dung để thuyết phục kh&aacute;c h&agrave;ng mua v&agrave; sử dụng sản phẩm của m&igrave;nh. Nhưng nếu lời lẽ kh&ocirc;ng r&otilde; r&agrave;ng sẽ khiến g&acirc;y ra sự hiểu lầm. Diễn đạt rối rắm v&agrave; l&yacute; lẽ k&eacute;m chặt chẽ sẽ kh&ocirc;ng thể thu h&uacute;t. Nội dung kh&ocirc;ng đề cập đến việc giải quyết vấn đề của người d&ugrave;ng th&igrave; kh&ocirc;ng bao giờ b&aacute;n h&agrave;ng, d&ugrave; mặt h&agrave;ng của bạn tốt đến đ&acirc;u. Vậy mới n&oacute;i, viết content hay kh&ocirc;ng kh&oacute;, nhưng cũng kh&ocirc;ng hề dễ. Quan trọng cần phải c&oacute; b&iacute; quyết. Vậy b&iacute; quyết ở đ&acirc;y l&agrave; g&igrave;? H&atilde;y đọc ngay cuốn s&aacute;ch dạy viết nội dung tuyệt đỉnh HBR Guide to &ndash; Viết hay kh&ocirc;ng kh&oacute;. Tại đ&acirc;y, t&aacute;c giả Bryan A. Garner sẽ tiết lộ:</p>\r\n\r\n<p>+ C&aacute;ch kết nối với người đọc</p>\r\n\r\n<p>+ C&aacute;ch tr&igrave;nh b&agrave;y nổi bật những trọng t&acirc;m</p>\r\n\r\n<p>+ Thuyết phục mọi người bằng l&yacute; lẽ của m&igrave;nh.</p>\r\n\r\n<p><img alt=\"\" src=\"https://mcbooks.vn/wp-content/uploads/2019/04/viet-hay-khong-kho.jpg\" style=\"height:550px; width:550px\" /></p>\r\n\r\n<p><em>Viết hay kh&ocirc;ng kh&oacute; &ndash; b&iacute; k&iacute;p cho d&acirc;n content</em></p>\r\n\r\n<h1>3. Th&ocirc;i mi&ecirc;n bằng ng&ocirc;n từ</h1>\r\n\r\n<p>Trong bất cứ ng&agrave;nh nghề n&agrave;o, nếu &ldquo;tự lực c&aacute;nh sinh&rdquo; th&igrave; phải mất mấy năm kinh nghiệm th&igrave; mới t&iacute;ch lũy đủ khả năng để l&agrave;m tốt c&ocirc;ng việc. Nhưng để nhanh hơn, h&atilde;y tiếp thu ch&iacute;nh những điều m&agrave; người đi trước đ&atilde; l&agrave;m v&agrave; học được. T&aacute;c giả Joe Vitale đ&atilde; viết hết những trải nghiệm của m&igrave;nh trong lĩnh vực x&acirc;y dựng contetn Marketing về c&aacute;ch thuyết phục, giao tiếp, b&aacute;n h&agrave;ng đỉnh cao,&hellip; trong cuốn &ldquo;<a href=\"https://thoimienbangngontu.bizbooks.vn/\">Th&ocirc;i mi&ecirc;n bằng ng&ocirc;n từ</a>&rdquo;. Đ&acirc;y l&agrave; cuốn&nbsp;<strong>s&aacute;ch dạy viết nội dung hay</strong>, được giới chuy&ecirc;n gia v&agrave; độc giả đ&aacute;nh gi&aacute; rất cao.</p>\r\n\r\n<p><a href=\"https://thoimienbangngontu.bizbooks.vn/\"><img alt=\"\" src=\"https://mcbooks.vn/wp-content/uploads/2019/04/thoi-mien-ngon-tu-bia-xanh.jpg\" style=\"height:336px; width:600px\" /></a></p>\r\n\r\n<p><em>Th&ocirc;i mi&ecirc;n bằng ng&ocirc;n từ l&agrave; một c&ocirc;ng cụ dạy viết content tuyệt đỉnh</em></p>\r\n\r\n<p>H&atilde;y lu&ocirc;n ghi nhớ &ldquo;&hellip; nghệ thuật th&ocirc;i mi&ecirc;n bằng ng&ocirc;n từ l&agrave; một c&ocirc;ng cụ cực mạnh. Những ai biết tận dụng n&oacute; sẽ n&acirc;ng cao được khả năng giao tiếp v&agrave; thuyết phục bả th&acirc;n, gi&uacute;p tăng doanh số b&aacute;n h&agrave;ng&rdquo;. Đ&acirc;y ch&iacute;nh l&agrave; điều cốt l&otilde;i m&agrave; t&aacute;c giả muốn gửi gắm đến bạn đọc đ&atilde; v&agrave; đang l&agrave;m trong lĩnh vực content. Đọc v&agrave; thực chiến ngay!</p>\r\n\r\n<p><strong>Mua cuốn &ldquo;Th&ocirc;i mi&ecirc;n bằng ng&ocirc;n từ</strong>&rdquo;&nbsp;<a href=\"https://thoimienbangngontu.bizbooks.vn/\">tại đ&acirc;y</a></p>\r\n\r\n<h1>4. Viết g&igrave; cũng đ&uacute;ng</h1>\r\n\r\n<p>Nếu bạn đang cần t&igrave;m m&ocirc;t cuốn&nbsp;<strong>s&aacute;ch dạy viết nội dung</strong>, c&oacute; thể giải được vấn đề n&acirc;ng cao khả năng viết l&aacute;ch, th&igrave; &ldquo;Viết g&igrave; cũng đ&uacute;ng&rdquo; l&agrave; b&iacute; k&iacute;p d&agrave;nh ri&ecirc;ng cho bạn. Content chinh phục kh&aacute;ch h&agrave;ng kh&ocirc;ng chỉ l&agrave; viết nội dung m&agrave; c&ograve;n phải đưa ra những l&yacute; lẽ v&agrave; dẫn chứng thuyết phục. Để ho&agrave;n thiện kỹ năng n&agrave;y, t&aacute;c giả Weston Anthony sẽ gi&uacute;p bạn:</p>\r\n\r\n<p><img alt=\"\" src=\"https://mcbooks.vn/wp-content/uploads/2019/04/viet-gi-cung-dung-1.jpg\" style=\"height:560px; width:1024px\" /></p>\r\n\r\n<p><em>Viết g&igrave; cũng đ&uacute;ng &ndash; cuốn s&aacute;ch về nghệ thuật viết nội dung đỉnh cao</em></p>\r\n\r\n<p>+ Biết những nguy&ecirc;n tắc cơ bản để xử l&yacute; c&aacute;c cuộc tranh luận ngầm: x&aacute;c định giả thuyết v&agrave; kết luận, ph&aacute;t triển &yacute; tưởng của bạn</p>\r\n\r\n<p>+ Kh&aacute;i qu&aacute;t h&oacute;a: sử dụng nhiều v&iacute; dụ, sử dụng c&aacute;c v&iacute; dụ kinh điển</p>\r\n\r\n<p>+ Sử dụng ph&eacute;p loại suy từ</p>\r\n\r\n<p>+ C&aacute;ch đưa th&ocirc;ng tin v&agrave;o b&agrave;i viết, kiểm chứng th&ocirc;ng tin,&hellip;</p>\r\n\r\n<h1>5. L&agrave;m bạn với h&igrave;nh, l&agrave;m t&igrave;nh với chữ</h1>\r\n\r\n<p>Chỉ cần nghe t&ecirc;n s&aacute;ch th&ocirc;i cũng đ&atilde; thấy lời văn kh&aacute; tếu t&aacute;o, g&acirc;y n&ecirc;n sự độc đ&aacute;o, thu h&uacute;t người đọc. V&agrave; nội dung b&ecirc;n trong cũng như thế. Với nội dung cuốn h&uacute;t, v&iacute; dụ thực chiến sẽ khiến d&acirc;n content kh&ocirc;ng thể rời mắt từ trang đầu ti&ecirc;n đến trang cuối c&ugrave;ng.</p>\r\n\r\n<p><img alt=\"\" src=\"https://mcbooks.vn/wp-content/uploads/2019/04/lam-ban-voi-hinh-lam-tinh-voi-chu.png\" style=\"height:599px; width:1200px\" /></p>\r\n\r\n<p><em>Cuốn s&aacute;ch c&oacute; nội dung thu h&uacute;t, chứa đầy kinh nghiệm cho d&acirc;n content</em></p>\r\n\r\n<p>V&iacute; dụ ngay một đoạn &ldquo;lời ph&ecirc;&rdquo; trong cuốn&nbsp;<strong>s&aacute;ch dạy viết content</strong>&nbsp;n&agrave;y: &ldquo;Phải mua ngay, rất c&oacute; lợi: để đọc chơi giết thời gian cũng được; để biết copywriter n&oacute; l&agrave; c&aacute;i giống lo&agrave;i g&igrave; cũng được; để thở ph&agrave;o h&ecirc;n qu&aacute; m&igrave;nh kh&ocirc;ng l&agrave;m quảng c&aacute;o cũng được. C&ograve;n lại th&igrave;, b&agrave; ve chai th&iacute;ch điều n&agrave;y.&rdquo; Những lời chia sẻ trong cuốn s&aacute;ch tuy h&agrave;i hước nhưng chứa đầy kinh nghiệm qu&yacute; b&aacute;u cho d&acirc;n cầm b&uacute;t kiếm tiền. V&igrave; vậy, c&oacute; thể khẳng định: s&aacute;ch rất đ&aacute;ng đọc.</p>\r\n\r\n<p>Nếu đang gặp rắc rối về vấn đề content marketing, h&atilde;y để 5 cuốn&nbsp;<strong>s&aacute;ch dạy viết nội dung</strong>&nbsp;tại đ&acirc;y l&agrave; kim chỉ nam cho nghề nghiệp của bạn. Chắc hẳn sau khi đọc xong, bạn ho&agrave;n to&agrave;n c&oacute; thể viết được những b&agrave;i viết với ngon m&agrave; chất.</p>\r\n\r\n<p><strong>Từ kh&oacute;a t&igrave;m kiếm:&nbsp;<a href=\"https://mcbooks.vn/nhung-cuon-sach-day-viet-noi-dung-hay-nhat/\">S&aacute;ch dạy viết nội dung</a>,&nbsp;<a href=\"https://mcbooks.vn/nhung-cuon-sach-day-viet-noi-dung-hay-nhat/\">S&aacute;ch dạy viết content hay</a>,&nbsp;<a href=\"https://mcbooks.vn/nhung-cuon-sach-day-viet-noi-dung-hay-nhat/\">Th&ocirc;i mi&ecirc;n bằng ng&ocirc;n từ</a>,&nbsp;<a href=\"https://mcbooks.vn/nhung-cuon-sach-day-viet-noi-dung-hay-nhat/\">C&aacute;ch viết content hay</a>,&nbsp;<a href=\"https://mcbooks.vn/nhung-cuon-sach-day-viet-noi-dung-hay-nhat/\">S&aacute;ch viết về content</a></strong></p>', '2021-01-07 13:07:13', 1, 1, '2021-01-24 00:12:44'),
(3, 'Kinh nghiệm viết sách cho người mới bắt đầu', 'kinh-nghiem-viet-sach-cho-nguoi-moi-bat-dau', 1, 1, 1, 0, 'Kinh nghiệm viết sách cho người mới bắt đầu', '2021-01-09__hand-book-light-black-and-white-white-photography-860875-pxherecom.jpg', '<h1>Kinh nghiệm viết s&aacute;ch cho người mới bắt đầu</h1>\r\n\r\n<p><img alt=\"\" src=\"https://www.elle.vn/wp-content/uploads/2017/04/29/ELLE-Team-255x255.jpg\" /></p>\r\n\r\n<p>Bi&ecirc;n tập&nbsp;<a href=\"https://www.elle.vn/u/elle-freelancer\" rel=\"author\" title=\"Posts by ELLE Team\">ELLE Team</a></p>\r\n\r\n<p>Xuất bản:&nbsp;13/09/2018 13:00:18&nbsp;| Chỉnh sửa:&nbsp;13/09/2018 12:05:33</p>\r\n\r\n<p>Người mới viết s&aacute;ch lần đầu ắt hẳn bối rối v&igrave; kh&ocirc;ng biết bắt đầu từ đ&acirc;u. Đừng lo lắng, h&atilde;y c&ugrave;ng ELLE t&igrave;m hiểu một số kinh nghiệm hữu &iacute;ch sau đ&acirc;y, bạn nh&eacute;.</p>\r\n\r\n<p>Chắc hẳn nhiều người trong ch&uacute;ng ta đang ấp ủ khao kh&aacute;t viết một cuốn s&aacute;ch. C&oacute; người từng n&oacute;i:&nbsp;<em>&ldquo;Nếu bạn đọc s&aacute;ch một c&aacute;ch bền bỉ, sẽ đến l&uacute;c bạn bị th&ocirc;i th&uacute;c kh&ocirc;ng ngừng bởi &yacute; muốn viết n&ecirc;n cuốn s&aacute;ch của ri&ecirc;ng m&igrave;nh&rdquo;</em>. Thế nhưng, khi mới bắt đầu, bạn sẽ dễ loay hoay v&agrave; kh&ocirc;ng biết phải viết như thế n&agrave;o. Một số t&aacute;c giả s&aacute;ch th&agrave;nh c&ocirc;ng dưới đ&acirc;y sẽ m&aacute;ch bạn từng bước cũng như kinh nghiệm thực tế của họ để gi&uacute;p bạn bắt đầu con đường viết s&aacute;ch của m&igrave;nh.</p>\r\n\r\n<h3>ĐẶT RA CAM KẾT VỚI CH&Iacute;NH M&Igrave;NH</h3>\r\n\r\n<p><img alt=\"elle việt nam viết sách 1\" src=\"https://www.elle.vn/wp-content/uploads/2018/08/11/elle-viet-nam-viet-sach-Unsplash-16-1024x683.jpg\" style=\"height:3744px; width:5616px\" /></p>\r\n\r\n<p>(Ảnh: Unsplash)</p>\r\n\r\n<p>Bước đầu ti&ecirc;n để viết một cuốn s&aacute;ch l&agrave; tin rằng bạn sẽ l&agrave;m được. Cho d&ugrave; bạn muốn viết một cuốn<a href=\"https://www.elle.vn/the-gioi-van-hoa/nhung-cau-noi-hay-buoc-ra-tu-tieu-thuyet-ngon-tinh\">&nbsp;tiểu thuyết</a>, truyện ngắn hay chỉ đơn giản l&agrave; một cuốn s&aacute;ch chia sẻ kinh nghiệm của bản th&acirc;n, bạn cần bồi dưỡng sự tự tin v&agrave; tự cam kết với ch&iacute;nh m&igrave;nh. T&aacute;c giả v&agrave; chuy&ecirc;n gia tư vấn&nbsp;Bryan Collins khuy&ecirc;n rằng: bạn n&ecirc;n cam kết việc viết s&aacute;ch như một c&ocirc;ng việc h&agrave;ng ng&agrave;y v&agrave; đưa n&oacute; v&agrave;o thời gian biểu của bạn. Nếu đủ&nbsp;<a href=\"https://www.elle.vn/bi-quyet-song/elle-lang-nghe-ban-ban-co-dam-that-bai-khi-theo-duoi-dam-me\">đam m&ecirc;&nbsp;</a>v&agrave; quyết t&acirc;m, kh&ocirc;ng qu&aacute; kh&oacute; khăn để bạn sẵn s&agrave;ng thức dậy sớm v&agrave;o buổi s&aacute;ng hay ngủ muộn một ch&uacute;t v&agrave;o ban đ&ecirc;m để d&agrave;nh thời gian cho việc viết l&aacute;ch. H&atilde;y cố gắng d&agrave;nh sự ưu ti&ecirc;n cho cuốn s&aacute;ch của m&igrave;nh.</p>\r\n\r\n<h3>SOẠN THẢO D&Agrave;N &Yacute; VỚI BỐ CỤC CH&Iacute;NH &ndash; PHỤ R&Otilde; R&Agrave;NG</h3>\r\n\r\n<p>Sau khi đặt ra cam kết v&agrave; biến việc viết s&aacute;ch th&agrave;nh một th&oacute;i quen h&agrave;ng ng&agrave;y, bước tiếp theo l&agrave; x&aacute;c định &yacute; tưởng ch&iacute;nh cũng như soạn thảo ra một d&agrave;n &yacute; cho cuốn s&aacute;ch của m&igrave;nh. Bạn n&ecirc;n chia &yacute; tưởng chủ đề lớn th&agrave;nh từng phần nhỏ hoặc từng chương. Phương ph&aacute;p n&agrave;y c&oacute; nhiều lợi &iacute;ch. Đầu ti&ecirc;n, n&oacute; gi&uacute;p cuốn s&aacute;ch của bạn c&oacute; hệ thống hơn. Thứ hai, thay v&igrave; dễ &ldquo;lao đầu&rdquo; v&agrave;o việc triển khai chi tiết ngay từ đầu để rồi bế tắc v&igrave; b&iacute; tưởng, một d&agrave;n &yacute; c&oacute; ch&iacute;nh &ndash; phụ r&otilde; r&agrave;ng sẽ gi&uacute;p bạn kh&ocirc;ng bị rối v&agrave; rơi v&agrave;o t&igrave;nh trạng mất hứng khi đang viết dở dang.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"https://www.elle.vn/the-gioi-van-hoa/tieu-thuyet-vien-tuong-hay-nhat\" rel=\"article_gallery\" title=\"13 bộ tiểu thuyết viễn tưởng tuyệt hay cho nàng mê đọc sách\"><img alt=\"13 bộ tiểu thuyết viễn tưởng tuyệt hay cho nàng mê đọc sách\" src=\"https://www.elle.vn/wp-content/uploads/2018/07/01/elle-viet-nam-vien-tuong-0-445x250.jpg\" /></a></p>\r\n\r\n<p><a href=\"https://www.elle.vn/the-gioi-van-hoa/tieu-thuyet-vien-tuong-hay-nhat\" title=\"13 bộ tiểu thuyết viễn tưởng tuyệt hay cho nàng mê đọc sách\">13 bộ tiểu thuyết viễn tưởng tuyệt hay cho n&agrave;ng m&ecirc; đọc s&aacute;ch</a></p>\r\n\r\n<p>Với n&agrave;ng m&ecirc; đọc, sẽ rất tuyệt vời khi thưởng thức cuốn s&aacute;ch hay, nhất l&agrave; những cuốn s&aacute;ch th&uacute; vị thuộc d&ograve;ng văn học viễn tưởng.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>HỌC HỎI KIẾN THỨC V&Agrave; R&Egrave;N LUYỆN MỘT SỐ KỸ NĂNG HỖ TRỢ CHO VIỆC VIẾT S&Aacute;CH</h3>\r\n\r\n<p><img alt=\"elle việt nam viết sách 3\" src=\"https://www.elle.vn/wp-content/uploads/2018/08/11/elle-viet-nam-viet-sach-Unsplash-14-1024x778.jpg\" style=\"height:4016px; width:5288px\" /></p>\r\n\r\n<p>(Ảnh: Unsplash)</p>\r\n\r\n<p>Lisa Bogart, t&aacute;c giả của cuốn s&aacute;ch&nbsp;<em>Knit with Love&nbsp;</em>c&ugrave;ng nhiều cuốn s&aacute;ch b&aacute;n chạy kh&aacute;c, đ&atilde; chia sẻ rằng c&ocirc; kh&ocirc;ng hề c&oacute; bất cứ kinh nghiệm n&agrave;o khi bắt đầu viết cuốn s&aacute;ch đầu ti&ecirc;n. Chuy&ecirc;n m&ocirc;n của c&ocirc; ấy kh&ocirc;ng phải c&ocirc;ng việc viết l&aacute;ch. Thế nhưng, b&ugrave; lại, c&ocirc; c&oacute;&nbsp;một ước mơ lớn: ước mơ được xuất bản một cuốn s&aacute;ch của ri&ecirc;ng m&igrave;nh c&ugrave;ng l&ograve;ng ham học hỏi. C&ocirc; n&oacute;i:<em>&nbsp;&ldquo;Kh&ocirc;ng c&oacute; một lối tắt n&agrave;o dẫn đến th&agrave;nh c&ocirc;ng cả. T&ocirc;i đ&atilde; học tất cả những kiến thức v&agrave; kỹ năng cần thiết trong qu&aacute; tr&igrave;nh theo đuổi ước mơ viết s&aacute;ch của m&igrave;nh. C&ugrave;ng với đ&oacute;, t&ocirc;i cũng c&acirc;n nhắc xem đối tượng độc giả của m&igrave;nh l&agrave; ai v&agrave; t&igrave;m hiểu l&agrave;m thế n&agrave;o được thu h&uacute;t họ&rdquo;</em>.</p>\r\n\r\n<h3>TỰ ĐẶT RA DEADLINE HO&Agrave;N TH&Agrave;NH</h3>\r\n\r\n<p><img alt=\"elle việt nam viết sách 4\" src=\"https://www.elle.vn/wp-content/uploads/2018/08/11/elle-viet-nam-viet-sach-Unsplash-15-1024x683.jpg\" style=\"height:3840px; width:5760px\" /></p>\r\n\r\n<p>(Ảnh: Unsplash)</p>\r\n\r\n<p>Khi bắt đầu viết một cuốn s&aacute;ch, bạn c&oacute; thể nghĩ rằng chỉ cần viết mỗi ng&agrave;y l&agrave; c&oacute; thể ho&agrave;n th&agrave;nh. Thế nhưng, nếu kh&ocirc;ng c&oacute; một deadline cụ thể, bạn dễ rơi v&agrave;o t&igrave;nh trạng tr&igrave; ho&atilde;n v&agrave; kh&ocirc;ng kỷ luật với bản th&acirc;n, từ đ&oacute; dẫn đến t&igrave;nh trạng viết m&atilde;i m&agrave; kh&ocirc;ng kết th&uacute;c. V&igrave; thế, bạn n&ecirc;n đặt ra một deadline cụ thể v&agrave; khả thi để tự th&uacute;c đẩy bản th&acirc;n m&igrave;nh.</p>\r\n\r\n<h3>TỰ LẬP CHO M&Igrave;NH THỜI GIAN BIỂU</h3>\r\n\r\n<p><img alt=\"elle việt nam viết sách 5\" src=\"https://www.elle.vn/wp-content/uploads/2018/08/11/elle-viet-nam-viet-sach-Unsplash-1-1024x1532.jpg\" style=\"height:2992px; width:2000px\" /></p>\r\n\r\n<p>(Ảnh: Unsplash)</p>\r\n\r\n<p>B&ecirc;n cạnh đặt ra deadline ho&agrave;n th&agrave;nh, bạn cũng n&ecirc;n tạo một thời gian biểu cho việc&nbsp;<a href=\"https://www.elle.vn/quan-diem-cong-dong/nhung-cau-noi-hay-ve-nghe-bao-nhan-ngay-bao-chi-vn-21-6\">viết l&aacute;ch</a>&nbsp;của m&igrave;nh. Bạn c&oacute; thể ghi ch&uacute; v&agrave;o cuốn lịch để b&agrave;n hoặc d&ugrave;ng chức năng b&aacute;o thức tr&ecirc;n điện thoại để tự nhắc nhở m&igrave;nh. Nếu bạn khiến việc viết s&aacute;ch trở th&agrave;nh một th&oacute;i quen h&agrave;ng ng&agrave;y, n&oacute; sẽ tự động trở n&ecirc;n gắn b&oacute; với bạn. V&agrave; tất nhi&ecirc;n, thời gian bạn được cầm tr&ecirc;n tay cuốn s&aacute;ch ho&agrave;n thiện của ch&iacute;nh m&igrave;nh cũng sẽ sớm hơn.</p>\r\n\r\n<h3>VIẾT RA NHỮNG GẠCH ĐẦU D&Ograve;NG</h3>\r\n\r\n<p><img alt=\"elle việt nam viết sách 6\" src=\"https://www.elle.vn/wp-content/uploads/2018/08/11/elle-viet-nam-viet-sach-Unsplash-12-1024x769.jpg\" style=\"height:3448px; width:4592px\" /></p>\r\n\r\n<p>(Ảnh: Unsplash)</p>\r\n\r\n<p>T&aacute;c giả Peggy Frezon đưa ra lời khuy&ecirc;n cho những người bắt mới đầu viết s&aacute;ch:&nbsp;<em>&ldquo;Bạn n&ecirc;n d&agrave;nh thời gian để x&acirc;y dựng một bản thảo hấp dẫn bằng c&aacute;ch gạch đầu c&aacute;c &yacute; tưởng v&agrave; x&acirc;y dựng một bản đồ cho c&acirc;u chuyện. Điều n&agrave;y sẽ gi&uacute;p bạn tạo ra sự gắn kết của c&aacute;c t&igrave;nh tiết b&ecirc;n trong một c&acirc;u chuyện tổng thể cũng như khiến mọi thứ logic v&agrave; dễ hiểu hơn&rdquo;.</em></p>\r\n\r\n<h3>TRIỂN KHAI C&Aacute;C &Yacute; TƯỞNG CHI TIẾT</h3>\r\n\r\n<p>Sau khi gạch đầu d&ograve;ng những &yacute; tưởng sơ khai, giờ l&agrave; l&uacute;c bạn triển khai ch&uacute;ng. Bạn cần t&igrave;m ra hướng ph&aacute;t triển của c&aacute;c cốt truyện, x&aacute;c định c&aacute;c mốc thời gian ch&iacute;nh, tạo dựng chủ đề cũng như x&acirc;y dựng c&aacute;c chi tiết cụ thể&hellip; Th&ecirc;m v&agrave;o đ&oacute;, ch&uacute; &yacute; đến văn phạm, c&aacute;ch h&agrave;nh văn, c&acirc;u c&uacute; cũng như lỗi ch&iacute;nh tả cũng n&ecirc;n được ch&uacute; trọng trong bước n&agrave;y.</p>\r\n\r\n<h3>VIẾT NHƯ MỘT CHIẾN BINH</h3>\r\n\r\n<p>C&aacute;c t&aacute;c giả s&aacute;ch biết rằng việc đối diện với những trang Word trống ng&agrave;y n&agrave;y qua ng&agrave;y kh&aacute;c l&agrave; một sự kh&oacute; khăn v&agrave; &aacute;p lực. V&igrave; thế, h&atilde;y trang bị cho bản th&acirc;n khả năng chịu đựng c&ugrave;ng việc tự động vi&ecirc;n khuyến kh&iacute;ch. Nhiều nh&agrave; văn c&ograve;n d&ugrave;ng một vật may mắn như c&acirc;y b&uacute;t đẹp để tự th&uacute;c đẩy tinh thần cho ch&iacute;nh m&igrave;nh.</p>\r\n\r\n<h3>HO&Agrave;N TH&Agrave;NH NHỮNG BẢN NH&Aacute;P LỘN XỘN ĐẦU TI&Ecirc;N</h3>\r\n\r\n<p><img alt=\"elle việt nam viết sách 9\" src=\"https://www.elle.vn/wp-content/uploads/2018/08/11/elle-viet-nam-viet-sach-Unsplash-4-1024x1379.jpg\" style=\"height:5409px; width:4016px\" /></p>\r\n\r\n<p>(Ảnh: Unsplash)</p>\r\n\r\n<p>Nếu bạn lo lắng qu&aacute; nhiều về sự ho&agrave;n hảo, bạn c&oacute; thể kh&ocirc;ng bao giờ ho&agrave;n th&agrave;nh được cuốn s&aacute;ch của m&igrave;nh. Đừng qu&aacute; đ&ograve;i hỏi sự cầu to&agrave;n v&agrave; xuất sắc ngay từ đầu. Cứ thoải m&aacute;i viết v&agrave; bạn c&oacute; thể sửa đổi ch&uacute;ng sau n&agrave;y. Tr&ecirc;n thực tế, đ&oacute; cũng l&agrave; một trong những ch&igrave;a kh&oacute;a để viết s&aacute;ch. Đối với c&aacute;c bản nh&aacute;p đầu ti&ecirc;n, bạn chỉ cần ho&agrave;n th&agrave;nh việc viết, thậm ch&iacute; khi bạn đang cảm thấy mệt mỏi v&agrave; mất hứng. L&uacute;c n&agrave;y bạn chỉ cần ho&agrave;n th&agrave;nh đ&uacute;ng deadline v&agrave; thời gian biểu đ&atilde; đặt ra. Bản nh&aacute;p đầu ti&ecirc;n của bạn c&oacute; thể chỉ l&agrave; một mớ hỗn độn v&agrave; kh&ocirc;ng thể d&ugrave;ng được. Nhưng kh&ocirc;ng sao cả, bạn c&oacute; thể sửa n&oacute; trong ng&agrave;y h&ocirc;m sau, khi t&acirc;m tr&iacute; bạn s&aacute;ng suốt hơn v&agrave; c&oacute; thể nh&igrave;n ra một số vấn đề m&agrave; trước đ&oacute; m&igrave;nh đ&atilde; kh&ocirc;ng nhận ra.</p>\r\n\r\n<h3>LU&Ocirc;N LU&Ocirc;N ĐỌC V&Agrave; SỬA LẠI NHỮNG G&Igrave; Đ&Atilde; VIẾT</h3>\r\n\r\n<p>Hầu hết c&aacute;c nh&agrave; văn đều trải qua nhiều lần sửa đổi v&agrave; viết lại t&aacute;c phẩm của m&igrave;nh trước khi cho ra đời bản thảo ch&iacute;nh thức. V&igrave; thế, h&atilde;y th&ecirc;m v&agrave;o lịch tr&igrave;nh một khoảng thời gian th&iacute;ch hợp để sửa đổi bản thảo của bạn sao cho cuốn s&aacute;ch của bạn thật hay v&agrave; tươi mới nhất.</p>\r\n\r\n<h3>NGHI&Ecirc;M T&Uacute;C XEM X&Eacute;T C&Aacute;C PHẢN HỒI</h3>\r\n\r\n<p>H&atilde;y nghi&ecirc;m t&uacute;c xem x&eacute;t việc thu&ecirc; một bi&ecirc;n tập vi&ecirc;n c&oacute; kinh nghiệm. Ngay cả những nh&agrave; văn chuy&ecirc;n nghiệp nhất cũng cần &yacute; kiến của một chuy&ecirc;n gia. Nhiều người sẵn s&agrave;ng trả tiền để đổi lại những phản hồi gi&aacute; trị từ bi&ecirc;n tập vi&ecirc;n chuy&ecirc;n nghiệp trong thể loại s&aacute;ch họ đang viết. Điều n&agrave;y gi&uacute;p họ nhanh ch&oacute;ng nh&igrave;n ra những vấn đề v&agrave; tiềm năng cần khai th&aacute;c th&ecirc;m m&agrave; họ kh&ocirc;ng thể nhận ra.</p>\r\n\r\n<h3>SỬA ĐỔI V&Agrave; VIẾT LẠI MỘT BẢN THẢO KH&Aacute;C</h3>\r\n\r\n<p><img alt=\"elle việt nam viết sách 10\" src=\"https://www.elle.vn/wp-content/uploads/2018/08/11/elle-viet-nam-viet-sach-Unsplash-11-1024x683.jpg\" style=\"height:4320px; width:6480px\" /></p>\r\n\r\n<p>(Ảnh: Unsplash)</p>\r\n\r\n<p>Sau khi xem x&eacute;t phản hồi, bạn c&oacute; thể nhận ra nhiều vấn đề v&agrave; lỗi trong bản thảo cuốn s&aacute;ch của m&igrave;nh. Đừng ngần ngại việc viết lại một bản thảo kh&aacute;c. Việc viết một bản mới sẽ gi&uacute;p t&acirc;m tr&iacute; bạn s&aacute;ng suốt hơn, thậm ch&iacute; s&aacute;ng tạo nhiều hơn c&aacute;c &yacute; tưởng mới cho cuốn s&aacute;ch của m&igrave;nh. B&ecirc;n cạnh đ&oacute;, c&acirc;u văn cũng như ngữ ph&aacute;p v&agrave; c&aacute;ch d&ugrave;ng từ của bạn cũng sẽ mượt m&agrave; hơn rất nhiều đấy.</p>\r\n\r\n<h3>T&Igrave;M KIẾM ĐỐI T&Aacute;C XUẤT BẢN</h3>\r\n\r\n<p>Sau khi ho&agrave;n th&agrave;nh xong c&aacute;c bước tr&ecirc;n, đ&acirc;y l&agrave; l&uacute;c để cuốn s&aacute;ch của bạn đến tay độc giả. Nhưng trước hết, bạn phải t&igrave;m một nh&agrave; xuất bản chấp nhận ph&aacute;t h&agrave;nh cuốn s&aacute;ch t&acirc;m huyết của bạn. Harry Bingham đến từ c&acirc;u lạc bộ Jericho Writers khuy&ecirc;n rằng bạn n&ecirc;n khoanh v&ugrave;ng mục ti&ecirc;u t&igrave;m kiếm nh&agrave; xuất bản cho m&igrave;nh. H&atilde;y gửi từ 8 đến 12 nh&agrave; xuất bản để bắt đầu v&agrave; gửi cho họ một bức thư đề nghị c&ugrave;ng bản t&oacute;m tắt cuốn s&aacute;ch tuyệt vời của bạn. Nếu c&oacute; nh&agrave; xuất bản n&agrave;o th&iacute;ch cuốn s&aacute;ch của bạn, họ sẽ y&ecirc;u cầu bạn gửi c&aacute;c trang mẫu, chương mẫu thậm ch&iacute; l&agrave; bản thảo đầy đủ v&agrave; bản thảo cuối c&ugrave;ng trước khi quyết định xuất bản rộng r&atilde;i đến c&ocirc;ng ch&uacute;ng.</p>\r\n\r\n<p>&mdash;</p>\r\n\r\n<p><strong>Xem th&ecirc;m:&nbsp;</strong></p>', '2021-01-09 06:52:34', 1, 1, '2021-01-24 00:13:22');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `attributes`
--

CREATE TABLE `attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `atb_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `atb_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `atb_type` tinyint(4) NOT NULL DEFAULT 0,
  `atb_category_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `attributes`
--

INSERT INTO `attributes` (`id`, `atb_name`, `atb_slug`, `atb_type`, `atb_category_id`, `created_at`, `updated_at`) VALUES
(1, 'Tiểu thuyết trinh thám', 'tieu-thuyet-trinh-tham', 1, 5, '2020-07-17 19:57:53', NULL),
(2, 'Kỹ thuật', 'ky-thuat', 4, 3, '2020-07-17 19:58:14', NULL),
(3, 'Tiểu thuyết chữ tình', 'tieu-thuyet-chu-tinh', 1, 5, '2020-07-17 19:58:56', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `c_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_banner` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_parent_id` int(11) NOT NULL DEFAULT 0,
  `c_hot` tinyint(4) NOT NULL DEFAULT 0,
  `c_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `c_name`, `c_slug`, `c_avatar`, `c_banner`, `c_description`, `c_parent_id`, `c_hot`, `c_status`, `created_at`, `updated_at`) VALUES
(1, 'Sách  giáo khoa', 'sach-giao-khoa', '2021-01-09__2b48b29abd18febe3b1f92a85913ce39-simple-book-icon.png', NULL, NULL, 0, 0, 1, '2020-07-17 13:09:48', '2021-01-14 13:46:51'),
(2, 'Sách truyện tranh', 'sach-truyen-tranh', '2021-01-09__2b48b29abd18febe3b1f92a85913ce39-simple-book-icon.png', NULL, NULL, 2, 0, 1, '2020-07-17 13:09:57', '2021-01-14 13:46:52'),
(3, 'Khoa học - công nghệ', 'khoa-hoc-cong-nghe', '2021-01-09__2b48b29abd18febe3b1f92a85913ce39-simple-book-icon.png', NULL, NULL, 3, 0, 1, '2020-07-17 13:10:11', '2021-01-14 13:46:53'),
(4, 'Kiến trúc - mỹ thuật', 'kien-truc-my-thuat', '2021-01-09__2b48b29abd18febe3b1f92a85913ce39-simple-book-icon.png', NULL, NULL, 0, 0, 1, '2020-07-17 13:10:22', '2021-01-14 13:46:55'),
(5, 'Tiểu Thuyết', 'tieu-thuyet', '2021-01-09__2b48b29abd18febe3b1f92a85913ce39-simple-book-icon.png', NULL, NULL, 0, 0, 0, '2020-07-17 19:18:17', '2021-01-24 04:30:03'),
(6, 'Sách thiếu nhi', 'sach-thieu-nhi', '2021-01-09__2b48b29abd18febe3b1f92a85913ce39-simple-book-icon.png', NULL, NULL, 0, 0, 1, '2020-07-17 19:18:38', '2021-01-14 13:45:43'),
(7, 'Sách ngoại ngữ', 'sach-ngoai-ngu', '2021-01-09__2b48b29abd18febe3b1f92a85913ce39-simple-book-icon.png', NULL, NULL, 0, 1, 1, '2020-07-17 19:19:02', '2021-01-14 13:47:31'),
(14, 'Ngữ văn 6', 'ngu-van-6', '2021-01-14__2b48b29abd18febe3b1f92a85913ce39-simple-book-icon.png', NULL, NULL, 1, 0, 1, '2021-01-14 13:40:37', '2021-01-14 13:43:20'),
(16, 'Sword art online', 'sword-art-online', '2021-01-14__2b48b29abd18febe3b1f92a85913ce39-simple-book-icon.png', NULL, NULL, 17, 0, 1, '2021-01-14 13:52:23', '2021-01-14 13:59:45'),
(17, 'Truyện tranh', 'truyen-tranh', '2021-01-14__2b48b29abd18febe3b1f92a85913ce39-simple-book-icon.png', NULL, NULL, 0, 0, 1, '2021-01-14 13:59:00', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cmt_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cmt_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cmt_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cmt_parent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_product_id` int(11) NOT NULL DEFAULT 0,
  `cmt_admin_id` int(11) NOT NULL DEFAULT 0,
  `cmt_user_id` int(11) NOT NULL DEFAULT 0,
  `cmt_like` int(11) NOT NULL DEFAULT 0,
  `cmt_disk_like` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comments`
--

INSERT INTO `comments` (`id`, `cmt_name`, `cmt_email`, `cmt_content`, `cmt_parent_id`, `cmt_product_id`, `cmt_admin_id`, `cmt_user_id`, `cmt_like`, `cmt_disk_like`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 'sách rất hay ạ', 0, 4, 0, 6, 0, 0, '2020-07-18 01:03:50', NULL),
(2, NULL, NULL, 'yolo', 0, 3, 0, 8, 0, 0, '2021-01-03 15:36:35', NULL),
(4, NULL, NULL, 'ok', 0, 4, 0, 9, 0, 0, '2021-01-14 10:18:48', NULL),
(5, NULL, NULL, 'ghjkl;', 0, 2, 0, 8, 0, 0, '2021-03-09 06:25:15', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `e_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `e_banner` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `e_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `e_position_1` tinyint(4) NOT NULL DEFAULT 0,
  `e_position_2` tinyint(4) NOT NULL DEFAULT 0,
  `e_position_3` tinyint(4) NOT NULL DEFAULT 0,
  `e_position_4` tinyint(4) NOT NULL DEFAULT 0,
  `e_position_5` tinyint(4) DEFAULT 0,
  `e_position_6` tinyint(4) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `events`
--

INSERT INTO `events` (`id`, `e_name`, `e_banner`, `e_link`, `e_position_1`, `e_position_2`, `e_position_3`, `e_position_4`, `e_position_5`, `e_position_6`, `created_at`, `updated_at`) VALUES
(1, 'event1', '2021-01-09__banner-web-40-e17d0e9af67e4cabaeb14097d30470a0.png', 'https://www.google.com/', 1, 0, 0, 0, 0, 0, '2021-01-13 18:44:39', '2021-01-13 18:44:39'),
(2, 'event2', '2021-01-09__1283.png', '/', 0, 1, 0, 0, 1, 0, '2021-01-24 03:25:20', '2021-01-24 03:25:20'),
(3, 'event3', '2021-01-09__1.jpg', '/', 0, 0, 1, 0, 0, 1, '2021-01-24 03:25:34', '2021-01-24 03:25:34'),
(4, 'event4', '2021-01-09__fictionbanner.jpg', '/', 0, 0, 0, 1, 0, 0, '2021-01-23 19:55:11', '2021-01-23 19:55:11');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `import_histories`
--

CREATE TABLE `import_histories` (
  `id` int(10) UNSIGNED NOT NULL,
  `thanhtoan` bigint(20) DEFAULT 0,
  `id_invoice` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `import_histories`
--

INSERT INTO `import_histories` (`id`, `thanhtoan`, `id_invoice`, `created_at`, `updated_at`) VALUES
(1, 12500000, 1, '2020-07-17 07:49:47', '2020-07-17 07:49:47'),
(2, 5000000, 2, '2020-07-17 12:24:30', '2020-07-17 12:24:30'),
(3, 0, 3, '2020-07-17 12:24:30', '2020-07-17 12:24:30'),
(4, 5250000, 4, '2020-07-17 12:24:30', '2020-07-17 12:24:30'),
(5, NULL, 3, '2020-07-17 12:26:29', '2020-07-17 12:26:29'),
(6, 0, 5, '2020-07-17 12:27:22', '2020-07-17 12:27:22'),
(7, 1500000, 5, '2020-07-17 12:27:40', '2020-07-17 12:27:40'),
(8, 0, 6, '2020-07-17 12:28:37', '2020-07-17 12:28:37'),
(9, 4000000, 6, '2020-07-17 12:28:48', '2020-07-17 12:28:48'),
(10, 1000000, 7, '2020-07-17 18:13:51', '2020-07-17 18:13:51'),
(11, 500000, 7, '2020-07-17 18:14:22', '2020-07-17 18:14:22'),
(12, 900000, 8, '2020-07-20 08:31:12', '2020-07-20 08:31:12'),
(13, 0, 9, '2020-07-22 10:36:30', '2020-07-22 10:36:30'),
(14, 0, 10, '2020-07-22 10:36:30', '2020-07-22 10:36:30'),
(15, 50000, 21, '2021-01-11 18:19:05', '2021-01-11 18:19:05'),
(30, 20000, 13, '2021-01-11 18:39:24', '2021-01-11 18:39:24'),
(31, 0, 22, '2021-01-12 08:05:54', '2021-01-12 08:05:54'),
(32, 40000, 22, '2021-01-12 09:50:00', '2021-01-12 09:50:00'),
(33, 0, 22, '2021-01-12 10:16:26', '2021-01-12 10:16:26'),
(34, 0, 23, '2021-01-12 10:16:58', '2021-01-12 10:16:58'),
(35, 0, 22, '2021-01-12 10:20:52', '2021-01-12 10:20:52'),
(36, 0, 23, '2021-01-12 10:21:11', '2021-01-12 10:21:11'),
(37, 0, 24, '2021-01-12 10:21:20', '2021-01-12 10:21:20'),
(38, 0, 25, '2021-01-12 10:24:20', '2021-01-12 10:24:20'),
(39, 0, 26, '2021-01-12 10:25:23', '2021-01-12 10:25:23'),
(40, 0, 28, '2021-01-12 10:47:31', '2021-01-12 10:47:31'),
(41, 0, 29, '2021-01-12 10:48:06', '2021-01-12 10:48:06'),
(42, 0, 30, '2021-01-12 11:26:29', '2021-01-12 11:26:29'),
(43, 0, 31, '2021-01-13 18:21:55', '2021-01-13 18:21:55'),
(44, 0, 32, '2021-01-13 18:55:58', '2021-01-13 18:55:58'),
(45, 0, 33, '2021-01-13 19:01:05', '2021-01-13 19:01:05'),
(46, 0, 34, '2021-01-14 08:40:58', '2021-01-14 08:40:58'),
(47, 40000, 35, '2021-01-14 11:57:42', '2021-01-14 11:57:42'),
(48, 90000, 36, '2021-01-23 18:52:29', '2021-01-23 18:52:29'),
(49, -320000, 37, '2021-01-23 18:53:58', '2021-01-23 18:53:58'),
(50, 0, 38, '2021-01-23 18:54:10', '2021-01-23 18:54:10'),
(51, 0, 39, '2021-01-23 18:54:21', '2021-01-23 18:54:21'),
(52, 0, 40, '2021-01-23 18:54:58', '2021-01-23 18:54:58');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `invoice_entered`
--

CREATE TABLE `invoice_entered` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `NgaySX` datetime DEFAULT current_timestamp(),
  `Hansudung` datetime DEFAULT NULL,
  `ie_suppliere` int(11) NOT NULL DEFAULT 0,
  `ie_status` tinyint(4) NOT NULL DEFAULT 0,
  `ie_total_money` int(11) NOT NULL DEFAULT 0,
  `ie_product_id` int(11) NOT NULL DEFAULT 0,
  `ie_number` int(11) NOT NULL DEFAULT 0,
  `ie_number_sold` int(11) NOT NULL DEFAULT 0,
  `ie_money` int(11) NOT NULL DEFAULT 0,
  `ie_the_advance` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `invoice_entered`
--

INSERT INTO `invoice_entered` (`id`, `NgaySX`, `Hansudung`, `ie_suppliere`, `ie_status`, `ie_total_money`, `ie_product_id`, `ie_number`, `ie_number_sold`, `ie_money`, `ie_the_advance`, `created_at`, `updated_at`) VALUES
(1, '2020-07-18 00:00:00', NULL, 3, 0, 12500000, 1, 50, 2, 250000, 12500000, '2020-07-17 14:49:47', '2021-01-06 12:30:51'),
(2, '2020-07-18 00:00:00', NULL, 3, 0, 5000000, 4, 100, 5, 50000, 5000000, '2020-07-17 19:24:29', '2021-01-09 17:31:48'),
(5, '2020-07-18 00:00:00', NULL, 3, 0, 3000000, 3, 60, 6, 50000, 1500000, '2020-07-17 19:27:22', '2021-01-08 19:42:04'),
(6, NULL, NULL, 4, 0, 6250000, 2, 250, 6, 25000, 4000000, '2020-07-17 19:28:37', '2021-01-06 12:30:51'),
(7, NULL, NULL, 3, 0, 1800000, 6, 60, 0, 30000, 1500000, '2020-07-18 01:13:50', '2020-07-18 01:14:22'),
(8, '2020-07-22 00:00:00', '2021-04-17 00:00:00', 3, 0, 900000, 7, 10, 0, 90000, 900000, '2020-07-20 15:31:12', '2020-07-20 15:31:12'),
(9, '2020-07-24 00:00:00', '2020-07-24 00:00:00', 3, 0, 500000, 3, 10, 0, 50000, 0, '2020-07-22 17:36:30', '2020-07-22 17:36:30'),
(10, NULL, NULL, 3, 0, 150000, 3, 15, 0, 10000, 0, '2020-07-22 17:36:30', '2020-07-22 17:36:30'),
(11, '2021-01-03 00:00:00', '2021-01-03 00:00:00', 3, 0, 300000, 8, 6, 0, 50000, 50000, '2021-01-03 12:48:11', '2021-01-03 12:48:11'),
(12, '2021-01-03 00:00:00', '2021-01-28 00:00:00', 3, 0, 750000, 11, 15, 0, 50000, 750000, '2021-01-09 06:20:16', '2021-01-09 06:20:16'),
(13, '2021-01-09 00:00:00', '2021-01-31 00:00:00', 3, 0, 420000, 10, 21, 0, 20000, 270000, '2021-01-09 06:20:16', '2021-01-11 18:39:24'),
(14, '2021-01-20 00:00:00', '2021-01-31 00:00:00', 3, 0, 513000, 9, 27, 0, 19000, 0, '2021-01-09 06:20:16', '2021-01-09 06:20:16'),
(15, '2021-01-19 00:00:00', '2021-01-20 00:00:00', 4, 0, 1275000, 10, 17, 0, 75000, 1275000, '2021-01-09 06:24:54', '2021-01-09 06:24:54'),
(16, '2021-01-15 00:00:00', '2021-01-27 00:00:00', 4, 0, 770000, 9, 14, 0, 55000, 790000, '2021-01-09 06:24:55', '2021-01-09 06:47:55'),
(17, '2021-01-12 00:00:00', '2021-03-23 00:00:00', 3, 0, 450000, 12, 10, 0, 45000, 450000, '2021-01-09 06:40:09', '2021-01-09 06:40:09'),
(18, '2021-01-12 00:00:00', '2021-06-16 00:00:00', 3, 0, 500000, 12, 10, 0, 50000, 500000, '2021-01-09 06:42:54', '2021-01-09 06:42:54'),
(19, '2021-01-12 00:00:00', '2021-03-23 00:00:00', 3, 0, 300000, 9, 6, 0, 50000, 300000, '2021-01-09 06:48:52', '2021-01-09 06:48:52'),
(20, '2021-01-12 00:00:00', '2021-03-23 00:00:00', 3, 0, 75000, 13, 5, 0, 15000, 75000, '2021-01-09 07:17:55', '2021-01-09 07:17:56'),
(21, '2021-01-12 00:00:00', '2021-01-28 00:00:00', 3, 0, 250000, 3, 5, 0, 50000, 250000, '2021-01-10 18:48:24', '2021-01-11 18:19:05'),
(22, '2021-01-03 00:00:00', '2021-02-18 00:00:00', 3, 0, 50000, 9, 1, 0, 50000, 0, '2021-01-12 10:20:52', '2021-01-12 10:20:52'),
(23, '2021-01-12 00:00:00', '2021-05-20 00:00:00', 3, 0, 0, 9, 1, 0, 0, 0, '2021-01-12 10:21:11', '2021-01-12 10:21:11'),
(24, '2021-01-12 00:00:00', '2021-05-20 00:00:00', 3, 0, 50000, 9, 1, 0, 50000, 0, '2021-01-12 10:21:20', '2021-01-12 10:21:20'),
(25, '2021-01-12 00:00:00', '2021-05-12 00:00:00', 3, 0, 40000, 9, 1, 0, 40000, 0, '2021-01-12 10:24:20', '2021-01-12 10:24:20'),
(28, '2021-01-12 00:00:00', '2021-03-12 00:00:00', 3, 0, 50000, 9, 1, 0, 50000, 0, '2021-01-12 10:47:31', '2021-01-12 10:47:31'),
(29, '2021-01-03 00:00:00', '2021-02-28 00:00:00', 3, 0, 50000, 7, 1, 0, 50000, 0, '2021-01-12 10:48:06', '2021-01-12 10:48:06'),
(30, '2021-01-12 00:00:00', '2021-04-13 00:00:00', 3, 0, 150000, 2, 1, 0, 150000, 0, '2021-01-12 11:26:29', '2021-01-12 11:26:29'),
(31, '2021-01-03 00:00:00', '2021-01-31 00:00:00', 3, 0, 15000, 14, 1, 2, 15000, 0, '2021-01-13 18:21:55', '2021-01-22 16:18:13'),
(32, '2021-01-19 00:00:00', '2021-11-23 00:00:00', 3, 0, 180000, 14, 9, 0, 20000, 0, '2021-01-13 18:55:58', '2021-01-13 18:55:58'),
(33, '2021-01-03 00:00:00', '2021-02-16 00:00:00', 3, 0, 60000, 15, 2, 0, 30000, 0, '2021-01-13 19:01:05', '2021-01-13 19:01:05'),
(34, '2021-01-12 00:00:00', '2021-07-15 00:00:00', 3, 0, 1000000, 15, 25, 0, 40000, 0, '2021-01-14 08:40:58', '2021-01-14 08:40:58'),
(35, '2021-01-12 00:00:00', '2021-01-30 00:00:00', 3, 0, 40000, 15, 1, 0, 40000, 40000, '2021-01-14 11:57:42', '2021-01-14 11:57:42'),
(36, '2021-01-12 00:00:00', '2021-03-16 00:00:00', 3, 0, 90000, 16, 6, 0, 15000, 90000, '2021-01-23 18:52:29', '2021-01-23 18:52:29'),
(37, '2021-01-12 00:00:00', '2022-01-06 00:00:00', 3, 0, -320000, 16, -4, 0, 80000, -320000, '2021-01-23 18:53:58', '2021-01-23 18:53:58'),
(38, '2021-01-12 00:00:00', '2022-01-06 00:00:00', 3, 0, 0, 16, 0, 0, 80000, 0, '2021-01-23 18:54:10', '2021-01-23 18:54:10'),
(39, '2021-01-12 00:00:00', '2022-01-06 00:00:00', 3, 0, 160000, 16, 2, 0, 80000, 0, '2021-01-23 18:54:21', '2021-01-23 18:54:21'),
(40, '2021-01-12 00:00:00', '2022-01-06 00:00:00', 3, 0, 40000, 16, 2, 0, 20000, 0, '2021-01-23 18:54:58', '2021-01-23 18:54:58');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `keywords`
--

CREATE TABLE `keywords` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `k_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `k_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `k_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `k_hot` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mn_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mn_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mn_avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mn_banner` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mn_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mn_hot` tinyint(4) NOT NULL DEFAULT 0,
  `mn_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menus`
--

INSERT INTO `menus` (`id`, `mn_name`, `mn_slug`, `mn_avatar`, `mn_banner`, `mn_description`, `mn_hot`, `mn_status`, `created_at`, `updated_at`) VALUES
(1, 'Tin tức mới', 'tin-tuc-moi', NULL, NULL, NULL, 0, 1, '2020-07-17 13:27:52', '2021-01-24 02:43:36');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `od_transaction_id` int(11) NOT NULL DEFAULT 0,
  `od_product_id` int(11) NOT NULL DEFAULT 0,
  `od_sale` int(11) NOT NULL DEFAULT 0,
  `od_qty` tinyint(4) NOT NULL DEFAULT 0,
  `od_price` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `od_transaction_id`, `od_product_id`, `od_sale`, `od_qty`, `od_price`, `created_at`, `updated_at`) VALUES
(1, 2, 4, 15, 3, 102000, '2020-07-17 20:06:21', NULL),
(2, 3, 3, 15, 4, 68000, '2020-07-18 01:02:27', NULL),
(5, 6, 3, 15, 2, 68000, '2021-01-08 19:39:59', NULL),
(6, 7, 2, 5, 1, 171000, '2021-01-09 07:13:59', NULL),
(8, 8, 2, 5, 1, 171000, '2021-01-09 07:19:38', NULL),
(9, 9, 4, 15, 1, 102000, '2021-01-09 07:20:43', NULL),
(10, 10, 9, 0, 1, 60000, '2021-01-12 08:37:40', NULL),
(12, 12, 9, 0, 1, 60000, '2021-01-12 08:52:45', NULL),
(13, 13, 3, 15, 1, 68000, '2021-01-12 08:58:51', NULL),
(14, 14, 15, 5, 3, 47500, '2021-01-14 08:42:37', NULL),
(15, 15, 2, 5, 1, 171000, '2021-01-14 14:16:13', NULL),
(16, 16, 14, 0, 2, 30000, '2021-01-22 16:16:32', NULL),
(17, 17, 15, 5, 2, 47500, '2021-01-23 15:53:56', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pro_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pro_price` int(11) NOT NULL DEFAULT 0,
  `pro_price_entry` int(11) NOT NULL DEFAULT 0 COMMENT 'giá nhập',
  `pro_category_id` int(11) NOT NULL DEFAULT 0,
  `pro_supplier_id` int(11) NOT NULL DEFAULT 0,
  `pro_admin_id` int(11) NOT NULL DEFAULT 0,
  `pro_sale` int(11) NOT NULL DEFAULT 0,
  `pro_avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_view` int(11) NOT NULL DEFAULT 0,
  `pro_hot` tinyint(4) NOT NULL DEFAULT 0,
  `pro_active` tinyint(4) NOT NULL DEFAULT 1,
  `pro_pay` int(11) NOT NULL DEFAULT 0,
  `pro_description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_review_total` int(11) NOT NULL DEFAULT 0,
  `pro_review_star` int(11) NOT NULL DEFAULT 0,
  `pro_age_review` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `pro_number` int(11) NOT NULL DEFAULT 0,
  `pro_import_goods` int(11) NOT NULL DEFAULT 0,
  `pro_number_import` int(11) NOT NULL DEFAULT 0,
  `pro_resistant` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_energy` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_country` tinyint(4) NOT NULL DEFAULT 0,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `pro_name`, `pro_slug`, `pro_price`, `pro_price_entry`, `pro_category_id`, `pro_supplier_id`, `pro_admin_id`, `pro_sale`, `pro_avatar`, `pro_view`, `pro_hot`, `pro_active`, `pro_pay`, `pro_description`, `pro_content`, `pro_review_total`, `pro_review_star`, `pro_age_review`, `created_at`, `pro_number`, `pro_import_goods`, `pro_number_import`, `pro_resistant`, `pro_energy`, `pro_country`, `updated_at`) VALUES
(2, 'Bóng Người Trong Đường Lô', 'bong-nguoi-trong-duong-lo', 180000, 0, 5, 0, 0, 5, '2020-07-17__142129-p57854mbiatruoc.jpg', 12, 1, 1, 4, 'Tuổi thơ đùa nghịch, hiếu động luôn là những tháng ngày khó quên trong cuộc đời mỗi con người, truyện kể về nhóm bạn Trí, Dũng, Phương, họ gặp nhau ở nông trường An Thái, cùng nhau trải qua những ngày hè đầy ắp niềm vui.', '<h3 style=\"text-align:justify\">B&oacute;ng Người Trong Đường L&ocirc;</h3>\r\n\r\n<p style=\"text-align:justify\">Tuổi thơ đ&ugrave;a nghịch, hiếu động lu&ocirc;n l&agrave; những th&aacute;ng ng&agrave;y kh&oacute; qu&ecirc;n trong cuộc đời mỗi con người, truyện kể về nh&oacute;m bạn Tr&iacute;, Dũng, Phương, họ gặp nhau ở n&ocirc;ng trường An Th&aacute;i, c&ugrave;ng nhau trải qua những ng&agrave;y h&egrave; đầy ắp niềm vui. Ba bạn nhỏ đ&atilde; c&ugrave;ng chung sức điều tra, t&igrave;m c&aacute;ch để bắt được bọn ăn trộm đ&atilde; lấy cắp ph&acirc;n b&oacute;n của n&ocirc;ng trường.&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">Truyện vừa mang một vẻ đẹp trong s&aacute;ng của t&igrave;nh bạn tuổi hồn nhi&ecirc;n, vừa mang những n&eacute;t hấp dẫn của một c&acirc;u chuyện trinh th&aacute;m d&agrave;nh cho thiếu nhi.&nbsp;<strong><em>B&oacute;ng người trong đường l&ocirc;</em></strong>&nbsp;- một t&aacute;c phẩm với bao điều kỳ th&uacute; đang chờ đ&oacute;n c&aacute;c em.&nbsp;</p>', 1, 4, 4, '2020-07-17 14:55:02', 245, 0, 251, NULL, NULL, 0, '2021-03-09 06:25:47'),
(3, 'Hà Nội Trong Mắt Một Người Sài Gòn', 'ha-noi-trong-mat-mot-nguoi-sai-gon', 80000, 0, 5, 0, 0, 15, '2020-07-18__kho-dau-khong-la-dieu-tat-yeu-108093-1.jpg', 15, 1, 1, 3, 'Hà Nội không có tư tưởng riêng, không có cái chất riêng gìn giữ được từ đời này qua đời khác. Đơn giản, Hà Nội chịu trách nhiệm phản ánh hết những bước đi của lịch sử, và nó thay đổi, đều theo vận động của xã hội. Trong Hà Nội tích tụ tất cả. Buồn, vui, tốt, xấu. Đó mới đúng nghĩa là Hà Nội.', '<h2 style=\"text-align:center\">&nbsp;<strong>H&agrave; Nội Trong Mắt Một Người S&agrave;i G&ograve;n</strong></h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">H&agrave; Nội kh&ocirc;ng c&oacute; tư tưởng ri&ecirc;ng, kh&ocirc;ng c&oacute; c&aacute;i chất ri&ecirc;ng g&igrave;n giữ được từ đời n&agrave;y qua đời kh&aacute;c. Đơn giản, H&agrave; Nội chịu tr&aacute;ch nhiệm phản &aacute;nh hết những bước đi của lịch sử, v&agrave; n&oacute; thay đổi, đều theo vận động của x&atilde; hội. Trong H&agrave; Nội t&iacute;ch tụ tất cả. Buồn, vui, tốt, xấu. Đ&oacute; mới đ&uacute;ng nghĩa l&agrave; H&agrave; Nội.</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">Kh&ocirc;ng c&oacute; H&agrave; Nội đẹp, H&agrave; Nội xấu. Chỉ c&oacute; H&agrave; Nội như một tấm gương</p>', 0, 0, 5, '2020-07-17 19:20:46', 65, 0, 75, NULL, NULL, 0, '2021-01-10 18:48:24'),
(4, 'Khổ Đau Không Là Điều Tất Yếu', 'kho-dau-khong-la-dieu-tat-yeu', 120000, 0, 5, 0, 0, 15, '2020-07-18__ha-noi-trong-mat-mot-nguoi-sai-gon-108095-1.jpg', 8, 1, 1, 2, 'Nếu bạn đang phải vật lộn với những suy nghĩ tiêu cực và niềm tin giới hạn, hoặc bạn đang nghi ngờ bản thân, hoặc bạn đang bị bao vây bởi những lo lắng và sợ hãi; đây chính là quyển sách dành cho bạn. Gail Brenner - một vị thầy dịu dàng và thông thái, sẽ dắt bạn đi trên con đường của hạnh phúc chân thực, nơi bạn tìm thấy tình yêu dành cho bản thân và sự bình yên trong tâm hồn.', '<h2 style=\"text-align:center\">&nbsp;<strong>Khổ Đau Kh&ocirc;ng L&agrave; Điều Tất Yếu</strong></h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">Nếu bạn đang phải vật lộn với những suy nghĩ ti&ecirc;u cực v&agrave; niềm tin giới hạn, hoặc bạn đang nghi ngờ bản th&acirc;n, hoặc bạn đang bị bao v&acirc;y bởi những lo lắng v&agrave; sợ h&atilde;i; đ&acirc;y ch&iacute;nh l&agrave; quyển s&aacute;ch d&agrave;nh cho bạn. Gail Brenner - một vị thầy dịu d&agrave;ng v&agrave; th&ocirc;ng th&aacute;i, sẽ dắt bạn đi tr&ecirc;n con đường của hạnh ph&uacute;c ch&acirc;n thực, nơi bạn t&igrave;m thấy t&igrave;nh y&ecirc;u d&agrave;nh cho bản th&acirc;n v&agrave; sự b&igrave;nh y&ecirc;n trong t&acirc;m hồn.</p>\r\n\r\n<p style=\"text-align:justify\"><br />\r\n<em><strong>Khổ đau kh&ocirc;ng l&agrave; điều tất yếu</strong></em>&nbsp;l&agrave; cuốn s&aacute;ch gối đầu giường d&agrave;nh cho những t&acirc;m hồn bị tổn thương, lu&ocirc;n tin rằng bản th&acirc;n l&agrave; người k&eacute;m cỏi. Trong s&aacute;ch của Gail, bạn c&oacute; thể t&igrave;m thấy những lời khuy&ecirc;n thiết thực, c&aacute;c c&ocirc;ng cụ, cũng như những b&agrave;i thực h&agrave;nh m&agrave; ai cũng c&oacute; thể &aacute;p dụng để tự giải ph&oacute;ng khỏi những dằn vặt đến từ việc ph&aacute;n x&eacute;t bản th&acirc;n. Bạn ho&agrave;n to&agrave;n c&oacute; thể thấy được một h&igrave;nh dung kh&aacute;c của ch&iacute;nh m&igrave;nh v&agrave; trải nghiệm một cuộc sống b&igrave;nh y&ecirc;n hơn, tự do hơn - cuốn s&aacute;ch n&agrave;y sẽ dẫn đường cho bạn.&nbsp;</p>', 4, 17, 4, '2020-07-17 19:22:41', 95, 0, 100, NULL, NULL, 0, '2021-01-14 10:31:29'),
(5, 'Lớp Học Mật Ngữ Ngoại Truyện 12 Chòm Sao - Song Tử (Tặng Kèm Quạt Nhựa)', 'lop-hoc-mat-ngu-ngoai-truyen-12-chom-sao-song-tu-tang-kem-quat-nhua', 50000, 0, 6, 0, 0, 16, '2020-07-18__358424-p91261mscan0001.jpg', 2, 1, 1, 0, 'Bạn sẽ được “truy cập” vào một bộ cẩm nang tất tần tật về cung này. Không chỉ là profile “thật” của Song Tử như tổng quan về cung Song Tử, tìm kiếm các năng lực, điểm mạnh của Song Tử… để phát triển cho chính mình; mà “hồ sơ mật” của cung này cũng sẽ được bật mí. Rốt cuộc thì Song Tử là ai trong mắt 12 cung, và các cung khác trong mắt Song Từ được “soi chiếu” như thế nào. Sống sao mới vừa lòng Song Tử? Bảo đảm đọc xong bạn giải mã được ngay những vấn đề trong mối quan hệ của mình với hội Song Tử đấy.', '<h3 style=\"text-align:center\">Lớp Học Mật Ngữ Ngoại Truyện 12 Ch&ograve;m Sao - Song Tử (Tặng K&egrave;m Quạt Nhựa)</h3>\r\n\r\n<p style=\"text-align:justify\">C&oacute; g&igrave; trong vũ trụ Song Tử?</p>\r\n\r\n<p style=\"text-align:justify\">Nhắc đến Song Tử, bạn sẽ nhớ đến điều g&igrave;?</p>\r\n\r\n<p style=\"text-align:justify\">N&oacute;i nhiều? Th&ocirc;ng minh, nhanh tr&iacute;? Nhưng cũng rất hay qu&ecirc;n? V&agrave; si&ecirc;u sao &ldquo;lật b&aacute;nh tr&aacute;ng&rdquo; v&igrave; hay thay đổi bất ngờ, &ldquo;bẻ l&aacute;i kh&eacute;t lẹt&rdquo; lu&ocirc;n?...</p>\r\n\r\n<p style=\"text-align:justify\">Bạn sẽ được &ldquo;truy cập&rdquo; v&agrave;o một bộ cẩm nang tất tần tật về cung n&agrave;y. Kh&ocirc;ng chỉ l&agrave; profile &ldquo;thật&rdquo; của Song Tử như tổng quan về cung Song Tử, t&igrave;m kiếm c&aacute;c năng lực, điểm mạnh của Song Tử&hellip; để ph&aacute;t triển cho ch&iacute;nh m&igrave;nh; m&agrave; &ldquo;hồ sơ mật&rdquo; của cung n&agrave;y cũng sẽ được bật m&iacute;. Rốt cuộc th&igrave; Song Tử l&agrave; ai trong mắt 12 cung, v&agrave; c&aacute;c cung kh&aacute;c trong mắt Song Từ được &ldquo;soi chiếu&rdquo; như thế n&agrave;o. Sống sao mới vừa l&ograve;ng Song Tử? Bảo đảm đọc xong bạn giải m&atilde; được ngay những vấn đề trong mối quan hệ của m&igrave;nh với hội Song Tử đấy.</p>\r\n\r\n<p style=\"text-align:justify\">Chưa kể, Song Tử trong c&acirc;u chuyện &ldquo;ngũ h&agrave;nh&rdquo; cũng si&ecirc;u hấp dẫn. L&agrave; Trạm sao Thủy: Khu vườn trồng &ldquo;b&iacute;&rdquo;&not; - nơi l&yacute; giải v&igrave; sao Song Tử th&ocirc;ng minh m&agrave; thi thoảng vẫn hay gạm quả &ldquo;b&iacute; l&ugrave;&rdquo;? L&agrave; Trạm sao Hoả: Khu đất trồng &ldquo;h&agrave;nh&rdquo; giải th&iacute;ch điều g&igrave; khiến Song Tử &ldquo;l&ecirc;n bờ xuống ruộng&rdquo;. L&agrave; Trạm sao Kim: Khu thu hoạch &ldquo;bồ kết&rdquo; cho bạn thấy Song Tử thường c&oacute; xu hướng &ldquo;bồ kết&rdquo; ai v&agrave; bị sao Kim &ldquo;quay&rdquo; như thế n&agrave;o khi cảm nắng... Những &ldquo;pha xử l&yacute; cồng kềnh&rdquo; n&agrave;o của Song Tử đ&atilde; bị &ldquo;l&ecirc;n thớt&rdquo;? Đ&oacute;n xem đ&oacute;n xem!</p>\r\n\r\n<p style=\"text-align:justify\">Cười hạnh ph&uacute;c c&ugrave;ng fanbook Song Tử</p>\r\n\r\n<p style=\"text-align:justify\">Phi&ecirc;n bản mới lần n&agrave;y sẽ tạo sự kh&aacute;c biệt ho&agrave;n to&agrave;n về nội dung, mỹ thuật cho độc giả vốn đang quen thuộc với bộ truyện tranh&nbsp;<strong>Lớp Học Mật Ngữ.&nbsp;</strong>B&ecirc;n cạnh những thử th&aacute;ch đ&aacute;ng y&ecirc;u d&agrave;nh ri&ecirc;ng cho &ldquo;hội fan cuồng&rdquo; th&igrave; đặc san c&ograve;n đặc biệt tặng bạn đọc những trang dạy vẽ v&agrave; t&ocirc; m&agrave;u Song Tử &ldquo;cute kh&ocirc;ng cần cớ&rdquo;.</p>', 0, 0, 0, '2020-07-17 19:31:23', 0, 0, 0, NULL, NULL, 0, '2020-07-17 19:31:39'),
(6, 'Tại Sao? - Sao Thành Phố Lại Trông Như Thế?', 'tai-sao-sao-thanh-pho-lai-trong-nhu-the', 55000, 0, 6, 0, 0, 20, '2021-01-03__2020-07-18-358090-p91211msaothanh.jpg', 8, 1, 1, 0, 'Tập sách giúp trẻ hiểu biết cấu trúc của một thành phố, là một cách để giáo dục về kỷ cương xã hội trong môi trường đô thị thông qua 100 điều thú vị về thành phố. Bên cạnh nhiều trò chơi là nhiều kiến thức thú vị như:', '<h3 style=\"text-align:center\">Tại Sao? - Sao Th&agrave;nh Phố Lại Tr&ocirc;ng Như Thế?</h3>\r\n\r\n<p style=\"text-align:justify\">Tập s&aacute;ch gi&uacute;p trẻ hiểu biết cấu tr&uacute;c của một th&agrave;nh phố, l&agrave; một c&aacute;ch để gi&aacute;o dục về kỷ cương x&atilde; hội trong m&ocirc;i trường đ&ocirc; thị th&ocirc;ng qua 100 điều th&uacute; vị về th&agrave;nh phố. B&ecirc;n cạnh nhiều tr&ograve; chơi l&agrave; nhiều kiến thức th&uacute; vị như:&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">- Cớ sao tr&ecirc;n n&oacute;c nh&agrave; c&oacute; nhiều ống tho&aacute;t?</p>\r\n\r\n<p style=\"text-align:justify\">- Tại sao cầu thang lại đi zig-zag?</p>\r\n\r\n<p style=\"text-align:justify\">- Tại sao th&aacute;p Pisa lại nghi&ecirc;ng?</p>\r\n\r\n<p style=\"text-align:justify\">- Tại sao tr&ecirc;n xe cứu thương người ta thường ghi chữ viết ngược?</p>', 1, 5, 5, '2020-07-17 19:34:57', 60, 0, 60, NULL, NULL, 0, '2021-01-03 12:54:22'),
(7, 'Ngữ Văn', 'ngu-van', 80000, 0, 14, 0, 0, 5, '2021-01-09__2020-07-26-2012-10-18-1-0001.jpg', 5, 1, 1, 1, 'abc', '<p><strong><em>ngữ văn</em></strong></p>', 0, 0, 0, '2020-07-20 15:29:34', 11, 0, 11, NULL, NULL, 0, '2021-01-14 13:42:40'),
(9, 'harrypotter and the deadly hallow', 'harrypotter-and-the-deadly-hallow', 60000, 0, 5, 0, 0, 0, '2021-01-09__4.jpg', 6, 0, 1, 3, 'Harry Potter và Bảo bối Tử thần là một tiểu thuyết giả tưởng được viết bởi tác giả người Anh JK Rowling và là tiểu thuyết thứ bảy và cũng là tiểu thuyết cuối cùng củaloạt phim Harry Potter . Nó được phát hành vào ngày 21 tháng 7 năm 2007 tại Vương quốc Anh bởi Nhà xuất bản Bloomsbury , ở Hoa Kỳ bởi Scholastic , và ở Canada bởi Raincoast Books . Cuốn tiểu thuyết ghi lại các sự kiện trực tiếp sau Harry Potter và Hoàng tử lai (2005) và cuộc đối đầu cuối cùng giữa hai phù thủy Harry Potter và Chúa tể Voldemort .\r\n\r\nBảo bối tử thần đã phá vỡ kỷ lục doanh thu khi phát hành, vượt qua mốc do các tựa trước của loạt phim Harry Potter thiết lập . Nó giữ kỷ lục Guinness thế giới cho hầu hết các tiểu thuyết được bán trong vòng 24 giờ sau khi phát hành, với 8,3 triệu được bán ở Mỹ và 2,65 triệu ở Anh. [1] [2] Nhìn chung được các nhà phê bình đón nhận nồng nhiệt, cuốn sách đã giành được Giải thưởng Colorado Blue Spruce Book năm 2008 và Hiệp hội Thư viện Hoa Kỳ đã đặt tên cho nó là \"Sách hay nhất dành cho thanh thiếu niên\".', '<p style=\"text-align:start\"><span style=\"font-size:14px\"><span style=\"color:#202122\"><span style=\"font-family:sans-serif\"><span style=\"background-color:#ffffff\"><em><strong>Harry Potter v&agrave; Bảo bối Tử thần</strong></em>&nbsp;l&agrave; một<a class=\"mw-redirect\" href=\"https://en.wikipedia.org/wiki/Fantasy_novel\" style=\"text-decoration:none; color:#0b0080; background:none\" title=\"Tiểu thuyết giả tưởng\">&nbsp;tiểu thuyết giả tưởng</a>&nbsp;được viết bởi t&aacute;c giả người Anh<a href=\"https://en.wikipedia.org/wiki/J._K._Rowling\" style=\"text-decoration:none; color:#0b0080; background:none\" title=\"JK Rowling\">&nbsp;JK Rowling</a>&nbsp;v&agrave; l&agrave; tiểu thuyết thứ bảy v&agrave; cũng l&agrave; tiểu thuyết cuối c&ugrave;ng củaloạt phim<em><a href=\"https://en.wikipedia.org/wiki/Harry_Potter\" style=\"text-decoration:none; color:#0b0080; background:none\" title=\"Harry Potter\">&nbsp;Harry Potter</a></em>&nbsp;.&nbsp;N&oacute; được ph&aacute;t h&agrave;nh v&agrave;o ng&agrave;y 21 th&aacute;ng 7 năm 2007 tại Vương quốc Anh bởi<a href=\"https://en.wikipedia.org/wiki/Bloomsbury_Publishing\" style=\"text-decoration:none; color:#0b0080; background:none\" title=\"Nhà xuất bản Bloomsbury\">&nbsp;Nh&agrave; xuất bản Bloomsbury</a>&nbsp;, ở Hoa Kỳ bởi<a href=\"https://en.wikipedia.org/wiki/Scholastic_Corporation\" style=\"text-decoration:none; color:#0b0080; background:none\" title=\"Scholastic Corporation\">&nbsp;Scholastic</a>&nbsp;, v&agrave; ở Canada bởi<a href=\"https://en.wikipedia.org/wiki/Raincoast_Books\" style=\"text-decoration:none; color:#0b0080; background:none\" title=\"Sách Raincoast\">&nbsp;Raincoast Books</a>&nbsp;.&nbsp;Cuốn tiểu thuyết ghi lại c&aacute;c sự kiện trực tiếp sau<em><a href=\"https://en.wikipedia.org/wiki/Harry_Potter_and_the_Half-Blood_Prince\" style=\"text-decoration:none; color:#0b0080; background:none\" title=\"Harry Potter và hoàng tử lai\">&nbsp;Harry Potter v&agrave; Ho&agrave;ng tử lai</a></em>&nbsp;(2005) v&agrave; cuộc đối đầu cuối c&ugrave;ng giữa hai ph&ugrave; thủy<a href=\"https://en.wikipedia.org/wiki/Harry_Potter_(character)\" style=\"text-decoration:none; color:#0b0080; background:none\" title=\"Harry Potter (nhân vật)\">&nbsp;Harry Potter</a>&nbsp;v&agrave;<a href=\"https://en.wikipedia.org/wiki/Lord_Voldemort\" style=\"text-decoration:none; color:#0b0080; background:none\" title=\"Chúa tể Voldemort\">&nbsp;Ch&uacute;a tể Voldemort</a>&nbsp;.</span></span></span></span></p>\r\n\r\n<p style=\"text-align:start\"><span style=\"font-size:14px\"><span style=\"color:#202122\"><span style=\"font-family:sans-serif\"><span style=\"background-color:#ffffff\"><em>Bảo bối tử thần đ&atilde;</em>&nbsp;ph&aacute; vỡ kỷ lục doanh thu khi ph&aacute;t h&agrave;nh, vượt qua mốc do c&aacute;c tựa trước của&nbsp;loạt phim&nbsp;<em>Harry Potter</em>&nbsp;thiết lập&nbsp;.&nbsp;N&oacute; giữ&nbsp;<a class=\"mw-redirect\" href=\"https://en.wikipedia.org/wiki/Guinness_World_Record\" style=\"text-decoration:none; color:#0b0080; background:none\" title=\"Kỉ lục thế giới\">kỷ lục Guinness thế giới</a>&nbsp;cho hầu hết c&aacute;c tiểu thuyết được b&aacute;n trong v&ograve;ng 24 giờ sau khi ph&aacute;t h&agrave;nh, với 8,3 triệu được b&aacute;n ở Mỹ v&agrave; 2,65 triệu ở Anh.&nbsp;<sup><a href=\"https://en.wikipedia.org/wiki/Harry_Potter_and_the_Deathly_Hallows#cite_note-1\" style=\"text-decoration:none; color:#0b0080; background:none\">[1]&nbsp;</a></sup><sup><a href=\"https://en.wikipedia.org/wiki/Harry_Potter_and_the_Deathly_Hallows#cite_note-Guinness_Book_of_World_Records-2\" style=\"text-decoration:none; color:#0b0080; background:none\">[2]</a></sup>&nbsp;Nh&igrave;n chung được c&aacute;c nh&agrave; ph&ecirc; b&igrave;nh đ&oacute;n nhận nồng nhiệt, cuốn s&aacute;ch đ&atilde; gi&agrave;nh được Giải thưởng Colorado Blue Spruce Book năm 2008 v&agrave; Hiệp hội Thư viện Hoa Kỳ đ&atilde; đặt t&ecirc;n cho n&oacute; l&agrave; &quot;S&aacute;ch hay nhất d&agrave;nh cho thanh thiếu ni&ecirc;n&quot;.&nbsp;</span></span></span></span></p>', 0, 0, 0, '2021-01-09 06:12:08', 13, 0, 16, NULL, NULL, 0, '2021-01-24 04:33:08'),
(14, '5 cm', '5-cm', 30000, 0, 5, 0, 0, 0, '2021-01-14__5-tren-giay-696x978.jpg', 6, 0, 1, 1, 'Công ty phát hành	IPM\r\n\r\nNgày xuất bản	12-2014\r\n\r\nKích thước	13 x 18 cm\r\n\r\nLoại bìa	Bìa mềm\r\n\r\nSố trang	188\r\n\r\nSKU	2517116462816\r\n\r\nNhà xuất bản	Nhà Xuất Bản Văn Học', '<p><strong>5 Centimet Tr&ecirc;n Gi&acirc;y</strong></p>\r\n\r\n<p>5cm/s kh&ocirc;ng chỉ l&agrave; vận tốc của những c&aacute;nh anh đ&agrave;o rơi, m&agrave; c&ograve;n l&agrave; vận tốc khi ch&uacute;ng ta lặng lẽ bước qua đời nhau, đ&aacute;nh mất bao cảm x&uacute;c thiết tha nhất của t&igrave;nh y&ecirc;u.</p>\r\n\r\n<p>Bằng giọng văn tinh tế, truyền cảm,<strong>&nbsp;5&nbsp;centimet tr&ecirc;n gi&acirc;y&nbsp;</strong>mang đến những khắc họa mới về t&acirc;m hồn v&agrave; khả năng tồn tại của cảm x&uacute;c, bắt đầu từ t&igrave;nh y&ecirc;u trong s&aacute;ng, ngọt ng&agrave;o của một c&ocirc; b&eacute; v&agrave; cậu b&eacute;. Ba giai đoạn, ba mảnh gh&eacute;p, ba ng&ocirc;i kể chuyện kh&aacute;c nhau nhưng đều xoay quanh nh&acirc;n vật nam ch&iacute;nh, người lu&ocirc;n bị &aacute;m ảnh bởi k&iacute; ức v&agrave; những điều đ&atilde; qua&hellip;</p>\r\n\r\n<p>Kh&aacute;c với những c&acirc;u chuyện cuốn bạn chạy một mạch, truyện n&agrave;y kh&oacute; m&agrave; đọc nhanh. Ng&oacute;n tay bạn hẳn sẽ ngừng lại cả trăm lần tr&ecirc;n mỗi trang s&aacute;ch. Chỉ v&igrave; một cử động rất khẽ, một c&acirc;u thoại, hay một x&uacute;c cảm bất chợt c&oacute; thể sẽ đ&aacute;nh thức những điều tưởng chừng đ&atilde; ngủ qu&ecirc;n trong tiềm thức, như ngọn đ&egrave;n vừa được bật s&aacute;ng trong t&acirc;m tr&iacute; bạn. V&agrave; rồi c&oacute; l&uacute;c n&oacute; vượt qu&aacute; giới hạn chịu đựng, bạn quyết định gấp cuốn s&aacute;ch lại chỉ để tận hưởng ch&uacute;t &aacute;nh s&aacute;ng từ ngọn đ&egrave;n, hay đơn giản l&agrave; để vết thương trong l&ograve;ng m&igrave;nh c&oacute; thời gian tự t&igrave;m xoa dịu.</p>\r\n\r\n<p>Gi&aacute; sản phẩm tr&ecirc;n Tiki đ&atilde; bao gồm thuế theo luật hiện h&agrave;nh. Tuy nhi&ecirc;n tuỳ v&agrave;o từng loại sản phẩm hoặc phương thức, địa chỉ giao h&agrave;ng m&agrave; c&oacute; thể ph&aacute;t sinh th&ecirc;m chi ph&iacute; kh&aacute;c như ph&iacute; vận chuyển, phụ ph&iacute; h&agrave;ng cồng kềnh, ...</p>', 3, 13, 4, '2021-01-13 18:21:09', 8, 0, 10, NULL, NULL, 0, '2021-01-22 16:15:49'),
(15, 'Re:zero - Bắt Đầu Lại Ở Thế Giới Khác', 'rezero-bat-dau-lai-o-the-gioi-khac', 50000, 0, 5, 0, 0, 5, '2021-01-14__8935250701136-3.jpg', 4, 0, 1, 2, 'Nhà cung cấp:IPMTác giả:Tappei Nagatsuki\r\n\r\nNhà xuất bản:NXB Văn Học', '<p>Re:zero - Bắt Đầu Lại Ở Thế Giới Kh&aacute;c</p>\r\n\r\n<p>H&ocirc;m ấy, ở Nhật Bản hiện đại.</p>\r\n\r\n<p>Một thiếu ni&ecirc;n bước ra khỏi cửa h&agrave;ng tiện lợi, v&agrave; chớp mắt một c&aacute;i đ&atilde; thấy m&igrave;nh xuất hiện trước sạp tr&aacute;i c&acirc;y ở một khu vực k&igrave; lạ, nơi m&aacute;i t&oacute;c đen v&agrave; bộ đồ thể thao x&aacute;m b&igrave;nh thường tột độ của cậu trở n&ecirc;n bất thường. V&igrave; bao quanh cậu l&agrave; đầu t&oacute;c sặc sỡ, ăn vận k&igrave; dị v&agrave; c&aacute;c sinh vật với đủ mọi biến thể gene.</p>\r\n\r\n<p>Dĩ nhi&ecirc;n đ&oacute; l&agrave; do, cậu vừa bị triệu hồi tới thế giới kh&aacute;c.</p>\r\n\r\n<p>Với tr&iacute; tưởng tượng được nu&ocirc;i nấng no n&ecirc; nhờ c&aacute;c sản phẩm giải tr&iacute; viễn tưởng ảo tưởng giả tưởng hoang tưởng, thiếu ni&ecirc;n mau ch&oacute;ng nhận ra cảnh ngộ gặp phải v&agrave; m&ograve; mẫm thử nghiệm xem m&igrave;nh được trao tặng si&ecirc;u năng lực g&igrave; ở đ&acirc;y.</p>', 0, 0, 0, '2021-01-13 19:00:28', 28, 0, 28, NULL, NULL, 0, '2021-01-14 11:57:42'),
(16, 'Sword Art Online Progressive 002', 'sword-art-online-progressive-002', 20000, 0, 16, 0, 0, 100, '2021-01-14__df3b903456b715045aa6efd8e11dec38.jpg', 1, 0, 0, 0, 'Công ty phát hành	IPM\r\nNgày xuất bản	05-2018', '<p style=\"text-align:left\"><span style=\"font-size:14px\"><span style=\"color:#242424\"><span style=\"font-family:Roboto,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><strong>Sword Art Online Progressive 002&nbsp;</strong></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:#242424\"><span style=\"font-family:Roboto,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\">Do c&aacute;c sự kiện ngẫu nhi&ecirc;n x&ocirc; đẩy, Kirito kh&ocirc;ng sao giải t&aacute;n được nh&oacute;m nhỏ hai người vốn th&agrave;nh lập rất t&igrave;nh cờ với Asuna. V&agrave; cứ thế họ lại s&aacute;nh vai đi khắp tầng 3.</span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:#242424\"><span style=\"font-family:Roboto,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\">Tầng 3 l&agrave; tầng bắt đầu c&oacute; sự ph&acirc;n h&oacute;a chi tiết hơn về nhiệm vụ. Những người muốn g&acirc;y dựng phe c&aacute;nh như Lind v&agrave; Kibaou th&igrave; tập trung v&agrave;o c&aacute;c nhiệm vụ lập guild. Kirito tiếp tục phong c&aacute;ch phớt đời quen thuộc, dẫn Asuna c&ugrave;ng tham gia quest chiến dịch trường k&igrave; sẽ k&eacute;o d&agrave;i đến tận tầng 9. Quest n&agrave;y gi&uacute;p họ n&acirc;ng cấp thần tốc cả kĩ năng v&agrave; binh kh&iacute;, đồng thời bước đầu h&eacute; lộ về nguồn cội Aincrad, hứa hẹn một ng&agrave;y mai kh&aacute;m ph&aacute; ra họ thực sự đang đặt ch&acirc;n l&ecirc;n những g&igrave;.</span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:#242424\"><span style=\"font-family:Roboto,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\">Sau khi lập guild xong, Lind v&agrave; Kibaou quay lại khuấy đảo hai người &ldquo;chỉ nghĩ đến m&igrave;nh kia&rdquo;, v&agrave; đẩy họ đến một ranh giới ngang tr&aacute;i đ&uacute;ng kiểu &ldquo;chia uy&ecirc;n rẽ thu&yacute;&rdquo;. Asuna v&agrave; Kirito sẽ phản ứng thế n&agrave;o đ&acirc;y?</span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:#242424\"><span style=\"font-family:Roboto,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\">Tiếp tục kh&ocirc;ng kh&iacute; h&agrave;nh động nghẹt thở của tập 1, tập 2 n&agrave;y c&ograve;n khai th&aacute;c rất s&acirc;u v&agrave;o t&acirc;m l&yacute; thiếu ni&ecirc;n thiếu nữ tr&ecirc;n nhạc nền du dương sương m&ugrave; của bản h&ograve;a tấu trắng v&agrave; đen.</span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:#242424\"><span style=\"font-family:Roboto,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\">&nbsp;</span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:#242424\"><span style=\"font-family:Roboto,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\">Gi&aacute; sản phẩm tr&ecirc;n Tiki đ&atilde; bao gồm thuế theo luật hiện h&agrave;nh. Tuy nhi&ecirc;n tuỳ v&agrave;o từng loại sản phẩm hoặc phương thức, địa chỉ giao h&agrave;ng m&agrave; c&oacute; thể ph&aacute;t sinh th&ecirc;m chi ph&iacute; kh&aacute;c như ph&iacute; vận chuyển, phụ ph&iacute; h&agrave;ng cồng kềnh, ...</span></span></span></span></p>', 0, 0, 0, '2021-01-14 12:00:42', 6, 0, 6, NULL, NULL, 0, '2021-03-09 06:20:11');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products_attributes`
--

CREATE TABLE `products_attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pa_product_id` int(11) NOT NULL DEFAULT 0,
  `pa_attribute_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products_attributes`
--

INSERT INTO `products_attributes` (`id`, `pa_product_id`, `pa_attribute_id`) VALUES
(1, 1, 3),
(3, 3, 3),
(4, 2, 1),
(16, 8, 1),
(17, 8, 3),
(19, 10, 3),
(21, 12, 2),
(28, 14, 3),
(30, 15, 3),
(39, 16, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products_keywords`
--

CREATE TABLE `products_keywords` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pk_product_id` int(11) NOT NULL DEFAULT 0,
  `pk_keyword_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pi_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pi_slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pi_product_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ratings`
--

CREATE TABLE `ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `r_user_id` int(11) NOT NULL DEFAULT 0,
  `r_product_id` int(11) NOT NULL DEFAULT 0,
  `r_number` tinyint(4) NOT NULL DEFAULT 0,
  `r_status` tinyint(4) NOT NULL DEFAULT 0,
  `r_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `ratings`
--

INSERT INTO `ratings` (`id`, `r_user_id`, `r_product_id`, `r_number`, `r_status`, `r_content`, `created_at`, `updated_at`) VALUES
(1, 6, 6, 5, 0, 'Sản phẩm tuyệt vời', '2020-07-18 01:00:36', '2020-07-18 01:00:36'),
(3, 9, 4, 3, 0, 'sách hay', '2021-01-14 10:19:12', '2021-01-14 10:19:12'),
(4, 8, 4, 5, 0, 'good', '2021-01-14 10:26:03', '2021-01-14 10:26:03'),
(5, 8, 4, 5, 0, 'hal lắm nha', '2021-01-14 10:28:31', '2021-01-14 10:28:31'),
(6, 8, 4, 4, 0, 'OK', '2021-01-14 10:31:29', '2021-01-14 10:31:29'),
(7, 8, 14, 5, 0, 'OK', '2021-01-14 10:32:05', '2021-01-14 10:32:05'),
(8, 8, 14, 4, 0, 'OK', '2021-01-14 10:32:12', '2021-01-14 10:32:12'),
(9, 8, 14, 4, 0, 'tốt', '2021-01-22 16:15:49', '2021-01-22 16:15:49'),
(10, 8, 2, 4, 0, 'hjkl', '2021-03-09 06:25:47', '2021-03-09 06:25:47');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slides`
--

CREATE TABLE `slides` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sd_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sd_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sd_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sd_target` tinyint(4) NOT NULL DEFAULT 1,
  `sd_active` tinyint(4) NOT NULL DEFAULT 1,
  `sd_sort` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `slides`
--

INSERT INTO `slides` (`id`, `sd_title`, `sd_link`, `sd_image`, `sd_target`, `sd_active`, `sd_sort`, `created_at`, `updated_at`) VALUES
(1, 'banner website 1', 'https://www.google.com/', '2021-01-09__banner-1000x600px-01.jpg', 1, 1, 2, '2021-01-23 19:52:14', '2021-01-23 19:52:14'),
(2, 'banner website 2', 'https://blog.dammaynho.com/marketing/7-chinh-sach-khuyen-mai-chieu-ban-hang-cao-tay-bung-no-doanh-so.html', '2020-07-17__banner-sach-moi-thang-62018-02.jpg', 2, 1, 1, '2021-01-23 19:53:08', '2021-01-23 19:53:08'),
(3, 'banner website 2', 'https://blog.dammaynho.com/marketing/7-chinh-sach-khuyen-mai-chieu-ban-hang-cao-tay-bung-no-doanh-so.html', '2020-07-17__unnamed.jpg', 1, 1, 3, '2021-01-23 19:52:05', '2021-01-23 19:52:05');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `statics`
--

CREATE TABLE `statics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `s_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `s_slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `s_type` tinyint(4) NOT NULL DEFAULT 0,
  `s_md5` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `s_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `statics`
--

INSERT INTO `statics` (`id`, `s_title`, `s_slug`, `s_type`, `s_md5`, `s_content`, `created_at`, `updated_at`) VALUES
(2, 'Hướng dẫn chi tiết mua hàng', NULL, 1, NULL, '<p>Sau khi mua đủ số lượng sản phẩm, ở lần thực hiện mua h&agrave;ng cuối c&ugrave;ng ta chọn v&agrave; n&uacute;t xem giỏ h&agrave;ng hoặc c&oacute; thể nhấn v&agrave;o biểu tượng giỏ h&agrave;ng ở ph&iacute;a g&oacute;c phải tr&ecirc;n c&ugrave;ng của website, l&uacute;c n&agrave;y m&agrave;n h&igrave;nh sẽ chuyển về giao diện giỏ h&agrave;ng như h&igrave;nh dưới</p>\r\n\r\n<p>-Trước khi ho&agrave;n tất th&ocirc;ng tin để gửi đơn đặt h&agrave;ng ta n&ecirc;n&nbsp;kiểm tra lại đơn h&agrave;ng xem giỏ h&agrave;ng cuối c&ugrave;ng đ&atilde; đ&uacute;ng v&agrave; đủ chưa, Nếu trong qu&aacute; tr&igrave;nh đặt h&agrave;ng số lượng kh&ocirc;ng đ&uacute;ng hoặc muốn thay đổi , ta nhập v&agrave;o số lượng mới rồi lưu thay đổi, hoặc chọn gỡ bỏ để x&oacute;a sản phẩm.</p>\r\n\r\n<p>Sau khi đ&atilde; kiểm tra v&agrave; điều chỉnh lại đơn h&agrave;ng ta k&eacute;o xuống ph&iacute;a b&ecirc;n dưới v&agrave;o điền đầy đủ th&ocirc;ng tin rồi chọn gửi đơn h&agrave;ng</p>\r\n\r\n<p>-Sau khi điền đ&acirc;y đủ th&ocirc;ng tin, nhấn chọn n&uacute;t tiếp tục, trang web sẽ đưa qu&yacute; kh&aacute;ch đến m&agrave;n h&igrave;nh ph&iacute;a dưới chọn n&uacute;t gửi đơn đặt h&agrave;ng để ho&agrave;n tất đơn đặt h&agrave;ng</p>\r\n\r\n<p>-Sau khi gửi đơn đặt h&agrave;ng hệ thống website sẽ th&ocirc;ng b&aacute;o đang gửi đơn h&agrave;ng bạn vui l&ograve;ng đợi. chờ đến khi hiện l&ecirc;n hộp thoại bạn đ&atilde; gửi đơn h&agrave;ng th&agrave;nh c&ocirc;ng, như vậy l&agrave; đ&atilde; ho&agrave;n tất qu&aacute; tr&igrave;nh đặt h&agrave;ng.&nbsp;</p>\r\n\r\n<p>-Ở bước n&agrave;y nếu qu&yacute; kh&aacute;ch c&oacute; nhập th&ocirc;ng tin địa chỉ email th&igrave; sau khi hiện l&ecirc;n bản th&ocirc;ng b&aacute;o x&aacute;c nhận &quot; Bạn đ&atilde; gửi đơn h&agrave;ng th&agrave;nh c&ocirc;ng&quot; hệ thống web site của ch&uacute;ng t&ocirc;i cũng sẽ email th&ocirc;ng b&aacute;o chi tiết đơn h&agrave;ng đến cho qu&yacute; kh&aacute;ch.<img alt=\"\" src=\"data:image/jpeg;base64,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\" style=\"float:right; height:153px; width:329px\" /></p>\r\n\r\n<p>&nbsp;</p>', '2021-01-09 05:49:46', '2021-01-09 05:49:46'),
(3, 'Chính sách đổi trả', NULL, 2, NULL, '<h3>I. L&Yacute; DO CHẤP NHẬN ĐỔI TRẢ</h3>\r\n\r\n<p><strong>1. Điều kiện h&agrave;ng h&oacute;a đạt y&ecirc;u cầu đổi trả</strong></p>\r\n\r\n<p>- Sản phẩm hỏng về kỹ thuật, thiết kế, chức năng, c&aacute;c kh&aacute;c biệt so với ti&ecirc;u chuẩn chất lượng đ&atilde; được nh&agrave; sản xuất c&ocirc;ng bố.</p>\r\n\r\n<p>- Sản phẩm bị lỗi trong qu&aacute; tr&igrave;nh vận chuyển như biến dạng, nứt vỡ, trầy xước,&hellip;</p>\r\n\r\n<p>- Sản phẩm mất ni&ecirc;m phong, giao sai số lượng v&agrave; mẫu m&atilde; so với đơn đặt h&agrave;ng đ&atilde; được chấp nhận.</p>\r\n\r\n<p>- Hạn sử dụng sản phẩm hết trước hoặc v&agrave;o ng&agrave;y được giao cho kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<h4>II. Y&Ecirc;U CẦU CHO ĐỔI TRẢ SẢN PHẨM</h4>\r\n\r\n<p><strong>1. Điều kiện đổi trả</strong></p>\r\n\r\n<p>- Sản phẩm kh&ocirc;ng thuộc danh s&aacute;ch hạn chế đổi trả đ&atilde; được Wisdom Book c&ocirc;ng bố.</p>\r\n\r\n<p>- Sản phẩm c&ograve;n nguy&ecirc;n vẹn, đầy đủ nh&atilde;n m&aacute;c, nguy&ecirc;n đai kiện, ni&ecirc;m phong theo quy c&aacute;ch ban đầu (trừ trường hợp sản phẩm bị lỗi hoặc bị hư hại trong qu&aacute; tr&igrave;nh vận chuyển). Đầy đủ phụ kiện v&agrave; tặng phẩm đi k&egrave;m (nếu c&oacute;).</p>\r\n\r\n<p>- Sản phẩm kh&ocirc;ng c&oacute; dấu hiệu đ&atilde; qua sử dụng.</p>\r\n\r\n<p>- C&aacute;c x&aacute;c nhận việc mua h&agrave;ng tại WisdomBook như h&oacute;a đơn, bi&ecirc;n nhận, sao k&ecirc; t&agrave;i khoản ng&acirc;n h&agrave;ng,&hellip;</p>\r\n\r\n<p>- Phiểu đổi trả đ&uacute;ng v&agrave; đầy đủ th&ocirc;ng tin theo form mẫu của WisdomBook .</p>\r\n\r\n<p><strong>2. Thời gian &aacute;p dụng đổi trả</strong></p>\r\n\r\n<p>- 03 ng&agrave;y kể từ ng&agrave;y nhận h&agrave;ng để gửi y&ecirc;u cầu đổi trả.</p>\r\n\r\n<p>- Thời điểm y&ecirc;u cầu đổi trả sẽ được WisdomBook căn cứ theo: (1) đường bưu điện hoặc chuyển ph&aacute;t: thời điểm t&iacute;nh theo dấu bi&ecirc;n nhận của bưu điện hay đơn vị chuyển ph&aacute;t. (2) tự mang/gửi h&agrave;ng tới trung t&acirc;m đổi trả: thời điểm t&iacute;nh khi nh&acirc;n vi&ecirc;n wisdomBook tiếp nhận sản phẩm đổi trả từ kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<p><strong>3. Chi ph&iacute; đổi trả</strong></p>\r\n\r\n<p>- Đối với c&aacute;c sản phẩm đổi trả do lỗi nh&agrave; sản xuất hoặc do qu&aacute; tr&igrave;nh vận chuyển, kh&aacute;ch h&agrave;ng sẽ được miễn ph&iacute; đổi trả v&agrave; được giao h&agrave;ng miễn ph&iacute; tới địa điểm ghi tr&ecirc;n phiếu y&ecirc;u cầu.</p>\r\n\r\n<h3>III. QUY ĐỊNH HO&Agrave;N TIỀN</h3>\r\n\r\n<p><strong>1. Nguy&ecirc;n tắc ho&agrave;n tiền</strong></p>\r\n\r\n<p>- Căn cứ theo phương thức thanh to&aacute;n của kh&aacute;ch h&agrave;ng khi mua h&agrave;ng.</p>\r\n\r\n<p>- Trong trường hợp kh&aacute;ch h&agrave;ng c&oacute; sử dụng Giftcode hoặc c&aacute;c ưu đ&atilde;i từ c&aacute;c chương tr&igrave;nh khuyến mại,&hellip; WisdomBook kh&ocirc;ng ho&agrave;n lại khoản gi&aacute; trị đ&oacute; m&agrave; chỉ ho&agrave;n lại khoản tiền thực tế kh&aacute;ch h&agrave;ng đ&atilde; bỏ ra thanh to&aacute;n khi mua h&agrave;ng.</p>\r\n\r\n<p><strong>2. Phương thức ho&agrave;n tiền</strong></p>\r\n\r\n<p>- Ho&agrave;n tiền th&ocirc;ng qua hệ thống cổng thanh to&aacute;n</p>\r\n\r\n<p>- Ho&agrave;n tiền qua chuyển khoản ng&acirc;n h&agrave;ng</p>\r\n\r\n<p>- Ho&agrave;n tiền qua ng&acirc;n h&agrave;ng chấp nhận thẻ</p>\r\n\r\n<p>- Ho&agrave;n tiền mặt tại trung t&acirc;m đổi trả của WisdomBook</p>', '2021-01-09 05:54:40', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `supplieres`
--

CREATE TABLE `supplieres` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sl_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sl_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sl_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sl_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `supplieres`
--

INSERT INTO `supplieres` (`id`, `sl_name`, `sl_phone`, `sl_email`, `sl_address`, `created_at`, `updated_at`) VALUES
(3, 'Nhà sách kim đồng', '19001907', 'nhasachkimdong@gmail.com', 'Hà Nội', '2020-07-17 14:45:55', NULL),
(4, 'Nhà sách giáo dục', '19008889', 'nhasachgiaoduch@gmail.com', 'Kim Mã', '2020-07-17 14:46:26', NULL),
(5, 'Nhà sách Cananda', '078564655', 'Canada123@gmail.com', '234 Long Hà Tiên', '2021-01-10 18:47:29', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tst_user_id` int(11) NOT NULL DEFAULT 0,
  `tst_admin_id` int(11) NOT NULL DEFAULT 0,
  `tst_total_money` int(11) NOT NULL DEFAULT 0,
  `tst_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_status` tinyint(4) NOT NULL DEFAULT 1,
  `tst_type` tinyint(4) NOT NULL DEFAULT 1 COMMENT ' 1 thanh toan thuong, 2 la thanh toan online',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `transactions`
--

INSERT INTO `transactions` (`id`, `tst_user_id`, `tst_admin_id`, `tst_total_money`, `tst_name`, `tst_email`, `tst_phone`, `tst_address`, `tst_note`, `tst_status`, `tst_type`, `created_at`, `updated_at`) VALUES
(2, 5, 1, 306000, 'NGuyễn Văn Dược', 'duocnvoit@gmail.com', '0928817228', 'Hà Nội', NULL, 3, 1, '2020-07-17 20:06:21', '2020-07-17 20:06:37'),
(3, 6, 2, 272000, 'NGuyễn Văn Dược', 'nguyenduocit@gmail.com', '0359020898', 'Hà Nội', 'giao hàng nhớ gọi trước cho tôi', 2, 1, '2020-07-18 01:02:27', '2021-01-07 13:41:56'),
(4, 7, 1, 0, 'Le Minh Hai', 'mhai@gmail.com', '0988809974', 'Hà Nội', 'aaaaaaaaaa', -1, 1, '2020-07-20 15:25:53', '2021-01-06 12:30:56'),
(5, 8, 2, 0, 'hoanganh', 'hoanganh51199@gmail.com', '0767608842', '123 lê văn cật', 'giao thứ 2', 3, 1, '2021-01-07 12:53:38', '2021-01-07 13:42:28'),
(6, 8, 1, 136000, 'hoanganh', 'hoanganh51199@gmail.com', '0767608842', '173 nguyen xi', NULL, 3, 1, '2021-01-08 19:39:59', '2021-01-08 19:42:04'),
(7, 8, 0, 171000, 'hoanganh', 'hoanganh51199@gmail.com', '0767608842', '173 nguyen xi', 'giao thứ 2', 1, 1, '2021-01-09 07:13:59', NULL),
(8, 8, 1, 171000, 'hoanganh', 'hoanganh51199@gmail.com', '0767608842', '173 nguyen xi', NULL, -1, 1, '2021-01-09 07:19:38', '2021-01-10 18:46:01'),
(9, 8, 1, 102000, 'hoanganh', 'hoanganh51199@gmail.com', '0767608842', '173 nguyen xi', NULL, 3, 1, '2021-01-09 07:20:43', '2021-01-09 17:31:48'),
(10, 8, 1, 60000, 'hoanganh', 'hoanganh51199@gmail.com', '0767608842', '173 nguyen xi', NULL, 3, 1, '2021-01-12 08:37:40', '2021-01-12 08:38:25'),
(11, 8, 1, 0, 'hoanganh', 'hoanganh51199@gmail.com', '0767608842', '173 nguyen xi', NULL, -1, 1, '2021-01-12 08:43:40', '2021-01-12 08:44:57'),
(12, 8, 1, 60000, 'hoanganh', 'hoanganh51199@gmail.com', '0767608842', '173 nguyen xi', NULL, 3, 1, '2021-01-12 08:52:45', '2021-01-12 08:54:46'),
(13, 8, 1, 68000, 'hoanganh', 'hoanganh51199@gmail.com', '0767608842', '173 nguyen xi', NULL, 3, 1, '2021-01-12 08:58:51', '2021-01-12 09:07:03'),
(14, 9, 0, 142500, 'Lê Trí', 'bulong122@gmail.com', '078849495', '123 pasteur', 'giao t2', 1, 1, '2021-01-14 08:42:37', NULL),
(15, 8, 0, 171000, 'hoanganh', 'hoanganh51199@gmail.com', '0767608842', '173 nguyen xi', NULL, 1, 1, '2021-01-14 14:16:13', NULL),
(16, 8, 1, 60000, 'hoanganh', 'hoanganh51199@gmail.com', '0767608842', '173 nguyen xi', 'giao t2', 3, 1, '2021-01-22 16:16:32', '2021-01-22 16:18:13'),
(17, 8, 0, 95000, 'hoanganh', 'hoanganh51199@gmail.com', '0767608842', '173 nguyen xi', 't2', 1, 1, '2021-01-23 15:53:56', NULL),
(18, 9, 0, 0, 'Lê Trí', 'bulong122@gmail.com', '078849495', 'dafds', 'd', 1, 1, '2021-01-24 02:38:11', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `log_login` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count_comment` tinyint(4) NOT NULL DEFAULT 0,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `phone`, `log_login`, `count_comment`, `address`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(5, 'NGuyễn Văn Dược', 'duocnvoit@gmail.com', NULL, '$2y$10$XSTmwGdZFluv3zegH4cw1eRYto.2wVeIuHfeGOgC/z5JKrVRj8ebm', '0928817228', NULL, 0, NULL, NULL, NULL, '2020-07-17 20:04:59', NULL),
(7, 'Le Minh Hai', 'mhai@gmail.com', NULL, '$2y$10$XFTwi.syIOd.0WhnY0m28OoNmDtjuPj4/4cQ1oSnVeLP/ThVWXsRG', '0988809974', NULL, 0, NULL, NULL, NULL, '2020-07-20 15:25:38', NULL),
(8, 'hoanganh', 'hoanganh51199@gmail.com', NULL, '$2y$10$QQkgMoHPqzGdWqy3xBDv6eHYYeedF5sqPSfD/8UwHqCLUWZA.kzPy', '0767608842', '[{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"87.0.4280.88\",\"time\":\"2021-01-05T07:47:10.402550Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"87.0.4280.88\",\"time\":\"2021-01-07T12:47:37.450661Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"87.0.4280.88\",\"time\":\"2021-01-07T12:48:44.325169Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"87.0.4280.88\",\"time\":\"2021-01-07T12:56:08.545532Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"87.0.4280.141\",\"time\":\"2021-01-08T18:18:07.802508Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"87.0.4280.141\",\"time\":\"2021-01-08T21:01:16.028061Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"87.0.4280.141\",\"time\":\"2021-01-08T21:52:36.788004Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"87.0.4280.141\",\"time\":\"2021-01-09T06:34:40.568086Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"87.0.4280.141\",\"time\":\"2021-01-09T11:08:56.241424Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"87.0.4280.141\",\"time\":\"2021-01-09T16:45:33.965699Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"87.0.4280.141\",\"time\":\"2021-01-12T08:37:27.571158Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"87.0.4280.141\",\"time\":\"2021-01-14T10:25:35.916288Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"87.0.4280.141\",\"time\":\"2021-01-22T16:15:17.092140Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"87.0.4280.141\",\"time\":\"2021-01-23T15:53:38.376212Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"88.0.4324.190\",\"time\":\"2021-03-09T05:36:18.338900Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"88.0.4324.190\",\"time\":\"2021-03-09T05:46:53.224209Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"89.0.4389.82\",\"time\":\"2021-03-14T11:18:14.468779Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"89.0.4389.114\",\"time\":\"2021-04-06T07:48:20.247563Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"89.0.4389.114\",\"time\":\"2021-04-10T19:33:04.974013Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"89.0.4389.114\",\"time\":\"2021-04-11T02:37:46.017618Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"89.0.4389.128\",\"time\":\"2021-04-18T09:46:21.497016Z\"}]', 3, '173 nguyen xi', '2021-01-09__122735883-271826907476063-789357091463215266-n.png', NULL, '2021-01-03 15:34:55', '2021-01-08 20:57:05'),
(9, 'Lê Trí', 'bulong122@gmail.com', NULL, '$2y$10$qdrlpGHDhXeI04.5.q6eo.s03tvPLJOFbBaRUfIMYxUqmN4a06ykW', '078849495', '[{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"87.0.4280.141\",\"time\":\"2021-01-14T08:42:00.217479Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"87.0.4280.141\",\"time\":\"2021-01-24T02:31:02.854235Z\"}]', 1, NULL, '2021-01-09__122735883-271826907476063-789357091463215266-n.png', NULL, '2021-01-12 17:09:01', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_favourite`
--

CREATE TABLE `user_favourite` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uf_product_id` int(11) NOT NULL DEFAULT 0,
  `uf_user_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`),
  ADD UNIQUE KEY `admins_phone_unique` (`phone`);

--
-- Chỉ mục cho bảng `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articles_a_slug_index` (`a_slug`),
  ADD KEY `articles_a_hot_index` (`a_hot`),
  ADD KEY `articles_a_active_index` (`a_active`),
  ADD KEY `articles_a_menu_id_index` (`a_menu_id`);

--
-- Chỉ mục cho bảng `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attributes_atb_name_unique` (`atb_name`),
  ADD KEY `attributes_atb_category_id_index` (`atb_category_id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_c_slug_unique` (`c_slug`),
  ADD KEY `categories_c_parent_id_index` (`c_parent_id`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_cmt_parent_id_index` (`cmt_parent_id`),
  ADD KEY `comments_cmt_product_id_index` (`cmt_product_id`),
  ADD KEY `comments_cmt_admin_id_index` (`cmt_admin_id`),
  ADD KEY `comments_cmt_user_id_index` (`cmt_user_id`);

--
-- Chỉ mục cho bảng `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `import_histories`
--
ALTER TABLE `import_histories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `invoice_entered`
--
ALTER TABLE `invoice_entered`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_entered_ie_suppliere_index` (`ie_suppliere`);

--
-- Chỉ mục cho bảng `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_mn_slug_unique` (`mn_slug`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_pro_slug_unique` (`pro_slug`),
  ADD KEY `products_pro_hot_index` (`pro_hot`),
  ADD KEY `products_pro_active_index` (`pro_active`),
  ADD KEY `products_pro_supplier_id_index` (`pro_supplier_id`);

--
-- Chỉ mục cho bảng `products_attributes`
--
ALTER TABLE `products_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_attributes_pa_product_id_index` (`pa_product_id`),
  ADD KEY `products_attributes_pa_attribute_id_index` (`pa_attribute_id`);

--
-- Chỉ mục cho bảng `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `statics`
--
ALTER TABLE `statics`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `supplieres`
--
ALTER TABLE `supplieres`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_tst_user_id_index` (`tst_user_id`),
  ADD KEY `transactions_tst_admin_id_index` (`tst_admin_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`);

--
-- Chỉ mục cho bảng `user_favourite`
--
ALTER TABLE `user_favourite`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_favourite_uf_product_id_uf_user_id_unique` (`uf_product_id`,`uf_user_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `import_histories`
--
ALTER TABLE `import_histories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT cho bảng `invoice_entered`
--
ALTER TABLE `invoice_entered`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT cho bảng `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `products_attributes`
--
ALTER TABLE `products_attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT cho bảng `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `slides`
--
ALTER TABLE `slides`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `statics`
--
ALTER TABLE `statics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `supplieres`
--
ALTER TABLE `supplieres`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
