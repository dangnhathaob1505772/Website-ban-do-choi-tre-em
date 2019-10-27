-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 26, 2019 lúc 12:51 PM
-- Phiên bản máy phục vụ: 10.3.16-MariaDB
-- Phiên bản PHP: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `nienluan`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `account`
--

CREATE TABLE `account` (
  `id_acc` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_create` datetime NOT NULL,
  `level` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `account`
--

INSERT INTO `account` (`id_acc`, `name`, `email`, `password`, `phone`, `address`, `image`, `date_create`, `level`) VALUES
(1, 'Administator', 'admin@gmail.com', '00ba7ceab606427071d5d755ea99e976', '09090909099', '', '1563853960.png', '2019-07-10 08:09:12', 1),
(2, 'Đào Thanh Huy', 'dthanhhuy1998@gmail.com', '466b9a5a0c914915613967911ccb681f', '0396231322', 'tổ 5, khu phố 10, thị trấn Dương Đông , huyện Phú Quốc, Tỉnh Kiên Giang', '1563240086.jpg', '2019-07-10 00:00:00', 0),
(3, 'Quản trị viên', 'admin2@gmail.com', '202cb962ac59075b964b07152d234b70', '123', 'ABC123', '1563004307.png', '2019-07-10 22:31:33', 1),
(4, 'Nguyễn Thị User', 'user1@gmail.com', '202cb962ac59075b964b07152d234b70', '123', 'ABC123', '1562773168.png', '2019-07-10 22:39:28', 0),
(5, 'User2', 'user2@gmail.com', '202cb962ac59075b964b07152d234b70', '123456', '', 'no-image.jpg', '2019-07-10 22:42:52', 0),
(6, 'Thiện Hoàng', 'thienhoang97@gmail.com', '202cb962ac59075b964b07152d234b70', '0396231322', 'Phú Quốc - Kiên Giang', 'no-image.jpg', '2019-07-19 11:53:54', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blog`
--

CREATE TABLE `blog` (
  `id_blog` int(11) NOT NULL,
  `image` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `summary` text COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `date_upload` datetime NOT NULL,
  `author` int(11) NOT NULL,
  `highlight` tinyint(1) NOT NULL,
  `view` int(11) NOT NULL,
  `flag` tinyint(1) NOT NULL,
  `id_type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `blog`
--

INSERT INTO `blog` (`id_blog`, `image`, `title`, `slug`, `summary`, `content`, `date_upload`, `author`, `highlight`, `view`, `flag`, `id_type`) VALUES
(5, '1562943141.jpg', 'Muốn con yêu thương em và không bị tâm lý \"ra rìa\" thì bố mẹ phải thực hiện việc quan trọng này', 'Muon-con-yeu-thuong-em-va-khong-bi-tam-ly-ra-ria-thi-bo-me-phai-thuc-hien-viec-quan-trong-nay', 'Nhiều bố mẹ lo lắng khi mình sinh thêm em bé sẽ khiến con cảm thấy khó chịu, ghen tỵ với em. Đây là một vài gợi ý giúp bố mẹ khắc phục tình trạng này. <br/>\r\nTâm lí của trẻ thường thay đổi khi mẹ sinh thêm em bé. Không phải bé con nào cũng vui vẻ đón chào thành viên mới, sẵn sàng trở thành những người anh chị tốt và giúp đỡ bố mẹ chăm em. Điều đó phụ thuộc phần lớn vào thái độ và cách hành xử của bố mẹ đấy nhé. ', '<p style=\"text-align:justify\">Bố mẹ lo lắng việc m&igrave;nh sinh em b&eacute; thứ hai sẽ ảnh hưởng đến t&acirc;m l&yacute; của con, b&eacute;&nbsp;lớn c&oacute; thể&nbsp;cảm thấy kh&oacute; chịu, ganh tỵ với em. Đ&acirc;y l&agrave; t&igrave;nh trạng kh&aacute; phổ biến m&agrave;&nbsp;phần lớn nguy&ecirc;n nh&acirc;n l&agrave; do c&aacute;ch ứng xử chưa kh&eacute;o l&eacute;o của bố mẹ c&ugrave;ng&nbsp;những người xung quanh. Do đ&oacute; bố mẹ cần c&oacute; phương ph&aacute;p th&iacute;ch hợp để gi&uacute;p con y&ecirc;u thương em nhỏ hơn. Dưới đ&acirc;y l&agrave; một số c&aacute;ch dạy con ngoan v&agrave; kh&ocirc;ng ghen tỵ với em cho&nbsp;c&aacute;c bậc phụ huynh tham khảo v&agrave; &aacute;p dụng nh&eacute;!</p>\r\n\r\n<p style=\"text-align:justify\"><strong>1. Tập cho con quen với việc c&oacute; em b&eacute;.</strong></p>\r\n\r\n<p style=\"text-align:justify\">Bố mẹ c&oacute; thể kể cho con nghe c&aacute;c&nbsp;c&acirc;u chuyện hoặc&nbsp;d&ugrave;ng những h&igrave;nh ảnh của&nbsp;em b&eacute; sơ sinh để cho con biết&nbsp;ch&uacute;ng&nbsp;đ&aacute;ng y&ecirc;u&nbsp;thế n&agrave;o. Đa số mỗi&nbsp;em b&eacute; đều&nbsp;rất th&iacute;ch chơi với em nhỏ, t&acirc;m l&iacute; của ch&uacute;ng sẽ xem c&aacute;c&nbsp;em giống như đồ chơi của m&igrave;nh v&agrave; y&ecirc;u thương, cưng chiều hết mực. V&igrave; vậy bố mẹ n&ecirc;n&nbsp;cho con chơi c&ugrave;ng&nbsp;với em b&eacute; nh&agrave; h&agrave;ng x&oacute;m hay nh&agrave; bạn b&egrave;, họ h&agrave;ng, điều n&agrave;y sẽ tạo cho con một nền tảng ban đầu&nbsp;gi&uacute;p con c&oacute; thiện cảm v&agrave;&nbsp;y&ecirc;u qu&yacute; em hơn.</p>\r\n\r\n<p style=\"text-align:justify\"><img alt=\"\" src=\"/ckfinder/userfiles/images/post1.jpg\" style=\"width:100%\" /><img alt=\"\" src=\"upload/1848126222.jpg\" style=\"width:100%\" /><img alt=\"\" src=\"http://localhost/nienluan/ckfinder/userfiles/images/post1.jpg\" style=\"width:100%\" /></p>\r\n\r\n<p style=\"text-align:center\"><em>Cho con c&ugrave;ng chơi với những em b&eacute; kh&aacute;c.</em></p>\r\n\r\n<p style=\"text-align:justify\"><strong>2. N&oacute;i cho con nghe về những niềm vui khi c&oacute; em.</strong></p>\r\n\r\n<p style=\"text-align:justify\">Khi con c&oacute; em, b&eacute;&nbsp;sẽ c&oacute; th&ecirc;m bạn để c&ugrave;ng chơi với con.&nbsp;Khi em lớn con v&agrave; em sẽ l&agrave; những người bạn th&acirc;n đến suốt đời. C&oacute; những trường hợp v&igrave; thấy em chỉ ăn v&agrave; ngủ n&ecirc;n nhiều b&eacute; đ&atilde; thất vọng v&igrave; chẳng c&oacute; bạn chơi c&ugrave;ng, vậy n&ecirc;n bố mẹ cần gi&uacute;p con hiểu l&agrave; khi c&ograve;n nhỏ con cũng giống em.&nbsp;Em b&eacute; cần thời gian để lớn hơn v&agrave; mới c&oacute; thể chơi c&ugrave;ng con để con c&oacute; thể y&ecirc;u thương em hơn.</p>\r\n\r\n<p style=\"text-align:justify\"><img alt=\"\" src=\"/ckfinder/userfiles/images/post1-2.jpg\" style=\"width:100%\" /><img alt=\"\" src=\"upload/54122773.jpg\" style=\"width:100%\" /><img alt=\"\" src=\"/nienluan/ckfinder/userfiles/images/post3-2.jpg\" style=\"width:100%\" /><img alt=\"\" src=\"http://localhost/nienluan/ckfinder/userfiles/images/post1-2.jpg\" style=\"width:100%\" /></p>\r\n\r\n<p style=\"text-align:center\"><em>N&oacute;i cho con về những niềm vui khi c&oacute; em.&nbsp;</em></p>\r\n\r\n<p style=\"text-align:justify\"><strong>Cho con biết trước những điều m&agrave; c&oacute; thể con sẽ kh&ocirc;ng th&iacute;ch về em</strong></p>\r\n\r\n<p style=\"text-align:justify\">Nếu con đ&atilde; lớn v&agrave; hiểu chuyện, bố mẹ c&oacute; thể cho b&eacute; biết em kh&ocirc;ng phải l&uacute;c n&agrave;o cũng tươi cười, vui vẻ. Bố mẹ n&ecirc;n giải th&iacute;ch rằng em b&eacute; sơ sinh n&agrave;o cũng sẽ c&oacute; những l&uacute;c quấy kh&oacute;c, n&ocirc;n &oacute;i kể cả con hồi c&ograve;n nhỏ, khi lớn hơn em b&eacute; cũng sẽ chững chạc giống như con để con y&ecirc;u thương em hơn.</p>\r\n\r\n<p style=\"text-align:justify\"><img alt=\"\" src=\"/ckfinder/userfiles/images/post1-3.jpg\" style=\"width:100%\" /><img alt=\"\" src=\"upload/2090394485.jpg\" style=\"width:100%\" /><img alt=\"\" src=\"http://localhost/nienluan/ckfinder/userfiles/images/post1-3.jpg\" style=\"width:100%\" /></p>\r\n\r\n<p style=\"text-align:center\"><em>&nbsp;Mẹ v&agrave; b&eacute; c&ugrave;ng nhau tr&ograve; chuyện.&nbsp;</em></p>\r\n\r\n<p style=\"text-align:justify\"><strong>Đưa con đi mua sắm cho em</strong></p>\r\n\r\n<p style=\"text-align:justify\">Để con c&ugrave;ng lựa quần &aacute;o, đồ chơi cho em sẽ cho con c&oacute; cảm gi&aacute;c m&igrave;nh trở th&agrave;nh người lớn v&agrave; đ&aacute;nh thức bản năng l&agrave;m anh, l&agrave;m chị của b&eacute;. Con sẽ d&agrave;nh t&igrave;nh y&ecirc;u thương v&agrave;o những m&oacute;n đồ m&agrave; con chọn cho em m&igrave;nh. Rồi một ng&agrave;y khi em lớn, con sẽ tự h&agrave;o kể cho em nghe những m&oacute;n đồ m&agrave; con đ&atilde; lựa chọn cho em.&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><img alt=\"\" src=\"/ckfinder/userfiles/images/post1-4.jpg\" style=\"width:100%\" /><img alt=\"\" src=\"upload/1108226304.jpg\" style=\"width:100%\" /><img alt=\"\" src=\"http://localhost/nienluan/ckfinder/userfiles/images/post1-4.jpg\" style=\"width:100%\" /></p>\r\n\r\n<p style=\"text-align:center\"><em>Cả gia đ&igrave;nh c&ugrave;ng đi mua sắm.</em></p>\r\n\r\n<p style=\"text-align:justify\"><strong>Cho con gi&uacute;p bố mẹ chăm em.</strong><br />\r\nĐến khi đủ lớn, con sẽ rất th&iacute;ch cưng nựng em v&agrave; c&ograve;n muốn chăm em. Được bố mẹ hướng dẫn c&aacute;ch chăm em, trẻ sẽ cảm thấy m&igrave;nh c&oacute; &iacute;ch hơn, từ những việc nhỏ như khi lấy khăn, lấy t&atilde;, lấy sữa cho em đến&nbsp;h&aacute;t cho em nghe, ẵm em,...&nbsp;T&ugrave;y theo độ tuổi của con m&agrave; bố mẹ n&ecirc;n cho con tham gia v&agrave;o những việc c&oacute; thể gi&uacute;p bố mẹ chăm em. Điều n&agrave;y cũng sẽ gi&uacute;p con thể hiện t&igrave;nh cảm với em m&igrave;nh.&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><img alt=\"\" src=\"/ckfinder/userfiles/images/post1-5.jpg\" style=\"width:100%\" /><img alt=\"\" src=\"upload/1516307028.jpg\" style=\"width:100%\" /><img alt=\"\" src=\"http://localhost/nienluan/ckfinder/userfiles/images/post1-5.jpg\" style=\"width:100%\" /></p>\r\n\r\n<p style=\"text-align:center\"><em>Con gi&uacute;p mẹ.</em></p>\r\n\r\n<p style=\"text-align:justify\"><strong>Dạy con c&aacute;ch n&oacute;i chuyện, chơi với em</strong></p>\r\n\r\n<p style=\"text-align:justify\">Đ&acirc;y l&agrave; c&aacute;ch gi&uacute;p cho con v&agrave; em trở n&ecirc;n gần gũi, th&acirc;n thiết nhau hơn. Tuy nhi&ecirc;n bố mẹ phải lu&ocirc;n b&ecirc;n cạnh c&aacute;c con v&igrave; ch&uacute;ng&nbsp;c&ograve;n qu&aacute; nhỏ kh&ocirc;ng thể xử l&iacute; những t&igrave;nh huống bất ngờ xảy ra. Bố mẹ c&oacute; thể c&ugrave;ng c&aacute;c con chơi đ&ugrave;a để tạo kh&ocirc;ng kh&iacute; vui vẻ&nbsp;cho cả nh&agrave; qua đ&oacute; cho b&eacute; hiểu được bố mẹ cũng d&agrave;nh nhiều t&igrave;nh cảm cho con để con kh&ocirc;ng ghen tỵ với em.</p>\r\n\r\n<p style=\"text-align:justify\"><img alt=\"\" src=\"/ckfinder/userfiles/images/post1-6.jpg\" style=\"width:100%\" /><img alt=\"\" src=\"upload/202494457.jpg\" style=\"width:100%\" /><img alt=\"\" src=\"http://localhost/nienluan/ckfinder/userfiles/images/post1-6.jpg\" style=\"width:100%\" /></p>\r\n\r\n<p style=\"text-align:center\"><em>Con v&agrave; em c&ugrave;ng chơi với nhau.</em></p>\r\n\r\n<p style=\"text-align:justify\"><strong>Khen ngợi con</strong></p>\r\n\r\n<p style=\"text-align:justify\">Những l&uacute;c&nbsp;nhờ con lấy t&atilde; hay lấy khăn cho em th&igrave; đừng qu&ecirc;n cảm ơn v&agrave; khen con nh&eacute; mẹ! Trẻ con rất th&iacute;ch được bố mẹ khen, trẻ sẽ cảm thấy m&igrave;nh ra d&aacute;ng người anh, người chị v&agrave;&nbsp;việc c&oacute; th&ecirc;m em sẽ khiến m&igrave;nh trưởng th&agrave;nh hơn.&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><img alt=\"\" src=\"/ckfinder/userfiles/images/post1-7.jpg\" style=\"width:100%\" /><img alt=\"\" src=\"upload/522709151.jpg\" style=\"width:100%\" /><img alt=\"\" src=\"http://localhost/nienluan/ckfinder/userfiles/images/post1-7.jpg\" style=\"width:100%\" /></p>\r\n\r\n<p style=\"text-align:center\"><em>Khen ngợi con.</em></p>\r\n\r\n<p style=\"text-align:justify\"><strong>Tận dụng thời gian để ở b&ecirc;n con</strong></p>\r\n\r\n<p style=\"text-align:justify\">Khi rảnh rỗi&nbsp;th&igrave; bố mẹ h&atilde;y ở b&ecirc;n tr&ograve; chuyện với trẻ, chơi c&ugrave;ng con để con hiểu được d&ugrave; bận rộn nhưng&nbsp;<a href=\"http://www.yan.vn/cac-loai-hat-se-giup-be-phat-trien-tri-nao-toan-dien-tu-trong-bung-me-164797.html?utm_campaign=InternallinkYAN&amp;utm_source=164615&amp;utm_medium=noniadesktop\" target=\"_blank\">bố mẹ</a>&nbsp;vẫn d&agrave;nh thời gian cho con, vẫn y&ecirc;u thương con. Qua những cuộc tr&ograve; chuyện n&agrave;y bố mẹ cũng c&oacute; thể hiểu con c&oacute; điều g&igrave; kh&oacute; chịu ở em để c&oacute; thể giải th&iacute;ch v&agrave; điều chỉnh để cho con hiểu v&agrave; y&ecirc;u thương em hơn. H&atilde;y gi&uacute;p con n&oacute;i ra những suy nghĩ của m&igrave;nh, dạy cho con biết y&ecirc;u thương, san sẻ t&igrave;nh cảm với em.</p>\r\n\r\n<p style=\"text-align:justify\"><img alt=\"\" src=\"/ckfinder/userfiles/images/post1-8.jpg\" style=\"width:100%\" /><img alt=\"\" src=\"upload/496849939.jpg\" style=\"width:100%\" /><img alt=\"\" src=\"http://localhost/nienluan/ckfinder/userfiles/images/post1-8.jpg\" style=\"width:100%\" /></p>\r\n\r\n<p style=\"text-align:center\"><em>D&agrave;nh nhiều thời gian cho con.</em></p>\r\n\r\n<p style=\"text-align:justify\"><strong>Để em b&eacute; tặng qu&agrave; cho con</strong></p>\r\n\r\n<p style=\"text-align:justify\">Bạn n&ecirc;n chuẩn bị sẵn&nbsp;một m&oacute;n qu&agrave; nho&nbsp;nhỏ, xinh xinh rồi cho em b&eacute; để tặng anh, chị của m&igrave;nh. C&oacute; đứa trẻ n&agrave;o lại kh&ocirc;ng th&iacute;ch được tặng qu&agrave; chứ, điều n&agrave;y sẽ gi&uacute;p con c&oacute; thể cảm t&igrave;nh với em. Con sẽ thấy khi c&oacute; em m&igrave;nh vừa c&oacute; th&ecirc;m bạn c&ugrave;ng chơi lại c&oacute; th&ecirc;m qu&agrave; nữa, c&ograve;n g&igrave; th&iacute;ch bằng!&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><img alt=\"\" src=\"/ckfinder/userfiles/images/post1-9.jpg\" style=\"width:100%\" /><img alt=\"\" src=\"upload/1620589332.jpg\" style=\"width:100%\" /><img alt=\"\" src=\"http://localhost/nienluan/ckfinder/userfiles/images/post1-9.jpg\" style=\"width:100%\" /></p>\r\n\r\n<p style=\"text-align:center\"><em>Tặng qu&agrave; cho con.</em></p>\r\n\r\n<p style=\"text-align:justify\">Thực ra kh&ocirc;ng phải đứa trẻ n&agrave;o cũng sẽ cảm thấy kh&oacute; chịu khi c&oacute;&nbsp;<a href=\"http://www.yan.vn/nhung-loai-thuc-pham-me-nen-an-de-be-co-lan-da-dep-164735.html?utm_campaign=InternallinkYAN&amp;utm_source=164615&amp;utm_medium=noniadesktop\" target=\"_blank\">em b&eacute;</a>. Điều quan trọng l&agrave; bố mẹ cần lắng nghe v&agrave; điều chỉnh cảm x&uacute;c của m&igrave;nh để con cảm thấy vui khi c&oacute; em v&agrave; y&ecirc;u thương em nhiều hơn. Hi vọng với những gợi &yacute; tr&ecirc;n đ&acirc;y qu&yacute; vị phụ huynh sẽ c&oacute; th&ecirc;m những c&aacute;ch để gi&uacute;p c&aacute;c con c&oacute; th&ecirc;m t&igrave;nh cảm với nhau.</p>\r\n\r\n<p style=\"text-align:right\">Ảnh: Internet</p>\r\n', '2019-07-12 20:14:27', 1, 1, 75, 1, 2),
(6, '1562943783.jpg', 'Bé khỏe mẹ vui chỉ bằng 5 nguyên tắc xây dựng thực đơn mùa hè đơn giản mà hiệu quả', 'Be-khoe-me-vui-chi-bang-5-nguyen-tac-xay-dung-thuc-don-mua-he-don-gian-ma-hieu-qua', 'Dù đang ở mùa nào đi nữa, chế độ dinh dưỡng đối với bé là vô cùng quan trọng. Làm thế nào để mẹ xây dựng thực đơn mùa hè vượt nóng lại an toàn cho bé? <br/>\r\nMùa hè đến, mang theo cái nóng oi bức khiến người ta rất khó chịu. Đối với trẻ nhỏ, đây là thời điểm bé rất dễ mệt mỏi, biếng ăn hơn bình thường. Vậy các mẹ cần xây dựng một thực đơn ăn uống phù hợp cho trẻ vào mùa hè như thế nào?', '<p>Cơ thể trẻ nhỏ rất mỏng manh v&agrave; nhạy cảm bất kể thời gian n&agrave;o. Nhất l&agrave; v&agrave;o m&ugrave;a h&egrave;, b&eacute; sẽ thường kh&ocirc;ng ăn ngon miệng bởi kh&iacute; trời n&oacute;ng bức v&agrave; sự chuyển m&ugrave;a giữa xu&acirc;n sang h&egrave;, rất dễ l&agrave;m b&eacute; bị bệnh.&nbsp;V&igrave; thế, để chăm s&oacute;c sức khỏe tốt nhất cho&nbsp;<a href=\"http://www.yan.vn/tro-tai-lam-pancake-cho-be-yeu-102477.html?utm_campaign=InternallinkYAN&amp;utm_source=165995&amp;utm_medium=noniadesktop\" target=\"_blank\">b&eacute; y&ecirc;u</a>, c&aacute;c mẹ h&atilde;y tham khảo những nguy&ecirc;n tắc x&acirc;y dựng thực đơn ng&agrave;y h&egrave; cho con sau đ&acirc;y nh&eacute;.</p>\r\n\r\n<p><img alt=\"\" src=\"/ckfinder/userfiles/images/post2.jpg\" style=\"width:100%\" /></p>\r\n\r\n<p style=\"text-align:justify\"><strong>1. Kh&ocirc;ng bỏ qua bất k&igrave; nh&oacute;m dinh dưỡng&nbsp;n&agrave;o</strong></p>\r\n\r\n<p style=\"text-align:justify\"><a href=\"http://www.yan.vn/tuyen-tap-phuong-phap-tri-chung-suy-dinh-duong-o-tre-ma-me-nen-luu-y-165635.html?utm_campaign=InternallinkYAN&amp;utm_source=165995&amp;utm_medium=noniadesktop\" target=\"_blank\">Dinh dưỡng</a>&nbsp;chiếm một phần v&ocirc; c&ugrave;ng quan trọng trong qu&aacute; tr&igrave;nh ph&aacute;t triển của trẻ. Kh&ocirc;ng những v&agrave;o m&ugrave;a h&egrave; m&agrave; tất cả mọi thời điểm kh&aacute;c, mẹ phải lu&ocirc;n ghi nhớ qui tắc kh&ocirc;ng được bỏ qua bất k&igrave; nh&oacute;m dưỡng chất ch&iacute;nh n&agrave;o cho trẻ bao gồm chất đường bột, chất đạm, chất b&eacute;o,&nbsp;vitamin v&agrave; kho&aacute;ng chất. Theo trung b&igrave;nh, mỗi trẻ cần được bổ sung từ 50 - 60 loại dưỡng chất đến từ 4 nh&oacute;m dưỡng chất tr&ecirc;n để đ&aacute;p ứng nhu cầu ph&aacute;t triển b&igrave;nh thường&nbsp;của trẻ.</p>\r\n\r\n<p style=\"text-align:justify\"><img alt=\"\" src=\"/ckfinder/userfiles/images/post2-2.jpg\" style=\"width:100%\" /><img alt=\"\" src=\"http://localhost/nienluan/ckfinder/userfiles/images/post2.jpg\" style=\"width:100%\" /></p>\r\n\r\n<p style=\"text-align:center\"><em>C&aacute;c mẹ nhớ cho b&eacute; ăn đủ 4 nh&oacute;m dưỡng chất v&agrave;o m&ugrave;a h&egrave;.</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><strong>2. Ưu ti&ecirc;n những thực phẩm<a href=\"http://www.yan.vn/sai-lam-cua-viec-vua-do-mo-hoi-vua-uong-nuoc-105800.html?utm_campaign=InternallinkYAN&amp;utm_source=165995&amp;utm_medium=noniadesktop\" target=\"_blank\">&nbsp;b&ugrave; nước&nbsp;</a>cho b&eacute;</strong></p>\r\n\r\n<p style=\"text-align:justify\">Thời tiết m&ugrave;a h&egrave; rất oi bức m&agrave; trẻ thường hiếu động, chạy nhảy v&agrave; mất nhiều mồ h&ocirc;i nhưng lại lười uống nước. V&igrave; thế h&atilde;y&nbsp;cho trẻ uống nhiều nước nhưng hạn chế uống nước lạnh, nước đ&aacute; v&igrave; dễ l&agrave;m trẻ bị vi&ecirc;m họng. B&ecirc;n cạnh đ&oacute; cần&nbsp;bổ sung ngay những thực phẩm b&ugrave; nước, b&ugrave; vitamin cho trẻ bằng c&aacute;c loại tr&aacute;i c&acirc;y tươi như cam, bưởi, kiwi, dưa hấu, dứa, c&agrave; chua... Nếu trẻ lười ăn tr&aacute;i c&acirc;y th&igrave; h&atilde;y &eacute;p lấy nước cho trẻ uống. Để giữ da trẻ kh&ocirc;ng bị kh&ocirc; v&agrave;o m&ugrave;a h&egrave;, c&aacute;c mẹ cũng cần bổ sung vitamin A cho con từ c&aacute;c loại củ quả như khoai lang, c&agrave; rốt, đu đủ, b&iacute; đỏ...</p>\r\n\r\n<p style=\"text-align:justify\"><img alt=\"\" src=\"/ckfinder/userfiles/images/post2-3.jpg\" style=\"width:100%\" /><img alt=\"\" src=\"http://localhost/nienluan/ckfinder/userfiles/images/post2-2.jpg\" style=\"width:100%\" /></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><img alt=\"\" src=\"http://localhost/nienluan/ckfinder/userfiles/images/post2-3.jpg\" style=\"width:100%\" /></p>\r\n\r\n<p style=\"text-align:center\"><em>B&ugrave; nước v&agrave;o m&ugrave;a n&oacute;ng cho trẻ bằng những loại nước &eacute;p.</em></p>\r\n\r\n<p style=\"text-align:justify\"><strong>3. Bổ sung ngay những m&oacute;n ăn/thức uống giải nhiệt</strong></p>\r\n\r\n<p style=\"text-align:justify\">Kh&ocirc;ng chỉ người lớn m&agrave; c&aacute;c b&eacute; cũng cần c&oacute; nhu cầu giải nhiệt, giải độc cho cơ thể, nhất l&agrave; v&agrave;o thời điểm nắng n&oacute;ng. Thời tiết oi ả, dễ l&agrave;m b&eacute; nổi r&ocirc;m sảy, đổ mồ h&ocirc;i trộm... V&igrave; thế, h&atilde;y bổ sung&nbsp;nhiều loại rau xanh trong bữa ăn h&agrave;ng ng&agrave;y của b&eacute;. Bạn c&oacute; thể chế biến th&agrave;nh những m&oacute;n canh rau ngon miệng m&agrave; lại hữu dụng trong việc giải nhiệt như canh rau dền, mồng tơi, rau ng&oacute;t... Những m&oacute;n ăn lỏng, dễ ti&ecirc;u rất được khuyến kh&iacute;ch &aacute;p dụng cho trẻ như c&aacute;c m&oacute;n&nbsp;<a href=\"http://www.yan.vn/cach-nau-cac-mon-chao-dinh-duong-cho-tre-an-dam-164019.html?utm_campaign=InternallinkYAN&amp;utm_source=165995&amp;utm_medium=noniadesktop\" target=\"_blank\">ch&aacute;o</a>,&nbsp;<a href=\"http://www.yan.vn/cach-lam-mon-sup-toi-kieu-phap-165739.html?utm_campaign=InternallinkYAN&amp;utm_source=165995&amp;utm_medium=noniadesktop\" target=\"_blank\">s&uacute;p</a>. Nước dừa, nước m&iacute;a, rau m&aacute; cũng l&agrave; một lựa chọn th&ocirc;ng minh gi&uacute;p b&eacute; cưng giải nhiệt m&ugrave;a n&oacute;ng.</p>\r\n\r\n<p style=\"text-align:justify\"><img alt=\"\" src=\"/ckfinder/userfiles/images/post2-4.jpg\" style=\"width:100%\" /><img alt=\"\" src=\"http://localhost/nienluan/ckfinder/userfiles/images/post2-4.jpg\" style=\"width:100%\" /></p>\r\n\r\n<p style=\"text-align:center\"><em>C&aacute;c loại ch&aacute;o gi&uacute;p b&eacute; dễ ti&ecirc;u h&oacute;a.</em></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://localhost/nienluan/ckfinder/userfiles/images/post2-5.jpg\" style=\"width:100%\" /><em><img alt=\"\" src=\"/ckfinder/userfiles/images/post2-5.jpg\" style=\"width:100%\" /></em></p>\r\n\r\n<p style=\"text-align:center\"><em>Canh rau dền rất hữu dụng trong việc giải nhiệt cho b&eacute;.</em></p>\r\n\r\n<p><em><img alt=\"\" src=\"/ckfinder/userfiles/images/post2-6.jpg\" style=\"width:100%\" /><img alt=\"\" src=\"http://localhost/nienluan/ckfinder/userfiles/images/post2-6.jpg\" style=\"width:100%\" /></em></p>\r\n\r\n<p style=\"text-align:center\"><em>Nước dừa l&agrave; sự lựa chọn tuyệt vời để giải nhiệt ng&agrave;y n&oacute;ng cho con y&ecirc;u.</em></p>\r\n\r\n<p style=\"text-align:justify\"><strong>4. Kh&ocirc;ng qu&ecirc;n những thực phẩm tăng cường sức đề kh&aacute;ng, k&iacute;ch th&iacute;ch sự ngon miệng</strong></p>\r\n\r\n<p style=\"text-align:justify\">Thời điểm<a href=\"http://www.yan.vn/ron-rang-xuong-pho-ngay-giao-mua-dep-me-hon-nhu-truc-diem-74404.html?utm_campaign=InternallinkYAN&amp;utm_source=165995&amp;utm_medium=noniadesktop\" target=\"_blank\">&nbsp;giao m&ugrave;a</a>, nhất l&agrave; từ xu&acirc;n sang h&egrave;, cộng th&ecirc;m độ ẩm kh&ocirc;ng kh&iacute; cao c&agrave;ng&nbsp;tăng th&ecirc;m nguy cơ bị bệnh ở trẻ. Nếu kh&ocirc;ng chăm chỉ bổ sung những loại thực phẩm tăng cường sức đề kh&aacute;ng cho trẻ th&igrave; việc b&eacute; hay bị bệnh v&agrave;o m&ugrave;a n&agrave;y l&agrave; điều kh&ocirc;ng thể tr&aacute;nh khỏi.</p>\r\n\r\n<p style=\"text-align:justify\">Vitamin C c&oacute; trong c&aacute;c loại tr&aacute;i c&acirc;y c&oacute; m&uacute;i, dứa, rau đay...đ&oacute;ng g&oacute;p&nbsp;vai tr&ograve; đặc biệt quan trọng trong việc tăng cường hệ thống miễn dịch, bảo vệ cơ thể trẻ khỏi chứng cảm lạnh, cảm c&uacute;m. Ngo&agrave;i ra cần ch&uacute; &yacute; lựa chọn những loại rau c&oacute; m&agrave;u sắc tự nhi&ecirc;n tươi tắn như rau dền, mồng tơi...gi&uacute;p k&iacute;ch th&iacute;ch cảm gi&aacute;c ngon miệng của b&eacute;.</p>\r\n\r\n<p style=\"text-align:justify\">Ngo&agrave;i ra, kẽm cũng c&oacute; c&ocirc;ng dụng tốt trong việc k&iacute;ch th&iacute;ch vị gi&aacute;c của trẻ, cho con ăn ngay những thực phẩm gi&agrave;u kẽm v&agrave;o m&ugrave;a h&egrave; như s&ograve;, t&ocirc;m, cua, đậu n&agrave;nh, đậu H&agrave; Lan...</p>\r\n\r\n<p style=\"text-align:justify\"><img alt=\"\" src=\"/ckfinder/userfiles/images/post2-7.jpg\" style=\"width:100%\" /><img alt=\"\" src=\"http://localhost/nienluan/ckfinder/userfiles/images/post2-7.jpg\" style=\"width:100%\" /></p>\r\n\r\n<p style=\"text-align:center\"><em>&nbsp;Bổ sung những thực phẩm tăng cường sức đề kh&aacute;ng cho trẻ.</em></p>\r\n\r\n<p style=\"text-align:justify\"><strong>5. Cần lắm những thực phẩm gi&uacute;p trẻ ngon giấc</strong></p>\r\n\r\n<p style=\"text-align:justify\">Thời tiết oi bức kh&ocirc;ng chỉ l&agrave;m người lớn ngủ kh&ocirc;ng ngon m&agrave; c&aacute;c b&eacute; cũng kh&oacute; c&oacute; thể say giấc được. Để trẻ được ngủ ngon, kh&ocirc;ng bị thức giấc th&igrave; c&aacute;c mẹ h&atilde;y th&ecirc;m những loại thực phẩm&nbsp;như t&aacute;o, chuối, sữa, hạt sen... Trong t&aacute;o chứa nhiều vitamin A, canxi...c&oacute; t&aacute;c dụng an thần lớn, l&agrave;m trẻ đi v&agrave;o giấc ngủ dễ d&agrave;ng. Chuối l&agrave; loại tr&aacute;i c&acirc;y l&agrave;nh t&iacute;nh, chứa melatonin v&agrave; serotanin, g&oacute;p phần điều chỉnh chu tr&igrave;nh giấc ngủ v&agrave; gi&uacute;p cơ thể b&eacute; thư gi&atilde;n, dễ ngủ hơn.</p>\r\n\r\n<p style=\"text-align:justify\">B&ecirc;n cạnh t&aacute;o, chuối, chất trytophan c&oacute; trong sữa c&oacute; t&aacute;c dụng ức chế hệ thần kinh trung ương, g&acirc;y buồn ngủ cho b&eacute;. Với trẻ c&ograve;n b&uacute; mẹ, nguồn sữa an to&agrave;n nhất cho trẻ kh&ocirc;ng g&igrave; ngo&agrave;i sữa mẹ. Mẹ n&ecirc;n duy tr&igrave; cho trẻ b&uacute;&nbsp;<a href=\"http://www.yan.vn/nhung-luu-y-khi-nuoi-con-me-can-nho-giup-tre-tang-cuong-suc-de-khang-165259.html?utm_campaign=InternallinkYAN&amp;utm_source=165995&amp;utm_medium=noniadesktop\" target=\"_blank\">sữa mẹ</a>&nbsp;nhiều lần trong ng&agrave;y nhưng kh&ocirc;ng được qu&aacute; no. Nếu trẻ n&agrave;o kh&ocirc;ng b&uacute; sữa mẹ nữa th&igrave; một cốc sữa ấm trước&nbsp;khi đi ngủ sẽ gi&uacute;p trẻ ngủ ngon lắm đấy.</p>\r\n\r\n<p style=\"text-align:justify\"><img alt=\"\" src=\"/ckfinder/userfiles/images/post2-8.jpg\" style=\"width:100%\" /><img alt=\"\" src=\"http://localhost/nienluan/ckfinder/userfiles/images/post2-8.jpg\" style=\"width:100%\" /></p>\r\n\r\n<p style=\"text-align:center\"><em>T&aacute;o v&agrave; chuối gi&uacute;p b&eacute; dễ ngủ v&agrave;o m&ugrave;a n&oacute;ng bức.</em></p>\r\n\r\n<p><em><img alt=\"\" src=\"/ckfinder/userfiles/images/post2-9.jpg\" style=\"width:100%\" /><img alt=\"\" src=\"http://localhost/nienluan/ckfinder/userfiles/images/post2-9.jpg\" style=\"width:100%\" /></em></p>\r\n\r\n<p style=\"text-align:center\"><em>&quot;Sữa mẹ l&agrave; sữa tốt nhất cho trẻ sơ sinh v&agrave; trẻ nhỏ&quot;.</em></p>\r\n\r\n<p style=\"text-align:justify\">H&egrave; đến th&igrave; vui thật đấy nhưng cũng mang nhiều mối nguy cơ về bệnh tật cho trẻ v&igrave; thời tiết oi bức dễ l&agrave;m thực phẩm bị &ocirc;i thiu, nhiễm khuẩn. Mong rằng 5 nguy&ecirc;n tắc x&acirc;y dựng thực đơn ng&agrave;y h&egrave; tr&ecirc;n cho b&eacute; sẽ gi&uacute;p c&aacute;c mẹ c&oacute; chế độ ăn uống khoa học v&agrave; an to&agrave;n, chăm s&oacute;c sức khỏe của b&eacute; y&ecirc;u được tốt hơn. &quot;M&ugrave;a n&agrave;o thức ấy&quot; vẫn hơn phải kh&ocirc;ng c&aacute;c mẹ?</p>\r\n\r\n<p style=\"text-align:right\">Ảnh: Internet</p>\r\n', '2019-07-12 21:19:27', 1, 1, 131, 1, 2),
(7, '1562944320.jpg', '\"Tan chảy\" với loạt ý tưởng chụp ảnh siêu đáng yêu dành cho bé cưng', 'Tan-chay-voi-loat-y-tuong-chup-anh-sieu-dang-yeu-danh-cho-be-cung', 'Việc lưu giữ những phút giây dễ thương, nhắng nhít của bé luôn được bố mẹ hết mực quan tâm. Nhưng nếu đang \"bí\" ý tưởng cho album ảnh cho con thì làm sao đây? <br/>\r\nSự dễ thương, hồn nhiên của các thiên thần nhỏ luôn khiến bố mẹ thích thú mãi không thôi. Vậy tại sao không làm ngay một bộ ảnh để lưu giữ những khoảnh khắc đáng yêu này của con?', '<p>Kh&ocirc;ng chỉ c&oacute; người lớn mới đến&nbsp;<a href=\"http://www.yan.vn/mach-ban-cach-chup-anh-trong-nha-ma-ao-kho-do-100133.html?utm_campaign=InternallinkYAN&amp;utm_source=165901&amp;utm_medium=noniadesktop\" target=\"_blank\">studio</a>&nbsp;để chụp ảnh,&nbsp;ng&agrave;y nay, kh&ocirc;ng chỉ dừng lại ở việc d&ugrave;ng điện thoại th&ocirc;ng minh&nbsp;chụp h&igrave;nh cho b&eacute;. C&aacute;c bậc cha mẹ đ&atilde; đưa c&aacute;c b&eacute; đến studio để c&oacute; những bức ảnh sắc n&eacute;t v&agrave; độc đ&aacute;o hơn. Nếu cha mẹ n&agrave;o đang loay hoay kh&ocirc;ng biết lựa chọn &yacute; tưởng n&agrave;o cho album ảnh của b&eacute; th&igrave; h&atilde;y tham khảo những bức ảnh sau đ&acirc;y nh&eacute;.</p>\r\n\r\n<p><img alt=\"\" src=\"/ckfinder/userfiles/images/post3.jpg\" style=\"width:100%\" /><img alt=\"\" src=\"http://localhost/nienluan/ckfinder/userfiles/images/post3.jpg\" style=\"width:100%\" /></p>\r\n\r\n<p style=\"text-align:center\"><em>Cho b&eacute; h&oacute;a th&acirc;n th&agrave;nh&nbsp;<a href=\"http://www.yan.vn/13-dieu-chua-biet-ve-bo-phim-hoat-hinh-nang-tien-ca-39896.html?utm_campaign=InternallinkYAN&amp;utm_source=165901&amp;utm_medium=noniadesktop\" target=\"_blank\">n&agrave;ng ti&ecirc;n c&aacute;&nbsp;</a>đu&ocirc;i xanh như thế n&agrave;y. (Ảnh: Linh L&ecirc; )</em></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://localhost/nienluan/ckfinder/userfiles/images/post3-1.jpg\" style=\"width:100%\" /><em><img alt=\"\" src=\"/ckfinder/userfiles/images/post3-1.jpg\" style=\"width:100%\" /></em></p>\r\n\r\n<p style=\"text-align:center\"><em>C&oacute; con s&acirc;u m&agrave;u xanh n&agrave;o m&agrave; đ&aacute;ng y&ecirc;u như thế n&agrave;y kh&ocirc;ng chứ? (Ảnh: Hứa B&iacute;ch )</em></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://localhost/nienluan/ckfinder/userfiles/images/post3-2.jpg\" style=\"width:100%\" /><em><img alt=\"\" src=\"/ckfinder/userfiles/images/post3-2.jpg\" style=\"width:100%\" /></em></p>\r\n\r\n<p style=\"text-align:center\"><em>Sử dụng hộp giấy biến trẻ th&agrave;nh ch&uacute; phi c&ocirc;ng t&iacute; hon. (Ảnh: Viet Nga)&nbsp;</em></p>\r\n\r\n<p><em><img alt=\"\" src=\"/ckfinder/userfiles/images/post3-3.jpg\" style=\"width:100%\" /><img alt=\"\" src=\"http://localhost/nienluan/ckfinder/userfiles/images/post3-3.jpg\" style=\"width:100%\" /></em></p>\r\n\r\n<p style=\"text-align:center\"><em>Nhanh tay bắt trọn khoảnh khắc v&ocirc; c&ugrave;ng tự nhi&ecirc;n n&agrave;y của b&eacute; nh&eacute;! (Ảnh: B&eacute; Miin&#39;s)</em></p>\r\n\r\n<p style=\"text-align:center\"><em><img alt=\"\" src=\"/ckfinder/userfiles/images/post3-5.jpg\" style=\"width:100%\" /><img alt=\"\" src=\"http://localhost/nienluan/ckfinder/userfiles/images/post3-5.jpg\" style=\"width:100%\" /></em></p>\r\n\r\n<p style=\"text-align:center\"><em>Nh&agrave; c&oacute; 5 ch&uacute; gấu n&egrave; mẹ ơi! (Ảnh: Hằng Phạm)</em></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://localhost/nienluan/ckfinder/userfiles/images/post3-4.jpg\" style=\"width:100%\" /><em><img alt=\"\" src=\"/ckfinder/userfiles/images/post3-4.jpg\" style=\"width:100%\" /></em></p>\r\n\r\n<p style=\"text-align:center\"><em>Chụp ảnh Tết th&igrave; đừng qu&ecirc;n diện &aacute;o d&agrave;i cho b&eacute;&nbsp;thế n&agrave;y nh&eacute;! (Ảnh: &Aacute;nh H&agrave;)</em></p>\r\n\r\n<p style=\"text-align:justify\">D&ugrave; chụp ở g&oacute;c độ n&agrave;o th&igrave; b&eacute; cũng si&ecirc;u đ&aacute;ng y&ecirc;u. H&atilde;y nhanh nhanh thực hiện ngay một&nbsp;bộ ảnh lưu giữ khoảnh khắc ngọt ng&agrave;o, si&ecirc;u nhắng của b&eacute; đi n&agrave;o. Mong rằng với 30 gợi &yacute; tr&ecirc;n, bố mẹ sẽ c&oacute; th&ecirc;m &yacute; tưởng tạo n&ecirc;n một bộ sưu tập đặc sắc cho b&eacute; cưng nh&eacute;.</p>\r\n\r\n<p style=\"text-align:right\">Ảnh: Internet</p>\r\n', '2019-07-12 22:12:00', 1, 1, 101, 1, 2),
(8, '1562985311.jpg', 'Khi bé yêu 6 tháng tuổi, mẹ nhớ note ngay những loại thực phẩm giúp con phát triển vượt trội', 'Khi-be-yeu-6-thang-tuoi-me-nho-note-ngay-nhung-loai-thuc-pham-giup-con-phat-trien-vuot-troi', 'Khi bé yêu được 6 tháng tuổi sẽ bước vào giai đoạn ăn dặm. Mẹ cần chú ý chuẩn bị những loại thực phầm tốt cho con phát triển khỏe mạnh và thông minh. <br/>\r\n6 tháng tuổi là giai đoạn trẻ trong độ bắt đầu làm quen các thực phẩm khác ngoài sữa mẹ. Lúc này, mẹ vẫn cần tiến hành song song việc cho bé bú và làm quen với các loại thức ăn rắn khác để đảm bảo đủ chất dinh dưỡng cung cấp cho bé, giúp bé không những lớn nhanh mà còn thông minh.', '<p style=\"text-align:justify\">Ở giai đoạn n&agrave;y, cơ thể b&eacute; đ&atilde; bắt đầu cần&nbsp;nguồn&nbsp;<a href=\"http://www.yan.vn/cach-nau-cac-mon-chao-dinh-duong-cho-tre-an-dam-164019.html?utm_campaign=InternallinkYAN&amp;utm_source=167134&amp;utm_medium=noniadesktop\" target=\"_blank\">dinh dưỡng</a>&nbsp;cao hơn. Mẹ c&oacute; thể đa dạng c&aacute;c m&oacute;n trong khẩu phần ăn để b&eacute; kh&ocirc;ng bị thiếu chất v&agrave; được thay đổi khẩu vị thường xuy&ecirc;n. Tuy nhi&ecirc;n kh&ocirc;ng phải thực phẩm n&agrave;o chứa nhiều dinh dưỡng cũng ph&ugrave; hợp với trẻ đ&acirc;u nh&eacute;. Mẹ cần chuẩn bị những loại thực phẩm tốt cho b&eacute;, v&agrave; cung cấp th&ecirc;m được nguồn dưỡng chất để con ph&aacute;t triển khỏe mạnh.</p>\r\n\r\n<p style=\"text-align:justify\"><img alt=\"\" src=\"/ckfinder/userfiles/images/post4.jpg\" style=\"width:100%\" /><img alt=\"\" src=\"http://localhost/nienluan/ckfinder/userfiles/images/post4.jpg\" style=\"width:100%\" /></p>\r\n\r\n<p style=\"text-align:justify\"><strong>C&aacute;c loại ngũ cốc</strong></p>\r\n\r\n<p style=\"text-align:justify\">Ngũ cốc l&agrave; m&oacute;n ăn l&iacute; thưởng cho c&aacute;c b&eacute;&nbsp;6 th&aacute;ng tuổi, v&igrave; n&oacute; rất dễ hấp thu v&agrave; ti&ecirc;u h&oacute;a. Đ&acirc;y cũng l&agrave; nguồn thực phẩm c&oacute; h&agrave;m lượng sắt cao cần thiết cho cơ thể b&eacute;. Sắt l&agrave; dưỡng chất kh&ocirc;ng thể thiếu đối với b&eacute;, tốt cho hệ thần kinh, ngăn ngừa nguy cơ thiếu m&aacute;u v&agrave; gi&uacute;p t&aacute;i tạo tế b&agrave;o m&aacute;u cho cơ thể.</p>\r\n\r\n<p style=\"text-align:justify\">Mẹ c&oacute;&nbsp;thể xay c&aacute;c loại ngũ cốc th&agrave;nh bột, v&agrave; t&ugrave;y nhu cầu, c&oacute; thể chế biến từ một hoặc nhiều loại ngũ cốc c&ugrave;ng nhau để nấu ch&aacute;o, hoặc l&agrave;m bột pha với sữa cho b&eacute; ăn.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://localhost/nienluan/ckfinder/userfiles/images/post4-1.jpg\" style=\"width:100%\" /><img alt=\"\" src=\"/ckfinder/userfiles/images/post4-1.jpg\" style=\"width:100%\" /></p>\r\n\r\n<p style=\"text-align:justify\"><strong>Thịt b&ograve;</strong></p>\r\n\r\n<p style=\"text-align:justify\">Thịt b&ograve; chứa nhiều&nbsp;<a href=\"http://www.yan.vn/top-9-loai-thuc-pham-giau-protein-me-nen-an-trong-nhung-ngay-thai-ki-163983.html?utm_campaign=InternallinkYAN&amp;utm_source=167134&amp;utm_medium=noniadesktop\" target=\"_blank\">protein</a>&nbsp;v&agrave; sắt, n&ecirc;n đ&acirc;y cũng l&agrave; loại thực phẩm kh&ocirc;ng thể thiếu khi b&eacute; bắt đầu ăn dặm. Mẹ c&oacute; thể sơ chế thịt b&ograve; rồi mang xay nhuyễn,&nbsp;nấu ch&aacute;o cho b&eacute; y&ecirc;u ăn, vừa đổi m&oacute;n gi&uacute;p trẻ đỡ ng&aacute;n, vừa cung cấp th&ecirc;m dinh dưỡng cho con&nbsp;ph&aacute;t triển khỏe mạnh.</p>\r\n\r\n<p style=\"text-align:justify\"><img alt=\"\" src=\"http://localhost/nienluan/ckfinder/userfiles/images/post4-2.jpg\" style=\"width:100%\" /></p>\r\n\r\n<p style=\"text-align:justify\"><strong>C&aacute;c loại rau xanh</strong></p>\r\n\r\n<p style=\"text-align:justify\">Rau xanh tốt cho sức khỏe của cả người lớn chứ kh&ocirc;ng chỉ ri&ecirc;ng với trẻ nhỏ, v&igrave; vậy việc tập cho b&eacute; ăn rau từ sớm lu&ocirc;n được khuyến kh&iacute;ch. Giai đoạn n&agrave;y mẹ c&oacute; thể chọn c&aacute;c loại như rau ch&acirc;n vịt, cải xoăn, s&uacute;p lơ xanh,&hellip;để cho b&eacute; ăn dặm. Mẹ c&oacute; thể luộc hoặc hấp rau rồi xay nhuyễn, sau đ&oacute; trộn với ch&aacute;o cho b&eacute; ăn.</p>\r\n\r\n<p style=\"text-align:justify\">Rau xanh chứa nhiều&nbsp;<a href=\"http://www.yan.vn/4-loai-vitamin-ki-dieu-khien-da-cang-bong-sang-bung-nhanh-chong-160226.html?utm_campaign=InternallinkYAN&amp;utm_source=167134&amp;utm_medium=noniadesktop\" target=\"_blank\">vitamin</a>, kho&aacute;ng chất, chất xơ,&hellip;đều l&agrave; những dưỡng chất cần thiết cho b&eacute; y&ecirc;u th&ocirc;ng minh v&agrave; cao lớn đấy!</p>\r\n\r\n<p style=\"text-align:justify\"><img alt=\"\" src=\"/ckfinder/userfiles/images/post4-3.jpg\" style=\"width:100%\" /><img alt=\"\" src=\"http://localhost/nienluan/ckfinder/userfiles/images/post4-3.jpg\" style=\"width:100%\" /></p>\r\n\r\n<p style=\"text-align:justify\"><strong>C&aacute;c loại củ quả</strong></p>\r\n\r\n<p style=\"text-align:justify\">Mẹ c&oacute; thể chọn c&aacute;c loại củ như khoai t&acirc;y, c&agrave; rốt, khoai lang,...để xay nhuyễn v&agrave; cho b&eacute; ăn thử từng th&igrave;a nhỏ một. Lần đầu l&agrave;m quen với đồ ăn mới c&oacute; thể b&eacute; sẽ kh&ocirc;ng quen v&agrave; kh&ocirc;ng th&iacute;ch ăn, mẹ h&atilde;y ch&uacute; &yacute; đừng &eacute;p ăn m&agrave; cần dựa v&agrave;o phản ứng của trẻ, loại củ n&agrave;o con th&iacute;ch c&oacute; thể được tăng khẩu phần l&ecirc;n dần dần.</p>\r\n\r\n<p style=\"text-align:justify\">Mẹ cũng n&ecirc;n chuẩn bị nhiều loại hoa quả để cho b&eacute; ăn thử, sẽ gi&uacute;p b&eacute; bổ sung nhiều vitamin v&agrave; chất xơ, gi&uacute;p trị t&aacute;o b&oacute;n. C&aacute;c loại quả c&oacute; thể cho b&eacute; ăn trong giai đoạn n&agrave;y l&agrave;: l&ecirc;, t&aacute;o, đu đủ ch&iacute;n, chuối hay việt quất,...</p>\r\n\r\n<p style=\"text-align:justify\"><img alt=\"\" src=\"/ckfinder/userfiles/images/post4-4.jpg\" style=\"width:100%\" /><img alt=\"\" src=\"http://localhost/nienluan/ckfinder/userfiles/images/post4-4.jpg\" style=\"width:100%\" /></p>\r\n\r\n<p style=\"text-align:justify\">Từng giai đoạn ph&aacute;t triển của b&eacute; y&ecirc;u đều cần mẹ chăm ch&uacute;t tỉ mỉ v&agrave; cẩn thận. Hiểu được b&eacute; n&ecirc;n ăn g&igrave; trong giai đoạn 6 th&aacute;ng tuổi, mẹ đ&atilde; nắm được một phần kiến thức quan trọng trong việc chăm s&oacute;c b&eacute; y&ecirc;u rồi đấy. Mẹ cũng cần ch&uacute; &yacute; đến vấn đề vệ sinh an to&agrave;n thực phẩm khi cho b&eacute; ăn dặm, v&agrave; ch&uacute; &yacute; thay đổi đồ ăn, c&aacute;ch chế biến thường&nbsp;xuy&ecirc;n để con y&ecirc;u ngon miệng nh&eacute;!</p>\r\n\r\n<p style=\"text-align:right\">(Ảnh: Internet.)</p>\r\n', '2019-07-13 09:35:11', 1, 0, 18, 1, 8),
(13, '1563077277.jpg', 'Muốn bé yêu có làn da trắng đẹp, mẹ bầu nhất định phải dùng những thực phẩm này', 'Muon-be-yeu-co-lan-da-trang-dep,-me-bau-nhat-dinh-phai-dung-nhung-thuc-pham-nay', 'Ai cũng muốn bé yêu của mình có một làn da trắng đẹp hồng hào. Ngoài yếu tố di truyền, chỉ cần ăn uống đúng cách, bé sẽ có làn da đẹp ngay từ trong bụng mẹ đấy. <br/>\r\nỞ giai đoạn thai kỳ, mẹ phải thay đổi nhiều thói quen ăn uống. Việc bà bầu nên ăn gì và lựa chọn thực phẩm tốt cho mẹ và bé là vấn đề đau đầu cho cả gia đình. Bà bầu cần bổ sung dưỡng chất một các khoa học để có thể cung cấp đầy đủ nhất cho cả mẹ và bé trong bụng.', '<p style=\"text-align:justify\">Phụ nữ mang thai n&ecirc;n ăn g&igrave; để tốt cho sức khỏe của mẹ v&agrave; gi&uacute;p thai nhi ph&aacute;t triển tốt? Đ&acirc;y l&agrave; thắc mắc của mọi mẹ bầu, nhất l&agrave; những chị em lần đầu l&agrave;m mẹ chưa c&oacute; nhiều kinh nghiệm. H&atilde;y c&ugrave;ng t&igrave;m hiểu những loại thực phẩm tốt cho mẹ, lại gi&uacute;p b&eacute; sinh ra trắng trẻo hồng h&agrave;o nh&eacute;.</p>\r\n\r\n<p style=\"text-align:justify\"><img alt=\"\" src=\"http://localhost/nienluan/ckfinder/userfiles/images/post5.jpg\" style=\"width:100%\" /></p>\r\n\r\n<p><strong>Nước lọc</strong></p>\r\n\r\n<p>C&oacute; lẽ nhiều người sẽ ngạc nhi&ecirc;n, nhưng&nbsp;<a href=\"http://www.yan.vn/nhung-than-duoc-giai-doc-co-the-hieu-qua-trong-ngay-nong-91055.html?utm_campaign=InternallinkYAN&amp;utm_source=164735&amp;utm_medium=noniadesktop\" target=\"_blank\">nước lọc</a>&nbsp;v&ocirc; c&ugrave;ng cần thiết cho cả mẹ v&agrave; b&eacute;. Trung b&igrave;nh một người b&igrave;nh thường cần uống đủ 2 l&iacute;t nước mỗi ng&agrave;y để cơ thể khỏe mạnh, hấp thu tốt, đ&agrave;o thải độc tố khỏi cơ thể, da dẻ mịn m&agrave;ng. Đối với c&aacute;c chị em đang mang bầu, việc uống đủ nước lại c&agrave;ng quan trọng v&igrave; nước&nbsp;sẽ gi&uacute;p b&eacute; sinh ra c&oacute; một l&agrave;n da mềm mại v&agrave; đ&aacute;ng y&ecirc;u.</p>\r\n\r\n<p><img alt=\"\" src=\"http://localhost/nienluan/ckfinder/userfiles/images/post5-1.jpg\" style=\"width:100%\" /></p>\r\n\r\n<p style=\"text-align:justify\"><strong>Nước dừa&nbsp;</strong></p>\r\n\r\n<p style=\"text-align:justify\">Nước dừa được coi l&agrave; &ldquo;nước uống v&agrave;ng&rdquo; của c&aacute;c chị em trong thai k&igrave;. Nhiều chị em uống nước dừa để bổ sung lượng ối cho thai, nhưng ngo&agrave;i ra, nước dừa c&ograve;n gi&uacute;p b&eacute; sinh ra c&oacute; nước da trắng trẻo mịn m&agrave;ng nữa đấy.&nbsp;Th&agrave;nh phần nước dừa chứa nhiều vitamin A, E, C, kho&aacute;ng chất như kali, canxi, clorua c&ograve;n gi&uacute;p bổ sung lượng muối bị hao hụt, gi&uacute;p xương chắc khỏe v&agrave; tăng cường hệ miễn dịch cho cả mẹ v&agrave; b&eacute;. Tuy nhi&ecirc;n, c&aacute;c mẹ cũng lưu &yacute; rằng kh&ocirc;ng được uống nước dừa khi thấy cơ thể mỏi mệt v&agrave; đừng uống v&agrave;o buổi tối nếu kh&ocirc;ng sẽ phải vất vả v&igrave; đi &quot;giải quyết&quot; nhiều lần.</p>\r\n\r\n<p style=\"text-align:justify\"><img alt=\"\" src=\"http://localhost/nienluan/ckfinder/userfiles/images/post5-2.jpg\" style=\"width:100%\" /></p>\r\n\r\n<p style=\"text-align:justify\"><strong>Tr&aacute;i c&acirc;y họ cam, qu&yacute;t&nbsp;</strong></p>\r\n\r\n<p style=\"text-align:justify\">Tr&aacute;i c&acirc;y họ cam qu&yacute;t vốn mọng nước v&agrave; gi&agrave;u&nbsp;<a href=\"http://www.yan.vn/ban-da-biet-dung-vitamin-c-dung-cach-9797.html?utm_campaign=InternallinkYAN&amp;utm_source=164735&amp;utm_medium=noniadesktop\" target=\"_blank\">vitamin C</a>. Vitamin n&agrave;y c&oacute; t&aacute;c dụng ph&ograve;ng ngừa sắc tố sạm đen của da, gi&uacute;p da b&eacute; trắng s&aacute;ng hơn. Ngo&agrave;i ra ăn nhiều cam qu&yacute;t cũng gi&uacute;p tăng sức đề kh&aacute;ng v&agrave; hỗ trợ qu&aacute; tr&igrave;nh ph&aacute;t triển tim của b&eacute;.</p>\r\n\r\n<p style=\"text-align:justify\"><img alt=\"\" src=\"http://localhost/nienluan/ckfinder/userfiles/images/post5-3.jpg\" style=\"width:100%\" /></p>\r\n\r\n<p style=\"text-align:justify\"><strong>Trứng g&agrave;</strong></p>\r\n\r\n<p style=\"text-align:justify\">Xưa nay c&aacute;c mẹ vẫn truyền nhau ăn trứng g&agrave; để con sinh ra trắng trẻo hồng h&agrave;o. Trứng g&agrave; c&oacute; chứa nhiều protein, lipid v&agrave; vitamin A, vừa tốt cho b&eacute;, vừa bổ sung nhiều dinh dưỡng cho mẹ. Chỉ cần 3 đến 4 quả trứng g&agrave; mỗi tuần sẽ hỗ trợ b&eacute; sinh ra c&oacute; nước da đẹp &ldquo;như trứng g&agrave; b&oacute;c&rdquo;.</p>\r\n\r\n<p style=\"text-align:justify\"><img alt=\"\" src=\"http://localhost/nienluan/ckfinder/userfiles/images/post5-4.jpg\" style=\"width:100%\" /></p>\r\n\r\n<p style=\"text-align:justify\"><strong>Quả bơ</strong></p>\r\n\r\n<p style=\"text-align:justify\">Bơ l&agrave; loại quả được rất nhiều chị em sử dụng h&agrave;ng ng&agrave;y bởi t&aacute;c dụng l&agrave;m đẹp da của n&oacute;. Đ&acirc;y cũng l&agrave; thực phẩm được c&aacute;c chuy&ecirc;n gia khuy&ecirc;n d&ugrave;ng, nhất l&agrave; trong 3 th&aacute;ng cuối thai k&igrave; đối với c&aacute;c chị em đang mang thai. Bơ vốn chứa nhiều vitamin C v&agrave; E, gi&uacute;p da của c&aacute;c chị em săn chắc, mịn m&agrave;ng. V&agrave; c&oacute; lợi cho da của em b&eacute;, nhất l&agrave; trong giai đoạn chuẩn bị ch&agrave;o đời. B&ecirc;n cạnh đ&oacute;, bơ c&ograve;n c&ograve;n&nbsp;gi&agrave;u axit&nbsp;<a href=\"http://www.yan.vn/tac-dung-cua-dau-ca-doi-voi-me-bau-va-thai-nhi-164434.html?utm_campaign=InternallinkYAN&amp;utm_source=164735&amp;utm_medium=noniadesktop\" target=\"_blank\">omega-3</a>&nbsp;tăng cường chất x&aacute;m, gi&uacute;p b&eacute; y&ecirc;u th&ocirc;ng minh hơn.</p>\r\n\r\n<p style=\"text-align:justify\"><img alt=\"\" src=\"http://localhost/nienluan/ckfinder/userfiles/images/post5-5.jpg\" style=\"width:100%\" /></p>\r\n\r\n<p style=\"text-align:justify\"><strong>Nước &eacute;p nho</strong></p>\r\n\r\n<p style=\"text-align:justify\">Nước &eacute;p nho vừa gi&agrave;u vitamin vừa gi&agrave;u AHA. Mẹ chỉ cần uống mỗi ng&agrave;y 60ml nước &eacute;p nho, b&eacute; sinh ra sẽ khỏe mạnh v&agrave; c&oacute; l&agrave;n da trắng hồng đấy.</p>\r\n\r\n<p style=\"text-align:justify\"><img alt=\"\" src=\"http://localhost/nienluan/ckfinder/userfiles/images/post5-6.jpg\" style=\"width:100%\" /></p>\r\n\r\n<p style=\"text-align:justify\"><strong>Hạt c&acirc;y th&igrave; l&agrave;</strong></p>\r\n\r\n<p style=\"text-align:justify\">Hạt th&igrave; l&agrave; c&oacute; t&aacute;c dụng trong việc ph&aacute;t triển sắc tố da của b&eacute;. Chỉ cần uống nước ng&acirc;m hạt th&igrave; l&agrave; mỗi s&aacute;ng, kh&ocirc;ng chỉ gi&uacute;p b&eacute; sinh ra c&oacute; l&agrave;n da trắng đẹp, khỏe mạnh, m&agrave; c&ograve;n gi&uacute;p mẹ cải thiện c&aacute;c triệu chứng ốm ngh&eacute;n trong thai k&igrave;.</p>\r\n\r\n<p style=\"text-align:justify\"><img alt=\"\" src=\"http://localhost/nienluan/ckfinder/userfiles/images/post5-7.jpg\" style=\"width:100%\" /></p>\r\n\r\n<p>Kh&ocirc;ng cần t&igrave;m đ&acirc;u xa hay phải tốn qu&aacute; nhiều tiền, chỉ bằng những nguy&ecirc;n liệu đơn giản, dễ t&igrave;m v&agrave; kh&ocirc;ng hề đắt đỏ, mẹ bầu ho&agrave;n to&agrave;n c&oacute; thể dựa tr&ecirc;n c&aacute;c loại đồ ăn, uống&nbsp;để gi&uacute;p b&eacute; y&ecirc;u của m&igrave;nh c&oacute; một l&agrave;n da trắng đẹp, hồng h&agrave;o khỏe mạnh. Chcus em b&eacute; của mẹ ch&agrave;o đời xinh đẹp v&agrave; đ&aacute;ng y&ecirc;u nh&eacute;.&nbsp;</p>\r\n\r\n<p style=\"text-align:right\">(Ảnh: Internet)</p>\r\n', '2019-07-14 11:05:32', 1, 0, 27, 1, 1);
INSERT INTO `blog` (`id_blog`, `image`, `title`, `slug`, `summary`, `content`, `date_upload`, `author`, `highlight`, `view`, `flag`, `id_type`) VALUES
(14, '1563078595.jpg', 'Mẹ không cần giỏi nhưng vẫn có thể dạy con học tiếng Anh dễ dàng chỉ với 3 cách', 'Me-khong-can-gioi-nhung-van-co-the-day-con-hoc-tieng-Anh-de-dang-chi-voi-3-cach', 'Giờ đây tiếng Anh là ngôn ngữ rất quan trọng và cần thiết đối với mỗi người nên bạn hãy dạy con học ngay từ bé bằng 3 cách đơn giản và hiệu quả sau đây nhé! <br/>\r\nDạy tiếng Anh cho bé chỉ còn là \"chuyện nhỏ\" nếu mẹ nắm được 3 cách dạy cực kì hiệu quả dưới đây! ', '<p style=\"text-align:justify\">Kh&ocirc;ng thể phủ nhận được vai tr&ograve; của tiếng Anh đối với ch&uacute;ng ta trong cuộc sống ng&agrave;y nay. N&oacute; gi&uacute;p con người&nbsp;h&ograve;a nhập với thế giới, c&ocirc;ng việc thuận lợi hơn, th&ecirc;m tự tin,... Ch&iacute;nh v&igrave; thế việc&nbsp;<a href=\"http://www.yan.vn/nguoi-me-dan-giay-nho-day-nha-phuc-vu-cho-viec-hoc-tieng-anh-hieu-qua-161913.html?utm_campaign=InternallinkYAN&amp;utm_source=167023&amp;utm_medium=noniadesktop\" target=\"_blank\">cho b&eacute; học tiếng Anh</a>&nbsp;ngay từ nhỏ l&agrave; điều v&ocirc; c&ugrave;ng cần thiết nhưng phải học sao cho hiệu quả v&agrave; ph&ugrave; hợp với trẻ th&igrave; kh&ocirc;ng phải ai cũng biết.&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">Với 3 c&aacute;ch học tiếng Anh đơn giản&nbsp;tại nh&agrave; sau đ&acirc;y d&ugrave; bạn kh&ocirc;ng phải l&agrave; người giỏi tiếng nhưng vẫn ho&agrave;n to&agrave;n c&oacute; thể dạy cho b&eacute; đấy!</p>\r\n\r\n<p style=\"text-align:justify\"><img alt=\"\" src=\"http://localhost/nienluan/ckfinder/userfiles/images/post6.jpg\" style=\"width:100%\" /></p>\r\n\r\n<p style=\"text-align:center\"><em>Dạy tiếng Anh từ khi c&ograve;n b&eacute; để con c&oacute; nền tảng vững chắc</em></p>\r\n\r\n<p style=\"text-align:justify\"><strong>1. Tr&ograve; chơi tương t&aacute;c</strong></p>\r\n\r\n<p style=\"text-align:justify\">Bất k&igrave; đứa b&eacute; n&agrave;o cũng đều th&iacute;ch chơi hơn học v&igrave; vậy mẹ kh&ocirc;ng n&ecirc;n chỉ dạy kiến thức một c&aacute;ch kh&ocirc; khan nh&agrave;m ch&aacute;n. Thay v&agrave;o đ&oacute; h&atilde;y c&ugrave;ng con phối hợp chơi những tr&ograve; tương t&aacute;c th&uacute; vị như dưới đ&acirc;y nh&eacute;!&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><img alt=\"\" src=\"http://localhost/nienluan/ckfinder/userfiles/images/post6-1.jpg\" style=\"width:100%\" /></p>\r\n\r\n<p style=\"text-align:justify\">- Gh&eacute;p từ với tranh: Đ&acirc;y l&agrave; tr&ograve; chơi kh&aacute; đơn giản bạn chỉ cần chuẩn bị những tấm b&igrave;a&nbsp;từ vựng c&ugrave;ng tranh đi k&egrave;m sau đ&oacute; đảo lộn trật tự rồi y&ecirc;u cầu b&eacute; gh&eacute;p lại với nhau.&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">- N&eacute;m b&oacute;ng: Tr&ograve; chơi n&agrave;y vừa kết hợp giữa vận động n&ecirc;n b&eacute; sẽ th&iacute;ch lắm đấy! Bạn h&atilde;y chuẩn bị một quả b&oacute;ng nam ch&acirc;m v&agrave; một tấm bảng ghi từ mới. Ba mẹ c&oacute; nhiệm vụ đọc c&aacute;c từ vựng v&agrave; b&eacute; sẽ t&igrave;m vị tr&iacute; của từ đ&oacute; rồi n&eacute;m v&agrave;o.&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">- Nghe v&agrave; đo&aacute;n từ: Bố mẹ h&atilde;y chuẩn bị nhiều tấm h&igrave;nh với nhiều từ vựng kh&aacute;c nhau. Nhiệm vụ của bạn l&agrave; ph&aacute;t &acirc;m c&aacute;c từ ấy v&agrave; y&ecirc;u cầu b&eacute; đo&aacute;n ch&uacute;ng rồi chỉ tay v&agrave;o.&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><img alt=\"\" src=\"http://localhost/nienluan/ckfinder/userfiles/images/post6-2.png\" style=\"width:100%\" /></p>\r\n\r\n<p style=\"text-align:center\"><em>Bạn h&atilde;y ph&aacute;t &acirc;m từ ấy v&agrave; y&ecirc;u cầu b&eacute; đo&aacute;n nh&eacute;!</em></p>\r\n\r\n<p style=\"text-align:justify\">- Tr&ograve; chơi với bảng chứ c&aacute;i: Những chữ&nbsp;c&aacute;i sẽ đơn giản hơn nhiều so với từ vựng n&ecirc;n bạn h&atilde;y cho b&eacute; l&agrave;m quen&nbsp;ngay từ khi bắt đầu học tiếng Anh nh&eacute;! Bạn h&atilde;y dọn sẵn một con đường be b&eacute; c&oacute; xếp c&aacute;c chữ c&aacute;i b&ecirc;n dưới với đ&iacute;ch đến l&agrave; phần thưởng cho trẻ v&agrave; một con x&uacute;c xắc d&ugrave;ng để đổ. Nhiệm vụ của con l&agrave; tung x&uacute;c xắc, t&ugrave;y theo con số m&agrave; b&eacute; sẽ bước tương ứng bắt đầu từ điểm xuất ph&aacute;t v&agrave; đọc&nbsp;đ&uacute;ng chữ c&aacute;i đ&oacute;, nếu&nbsp;con trả lời sai h&atilde;y bảo b&eacute; l&ugrave;i lại.</p>\r\n\r\n<p style=\"text-align:justify\"><img alt=\"\" src=\"http://localhost/nienluan/ckfinder/userfiles/images/post6-3.jpg\" style=\"width:100%\" /></p>\r\n\r\n<p style=\"text-align:center\"><em>Học bảng chữ đầu ti&ecirc;n để tạo nền tảng cho b&eacute; nh&eacute;!</em></p>\r\n\r\n<p style=\"text-align:justify\"><strong>2. Flashcards&nbsp;</strong></p>\r\n\r\n<p style=\"text-align:justify\">Học tiếng Anh th&ocirc;ng qua flashcards hiện nay kh&aacute; phổ biến bởi độ tiện&nbsp;lợi v&agrave; hiệu quả của n&oacute;, thế n&ecirc;n đ&acirc;y l&agrave; một c&aacute;ch kh&aacute; tuyệt với để cha mẹ&nbsp;<a href=\"http://www.yan.vn/tiet-lo-cac-cach-day-con-cuc-thong-minh-cua-cha-me-phap-165753.html?utm_campaign=InternallinkYAN&amp;utm_source=167023&amp;utm_medium=noniadesktop\" target=\"_blank\">dạy&nbsp;cho b&eacute;</a>&nbsp;đấy! Ba mẹ h&atilde;y chọn những bộ flashcards với c&aacute;c chủ đề gần gũi như nh&agrave; bếp, động vật, lo&agrave;i hoa. Nếu như cha mẹ chưa tự tin về khả năng ph&aacute;t &acirc;m của m&igrave;nh h&atilde;y sử dụng&nbsp;từ điển Oxford online&nbsp;để nhập từ, nghe v&agrave; đọc theo nh&eacute;!&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><img alt=\"\" src=\"http://localhost/nienluan/ckfinder/userfiles/images/post6-4.jpg\" style=\"width:100%\" /></p>\r\n\r\n<p style=\"text-align:center\"><em>Cho b&eacute; học tiếng Anh bằng flashcards l&agrave; một phương ph&aacute;p rất hữu &iacute;ch đấy!</em></p>\r\n\r\n<p style=\"text-align:justify\">C&oacute; một lưu &yacute; l&agrave; cha mẹ kh&ocirc;ng n&ecirc;n dạy con từng từ ri&ecirc;ng lẻ m&agrave; h&atilde;y kết hợp th&agrave;nh những&nbsp;c&acirc;u với cấu tr&uacute;c đơn giản, như vậy b&eacute; sẽ ghi nhớ được l&acirc;u hơn. Đồng thời, trong qu&aacute; tr&igrave;nh hướng dẫn bạn n&ecirc;n giơ tấm thẻ&nbsp;l&ecirc;n để b&eacute; tập được khả năng phản xạ.&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><strong>3. Học tiếng Anh th&ocirc;ng qua phim ảnh, &acirc;m nhạc</strong></p>\r\n\r\n<p style=\"text-align:justify\">&Acirc;m nhạc v&agrave; phim ảnh lu&ocirc;n l&agrave; niềm cảm hứng &quot;bất tận&quot;, n&ecirc;n đ&acirc;y l&agrave; c&aacute;ch rất tốt để bạn dạy con học tiếng Anh đấy! Đặc biệt l&agrave; trẻ em c&oacute; khả năng cảm thụ&nbsp;rất nhanh n&ecirc;n bạn h&atilde;y lựa chọn những bản nhạc v&agrave; bộ phim đơn giản c&oacute; từ vựng m&agrave; b&eacute; đ&atilde; học để con c&oacute; thể nghe, xem. Nếu như bố mẹ bận c&ocirc;ng việc kh&ocirc;ng c&oacute; thời gian học c&ugrave;ng con th&igrave; h&atilde;y thường xuy&ecirc;n bật b&agrave;i h&aacute;t v&agrave; phim cho b&eacute; xem để &quot;thấm&quot; dần nh&eacute;!&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><img alt=\"\" src=\"http://localhost/nienluan/ckfinder/userfiles/images/post6-5.jpg\" style=\"width:100%\" /></p>\r\n\r\n<p style=\"text-align:justify\">Tr&ecirc;n đ&acirc;y l&agrave; những b&iacute; quyết gi&uacute;p con học tiếng Anh cực hiệu quả d&ugrave; mẹ kh&ocirc;ng giỏi vẫn c&oacute; thể dạy b&eacute; một c&aacute;ch dễ d&agrave;ng. H&atilde;y lưu lại v&agrave; &aacute;p dụng với<a href=\"http://www.yan.vn/khi-be-o-nha-mot-minh-cung-bo-v-42530.html?utm_campaign=InternallinkYAN&amp;utm_source=167023&amp;utm_medium=noniadesktop\" target=\"_blank\">&nbsp;b&eacute; nh&agrave; m&igrave;nh&nbsp;</a>nh&eacute;! Con bạn sẽ giỏi tiếng Anh l&ecirc;n tr&ocirc;ng thấy m&agrave; kh&ocirc;ng cần phải đến lớp qu&aacute; sớm đ&acirc;u! Ch&uacute;c bạn v&agrave; b&eacute;&nbsp;th&agrave;nh c&ocirc;ng!</p>\r\n\r\n<p style=\"text-align:right\">Ảnh: Internet</p>\r\n', '2019-07-14 11:29:55', 1, 0, 52, 1, 2),
(17, '1563087276.jpg', 'Cảnh báo bệnh Lyme từ bọ ve: Cha mẹ chớ nên lơ là kẻo gây nguy hại cho trẻ', 'Canh-bao-benh-Lyme-tu-bo-ve:-Cha-me-cho-nen-lo-la-keo-gay-nguy-hai-cho-tre', 'Bên cạnh các bệnh thường gặp thì vào mùa hè mẹ nên cảnh giác với bệnh Lyme do bọ ve cắn gây nguy hiểm đến trẻ nhé! <br/>\r\nMuốn biết bệnh Lyme do bọ ve cắn nguy hiểm đến bé thế nào và cách phòng tránh ra sao, bạn hãy đọc bài viết này nhé!', '<p style=\"text-align:justify\">Trẻ nhỏ&nbsp;rất yếu n&ecirc;n dễ mắc bệnh do t&aacute;c động của m&ocirc;i trường b&ecirc;n ngo&agrave;i. Trong đ&oacute; những bệnh về c&ocirc;n tr&ugrave;ng hay bọ ve cắn khiến mẹ rất đau đầu v&igrave;&nbsp;ảnh hưởng lớn đến&nbsp;<a href=\"http://www.yan.vn/nhung-dau-hieu-tuong-binh-thuong-nhung-lai-bao-hieu-benh-nang-o-tre-165390.html?utm_campaign=InternallinkYAN&amp;utm_source=166881&amp;utm_medium=noniadesktop\" target=\"_blank\">sức khỏe của b&eacute;</a>. B&agrave;i viết n&agrave;y sẽ cung cấp cho bạn những kiến thức về bệnh Lyme do bọ ve cắn v&agrave; c&aacute;ch ph&ograve;ng tr&aacute;nh để chăm s&oacute;c b&eacute; y&ecirc;u c&ugrave;ng gia đ&igrave;nh&nbsp;thật tốt nh&eacute;!&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><strong>Bệnh Lyme do bọ ve cắn v&agrave; những điều cần biết</strong></p>\r\n\r\n<p style=\"text-align:justify\">Mới đ&acirc;y Tiến sĩ Thomas Mather thuộc&nbsp;Đại học Rhode Island đ&atilde; chia sẻ rằng&nbsp;m&ugrave;a h&egrave; năm nay l&agrave; dịp b&ugrave;ng nổ của lo&agrave;i bọ ve chuy&ecirc;n l&acirc;y lan bệnh cho cơ thể con người. Những con bọ ve đang sinh s&ocirc;i v&agrave; t&igrave;m vật chủ n&ecirc;n b&eacute; v&agrave; bạn ho&agrave;n to&agrave;n c&oacute; khả năng&nbsp;bị bọ ve b&aacute;m chặt v&agrave;o rồi&nbsp;k&iacute; sinh trong đ&oacute;.&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><img alt=\"\" src=\"http://localhost/nienluan/ckfinder/userfiles/images/post7.jpg\" style=\"width:100%\" /></p>\r\n\r\n<p style=\"text-align:center\"><em>M&ugrave;a h&egrave; năm nay l&agrave; dịp b&ugrave;ng ph&aacute;t của loại bọ ve g&acirc;y bệnh Lyme rất nguy hiểm.</em></p>\r\n\r\n<p style=\"text-align:justify\">Đối với người lớn việc bị bọ ve b&aacute;m đ&atilde; qu&aacute; rắc rối th&igrave; t&igrave;nh trạng n&agrave;y&nbsp;xảy ra tr&ecirc;n trẻ nhỏ sẽ g&acirc;y ra hậu quả rất nghi&ecirc;m trọng, đ&oacute; l&agrave; bệnh Lyme. Những con bọ ve&nbsp;b&aacute;m&nbsp;tr&ecirc;n người tạo n&ecirc;n cảm gi&aacute;c rất kh&oacute; chịu v&agrave; sẵn s&agrave;ng mang bệnh đến cho vật chủ của n&oacute;. Bệnh nhiễm tr&ugrave;ng n&agrave;y do những con bọ ve ch&acirc;n đen mang mầm bệnh g&acirc;y n&ecirc;n v&agrave; người&nbsp;bệnh, đặc biệt l&agrave; trẻ em c&oacute; c&aacute;c triệu chứng như: sốt, đau đầu, đốm ban v&ograve;ng tr&ograve;n m&agrave;u đỏ, mệt mỏi,... Bệnh Lyme tuy c&oacute; những biểu hiện kh&ocirc;ng qu&aacute; nghi&ecirc;m trọng nhưng nếu&nbsp;kh&ocirc;ng được điều trị kịp thời sẽ lan đến hệ thần kinh, tim v&agrave; khớp. Hậu quả của căn bệnh n&agrave;y l&agrave; sẽ dẫn đến vi&ecirc;m v&agrave; đau khớp trong nhiều năm.&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">Một b&aacute;o c&aacute;o của Trung t&acirc;m Ngăn ngừa v&agrave; Kiểm so&aacute;t Dịch bệnh Hoa Kỳ (CDC)&nbsp;cho thấy tại c&aacute;c quốc gia Ch&acirc;u &Acirc;u bệnh n&agrave;y ho&agrave;nh h&agrave;nh rất đ&aacute;ng sợ, hậu quả l&agrave; c&oacute; đến khoảng 30 ngh&igrave;n ca chẩn đến mắc bệnh Lyme ở Mỹ trong đ&oacute; c&oacute; rất nhiều trẻ em mắc phải. Đối tượng lớn nhất của bệnh n&agrave;y ch&iacute;nh l&agrave; trẻ em v&agrave; đặc biệt l&agrave; ở lứa tuổi từ 5 đến 10.&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><img alt=\"\" src=\"http://localhost/nienluan/ckfinder/userfiles/images/post7-1.jpg\" style=\"width:100%\" /></p>\r\n\r\n<p style=\"text-align:justify\">Minh chứng điển h&igrave;nh cho căn bệnh đ&aacute;ng lo ngại n&agrave;y l&agrave; c&ocirc; b&eacute; Natasha 7 tuổi người Mỹ. V&agrave;o năm 2017 c&ocirc; b&eacute; n&agrave;y mắc phải c&aacute;c triệu chứng như sốt cao v&agrave; kh&ocirc;ng hạ được, đi lại hạn chế v&agrave; lu&ocirc;n kh&oacute;c th&eacute;c v&igrave; đau đớn,... V&igrave; rất lo lắng cho con n&ecirc;n gia đ&igrave;nh đ&atilde; đưa b&eacute; đến bệnh viện v&agrave; b&aacute;c sĩ chẩn đo&aacute;n b&eacute; mắc&nbsp;<a href=\"http://www.yan.vn/hoang-hon-benh-la-nguy-hiem-khon-luong-tu-bo-ve-71055.html?utm_campaign=InternallinkYAN&amp;utm_source=166881&amp;utm_medium=noniadesktop\" target=\"_blank\">bệnh Lyme</a>&nbsp;do bọ ve đốt, hậu quả l&agrave; trong năm n&agrave;y c&ocirc; b&eacute; Natasha được ph&aacute;t hiện l&agrave; bị liệt.</p>\r\n\r\n<p style=\"text-align:justify\">Tuy nhi&ecirc;n, tr&ecirc;n thực tế kh&ocirc;ng phải bất k&igrave; con bọ ve n&agrave;o cũng g&acirc;y bệnh nhưng mọi người kh&ocirc;ng n&ecirc;n v&igrave; thế m&agrave; lơ l&agrave;. Bạn n&ecirc;n c&oacute; hiểu biết về c&aacute;c loại bọ ve để nắm r&otilde; khả năng mang mầm bệnh v&agrave; l&acirc;y lan của n&oacute;. Những loại bọ ve phổ biến l&agrave;: bọ ve ng&ocirc;i sao c&ocirc; đơn (lone star tick), bọ ve nai (deer tick), bẹ ve ch&oacute; (dog tick) với những biểu hiện tựa bệnh cảm c&uacute;m.&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><img alt=\"\" src=\"http://localhost/nienluan/ckfinder/userfiles/images/post7-2.jpg\" style=\"width:100%\" /></p>\r\n\r\n<p style=\"text-align:center\"><em>Bạn n&ecirc;n c&oacute; hiểu biết về c&aacute;c loại bọ ve để nắm được khả năng mang mầm bệnh&nbsp;l&acirc;y lan của n&oacute;.</em></p>\r\n\r\n<p style=\"text-align:justify\"><strong>C&aacute;ch ph&ograve;ng ngừa bọ ve cắn v&agrave; truyền bệnh</strong></p>\r\n\r\n<p style=\"text-align:justify\"><strong>1. B&igrave;nh xịt ngừa c&ocirc;n tr&ugrave;ng ph&ugrave; hợp&nbsp;</strong></p>\r\n\r\n<p style=\"text-align:justify\">Việc lựa chọn b&igrave;nh xịch ph&ugrave; hợp sẽ g&oacute;p phần đẩy l&ugrave;i c&aacute;c loại bọ ve đ&aacute;ng kể. Theo như khuyến c&aacute;o của CDC bạn n&ecirc;n chọn b&igrave;nh xịch chứa th&agrave;nh phần&nbsp;DEET, picaridin hay chứa tinh dầu bạch đ&agrave;n chanh.&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">Nếu như bạn lo lắng những loại b&igrave;nh xịt n&agrave;y g&acirc;y ảnh hưởng đến sức khỏe nhưng kh&ocirc;ng muốn bọ ve b&aacute;m tr&ecirc;n quần &aacute;o th&igrave; bạn c&oacute; thể chọn sản phẩm chứa&nbsp;permethrin nh&eacute;! Chất n&agrave;y rất bền m&ugrave;i v&agrave; b&aacute;m được rất l&acirc;u tr&ecirc;n quần &aacute;o thậm ch&iacute; l&agrave; sau v&agrave;i lần giặt.&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><img alt=\"\" src=\"http://localhost/nienluan/ckfinder/userfiles/images/post7-4.png\" style=\"width:100%\" /></p>\r\n\r\n<p style=\"text-align:center\"><em>Lựa chọn b&igrave;nh xịt ph&ugrave; hợp sẽ đẩy l&ugrave;i bệnh&nbsp;đ&aacute;ng kể.</em></p>\r\n\r\n<p><strong>2. Kiểm tra bọ ve v&agrave; vết đốt tr&ecirc;n cơ thể&nbsp;</strong></p>\r\n\r\n<p>Bọ ve thường xuất hiện rất nhiều tại những bụi rậm, nơi c&oacute; c&acirc;y cỏ mọc um t&ugrave;m, thế n&ecirc;n sau mỗi lần hoạt động ngo&agrave;i trời bất kể l&agrave; bạn hay b&eacute; cũng n&ecirc;n kiểm tra bọ ve nh&eacute;! C&aacute;c kiểm tra rất đơn giản bạn chỉ cần rửa sạch người b&eacute; dưới v&ograve;i hoa sen v&agrave; quan s&aacute;t nhất l&agrave; ở những v&ugrave;ng nhạy cảm như bẹn, n&aacute;ch. Bạn n&ecirc;n lưu &yacute; quan s&aacute;t cẩn thận nh&eacute; v&igrave; n&oacute; rất dễ nhầm với vết t&agrave;n nhang, mũi đốt v&agrave; da ch&aacute;y nắng.</p>\r\n\r\n<p><img alt=\"\" src=\"http://localhost/nienluan/ckfinder/userfiles/images/post7-5.jpg\" style=\"width:100%\" /></p>\r\n\r\n<p style=\"text-align:center\"><em>Sau mỗi lần hoạt động ngo&agrave;i trời bạn n&ecirc;n kiểm tra xem c&oacute; bọ ve b&aacute;m tr&ecirc;n người b&eacute; hay kh&ocirc;ng.</em></p>\r\n\r\n<p style=\"text-align:justify\"><strong>3. Bọ ve kh&ocirc;ng chỉ c&oacute; ở trong rừng&nbsp;</strong></p>\r\n\r\n<p style=\"text-align:justify\">Nếu bạn nghĩ bọ ve chỉ c&oacute; ở trong rừng hay bụi rậm quả l&agrave; một sai lầm đấy! Bởi v&igrave; n&oacute; c&ograve;n k&iacute; sinh tr&ecirc;n l&ocirc;ng chim, chuột, ch&oacute;,... n&ecirc;n d&ugrave; bạn c&oacute; đi lại tr&ecirc;n th&agrave;nh phố th&igrave; vẫn ho&agrave;n to&agrave;n bị n&oacute; b&aacute;m v&agrave;o. V&igrave; vậy, bạn n&ecirc;n cẩn trọng quan s&aacute;t v&agrave; kiểm tra sau khi về nh&agrave; nh&eacute;!&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><img alt=\"\" src=\"http://localhost/nienluan/ckfinder/userfiles/images/post7-6.jpg\" style=\"width:100%\" /></p>\r\n\r\n<p style=\"text-align:center\"><em>Bọ ve c&ograve;n k&iacute; sinh tr&ecirc;n cả động vật nữa đấy!</em></p>\r\n\r\n<p style=\"text-align:justify\"><strong>4. Chọn trang phục m&agrave;u s&aacute;ng&nbsp;</strong></p>\r\n\r\n<p style=\"text-align:justify\">Những trang phục m&agrave;u tối quả l&agrave; gi&uacute;p b&eacute; thoải m&aacute;i hoạt động m&agrave; kh&ocirc;ng lo vấy bẩn nhưng sẽ khiến bọ ve dễ b&aacute;m hơn v&igrave; kh&oacute; ph&aacute;t hiện. V&igrave; vậy, bạn n&ecirc;n chọn cho con những trang phục s&aacute;ng m&agrave;u để dễ d&agrave;ng nhận biết c&oacute; bọ v&ecirc; ẩn nấp hơn nh&eacute;! Ngo&agrave;i ra, bạn n&ecirc;n trang bị cả tất cho b&eacute; mặc d&ugrave; con đ&atilde; được mặc quần d&agrave;i.</p>\r\n\r\n<p style=\"text-align:justify\"><img alt=\"\" src=\"http://localhost/nienluan/ckfinder/userfiles/images/post7-7.jpg\" style=\"width:100%\" /></p>\r\n\r\n<p style=\"text-align:center\"><em>Bạn n&ecirc;n chọn trang phục m&agrave;u s&aacute;ng cho b&eacute; khi ra ngo&agrave;i nh&eacute;!</em></p>\r\n\r\n<p>Bệnh Lyme do bọ ve cắn l&acirc;y lan&nbsp;tr&ecirc;n người lớn đặc biệt l&agrave; trẻ nhỏ rất nghi&ecirc;m trọng n&ecirc;n cha mẹ h&atilde;y ghi nhớ c&aacute;c c&aacute;ch ph&ograve;ng ngừa tr&ecirc;n để<a href=\"http://www.yan.vn/8-bai-thuoc-dan-gian-dieu-tri-hieu-qua-cam-cum-o-tre-160829.html?utm_campaign=InternallinkYAN&amp;utm_source=166881&amp;utm_medium=noniadesktop\" target=\"_blank\">&nbsp;bảo vệ sức khỏe</a>&nbsp;của cả gia đ&igrave;nh&nbsp;v&agrave; kh&ocirc;ng n&ecirc;n lơ l&agrave; d&ugrave; sống tại đ&ocirc; thị lớn&nbsp;nh&eacute;!</p>\r\n\r\n<p style=\"text-align:right\">Ảnh: Internet</p>\r\n', '2019-07-14 13:52:33', 1, 0, 6, 1, 2),
(24, '1563328849.jpg', 'Mẹ nhất định phải biết những món ăn tốt cho bà bầu cuối thai kì giúp con khỏe mạnh và thông minh', 'Me-nhat-dinh-phai-biet-nhung-mon-an-tot-cho-ba-bau-cuoi-thai-ki-giup-con-khoe-manh-va-thong-minh', '3 tháng cuối thai kì là thời gian bé yêu có những thay đổi mạnh mẽ. Thời gian này cần bổ sung thêm dưỡng chất tốt cho cả mẹ và bé nhé! <br/>\r\nGiai đoạn cuối thai kì vô cùng quan trọng đối với cả mẹ và bé. Muốn có một thai kỳ khỏe mạnh, cơ thể bà bầu cần nhận đủ các chất dinh dưỡng từ chế độ ăn uống mỗi ngày để khoẻ mạnh và cung cấp cho sự phát triển của thai nhi', '<p style=\"text-align:justify\">Để vừa tốt cho sức khỏe lại c&oacute; đủ nguồn&nbsp;<a href=\"http://www.yan.vn/dinh-duong-hieu-qua-cho-nguoi-chay-bo-marathon-108112.html?utm_campaign=InternallinkYAN&amp;utm_source=166996&amp;utm_medium=noniadesktop\" target=\"_blank\">dinh dưỡng</a>&nbsp;cho b&eacute; y&ecirc;u lớn dần v&agrave; ho&agrave;n thiện từng ng&agrave;y, mẹ h&atilde;y nhớ&nbsp;những thực phẩm tốt cho cả m&igrave;nh v&agrave; b&eacute; sau đ&acirc;y nh&eacute;!</p>\r\n\r\n<p style=\"text-align:justify\"><img alt=\"\" src=\"http://localhost/nienluan/ckfinder/userfiles/images/post8.jpg\" style=\"width:100%\" /></p>\r\n\r\n<p style=\"text-align:justify\"><strong>Bột m&egrave; đen</strong></p>\r\n\r\n<p style=\"text-align:justify\">Bột m&egrave; đen c&oacute; c&ocirc;ng dụng l&agrave;m&nbsp;<a href=\"http://www.yan.vn/lam-dep-da-bang-muoi-an-cong-dung-it-nguoi-ngo-toi-cua-muoi-74589.html?utm_campaign=InternallinkYAN&amp;utm_source=166996&amp;utm_medium=noniadesktop\" target=\"_blank\">đẹp da</a>, ph&ograve;ng ngừa những bệnh hay gặp ở b&agrave; bầu v&agrave; hỗ trợ ph&aacute;t triển n&atilde;o bộ của b&eacute;. Ngo&agrave;i ra, m&egrave; đen cũng gi&uacute;p mẹ chuyển dạ&nbsp;nhanh khi sinh đấy. Trước khi đi ngủ, mẹ chỉ cần uống một cốc m&egrave; đen với sắn d&acirc;y v&agrave; đường.</p>\r\n\r\n<p style=\"text-align:justify\"><img alt=\"\" src=\"http://localhost/nienluan/ckfinder/userfiles/images/post8-1.jpg\" style=\"width:100%\" /></p>\r\n\r\n<p style=\"text-align:justify\"><img alt=\"\" src=\"http://localhost/nienluan/ckfinder/userfiles/images/post8-2.jpg\" style=\"width:100%\" /></p>\r\n\r\n<p style=\"text-align:justify\"><strong>Trứng vịt lộn</strong></p>\r\n\r\n<p style=\"text-align:justify\">Trứng vịt lộn l&agrave; m&oacute;n ăn d&acirc;n d&atilde; m&agrave; từ người gi&agrave; đến&nbsp;<a href=\"http://www.yan.vn/me-nho-sua-non-vao-mat-con-khien-be-so-sinh-bi-mu-vinh-vien-v-152087.html?utm_campaign=InternallinkYAN&amp;utm_source=166996&amp;utm_medium=noniadesktop\" target=\"_blank\">trẻ nhỏ</a>&nbsp;đều y&ecirc;u th&iacute;ch. Trứng vịt lộn cũng v&ocirc; c&ugrave;ng tốt cho mẹ v&agrave; b&eacute; v&igrave; chứa nhiều chất đạm. Mỗi ng&agrave;y mẹ c&oacute; thể ăn một quả để bổ sung chất dinh dưỡng.&nbsp;Nhưng mẹ n&agrave;o ch&acirc;n tay lạnh, cơ thể thuộc thể h&agrave;n th&igrave; ăn nhiều qu&aacute; cũng kh&ocirc;ng tốt đ&acirc;u nh&eacute;, chỉ hai ng&agrave;y một quả l&agrave; đủ ph&aacute;t huy hiệu quả m&agrave; kh&ocirc;ng g&acirc;y ảnh hưởng rồi đấy.</p>\r\n\r\n<p style=\"text-align:justify\"><img alt=\"\" src=\"http://localhost/nienluan/ckfinder/userfiles/images/post8-3.jpg\" style=\"width:100%\" /></p>\r\n\r\n<p style=\"text-align:justify\"><img alt=\"\" src=\"http://localhost/nienluan/ckfinder/userfiles/images/post8-4.jpg\" style=\"width:100%\" /></p>\r\n\r\n<p style=\"text-align:justify\"><strong>Thịt vịt</strong></p>\r\n\r\n<p style=\"text-align:justify\">Thịt vịt được chứng minh chứa nhiều dinh dưỡng hơn cả thịt g&agrave;. Trong 3 th&aacute;ng cuối thai k&igrave; mẹ thường xuy&ecirc;n ăn thịt vịt sẽ gi&uacute;p b&eacute; sinh ra th&ecirc;m bụ bẫm, đ&aacute;ng y&ecirc;u v&agrave; th&ocirc;ng minh.</p>\r\n\r\n<p style=\"text-align:justify\"><img alt=\"\" src=\"http://localhost/nienluan/ckfinder/userfiles/images/post8-5.jpg\" style=\"width:100%\" /></p>\r\n\r\n<p style=\"text-align:justify\"><img alt=\"\" src=\"http://localhost/nienluan/ckfinder/userfiles/images/post8-6.jpg\" style=\"width:100%\" /></p>\r\n\r\n<p style=\"text-align:justify\"><img alt=\"\" src=\"http://localhost/nienluan/ckfinder/userfiles/images/post8-7.jpg\" style=\"width:100%\" /></p>\r\n\r\n<p style=\"text-align:justify\"><strong>C&aacute;c loại đậu</strong></p>\r\n\r\n<p style=\"text-align:justify\">Ngũ cốc được chứng minh c&oacute; nhiều tinh chất tốt cho sự ph&aacute;t triển của thai nhi, đặc biệt l&agrave; n&atilde;o bộ. C&aacute;c sợi protein trong c&aacute;c loại hạt khiến đậu l&agrave; một nguồn dinh dưỡng gi&agrave;u chất sắt, folate v&agrave; kẽm. Trong thời gian mang bầu, mẹ c&oacute; thể chọn nhiều m&oacute;n ăn k&egrave;m, ăn ch&iacute;nh từ ngũ cốc.</p>\r\n\r\n<p style=\"text-align:justify\">Đơn giản nhất, mẹ c&oacute; thể chọn ch&egrave; thập cẩm phối nhiều loại hạt với nhau như đậu xanh, đậu đỏ, đậu đen,&hellip;để ăn giữa buổi, vừa dễ ăn m&agrave; kh&ocirc;ng bị ng&aacute;n, lại c&ograve;n&nbsp;gi&uacute;p tăng c&acirc;n khỏe mạnh v&agrave; th&ocirc;ng minh hơn. Nhưng mẹ bầu cũng nhớ ch&uacute; &yacute; vấn đề vệ sinh an to&agrave;n thực phẩm, hoặc nếu muốn y&ecirc;n t&acirc;m hơn c&oacute; thể tự nấu tại nh&agrave; nh&eacute;!</p>\r\n\r\n<p style=\"text-align:justify\"><img alt=\"\" src=\"http://localhost/nienluan/ckfinder/userfiles/images/post8-8.jpg\" style=\"width:100%\" /></p>\r\n\r\n<p style=\"text-align:justify\"><img alt=\"\" src=\"http://localhost/nienluan/ckfinder/userfiles/images/post8-9.jpg\" style=\"width:100%\" /></p>\r\n\r\n<p style=\"text-align:justify\"><img alt=\"\" src=\"http://localhost/nienluan/ckfinder/userfiles/images/post8-10.jpg\" style=\"width:100%\" /></p>\r\n\r\n<p><strong>Đu đủ ch&iacute;n</strong></p>\r\n\r\n<p>Đu đủ ch&iacute;n tốt cho sức khỏe của cả mẹ v&agrave; b&eacute;, bởi t&iacute;nh ngọt m&aacute;t v&agrave; gi&agrave;u vitamin của n&oacute;. Đu đủ ch&iacute;n c&oacute; thể ăn tr&aacute;ng miệng, hoặc&nbsp;chế biến th&agrave;nh canh, vừa dễ ăn, vừa bổ dưỡng.</p>\r\n\r\n<p><img alt=\"\" src=\"http://localhost/nienluan/ckfinder/userfiles/images/post8-11.jpg\" style=\"width:100%\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://localhost/nienluan/ckfinder/userfiles/images/post8-12.jpg\" style=\"width:100%\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://localhost/nienluan/ckfinder/userfiles/images/post8-13.jpg\" style=\"width:100%\" /></p>\r\n\r\n<p><strong>Nước dừa</strong></p>\r\n\r\n<p>Nước dừa vừa ngọt m&aacute;t, vừa dễ uống, lại đảm bảo v&agrave; tốt cho sức khỏe. Kh&ocirc;ng chỉ gi&uacute;p mẹ lọc sạch nước ối, nước dừa c&ograve;n gi&uacute;p b&eacute; c&oacute; một l&agrave;n da trắng trẻo hồng h&agrave;o nữa đấy.</p>\r\n\r\n<p><img alt=\"\" src=\"http://localhost/nienluan/ckfinder/userfiles/images/post8-14.jpg\" style=\"width:100%\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://localhost/nienluan/ckfinder/userfiles/images/post8-15.jpg\" style=\"width:100%\" /></p>\r\n\r\n<p style=\"text-align:justify\"><strong>Ch&aacute;o c&aacute;</strong></p>\r\n\r\n<p style=\"text-align:justify\">Từ xa xưa người ta đ&atilde; &ldquo;kh&aacute;o&rdquo; nhau rằng ăn nhiều c&aacute; sẽ gi&uacute;p th&ocirc;ng minh hơn. C&aacute; chứa nhiều chất đạm, kh&ocirc;ng những gi&uacute;p an thai m&agrave; c&ograve;n tốt cho sự ph&aacute;t triển của b&eacute; nữa đấy. C&aacute; cũng cung cấp c&aacute;c chất dinh dưỡng như protein v&agrave; vitamin. Mẹ c&oacute; thể chế biến nhiều loại c&aacute; kh&aacute;c nhau như c&aacute; ch&eacute;p, c&aacute; l&oacute;c, c&aacute; di&ecirc;u hồng,&hellip;để tốt cho sức khỏe v&agrave; ăn kh&ocirc;ng bị ng&aacute;n.</p>\r\n\r\n<p style=\"text-align:justify\"><img alt=\"\" src=\"http://localhost/nienluan/ckfinder/userfiles/images/post8-16.jpg\" style=\"width:100%\" /></p>\r\n\r\n<p style=\"text-align:justify\"><img alt=\"\" src=\"http://localhost/nienluan/ckfinder/userfiles/images/post8-17.jpg\" style=\"width:100%\" /></p>\r\n\r\n<p style=\"text-align:justify\"><img alt=\"\" src=\"http://localhost/nienluan/ckfinder/userfiles/images/post8-18.jpg\" style=\"width:100%\" /></p>\r\n\r\n<p style=\"text-align:justify\"><strong>Sữa tươi kh&ocirc;ng đường</strong></p>\r\n\r\n<p style=\"text-align:justify\">Nhiều người lo lắng ăn kh&ocirc;ng đ&uacute;ng c&aacute;ch sẽ kh&ocirc;ng v&agrave;o con m&agrave; chỉ g&acirc;y b&eacute;o ph&igrave; cho mẹ. Một trong những thực phẩm c&oacute; thể hạn chế t&igrave;nh trạng tr&ecirc;n&nbsp;l&agrave; sữa tươi kh&ocirc;ng đường. Giai đoạn n&agrave;y, cơ thể mẹ cũng cần lượng canxi lớn để tăng cường cho cơ thể v&agrave; d&agrave;nh một phần truyền cho thai nhi, đảm bảo xương v&agrave; răng b&eacute; chắc khoẻ. Nếu muốn bổ sung th&ecirc;m dưỡng chất cho con m&agrave; kh&ocirc;ng l&agrave;m dư đường huyết cho mẹ, th&igrave; đ&acirc;y ch&iacute;nh l&agrave; một sự lựa chọn th&ocirc;ng minh đấy!</p>\r\n\r\n<p style=\"text-align:justify\"><img alt=\"\" src=\"http://localhost/nienluan/ckfinder/userfiles/images/post8-19.jpg\" style=\"width:100%\" /></p>\r\n\r\n<p style=\"text-align:justify\"><img alt=\"\" src=\"http://localhost/nienluan/ckfinder/userfiles/images/post8-20.jpg\" style=\"width:100%\" /></p>\r\n\r\n<p style=\"text-align:justify\">Trong 3 th&aacute;ng cuối của thai k&igrave;, chế độ dinh dưỡng của mẹ ảnh hưởng rất lớn đến tr&iacute; th&ocirc;ng minh v&agrave; sức khỏe của b&eacute;, do đ&oacute;&nbsp;<a href=\"http://www.yan.vn/nguyen-nhan-va-cach-chua-tri-mat-ngu-cho-me-bau-166097.html?utm_campaign=InternallinkYAN&amp;utm_source=166996&amp;utm_medium=noniadesktop\" target=\"_blank\">b&agrave; bầu</a>&nbsp;n&ecirc;n ch&uacute; &yacute; bổ sung những thực phẩm gi&agrave;u chất dinh dưỡng v&agrave;o cơ thể. Tuy nhi&ecirc;n c&aacute;c mẹ cũng cần chọn những thực phẩm sạch sẽ, an to&agrave;n vệ sinh thực phẩm để đảm bảo sức khỏe cả cho m&igrave;nh v&agrave; cả b&eacute; y&ecirc;u nữa nh&eacute;.</p>\r\n\r\n<p style=\"text-align:right\">(Ảnh: Internet.)</p>\r\n', '2019-07-17 09:00:08', 2, 0, 8, 1, 8),
(29, 'no-image.jpg', 'Giới thiệu', 'Gioi-thieu', 'Đang cập nhật...', '<p>Đang cập nhật...</p>\r\n', '2019-07-10 11:02:15', 1, 0, 18, 1, 25),
(30, 'no-image.jpg', 'Liên hệ', 'Lien-he', 'Đang cập nhật...', '<p>Đang cập nhật...</p>\r\n', '2019-07-10 11:03:19', 1, 0, 12, 1, 26);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `id_cart` int(11) NOT NULL,
  `id_customer` int(11) NOT NULL,
  `sku_product` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contact`
--

CREATE TABLE `contact` (
  `id_contact` int(11) NOT NULL,
  `content` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `date_create` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `contact`
--

INSERT INTO `contact` (`id_contact`, `content`, `date_create`) VALUES
(1, 'Địa chỉ: Tổ 5, kp10, thị trấn Dương Đông, Phú Quốc, Kiên Giang', '2019-07-23 11:36:34'),
(2, 'Hotline: 0396.231.322', '2019-07-23 11:37:02'),
(5, ' Email: dthanhhuy1998@gmail.com', '2019-07-23 11:44:59');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `detail_invoice`
--

CREATE TABLE `detail_invoice` (
  `id_detail_invoice` int(11) NOT NULL,
  `code_invoice` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `sku_product` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `detail_invoice`
--

INSERT INTO `detail_invoice` (`id_detail_invoice`, `code_invoice`, `sku_product`, `qty`) VALUES
(3, 'INV01', 'S13', 1),
(4, 'INV01', 'S01', 2),
(5, 'INV01', 'S11', 1),
(6, 'INV01', 'S14', 1),
(14, 'INV02', 'S14', 1),
(17, 'INV03', 'S14', 3),
(18, 'INV03', 'S13', 1),
(19, 'INV04', 'S12', 1),
(20, 'INV04', 'S10', 1),
(21, 'INV05', 'S13', 1),
(22, 'INV06', 'S14', 1),
(23, 'INV07', 'S13', 1),
(27, 'INV08', 'S14', 1),
(29, 'INV09', 'S14', 1),
(30, 'INV10', 'S14', 1),
(31, 'INV11', 'S14', 2),
(34, 'INV12', 'S14', 1),
(35, 'INV12', 'S13', 2),
(36, 'INV12', 'S07', 1),
(37, 'INV13', 'S13', 1),
(38, 'INV14', 'S12', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `history`
--

CREATE TABLE `history` (
  `id_history` int(11) NOT NULL,
  `text` text COLLATE utf8_unicode_ci NOT NULL,
  `time` datetime NOT NULL,
  `id_acc` int(11) NOT NULL,
  `flag` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `history`
--

INSERT INTO `history` (`id_history`, `text`, `time`, `id_acc`, `flag`) VALUES
(95, ' đã tạo loại bài viết <b>Tin tức test</b>', '2019-07-14 13:05:26', 1, 0),
(96, ' đã xóa loại bài viết <b>Tin tức test</b>', '2019-07-14 13:07:03', 1, 0),
(97, ' đã tạo loại bài viết <b>Tin tức test</b>', '2019-07-14 13:16:15', 1, 0),
(98, ' đã chỉnh sửa loại bài viết <b></b> thành <b>Tin tức hàng ngày</b>', '2019-07-14 13:18:10', 0, 0),
(99, ' đã chỉnh sửa loại bài viết <b></b> thành <b>Tin tức n</b>', '2019-07-14 13:19:05', 1, 0),
(100, ' đã chỉnh sửa loại bài viết <b>Tin tức n</b> thành <b>Tin tức nổi bật</b>', '2019-07-14 13:19:52', 1, 0),
(101, ' đã xóa loại bài viết <b>Tin tức nổi bật</b>', '2019-07-14 13:20:01', 1, 0),
(102, ' đã xóa bài viết: <b>Cảnh báo bệnh Lyme từ bọ ve: Cha mẹ chớ nên lơ là kẻo gây nguy hại cho trẻ</b>', '2019-07-14 13:48:49', 1, 0),
(103, ' đã đăng bài viết <b></b>', '2019-07-14 13:49:56', 1, 0),
(104, ' đã xóa bài viết: <b>Cảnh báo bệnh Lyme từ bọ ve: Cha mẹ chớ nên lơ là kẻo gây nguy hại cho trẻ</b>', '2019-07-14 13:51:10', 1, 0),
(105, ' đã đăng bài viết <b>Cảnh báo bệnh Lyme từ bọ ve: Cha mẹ chớ nên lơ là kẻo gây nguy hại cho trẻ</b>', '2019-07-14 13:52:33', 1, 0),
(106, ' đã chỉnh sửa bài viết <b>Cảnh báo bệnh Lyme từ bọ ve: Cha mẹ chớ nên lơ là kẻo gây nguy hại cho trẻ</b>', '2019-07-14 13:54:36', 1, 0),
(107, ' đã duyệt bài <b>Cảnh báo bệnh Lyme từ bọ ve: Cha mẹ chớ nên lơ là kẻo gây nguy hại cho trẻ</b>', '2019-07-14 14:01:31', 1, 0),
(108, ' đã tắt duyệt bài <b>Cảnh báo bệnh Lyme từ bọ ve: Cha mẹ chớ nên lơ là kẻo gây nguy hại cho trẻ</b>', '2019-07-14 14:01:39', 1, 0),
(109, ' đã duyệt bài <b>Cảnh báo bệnh Lyme từ bọ ve: Cha mẹ chớ nên lơ là kẻo gây nguy hại cho trẻ</b>', '2019-07-14 14:01:46', 1, 0),
(110, ' đã tắt duyệt bài <b>Khi bé yêu 6 tháng tuổi, mẹ nhớ \"note\" ngay những loại thực phẩm giúp con phát triển vượt trội</b>', '2019-07-14 14:05:02', 3, 0),
(111, ' đã đăng bài viết <b>Bài test</b>', '2019-07-14 16:16:40', 1, 0),
(112, ' đã duyệt bài <b>Bài test</b>', '2019-07-14 16:17:00', 1, 0),
(113, ' đã xóa bài viết: <b>Bài test</b>', '2019-07-14 16:17:05', 1, 0),
(114, ' đã duyệt bài <b>Khi bé yêu 6 tháng tuổi, mẹ nhớ \"note\" ngay những loại thực phẩm giúp con phát triển vượt trội</b>', '2019-07-14 16:17:25', 1, 0),
(115, ' đã tạo loại bài viết <b>Tin test</b>', '2019-07-15 07:02:10', 1, 0),
(116, ' đã chỉnh sửa loại bài viết <b>Tin test</b> thành <b>Tin hot trong ngày</b>', '2019-07-15 07:02:54', 1, 0),
(117, ' đã xóa loại bài viết <b>Tin hot trong ngày</b>', '2019-07-15 07:03:05', 1, 0),
(118, ' đã đăng bài viết <b>Bài test 1</b>', '2019-07-15 07:04:05', 1, 0),
(119, ' đã đăng bài viết <b>Bài test 2</b>', '2019-07-15 07:04:32', 1, 0),
(120, ' đã chỉnh sửa bài viết <b>Bài test 1</b>', '2019-07-15 07:04:51', 1, 0),
(121, ' đã duyệt bài <b>Bài test 1</b>', '2019-07-15 07:05:06', 1, 0),
(122, ' đã tắt duyệt bài <b>Bài test 1</b>', '2019-07-15 07:05:12', 1, 0),
(123, ' đã xóa bài viết: <b>Bài test 1</b>', '2019-07-15 07:05:18', 1, 0),
(124, ' đã chỉnh sửa bài viết <b>Bài viết hay</b>', '2019-07-15 07:05:27', 1, 0),
(125, ' đã xóa bài viết: <b>Bài viết hay</b>', '2019-07-15 07:05:35', 1, 0),
(126, ' đã đăng bài viết <b>Bài test 1</b>', '2019-07-15 07:21:20', 2, 0),
(127, ' đã duyệt bài <b>Bài test 1</b>', '2019-07-15 07:28:06', 1, 0),
(128, ' đã chỉnh sửa bài viết <b>Bài test 1</b>', '2019-07-15 07:28:31', 1, 0),
(129, ' đã tắt duyệt bài <b>Bài test 1</b>', '2019-07-15 07:32:48', 1, 0),
(130, ' đã chỉnh sửa bài viết <b>Bài test 1đsadsa</b>', '2019-07-15 07:36:31', 2, 0),
(131, ' đã xóa bài viết: <b>Bài test 1đsadsa</b>', '2019-07-15 07:36:51', 2, 0),
(132, ' đã đăng bài viết <b>Bài viết test</b>', '2019-07-15 07:37:28', 2, 0),
(133, ' đã chỉnh sửa bài viết <b>Bài viết testdsadsa</b>', '2019-07-15 07:38:15', 1, 0),
(134, ' đã duyệt bài <b>Bài viết testdsadsa</b>', '2019-07-15 07:38:32', 1, 0),
(135, ' đã tắt duyệt bài <b>Bài viết testdsadsa</b>', '2019-07-15 07:43:57', 1, 0),
(136, ' đã duyệt bài <b>Bài viết testdsadsa</b>', '2019-07-15 07:44:45', 1, 0),
(137, ' đã đăng bài viết <b>Bài test 2</b>', '2019-07-15 07:49:40', 4, 0),
(138, ' đã xóa bài viết: <b>Bài test 2</b>', '2019-07-15 07:50:27', 4, 0),
(139, ' đã xóa bài viết: <b>Bài viết testdsadsa</b>', '2019-07-15 07:54:44', 1, 0),
(140, ' đã tạo loại sản phẩm <b>Loại test</b>', '2019-07-15 08:16:48', 1, 0),
(141, ' đã xóa loại sản phẩm <b>Loại test</b>', '2019-07-15 08:20:34', 1, 0),
(142, ' đã chỉnh sửa loại sản phẩm <b>Sản phẩm test</b> thành <b>Sản phẩm nổi bật</b>', '2019-07-15 08:22:16', 1, 0),
(143, ' đã đăng sản phẩm <b>Sản phẩm 1</b>', '2019-07-15 21:22:17', 1, 0),
(144, ' đã đăng sản phẩm <b>Đầm công chúa Elsa siêu dễ thương cho bé gái từ 3-8 tuổi</b>', '2019-07-15 21:30:04', 1, 0),
(145, ' đã đăng sản phẩm <b>Đầm thun hở lưng sành điệu cho bé gái từ 1-7 tuổi</b>', '2019-07-15 21:33:40', 1, 0),
(146, ' đã đăng sản phẩm <b>Sản phẩm 1</b>', '2019-07-15 21:45:15', 2, 0),
(147, ' đã xóa sản phẩm <b>Sản phẩm 1</b>', '2019-07-15 21:56:34', 1, 0),
(148, ' đã xóa sản phẩm <b>Sản phẩm đầu tiên</b>', '2019-07-15 21:56:59', 1, 0),
(149, ' đã chỉnh sửa sản phẩm <b>Đầm thun hở lưng sành điệu cho bé gái từ 1-7 tuổi</b>', '2019-07-15 22:40:54', 1, 0),
(150, ' đã chỉnh sửa sản phẩm <b>Đầm thun hở lưng sành điệu cho bé gái từ 1-7 tuổi</b>', '2019-07-15 22:43:35', 1, 0),
(151, ' đã đăng sản phẩm <b>Sản phẩm test</b>', '2019-07-15 22:47:58', 1, 0),
(152, ' đã chỉnh sửa sản phẩm <b>Sản phẩm test</b>', '2019-07-15 22:48:28', 1, 0),
(153, ' đã chỉnh sửa sản phẩm <b>Sản phẩm test</b>', '2019-07-15 22:48:57', 1, 0),
(154, ' đã đăng sản phẩm <b>Sản phẩm test</b>', '2019-07-15 22:49:21', 1, 0),
(155, ' đã đăng sản phẩm <b>Sản phẩm test</b>', '2019-07-15 22:51:13', 1, 0),
(156, ' đã chỉnh sửa sản phẩm <b>Sản phẩm test</b>', '2019-07-15 22:51:50', 1, 0),
(157, ' đã đăng sản phẩm <b>Sản phẩm test</b>', '2019-07-15 22:52:24', 1, 0),
(158, ' đã đăng sản phẩm <b>Sản phẩm test</b>', '2019-07-15 22:53:18', 1, 0),
(159, ' đã chỉnh sửa sản phẩm <b>Sản phẩm test</b>', '2019-07-15 22:53:47', 1, 0),
(160, ' đã chỉnh sửa sản phẩm <b>Sản phẩm 1</b>', '2019-07-15 22:54:01', 1, 0),
(161, ' đã đăng sản phẩm <b>Sản phẩm test</b>', '2019-07-15 22:54:09', 1, 0),
(162, ' đã đăng sản phẩm <b>Sản phẩm test</b>', '2019-07-15 22:54:16', 1, 0),
(163, ' đã đăng sản phẩm <b>Đầm công chúa Elsa siêu dễ thương cho bé gái từ 3-8 tuổi</b>', '2019-07-15 23:01:43', 1, 0),
(164, ' đã chỉnh sửa sản phẩm <b>Đầm công chúa Elsa siêu dễ thương cho bé gái từ 3-8 tuổi</b>', '2019-07-15 23:02:56', 1, 0),
(165, ' đã chỉnh sửa sản phẩm <b>Sản phẩm test</b>', '2019-07-15 23:03:06', 1, 0),
(166, ' đã chỉnh sửa sản phẩm <b>Sản phẩm testDSA</b>', '2019-07-15 23:06:16', 1, 0),
(167, ' đã chỉnh sửa sản phẩm <b>Sản phẩm testDSA</b>', '2019-07-15 23:06:33', 1, 0),
(168, ' đã duyệt sản phẩm <b>Sản phẩm testDSA</b>', '2019-07-15 23:10:56', 1, 0),
(169, ' đã duyệt sản phẩm <b>Đầm công chúa Elsa siêu dễ thương cho bé gái từ 3-8 tuổi</b>', '2019-07-15 23:11:04', 1, 0),
(170, ' đã tắt duyệt sản phẩm <b>Đầm công chúa Elsa siêu dễ thương cho bé gái từ 3-8 tuổi</b>', '2019-07-15 23:11:06', 1, 0),
(171, ' đã duyệt sản phẩm <b>Đầm công chúa Elsa siêu dễ thương cho bé gái từ 3-8 tuổi</b>', '2019-07-15 23:11:12', 1, 0),
(172, ' đã chỉnh sửa sản phẩm <b>Đầm công chúa Elsa siêu dễ thương cho bé gái từ 3-8 tuổi</b>', '2019-07-15 23:21:30', 1, 0),
(173, ' đã duyệt sản phẩm <b>Đầm thun hở lưng sành điệu cho bé gái từ 1-7 tuổi</b>', '2019-07-15 23:24:45', 1, 0),
(174, ' đã đăng sản phẩm <b>Sản phẩm test 2</b>', '2019-07-15 23:26:39', 1, 0),
(175, ' đã đăng sản phẩm <b>Sản phẩm test 3</b>', '2019-07-15 23:27:12', 1, 0),
(176, ' đã duyệt sản phẩm <b>Sản phẩm test 3</b>', '2019-07-15 23:27:28', 1, 0),
(177, ' đã chỉnh sửa sản phẩm <b>Sản phẩm test 2</b>', '2019-07-15 23:28:35', 1, 0),
(178, ' đã chỉnh sửa sản phẩm <b>Sản phẩm test</b>', '2019-07-15 23:28:43', 1, 0),
(179, ' đã tắt duyệt sản phẩm <b>Đầm thun hở lưng sành điệu cho bé gái từ 1-7 tuổi</b>', '2019-07-15 23:29:30', 1, 0),
(180, ' đã tắt duyệt sản phẩm <b>Đầm công chúa Elsa siêu dễ thương cho bé gái từ 3-8 tuổi</b>', '2019-07-15 23:29:35', 1, 0),
(181, ' đã tắt duyệt sản phẩm <b>Sản phẩm testDSA</b>', '2019-07-15 23:29:40', 1, 0),
(182, ' đã tắt duyệt sản phẩm <b>Sản phẩm test 3</b>', '2019-07-15 23:29:44', 1, 0),
(183, ' đã duyệt sản phẩm <b>Sản phẩm testDSA</b>', '2019-07-15 23:30:05', 1, 0),
(184, ' đã duyệt sản phẩm <b>Đầm công chúa Elsa siêu dễ thương cho bé gái từ 3-8 tuổi</b>', '2019-07-15 23:30:09', 1, 0),
(185, ' đã chỉnh sửa sản phẩm <b>Sản phẩm testDSA</b>', '2019-07-15 23:30:18', 1, 0),
(186, ' đã chỉnh sửa sản phẩm <b>Đầm công chúa Elsa siêu dễ thương cho bé gái từ 3-8 tuổi</b>', '2019-07-15 23:30:35', 1, 0),
(187, ' đã duyệt sản phẩm <b>Đầm thun hở lưng sành điệu cho bé gái từ 1-7 tuổi</b>', '2019-07-15 23:30:41', 1, 0),
(188, ' đã duyệt sản phẩm <b>Sản phẩm 1</b>', '2019-07-15 23:30:43', 1, 0),
(189, ' đã chỉnh sửa sản phẩm <b>Đầm thun hở lưng sành điệu cho bé gái từ 1-7 tuổi</b>', '2019-07-15 23:30:52', 1, 0),
(190, ' đã chỉnh sửa sản phẩm <b>Sản phẩm test 2</b>', '2019-07-15 23:31:11', 1, 0),
(191, ' đã chỉnh sửa sản phẩm <b>Sản phẩm test 2</b>', '2019-07-15 23:31:39', 1, 0),
(192, ' đã duyệt sản phẩm <b>Sản phẩm test 2</b>', '2019-07-15 23:31:52', 1, 0),
(193, ' đã chỉnh sửa sản phẩm <b>Sản phẩm test 2</b>', '2019-07-15 23:32:01', 1, 0),
(194, ' đã tắt duyệt sản phẩm <b>Sản phẩm 1</b>', '2019-07-16 08:20:08', 1, 0),
(195, ' đã xóa bài viết: <b></b>', '2019-07-16 08:25:54', 2, 0),
(196, ' đã xóa sản phẩm <b>Sản phẩm 1</b>', '2019-07-16 08:31:22', 1, 0),
(197, ' đã đăng sản phẩm <b>Sản phẩm 1</b>', '2019-07-16 08:33:30', 2, 0),
(198, ' đã xóa bài viết: <b></b>', '2019-07-16 08:44:27', 2, 0),
(199, ' đã xóa sản phẩm <b>Sản phẩm 1</b>', '2019-07-16 08:45:41', 2, 0),
(200, ' đã đăng sản phẩm <b>Sản phẩm test </b>', '2019-07-16 08:46:08', 2, 0),
(201, ' đã duyệt sản phẩm <b>Sản phẩm test </b>', '2019-07-16 08:46:52', 1, 0),
(202, ' đã tắt duyệt sản phẩm <b>Sản phẩm test </b>', '2019-07-16 08:47:24', 1, 0),
(203, ' đã chỉnh sửa sản phẩm <b>Đầm lụa hoa kèm nón rộng vành dễ thương cho bé gái 2 - 9 tuổi DGB191147</b>', '2019-07-16 08:54:43', 2, 0),
(204, ' đã duyệt sản phẩm <b>Đầm lụa hoa kèm nón rộng vành dễ thương cho bé gái 2 - 9 tuổi DGB191147</b>', '2019-07-16 08:55:34', 1, 0),
(205, ' đã chỉnh sửa sản phẩm <b>[SIZE ĐẠI] Bộ thun in mắt kính quần legging dễ thương cho bé gái 10 - 15 tuổi BGB118687</b>', '2019-07-16 09:15:18', 1, 0),
(206, ' đã chỉnh sửa sản phẩm <b>[SIZE ĐẠI] Set quần yếm jeans áo thun Prince dễ thương cho bé gái 10 - 15 tuổi BGB118704</b>', '2019-07-16 09:25:01', 1, 0),
(207, ' đã chỉnh sửa sản phẩm <b>[SIZE ĐẠI] Set quần yếm jeans áo thun Prince dễ thương cho bé gái 10 - 15 tuổi BGB118704</b>', '2019-07-16 09:25:30', 1, 0),
(208, ' đã chỉnh sửa sản phẩm <b>Sản phẩm testDSA</b>', '2019-07-16 09:27:48', 1, 0),
(209, ' đã chỉnh sửa sản phẩm <b>Sản phẩm testDSA</b>', '2019-07-16 09:28:04', 1, 0),
(210, ' đã xóa sản phẩm <b>Đầm thun hở lưng sành điệu cho bé gái từ 1-7 tuổi</b>', '2019-07-16 09:49:48', 1, 0),
(211, ' đã chỉnh sửa sản phẩm <b>Sản phẩm testDSA</b>', '2019-07-16 09:51:59', 1, 0),
(212, ' đã duyệt sản phẩm <b>Sản phẩm test 3</b>', '2019-07-16 09:54:13', 1, 0),
(213, ' đã duyệt sản phẩm <b>Sản phẩm test</b>', '2019-07-16 09:54:14', 1, 0),
(214, ' đã chỉnh sửa sản phẩm <b>[SIZE ĐẠI] Bộ thun in mắt kính quần legging dễ thương cho bé gái 10 - 15 tuổi BGB118687</b>', '2019-07-16 10:00:31', 1, 0),
(215, ' đã chỉnh sửa sản phẩm <b>Sản phẩm testDSA</b>', '2019-07-16 10:00:39', 1, 0),
(216, ' đã chỉnh sửa sản phẩm <b>[SIZE ĐẠI] Bộ thun in mắt kính quần legging dễ thương cho bé gái 10 - 15 tuổi BGB118687</b>', '2019-07-16 10:01:03', 1, 0),
(217, ' đã chỉnh sửa sản phẩm <b>Sản phẩm test 3</b>', '2019-07-16 10:01:09', 1, 0),
(218, ' đã chỉnh sửa sản phẩm <b>Bộ thun in chữ V dễ thương cho bé trai 3 - 10 Tuổi BTB20670</b>', '2019-07-16 10:14:57', 1, 0),
(219, ' đã chỉnh sửa sản phẩm <b>[SIZE ĐẠI] Bộ thun in mắt kính quần legging dễ thương cho bé gái 10 - 15 tuổi BGB118687</b>', '2019-07-16 10:15:13', 1, 0),
(220, ' đã chỉnh sửa sản phẩm <b>Bộ thun in chữ V dễ thương cho bé trai 3 - 10 Tuổi BTB20670</b>', '2019-07-16 10:15:21', 1, 0),
(221, ' đã đăng sản phẩm <b>Bộ kate liền quần sọc kèm BĂNG ĐÔ và GIÀY dễ thương cho bé 0 - 15 tháng SLG1066</b>', '2019-07-16 10:18:31', 1, 0),
(222, ' đã duyệt sản phẩm <b>Bộ kate liền quần sọc kèm BĂNG ĐÔ và GIÀY dễ thương cho bé 0 - 15 tháng SLG1066</b>', '2019-07-16 10:18:46', 1, 0),
(223, ' đã chỉnh sửa sản phẩm <b>Bộ kate liền quần sọc kèm BĂNG ĐÔ và GIÀY dễ thương cho bé 0 - 15 tháng SLG1066</b>', '2019-07-16 10:19:06', 1, 0),
(224, ' đã chỉnh sửa sản phẩm <b>Đầm ren công chúa phối lưới dễ thương cho bé gái 3 - 10 tuổi DGB190707</b>', '2019-07-16 10:27:46', 1, 0),
(225, ' đã chỉnh sửa sản phẩm <b>Đầm suông phối ren dễ thương cho bé gái 2 - 9 tuổi DGB191038</b>', '2019-07-16 10:32:20', 1, 0),
(226, ' đã đăng sản phẩm <b>Set bơi người nhện dễ thương cho bé trai 3 - 10 tuổi BTB20381</b>', '2019-07-16 11:54:15', 2, 0),
(227, ' đã duyệt sản phẩm <b>Set bơi người nhện dễ thương cho bé trai 3 - 10 tuổi BTB20381</b>', '2019-07-16 11:54:52', 1, 0),
(228, ' đã tạo slider', '2019-07-16 19:54:15', 1, 0),
(229, ' đã tạo slider', '2019-07-16 19:55:08', 1, 0),
(230, ' đã tạo slider', '2019-07-16 20:02:57', 1, 0),
(231, ' đã xóa slider', '2019-07-16 20:15:48', 1, 0),
(232, ' đã tạo slider', '2019-07-16 20:16:06', 1, 0),
(233, ' đã xóa slider', '2019-07-16 20:18:35', 1, 0),
(234, ' đã chỉnh sửa slider', '2019-07-16 20:24:49', 1, 0),
(235, ' đã chỉnh sửa slider', '2019-07-16 20:25:02', 1, 0),
(236, ' đã chỉnh sửa slider', '2019-07-16 20:25:21', 1, 0),
(237, ' đã chỉnh sửa slider', '2019-07-16 20:25:37', 1, 0),
(238, ' đã chỉnh sửa slider', '2019-07-16 20:27:03', 1, 0),
(239, ' đã chỉnh sửa slider', '2019-07-16 20:27:39', 1, 0),
(240, ' đã chỉnh sửa slider', '2019-07-16 20:27:47', 1, 0),
(241, ' đã chỉnh sửa slider', '2019-07-16 20:29:00', 1, 0),
(242, ' đã chỉnh sửa slider', '2019-07-16 20:29:13', 1, 0),
(243, ' đã chỉnh sửa slider', '2019-07-16 20:29:21', 1, 0),
(244, ' đã tạo slider', '2019-07-16 20:29:37', 1, 0),
(245, ' đã chỉnh sửa slider', '2019-07-16 20:30:57', 1, 0),
(246, ' đã chỉnh sửa slider', '2019-07-16 20:31:21', 1, 0),
(247, ' đã chỉnh sửa slider', '2019-07-16 20:33:33', 1, 0),
(248, ' đã chỉnh sửa slider', '2019-07-16 20:33:43', 1, 0),
(249, ' đã chỉnh sửa slider', '2019-07-16 20:34:46', 1, 0),
(250, ' đã chỉnh sửa slider', '2019-07-16 20:34:55', 1, 0),
(251, ' đã tạo slider', '2019-07-16 20:37:10', 1, 0),
(252, ' đã chỉnh sửa slider', '2019-07-16 21:40:14', 1, 0),
(253, ' đã chỉnh sửa slider', '2019-07-16 21:41:16', 1, 0),
(254, ' đã thay đổi logo', '2019-07-16 21:42:01', 1, 0),
(255, ' đã thay đổi logo', '2019-07-16 21:42:37', 1, 0),
(256, ' đã thay đổi logo', '2019-07-16 21:42:54', 1, 0),
(257, ' đã thay đổi logo', '2019-07-16 21:43:45', 1, 0),
(258, ' đã thay đổi logo', '2019-07-16 21:45:18', 1, 0),
(259, ' đã thay đổi logo', '2019-07-16 21:45:27', 1, 0),
(260, ' đã thay đổi logo', '2019-07-16 22:11:24', 1, 0),
(261, ' đã đăng bài viết <b>Mẹ nhất định phải biết những món ăn tốt cho bà bầu cuối thai kì giúp con khỏe mạnh và thông minh</b>', '2019-07-17 09:00:08', 2, 0),
(262, ' đã chỉnh sửa bài viết <b>Mẹ nhất định phải biết những món ăn tốt cho bà bầu cuối thai kì giúp con khỏe mạnh và thông minh</b>', '2019-07-17 09:00:49', 2, 0),
(263, ' đã duyệt bài <b>Mẹ nhất định phải biết những món ăn tốt cho bà bầu cuối thai kì giúp con khỏe mạnh và thông minh</b>', '2019-07-17 09:01:19', 1, 0),
(264, ' đã tắt duyệt bài <b>Mẹ nhất định phải biết những món ăn tốt cho bà bầu cuối thai kì giúp con khỏe mạnh và thông minh</b>', '2019-07-17 09:01:48', 1, 0),
(265, ' đã duyệt bài <b>Mẹ nhất định phải biết những món ăn tốt cho bà bầu cuối thai kì giúp con khỏe mạnh và thông minh</b>', '2019-07-17 09:01:53', 1, 0),
(266, ' đã tắt duyệt bài <b>Mẹ nhất định phải biết những món ăn tốt cho bà bầu cuối thai kì giúp con khỏe mạnh và thông minh</b>', '2019-07-17 09:03:57', 1, 0),
(267, ' đã duyệt bài <b>Mẹ nhất định phải biết những món ăn tốt cho bà bầu cuối thai kì giúp con khỏe mạnh và thông minh</b>', '2019-07-17 09:04:25', 1, 0),
(268, ' đã chỉnh sửa bài viết <b>Mẹ nhất định phải biết những món ăn tốt cho bà bầu cuối thai kì giúp con khỏe mạnh và thông minh</b>', '2019-07-17 09:05:32', 1, 0),
(269, ' đã chỉnh sửa bài viết <b>Mẹ nhất định phải biết những món ăn tốt cho bà bầu cuối thai kì giúp con khỏe mạnh và thông minh</b>', '2019-07-17 09:06:31', 1, 0),
(270, ' đã chỉnh sửa bài viết <b>Mẹ nhất định phải biết những món ăn tốt cho bà bầu cuối thai kì giúp con khỏe mạnh và thông minh</b>', '2019-07-17 09:06:52', 1, 0),
(271, ' đã chỉnh sửa bài viết <b>Mẹ nhất định phải biết những món ăn tốt cho bà bầu cuối thai kì giúp con khỏe mạnh và thông minh</b>', '2019-07-17 09:07:11', 1, 0),
(272, ' đã chỉnh sửa bài viết <b>Mẹ nhất định phải biết những món ăn tốt cho bà bầu cuối thai kì giúp con khỏe mạnh và thông minh</b>', '2019-07-17 09:07:40', 1, 0),
(273, ' đã chỉnh sửa bài viết <b>Mẹ nhất định phải biết những món ăn tốt cho bà bầu cuối thai kì giúp con khỏe mạnh và thông minh</b>', '2019-07-17 09:26:29', 1, 0),
(274, ' đã chỉnh sửa bài viết <b>Mẹ nhất định phải biết những món ăn tốt cho bà bầu cuối thai kì giúp con khỏe mạnh và thông minh</b>', '2019-07-17 09:35:02', 1, 0),
(275, ' đã xóa loại sản phẩm <b>Sản phẩm nổi bật</b>', '2019-07-17 10:18:29', 1, 0),
(276, ' đã xóa loại sản phẩm <b>Sản phẩm mới về</b>', '2019-07-17 10:50:04', 1, 0),
(277, ' đã chỉnh sửa bài viết <b>Mẹ nhất định phải biết những món ăn tốt cho bà bầu cuối thai kì giúp con khỏe mạnh và thông minh</b>', '2019-07-17 10:56:59', 1, 0),
(278, ' đã chỉnh sửa bài viết <b>Cảnh báo bệnh Lyme từ bọ ve: Cha mẹ chớ nên lơ là kẻo gây nguy hại cho trẻ</b>', '2019-07-17 10:57:08', 1, 0),
(279, ' đã chỉnh sửa bài viết <b>Mẹ không cần giỏi nhưng vẫn có thể dạy con học tiếng Anh dễ dàng chỉ với 3 cách</b>', '2019-07-17 10:57:20', 1, 0),
(280, ' đã chỉnh sửa bài viết <b>Muốn bé yêu có làn da trắng đẹp, mẹ bầu nhất định phải dùng những thực phẩm này</b>', '2019-07-17 10:57:31', 1, 0),
(281, ' đã xóa loại bài viết <b>Hướng dẫn phối đồ</b>', '2019-07-17 11:43:26', 1, 0),
(282, ' đã đăng sản phẩm <b>Bộ liền quần chấm bi kèm BĂNG ĐÔ và GIÀY dễ thương cho bé 0 - 15 tháng SLG1065</b>', '2019-07-18 08:35:50', 1, 0),
(283, ' đã chỉnh sửa sản phẩm <b>Bộ liền quần chấm bi kèm BĂNG ĐÔ và GIÀY dễ thương cho bé 0 - 15 tháng SLG1065</b>', '2019-07-18 08:36:03', 1, 0),
(284, ' đã duyệt sản phẩm <b>Bộ liền quần chấm bi kèm BĂNG ĐÔ và GIÀY dễ thương cho bé 0 - 15 tháng SLG1065</b>', '2019-07-18 08:36:21', 1, 0),
(285, ' đã chỉnh sửa sản phẩm <b>Bộ kate liền quần sọc kèm BĂNG ĐÔ và GIÀY dễ thương cho bé 0 - 15 tháng SLG1066</b>', '2019-07-18 09:00:25', 1, 0),
(286, ' đã chỉnh sửa sản phẩm <b>Bộ kate liền quần sọc kèm BĂNG ĐÔ và GIÀY dễ thương cho bé 0 - 15 tháng SLG1066</b>', '2019-07-18 09:06:38', 1, 0),
(287, ' đã đăng sản phẩm <b>Set vest kaki phong cách Hàn Quốc dễ thương cho bé trai từ 3 - 12 Tuổi BTB19875</b>', '2019-07-18 09:22:38', 1, 0),
(288, ' đã duyệt sản phẩm <b>Set vest kaki phong cách Hàn Quốc dễ thương cho bé trai từ 3 - 12 Tuổi BTB19875</b>', '2019-07-18 09:22:42', 1, 0),
(289, ' đã đăng sản phẩm <b>Set váy yếm kaki kèm áo sọc visco dễ thương cho bé gái 2 - 9 tuổi BGB118690</b>', '2019-07-18 09:27:37', 1, 0),
(290, ' đã duyệt sản phẩm <b>Set váy yếm kaki kèm áo sọc visco dễ thương cho bé gái 2 - 9 tuổi BGB118690</b>', '2019-07-18 09:27:39', 1, 0),
(291, ' đã tắt duyệt sản phẩm <b>Set vest kaki phong cách Hàn Quốc dễ thương cho bé trai từ 3 - 12 Tuổi BTB19875</b>', '2019-07-18 15:09:27', 1, 0),
(292, ' đã duyệt sản phẩm <b>Set vest kaki phong cách Hàn Quốc dễ thương cho bé trai từ 3 - 12 Tuổi BTB19875</b>', '2019-07-18 15:09:28', 1, 0),
(293, ' đã tắt duyệt sản phẩm <b>Set bơi người nhện dễ thương cho bé trai 3 - 10 tuổi BTB20381</b>', '2019-07-18 15:20:48', 1, 0),
(294, ' đã duyệt sản phẩm <b>Set bơi người nhện dễ thương cho bé trai 3 - 10 tuổi BTB20381</b>', '2019-07-18 15:21:49', 1, 0),
(295, ' đã xóa loại sản phẩm <b></b>', '2019-07-18 15:30:35', 1, 0),
(296, ' đã tắt duyệt sản phẩm <b>Set vest kaki phong cách Hàn Quốc dễ thương cho bé trai từ 3 - 12 Tuổi BTB19875</b>', '2019-07-18 15:31:25', 1, 0),
(297, ' đã tắt duyệt sản phẩm <b>Set bơi người nhện dễ thương cho bé trai 3 - 10 tuổi BTB20381</b>', '2019-07-18 15:32:13', 1, 0),
(298, ' đã duyệt sản phẩm <b>Set vest kaki phong cách Hàn Quốc dễ thương cho bé trai từ 3 - 12 Tuổi BTB19875</b>', '2019-07-18 15:38:59', 1, 0),
(299, ' đã duyệt sản phẩm <b>Set bơi người nhện dễ thương cho bé trai 3 - 10 tuổi BTB20381</b>', '2019-07-18 16:54:55', 1, 0),
(300, ' đã đăng sản phẩm <b>Sản phẩm test</b>', '2019-07-19 08:16:38', 1, 0),
(301, ' đã chỉnh sửa sản phẩm <b>Sản phẩm test</b>', '2019-07-19 08:17:03', 1, 0),
(302, ' đã duyệt sản phẩm <b>Sản phẩm test</b>', '2019-07-19 08:25:20', 1, 0),
(303, ' đã xóa sản phẩm <b>Sản phẩm test</b>', '2019-07-19 08:37:45', 1, 0),
(304, ' đã đăng sản phẩm <b>Sản phẩm test</b>', '2019-07-19 08:39:54', 1, 0),
(305, ' đã xóa sản phẩm <b>Sản phẩm test</b>', '2019-07-19 08:41:29', 1, 0),
(306, ' đã tạo loại sản phẩm <b>Loại sản phẩm test</b>', '2019-07-19 08:45:34', 1, 0),
(307, ' đã đăng sản phẩm <b>Sản phẩm test</b>', '2019-07-19 08:45:57', 1, 0),
(308, ' đã duyệt sản phẩm <b>Sản phẩm test</b>', '2019-07-19 08:46:12', 1, 0),
(309, ' đã chỉnh sửa sản phẩm <b>Sản phẩm test</b>', '2019-07-19 08:46:32', 1, 0),
(310, ' đã tắt duyệt sản phẩm <b>Sản phẩm test</b>', '2019-07-19 08:46:34', 1, 0),
(311, ' đã duyệt sản phẩm <b>Sản phẩm test</b>', '2019-07-19 08:47:48', 1, 0),
(312, ' đã đăng sản phẩm <b>Sản phẩm test 2</b>', '2019-07-19 08:52:10', 1, 0),
(313, ' đã xóa loại sản phẩm <b>Loại sản phẩm test</b>', '2019-07-19 09:09:30', 1, 0),
(314, ' đã tạo loại sản phẩm <b>loại test</b>', '2019-07-19 09:10:43', 1, 0),
(315, ' đã đăng sản phẩm <b>test</b>', '2019-07-19 09:11:05', 1, 0),
(316, ' đã xóa loại sản phẩm <b>loại test</b>', '2019-07-19 09:12:01', 1, 0),
(317, ' đã tạo loại sản phẩm <b>Loại test</b>', '2019-07-19 09:13:01', 1, 0),
(318, ' đã chỉnh sửa sản phẩm <b>test</b>', '2019-07-19 09:13:15', 1, 0),
(319, ' đã xóa loại sản phẩm <b>Loại test</b>', '2019-07-19 09:13:22', 1, 0),
(320, ' đã tạo loại sản phẩm <b>Loại test nè</b>', '2019-07-19 09:13:41', 1, 0),
(321, ' đã đăng sản phẩm <b>Loại test</b>', '2019-07-19 09:14:16', 1, 0),
(322, ' đã xóa loại sản phẩm <b>Loại test nè</b>', '2019-07-19 09:14:52', 1, 0),
(323, ' đã chỉnh sửa bài viết <b>Muốn bé yêu có làn da trắng đẹp, mẹ bầu nhất định phải dùng những thực phẩm này</b>', '2019-07-19 09:47:03', 1, 0),
(324, ' đã tạo loại bài viết <b>Bài test</b>', '2019-07-19 10:35:25', 1, 0),
(325, ' đã đăng bài viết <b>Bài test 1</b>', '2019-07-19 10:38:46', 1, 0),
(326, ' đã chỉnh sửa bài viết <b>Bài test 1</b>', '2019-07-19 10:38:53', 1, 0),
(327, ' đã đăng bài viết <b>Bài test 2</b>', '2019-07-19 10:39:02', 1, 0),
(328, ' đã chỉnh sửa bài viết <b>Bài test 2</b>', '2019-07-19 10:39:16', 1, 0),
(329, ' đã xóa loại bài viết <b>Bài test</b>', '2019-07-19 10:45:44', 1, 0),
(330, ' đã tạo loại bài viết <b>Bài test</b>', '2019-07-19 10:46:54', 1, 0),
(331, ' đã đăng bài viết <b>Bài test</b>', '2019-07-19 10:47:24', 1, 0),
(332, ' đã đăng bài viết <b>Bài test 2</b>', '2019-07-19 10:47:40', 1, 0),
(333, ' đã xóa loại bài viết <b>Bài test</b>', '2019-07-19 10:47:50', 1, 0),
(334, ' đã xóa bài viết: <b>Bài test 2</b>', '2019-07-19 10:48:11', 1, 0),
(335, ' đã chỉnh sửa sản phẩm <b>Bộ liền quần chấm bi kèm BĂNG ĐÔ và GIÀY dễ thương cho bé 0 - 15 tháng SLG1065</b>', '2019-07-19 19:45:21', 1, 0),
(336, ' đã tắt duyệt sản phẩm <b>Set váy yếm kaki kèm áo sọc visco dễ thương cho bé gái 2 - 9 tuổi BGB118690</b>', '2019-07-20 14:18:06', 1, 0),
(337, ' đã tắt duyệt sản phẩm <b>Set bơi người nhện dễ thương cho bé trai 3 - 10 tuổi BTB20381</b>', '2019-07-20 14:18:38', 1, 0),
(338, ' đã duyệt sản phẩm <b>Set váy yếm kaki kèm áo sọc visco dễ thương cho bé gái 2 - 9 tuổi BGB118690</b>', '2019-07-20 14:18:40', 1, 0),
(339, ' đã hủy đơn hàng <b></b>', '2019-07-20 17:25:58', 1, 0),
(340, ' đã hủy đơn hàng <b></b>', '2019-07-20 17:26:30', 1, 0),
(341, ' đã hủy đơn hàng <b>INV03</b>', '2019-07-20 17:27:45', 1, 0),
(342, ' đã hủy đơn hàng <b>INV02</b>', '2019-07-20 17:28:07', 1, 0),
(343, ' đã xác nhận đơn hàng <b>INV01</b>', '2019-07-20 17:51:14', 1, 0),
(344, ' đã xác nhận đơn hàng <b>INV02</b>', '2019-07-20 18:11:17', 1, 0),
(345, ' đã hủy đơn hàng <b>INV02</b>', '2019-07-20 18:35:45', 1, 0),
(346, ' đã hủy đơn hàng <b>INV02</b>', '2019-07-20 18:42:42', 1, 0),
(347, ' đã xác nhận đơn hàng <b>INV02</b>', '2019-07-20 18:43:22', 1, 0),
(348, ' đã hủy đơn hàng <b>INV02</b>', '2019-07-20 18:43:35', 1, 0),
(349, ' đã xác nhận vận chuyển thành công đơn hàng <b>INV01</b>', '2019-07-20 18:54:54', 1, 0),
(350, ' đã xác nhận đơn hàng <b>INV02</b>', '2019-07-20 19:01:38', 1, 0),
(351, ' đã xác nhận vận chuyển thành công đơn hàng <b>INV02</b>', '2019-07-20 19:03:59', 1, 0),
(352, ' đã hủy đơn hàng <b>INV03</b>', '2019-07-20 19:07:10', 1, 0),
(353, ' đã xác nhận đơn hàng <b>INV03</b>', '2019-07-20 19:08:29', 1, 0),
(354, ' đã xác nhận vận chuyển thành công đơn hàng <b>INV03</b>', '2019-07-20 19:08:50', 1, 0),
(355, ' đã xác nhận đơn hàng <b>INV05</b>', '2019-07-20 19:12:56', 1, 0),
(356, ' đã xác nhận vận chuyển thành công đơn hàng <b>INV05</b>', '2019-07-20 19:22:00', 1, 0),
(357, ' đã xác nhận đơn hàng <b>INV06</b>', '2019-07-20 19:26:17', 1, 0),
(358, ' đã xác nhận vận chuyển thành công đơn hàng <b>INV06</b>', '2019-07-20 19:26:36', 1, 0),
(359, ' đã xác nhận đơn hàng <b>INV07</b>', '2019-07-20 19:27:11', 1, 0),
(360, ' đã xác nhận vận chuyển thành công đơn hàng <b>INV07</b>', '2019-07-20 19:30:27', 1, 0),
(361, ' đã xác nhận đơn hàng <b>INV04</b>', '2019-07-20 19:30:46', 1, 0),
(362, ' đã thu hồi đơn hàng <b></b>', '2019-07-20 19:37:09', 1, 0),
(363, ' đã thu hồi đơn hàng <b>INV04</b>', '2019-07-20 19:38:48', 1, 0),
(364, ' đã xác nhận vận chuyển thành công đơn hàng <b>INV04</b>', '2019-07-20 19:39:36', 1, 0),
(365, ' đã hủy đơn hàng <b>INV08</b>', '2019-07-20 19:44:21', 1, 0),
(366, ' đã hủy đơn hàng <b>INV08</b>', '2019-07-20 19:46:23', 1, 0),
(367, ' đã xác nhận đơn hàng <b>INV08</b>', '2019-07-20 19:46:55', 1, 0),
(368, ' đã hủy đơn hàng <b>INV08</b>', '2019-07-20 19:47:15', 1, 0),
(369, ' đã xác nhận đơn hàng <b>INV08</b>', '2019-07-20 19:47:47', 1, 0),
(370, ' đã xác nhận vận chuyển thành công đơn hàng <b>INV08</b>', '2019-07-20 19:47:58', 1, 0),
(371, ' đã xác nhận đơn hàng <b>INV09</b>', '2019-07-20 19:49:06', 1, 0),
(372, ' đã thu hồi đơn hàng <b>INV09</b>', '2019-07-20 19:49:18', 1, 0),
(373, ' đã hủy đơn hàng <b>INV09</b>', '2019-07-20 19:49:28', 1, 0),
(374, ' đã xác nhận đơn hàng <b>INV09</b>', '2019-07-20 19:50:06', 1, 0),
(375, ' đã thu hồi đơn hàng <b>INV09</b>', '2019-07-20 19:50:14', 1, 0),
(376, ' đã xác nhận vận chuyển thành công đơn hàng <b>INV09</b>', '2019-07-20 19:50:21', 1, 0),
(377, ' đã xác nhận đơn hàng <b>INV10</b>', '2019-07-20 21:03:50', 1, 0),
(378, ' đã xác nhận vận chuyển thành công đơn hàng <b>INV10</b>', '2019-07-20 21:04:01', 1, 0),
(379, ' đã xác nhận đơn hàng <b>INV11</b>', '2019-07-23 10:43:34', 1, 0),
(380, ' đã hủy đơn hàng <b>INV12</b>', '2019-07-23 10:43:41', 1, 0),
(381, ' đã duyệt sản phẩm <b>Set bơi người nhện dễ thương cho bé trai 3 - 10 tuổi BTB20381</b>', '2019-07-23 10:57:02', 1, 0),
(382, ' đã tạo thông tin liên hệ', '2019-07-23 11:36:34', 1, 0),
(383, ' đã tạo thông tin liên hệ', '2019-07-23 11:37:02', 1, 0),
(384, ' đã tạo thông tin liên hệ', '2019-07-23 11:37:09', 1, 0),
(385, ' đã xóa loại thông tin liên hệ', '2019-07-23 11:41:56', 1, 0),
(386, ' đã tạo thông tin liên hệ', '2019-07-23 11:42:07', 1, 0),
(387, ' đã xóa loại thông tin liên hệ', '2019-07-23 11:44:54', 1, 0),
(388, ' đã tạo thông tin liên hệ', '2019-07-23 11:44:59', 1, 0),
(389, ' đã chỉnh sửa thông tin liên hệ', '2019-07-23 11:52:27', 1, 0),
(390, ' đã thu hồi đơn hàng <b>INV11</b>', '2019-07-23 12:58:48', 1, 0),
(391, ' đã xác nhận đơn hàng <b>INV12</b>', '2019-07-23 13:02:29', 1, 0),
(392, ' đã thay đổi logo', '2019-07-24 08:03:43', 1, 0),
(393, ' đã đăng sản phẩm <b>Sản \"phẩm\" test</b>', '2019-07-26 09:58:28', 1, 0),
(394, ' đã xóa sản phẩm <b>Sản \"phẩm\" test</b>', '2019-07-26 09:58:35', 1, 0),
(395, ' đã đăng sản phẩm <b>Sản \"phẩm\" test</b>', '2019-07-26 09:58:57', 1, 0),
(396, ' đã duyệt sản phẩm <b>Sản \"phẩm\" test</b>', '2019-07-26 09:59:22', 1, 0),
(397, ' đã chỉnh sửa sản phẩm <b>Sản \"phẩm\" testdsadsa</b>', '2019-07-26 10:02:33', 1, 0),
(398, ' đã chỉnh sửa sản phẩm <b>Sản phẩm test</b>', '2019-07-26 10:03:06', 1, 0),
(399, ' đã chỉnh sửa sản phẩm <b>Sản phẩm test</b>', '2019-07-26 10:12:59', 1, 0),
(400, ' đã chỉnh sửa sản phẩm <b>SDSADSA</b>', '2019-07-26 10:13:21', 1, 0),
(401, ' đã chỉnh sửa sản phẩm <b>dsadsa</b>', '2019-07-26 10:14:00', 1, 0),
(402, ' đã xóa sản phẩm <b>dsadsa</b>', '2019-07-26 10:14:05', 1, 0),
(403, ' đã đăng sản phẩm <b>Sản phẩm test</b>', '2019-07-26 10:15:28', 1, 0),
(404, ' đã xóa sản phẩm <b>Sản phẩm test</b>', '2019-07-26 10:15:32', 1, 0),
(405, ' đã chỉnh sửa bài viết <b>Khi bé yêu 6 tháng tuổi, mẹ nhớ \"note\" ngay những loại thực phẩm giúp con phát triển vượt trội</b>', '2019-07-26 10:17:43', 1, 0),
(406, ' đã chỉnh sửa bài viết <b>Khi bé yêu 6 tháng tuổi, mẹ nhớ \"note\" ngay những loại thực phẩm giúp con phát triển vượt trội</b>', '2019-07-26 10:18:51', 1, 0),
(407, ' đã chỉnh sửa bài viết <b>Khi bé yêu 6 tháng tuổi,,,, mẹ nhớ note ngay những loại thực phẩm giúp con phát triển vượt trội</b>', '2019-07-26 10:20:05', 1, 0),
(408, ' đã chỉnh sửa bài viết <b>Khi bé yêu 6 tháng tuổi, mẹ nhớ note ngay những loại thực phẩm giúp con phát triển vượt trội</b>', '2019-07-26 10:20:28', 1, 0),
(409, ' đã tạo loại sản phẩm <b>Giới thiệu</b>', '2019-07-26 11:00:47', 1, 0),
(410, ' đã tạo loại sản phẩm <b>Liên hệ</b>', '2019-07-26 11:00:56', 1, 0),
(411, ' đã xóa loại sản phẩm <b>Liên hệ</b>', '2019-07-26 11:01:17', 1, 0),
(412, ' đã xóa loại sản phẩm <b>Giới thiệu</b>', '2019-07-26 11:01:21', 1, 0),
(413, ' đã tạo loại bài viết <b>Giới thiệu</b>', '2019-07-26 11:01:34', 1, 0),
(414, ' đã tạo loại bài viết <b>Liên hệ</b>', '2019-07-26 11:01:39', 1, 0),
(415, ' đã đăng bài viết <b>Giới thiệu</b>', '2019-07-26 11:02:15', 1, 0),
(416, ' đã duyệt bài <b>Giới thiệu</b>', '2019-07-26 11:02:19', 1, 0),
(417, ' đã đăng bài viết <b>Liên hệ</b>', '2019-07-26 11:03:19', 1, 0),
(418, ' đã duyệt bài <b>Liên hệ</b>', '2019-07-26 11:03:21', 1, 0),
(419, ' đã chỉnh sửa slider', '2019-07-26 11:27:53', 1, 0),
(420, ' đã chỉnh sửa slider', '2019-07-26 11:27:58', 1, 0),
(421, ' đã chỉnh sửa slider', '2019-07-26 11:28:02', 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `image`
--

CREATE TABLE `image` (
  `id_image` int(11) NOT NULL,
  `sku_product` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `name_image` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `image`
--

INSERT INTO `image` (`id_image`, `sku_product`, `name_image`) VALUES
(6, 'S09', 'm_1563443021.jpg'),
(7, 'S09', 'm_1563443028.jpg'),
(8, 'S14', 'm_1563443117.jpg'),
(9, 'S14', 'm_1563443126.jpg'),
(10, 'S14', 'm_1563443136.jpg'),
(14, 'S13', 'm_1563443617.jpg'),
(15, 'S13', 'm_1563443624.jpg'),
(16, 'S13', 'm_1563443633.jpg'),
(17, 'S13', 'm_1563443641.jpg'),
(18, 'S08', 'm_1563443769.jpg'),
(19, 'S08', 'm_1563443778.jpg'),
(20, 'S07', 'm_1563443822.jpg'),
(21, 'S07', 'm_1563443838.jpg'),
(22, 'S06', 'm_1563443898.jpg'),
(23, 'S06', 'm_1563443905.jpg'),
(24, 'S03', 'm_1563443977.jpg'),
(25, 'S03', 'm_1563443985.jpg'),
(26, 'S03', 'm_1563444001.jpg'),
(27, 'S01', 'm_1563444068.jpg'),
(28, 'S01', 'm_1563444083.jpg'),
(29, 'S01', 'm_1563444096.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `invoice`
--

CREATE TABLE `invoice` (
  `code_invoice` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `id_customer` int(11) NOT NULL,
  `info_receive` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `info_product` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `order_date` datetime NOT NULL,
  `flag` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `invoice`
--

INSERT INTO `invoice` (`code_invoice`, `id_customer`, `info_receive`, `info_product`, `order_date`, `flag`) VALUES
('INV01', 6, 'Nhà trọ Bảo Xuyên, ấp Vĩnh Thuận, xã Vĩnh Hòa Hiệp, Châu Thành, Kiên Giang', 'Màu đỏ, size M, 28kg', '2019-07-20 11:06:26', 2),
('INV02', 6, '', '', '2019-07-20 18:57:40', 2),
('INV03', 6, '', 'Giao nhanh nhé shop', '2019-07-20 19:07:59', 2),
('INV04', 6, '', 'Bé 1 tuổi rưỡi shop lựa chọn size phù hợp giúp mình nhé', '2019-07-20 19:11:46', 2),
('INV05', 6, '', 'Bé 3 tuổi, màu xanh đen, khoảng 32kg', '2019-07-20 19:12:38', 2),
('INV06', 6, '', '', '2019-07-20 19:25:57', 2),
('INV07', 6, '', '', '2019-07-20 19:27:00', 2),
('INV08', 6, '', '', '2019-07-20 19:47:37', 2),
('INV09', 6, '', '', '2019-07-20 19:49:54', 2),
('INV10', 6, '', '', '2019-07-20 21:03:41', 2),
('INV11', 6, '', '', '2019-07-23 10:40:57', 3),
('INV12', 6, '', '', '2019-07-23 11:15:14', 1),
('INV13', 6, '', '', '2019-07-23 13:02:04', 0),
('INV14', 6, 'ABC ', 'ABC', '2019-07-26 17:47:42', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `logo`
--

CREATE TABLE `logo` (
  `id_lg` int(11) NOT NULL,
  `image` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_upload` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `logo`
--

INSERT INTO `logo` (`id_lg`, `image`, `link`, `date_upload`) VALUES
(1, '1563289884.png', 'trang-chu.html', '2019-07-24 08:03:43');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `sku_product` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `name_product` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `summary` text COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `date_upload` datetime NOT NULL,
  `author` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `highlight` tinyint(1) NOT NULL,
  `view` int(11) NOT NULL,
  `id_type` int(11) NOT NULL,
  `flag` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`sku_product`, `image`, `name_product`, `slug`, `summary`, `content`, `date_upload`, `author`, `qty`, `price`, `highlight`, `view`, `id_type`, `flag`) VALUES
('S01', '1563246897.jpg', 'Bộ thun in chữ V dễ thương cho bé trai 3 - 10 Tuổi BTB20670', 'Bo-thun-in-chu-V-de-thuong-cho-be-trai-3---10-Tuoi-BTB20670', 'Bộ thun in chữ V cực ngầu cho bé trai. Nguyên bộ chất thun cotton 4c co giãn, mềm mát, thấm hút mồ hôi tốt. Áo in chữ trước và 2 bên cực ngầu, vai in sọc nổi bật. Quần mổ túi hai bên, in chữ nổi.', '<h3 style=\"text-align:center\"><img alt=\"\" src=\"http://localhost/nienluan/ckfinder/userfiles/images/product4-1.jpg\" style=\"width:70%\" /></h3>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://localhost/nienluan/ckfinder/userfiles/images/product4.jpg\" style=\"width:70%\" /></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://localhost/nienluan/ckfinder/userfiles/images/product4-2.jpg\" style=\"width:70%\" /></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://localhost/nienluan/ckfinder/userfiles/images/product4-3.jpg\" style=\"width:70%\" /></p>\r\n\r\n<h3 style=\"text-align:justify\"><strong>C&Aacute;CH GIẶT ỦI V&Agrave; BẢO QUẢN QUẦN &Aacute;O TRẺ EM</strong></h3>\r\n\r\n<p style=\"text-align:justify\">- V&ograve; bằng tay với lần giặt đầu ti&ecirc;n, giặt bằng nước l&atilde; v&agrave; kh&ocirc;ng c&oacute; x&agrave; ph&ograve;ng để lớp in mềm hơn, chống bong tr&oacute;c. N&ecirc;n giặt sản phẩm bằng nước lạnh hoặc nước n&oacute;ng dưới 40 độ v&igrave; nếu giặt trong nước qu&aacute; n&oacute;ng sẽ l&agrave;m vải gi&atilde;n ra v&agrave; lỏng sản phẩm.</p>\r\n\r\n<p style=\"text-align:justify\">- Để giữ m&agrave;u sản được l&acirc;u v&agrave; kh&ocirc;ng bị ra m&agrave;u trong qu&aacute; tr&igrave;nh giặt, mẹ c&oacute; thể ng&acirc;m sản phẩm trong nước ấm c&oacute; pha ch&uacute;t giấm trong khoảng 15-20 ph&uacute;t.</p>\r\n\r\n<p style=\"text-align:justify\">- Kh&ocirc;ng đổ trực tiếp c&aacute;c loại x&agrave; b&ocirc;ng hoặc nước tẩy l&ecirc;n h&igrave;nh in. Mẹ n&ecirc;n hạn chế d&ugrave;ng c&aacute;c loại nước xả mềm vải v&igrave; n&oacute; sẽ l&agrave;m sản phẩm bị gi&atilde;n rất nhanh v&agrave; khiến h&igrave;nh in bị mềm, dễ bong tr&oacute;c. Nế n muốn sản phẩm thơm hơn sau khi giặt, mẹ c&oacute; thể d&ugrave;ng c&aacute;c loại nước xả thơm.</p>\r\n\r\n<p style=\"text-align:justify\">- Kh&ocirc;ng n&ecirc;n để sản phẩm ở những nơi ẩm ướt, với t&iacute;nh chất h&uacute;t ẩm, h&uacute;t nước tốt, sản phẩm dễ bị ẩm mốc, thậm ch&iacute; để lại những vết ố tr&ecirc;n vải. Tr&aacute;nh phơi sản phẩm trực tiếp dưới nắng v&igrave; sẽ l&agrave;m m&agrave;u v&agrave; h&igrave;nh in phai m&agrave;u.</p>\r\n\r\n<p style=\"text-align:justify\">- Khi ủi sản phẩm tuyệt đối kh&ocirc;ng được ủi l&ecirc;n bề mặt in h&igrave;nh tr&ecirc;n sản phẩm, n&ecirc;n ủi ở nhiệt độ thấp v&agrave; lộn tr&aacute;i sản phẩm ra trước khi ủi để tr&aacute;nh l&agrave;m chết m&agrave;u sắc của vải v&agrave; l&agrave;m bong tr&oacute;c hay biến dạng những h&igrave;nh ảnh được in tr&ecirc;n sản phẩm.</p>\r\n', '2019-07-15 11:24:22', 1, 118, 125000, 1, 25, 1, 1),
('S03', '1563243901.jpg', '[SIZE ĐẠI] Set quần yếm jeans áo thun Prince dễ thương cho bé gái 10 - 15 tuổi BGB118704', '[SIZE-DAI]-Set-quan-yem-jeans-ao-thun-Prince-de-thuong-cho-be-gai-10---15-tuoi-BGB118704', 'Sét yếm jeans áo Prince 01 dễ thương cho bé gái. Áo chất thun cotton 4c 100%, hình in nổi. Sọt yếm chất Jeans co giãn, wash mềm cao cấp.', '<h3 style=\"text-align:center\"><img alt=\"\" src=\"http://localhost/nienluan/ckfinder/userfiles/images/product3.jpg\" style=\"width:70%\" /></h3>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://localhost/nienluan/ckfinder/userfiles/images/product3-1.jpg\" style=\"width:70%\" /></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://localhost/nienluan/ckfinder/userfiles/images/product3-2.jpg\" style=\"width:70%\" /></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://localhost/nienluan/ckfinder/userfiles/images/product3-3.jpg\" style=\"width:70%\" /></p>\r\n\r\n<h3 style=\"text-align:justify\"><strong>C&Aacute;CH GIẶT ỦI V&Agrave; BẢO QUẢN QUẦN &Aacute;O TRẺ EM</strong></h3>\r\n\r\n<p style=\"text-align:justify\">- V&ograve; bằng tay với lần giặt đầu ti&ecirc;n, giặt bằng nước l&atilde; v&agrave; kh&ocirc;ng c&oacute; x&agrave; ph&ograve;ng để lớp in mềm hơn, chống bong tr&oacute;c. N&ecirc;n giặt sản phẩm bằng nước lạnh hoặc nước n&oacute;ng dưới 40 độ v&igrave; nếu giặt trong nước qu&aacute; n&oacute;ng sẽ l&agrave;m vải gi&atilde;n ra v&agrave; lỏng sản phẩm.</p>\r\n\r\n<p style=\"text-align:justify\">- Để giữ m&agrave;u sản được l&acirc;u v&agrave; kh&ocirc;ng bị ra m&agrave;u trong qu&aacute; tr&igrave;nh giặt, mẹ c&oacute; thể ng&acirc;m sản phẩm trong nước ấm c&oacute; pha ch&uacute;t giấm trong khoảng 15-20 ph&uacute;t.</p>\r\n\r\n<p style=\"text-align:justify\">- Kh&ocirc;ng đổ trực tiếp c&aacute;c loại x&agrave; b&ocirc;ng hoặc nước tẩy l&ecirc;n h&igrave;nh in. Mẹ n&ecirc;n hạn chế d&ugrave;ng c&aacute;c loại nước xả mềm vải v&igrave; n&oacute; sẽ l&agrave;m sản phẩm bị gi&atilde;n rất nhanh v&agrave; khiến h&igrave;nh in bị mềm, dễ bong tr&oacute;c. Nế n muốn sản phẩm thơm hơn sau khi giặt, mẹ c&oacute; thể d&ugrave;ng c&aacute;c loại nước xả thơm.</p>\r\n\r\n<p style=\"text-align:justify\">- Kh&ocirc;ng n&ecirc;n để sản phẩm ở những nơi ẩm ướt, với t&iacute;nh chất h&uacute;t ẩm, h&uacute;t nước tốt, sản phẩm dễ bị ẩm mốc, thậm ch&iacute; để lại những vết ố tr&ecirc;n vải. Tr&aacute;nh phơi sản phẩm trực tiếp dưới nắng v&igrave; sẽ l&agrave;m m&agrave;u v&agrave; h&igrave;nh in phai m&agrave;u.</p>\r\n\r\n<p style=\"text-align:justify\">- Khi ủi sản phẩm tuyệt đối kh&ocirc;ng được ủi l&ecirc;n bề mặt in h&igrave;nh tr&ecirc;n sản phẩm, n&ecirc;n ủi ở nhiệt độ thấp v&agrave; lộn tr&aacute;i sản phẩm ra trước khi ủi để tr&aacute;nh l&agrave;m chết m&agrave;u sắc của vải v&agrave; l&agrave;m bong tr&oacute;c hay biến dạng những h&igrave;nh ảnh được in tr&ecirc;n sản phẩm.</p>\r\n', '2019-07-15 21:30:04', 1, 160, 150000, 1, 41, 7, 1),
('S06', '1563247940.jpg', 'Đầm suông phối ren dễ thương cho bé gái 2 - 9 tuổi DGB191038', 'Dam-suong-phoi-ren-de-thuong-cho-be-gai-2---9-tuoi-DGB191038', 'Đầm suông phối ren dễ thương cho bé gái. Chất thun cotton 4c co giãn, mềm mát, rút mồ hôi tốt. Đầm dáng suông phối ren ngay tùng và lưng điệu đà, sang trọng, 1 bên có dây rút thắt nơ cực xinh.', '<h3 style=\"text-align:center\"><img alt=\"\" src=\"http://localhost/nienluan/ckfinder/userfiles/images/product7-1.jpg\" style=\"width:70%\" /></h3>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://localhost/nienluan/ckfinder/userfiles/images/product7.jpg\" style=\"width:70%\" /></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://localhost/nienluan/ckfinder/userfiles/images/product7-2.jpg\" style=\"width:70%\" /></p>\r\n\r\n<h3 style=\"text-align:justify\"><strong>C&Aacute;CH GIẶT ỦI V&Agrave; BẢO QUẢN QUẦN &Aacute;O TRẺ EM</strong></h3>\r\n\r\n<p style=\"text-align:justify\">- V&ograve; bằng tay với lần giặt đầu ti&ecirc;n, giặt bằng nước l&atilde; v&agrave; kh&ocirc;ng c&oacute; x&agrave; ph&ograve;ng để lớp in mềm hơn, chống bong tr&oacute;c. N&ecirc;n giặt sản phẩm bằng nước lạnh hoặc nước n&oacute;ng dưới 40 độ v&igrave; nếu giặt trong nước qu&aacute; n&oacute;ng sẽ l&agrave;m vải gi&atilde;n ra v&agrave; lỏng sản phẩm.</p>\r\n\r\n<p style=\"text-align:justify\">- Để giữ m&agrave;u sản được l&acirc;u v&agrave; kh&ocirc;ng bị ra m&agrave;u trong qu&aacute; tr&igrave;nh giặt, mẹ c&oacute; thể ng&acirc;m sản phẩm trong nước ấm c&oacute; pha ch&uacute;t giấm trong khoảng 15-20 ph&uacute;t.</p>\r\n\r\n<p style=\"text-align:justify\">- Kh&ocirc;ng đổ trực tiếp c&aacute;c loại x&agrave; b&ocirc;ng hoặc nước tẩy l&ecirc;n h&igrave;nh in. Mẹ n&ecirc;n hạn chế d&ugrave;ng c&aacute;c loại nước xả mềm vải v&igrave; n&oacute; sẽ l&agrave;m sản phẩm bị gi&atilde;n rất nhanh v&agrave; khiến h&igrave;nh in bị mềm, dễ bong tr&oacute;c. Nế n muốn sản phẩm thơm hơn sau khi giặt, mẹ c&oacute; thể d&ugrave;ng c&aacute;c loại nước xả thơm.</p>\r\n\r\n<p style=\"text-align:justify\">- Kh&ocirc;ng n&ecirc;n để sản phẩm ở những nơi ẩm ướt, với t&iacute;nh chất h&uacute;t ẩm, h&uacute;t nước tốt, sản phẩm dễ bị ẩm mốc, thậm ch&iacute; để lại những vết ố tr&ecirc;n vải. Tr&aacute;nh phơi sản phẩm trực tiếp dưới nắng v&igrave; sẽ l&agrave;m m&agrave;u v&agrave; h&igrave;nh in phai m&agrave;u.</p>\r\n\r\n<p style=\"text-align:justify\">- Khi ủi sản phẩm tuyệt đối kh&ocirc;ng được ủi l&ecirc;n bề mặt in h&igrave;nh tr&ecirc;n sản phẩm, n&ecirc;n ủi ở nhiệt độ thấp v&agrave; lộn tr&aacute;i sản phẩm ra trước khi ủi để tr&aacute;nh l&agrave;m chết m&agrave;u sắc của vải v&agrave; l&agrave;m bong tr&oacute;c hay biến dạng những h&igrave;nh ảnh được in tr&ecirc;n sản phẩm.</p>\r\n', '2019-07-15 22:47:58', 1, 20, 79000, 0, 65, 7, 1),
('S07', '1563243318.jpg', '[SIZE ĐẠI] Bộ thun in mắt kính quần legging dễ thương cho bé gái 10 - 15 tuổi BGB118687', '[SIZE-DAI]-Bo-thun-in-mat-kinh-quan-legging-de-thuong-cho-be-gai-10---15-tuoi-BGB118687', 'Bộ thun in mắt kính dễ thương cho bé gái. Nguyên bộ chất thun cotton 4c co giãn, mềm mát, thấm hút mồ hôi tốt. Áo in mắt kính thời trang, xinh xắn, quần legging dài chạy sọc 2 bên khỏe khoắn.', '<h3 style=\"text-align:center\"><img alt=\"\" src=\"http://localhost/nienluan/ckfinder/userfiles/images/product2-1.jpg\" style=\"width:70%\" /></h3>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://localhost/nienluan/ckfinder/userfiles/images/product2-2.jpg\" style=\"width:70%\" /></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://localhost/nienluan/ckfinder/userfiles/images/product2.jpg\" style=\"width:70%\" /></p>\r\n\r\n<h3 style=\"text-align:justify\"><strong>C&Aacute;CH GIẶT ỦI V&Agrave; BẢO QUẢN QUẦN &Aacute;O TRẺ EM</strong></h3>\r\n\r\n<p style=\"text-align:justify\">- V&ograve; bằng tay với lần giặt đầu ti&ecirc;n, giặt bằng nước l&atilde; v&agrave; kh&ocirc;ng c&oacute; x&agrave; ph&ograve;ng để lớp in mềm hơn, chống bong tr&oacute;c. N&ecirc;n giặt sản phẩm bằng nước lạnh hoặc nước n&oacute;ng dưới 40 độ v&igrave; nếu giặt trong nước qu&aacute; n&oacute;ng sẽ l&agrave;m vải gi&atilde;n ra v&agrave; lỏng sản phẩm.</p>\r\n\r\n<p style=\"text-align:justify\">- Để giữ m&agrave;u sản được l&acirc;u v&agrave; kh&ocirc;ng bị ra m&agrave;u trong qu&aacute; tr&igrave;nh giặt, mẹ c&oacute; thể ng&acirc;m sản phẩm trong nước ấm c&oacute; pha ch&uacute;t giấm trong khoảng 15-20 ph&uacute;t.</p>\r\n\r\n<p style=\"text-align:justify\">- Kh&ocirc;ng đổ trực tiếp c&aacute;c loại x&agrave; b&ocirc;ng hoặc nước tẩy l&ecirc;n h&igrave;nh in. Mẹ n&ecirc;n hạn chế d&ugrave;ng c&aacute;c loại nước xả mềm vải v&igrave; n&oacute; sẽ l&agrave;m sản phẩm bị gi&atilde;n rất nhanh v&agrave; khiến h&igrave;nh in bị mềm, dễ bong tr&oacute;c. Nế n muốn sản phẩm thơm hơn sau khi giặt, mẹ c&oacute; thể d&ugrave;ng c&aacute;c loại nước xả thơm.</p>\r\n\r\n<p style=\"text-align:justify\">- Kh&ocirc;ng n&ecirc;n để sản phẩm ở những nơi ẩm ướt, với t&iacute;nh chất h&uacute;t ẩm, h&uacute;t nước tốt, sản phẩm dễ bị ẩm mốc, thậm ch&iacute; để lại những vết ố tr&ecirc;n vải. Tr&aacute;nh phơi sản phẩm trực tiếp dưới nắng v&igrave; sẽ l&agrave;m m&agrave;u v&agrave; h&igrave;nh in phai m&agrave;u.</p>\r\n\r\n<p style=\"text-align:justify\">- Khi ủi sản phẩm tuyệt đối kh&ocirc;ng được ủi l&ecirc;n bề mặt in h&igrave;nh tr&ecirc;n sản phẩm, n&ecirc;n ủi ở nhiệt độ thấp v&agrave; lộn tr&aacute;i sản phẩm ra trước khi ủi để tr&aacute;nh l&agrave;m chết m&agrave;u sắc của vải v&agrave; l&agrave;m bong tr&oacute;c hay biến dạng những h&igrave;nh ảnh được in tr&ecirc;n sản phẩm.</p>\r\n', '2019-07-15 23:26:39', 1, 200, 139000, 0, 27, 7, 1),
('S08', '1563247666.jpg', 'Đầm ren công chúa phối lưới dễ thương cho bé gái 3 - 10 tuổi DGB190707', 'Dam-ren-cong-chua-phoi-luoi-de-thuong-cho-be-gai-3---10-tuoi-DGB190707', 'Đầm ren công chúa siêu xinh cho bé dự tiệc. Thân trên 1 lớp ren ngoài, trong 1 lớp phi, 1 lớp kate thấm hút mồ hôi. Tùng 2 lớp lưới viền ren tạo độ bồng, 1 lớp phi, 1 lơp kate. Điểm nhấn là 2 chiếc bông kết hai vai, thả 2 lớp lưới viền ren điệu đà. Sau may dây kéo giọt nước cầu kỳ, thắt nơ xinh xắn.', '<h3 style=\"text-align:center\"><img alt=\"\" src=\"http://localhost/nienluan/ckfinder/userfiles/images/product6-1.jpg\" style=\"width:70%\" /></h3>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://localhost/nienluan/ckfinder/userfiles/images/product6-2.jpg\" style=\"width:70%\" /></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://localhost/nienluan/ckfinder/userfiles/images/product6.jpg\" style=\"width:70%\" /></p>\r\n\r\n<h3 style=\"text-align:justify\"><strong>C&Aacute;CH GIẶT ỦI V&Agrave; BẢO QUẢN QUẦN &Aacute;O TRẺ EM</strong></h3>\r\n\r\n<p style=\"text-align:justify\">- V&ograve; bằng tay với lần giặt đầu ti&ecirc;n, giặt bằng nước l&atilde; v&agrave; kh&ocirc;ng c&oacute; x&agrave; ph&ograve;ng để lớp in mềm hơn, chống bong tr&oacute;c. N&ecirc;n giặt sản phẩm bằng nước lạnh hoặc nước n&oacute;ng dưới 40 độ v&igrave; nếu giặt trong nước qu&aacute; n&oacute;ng sẽ l&agrave;m vải gi&atilde;n ra v&agrave; lỏng sản phẩm.</p>\r\n\r\n<p style=\"text-align:justify\">- Để giữ m&agrave;u sản được l&acirc;u v&agrave; kh&ocirc;ng bị ra m&agrave;u trong qu&aacute; tr&igrave;nh giặt, mẹ c&oacute; thể ng&acirc;m sản phẩm trong nước ấm c&oacute; pha ch&uacute;t giấm trong khoảng 15-20 ph&uacute;t.</p>\r\n\r\n<p style=\"text-align:justify\">- Kh&ocirc;ng đổ trực tiếp c&aacute;c loại x&agrave; b&ocirc;ng hoặc nước tẩy l&ecirc;n h&igrave;nh in. Mẹ n&ecirc;n hạn chế d&ugrave;ng c&aacute;c loại nước xả mềm vải v&igrave; n&oacute; sẽ l&agrave;m sản phẩm bị gi&atilde;n rất nhanh v&agrave; khiến h&igrave;nh in bị mềm, dễ bong tr&oacute;c. Nế n muốn sản phẩm thơm hơn sau khi giặt, mẹ c&oacute; thể d&ugrave;ng c&aacute;c loại nước xả thơm.</p>\r\n\r\n<p style=\"text-align:justify\">- Kh&ocirc;ng n&ecirc;n để sản phẩm ở những nơi ẩm ướt, với t&iacute;nh chất h&uacute;t ẩm, h&uacute;t nước tốt, sản phẩm dễ bị ẩm mốc, thậm ch&iacute; để lại những vết ố tr&ecirc;n vải. Tr&aacute;nh phơi sản phẩm trực tiếp dưới nắng v&igrave; sẽ l&agrave;m m&agrave;u v&agrave; h&igrave;nh in phai m&agrave;u.</p>\r\n\r\n<p style=\"text-align:justify\">- Khi ủi sản phẩm tuyệt đối kh&ocirc;ng được ủi l&ecirc;n bề mặt in h&igrave;nh tr&ecirc;n sản phẩm, n&ecirc;n ủi ở nhiệt độ thấp v&agrave; lộn tr&aacute;i sản phẩm ra trước khi ủi để tr&aacute;nh l&agrave;m chết m&agrave;u sắc của vải v&agrave; l&agrave;m bong tr&oacute;c hay biến dạng những h&igrave;nh ảnh được in tr&ecirc;n sản phẩm.</p>\r\n', '2019-07-15 23:27:12', 1, 40, 145000, 0, 24, 7, 1),
('S09', '1563242083.jpg', 'Đầm lụa hoa kèm nón rộng vành dễ thương cho bé gái 2 - 9 tuổi DGB191147', 'Dam-lua-hoa-kem-non-rong-vanh-de-thuong-cho-be-gai-2---9-tuoi-DGB191147', 'Đầm bèo hoa kèm nón rộng vành dễ thương cho bé gái. Chất lụa mềm mại, thoáng mát, họa tiết hoa nhẹ nhàng, tươi tắn. Đầm thiết kế bèo tay, thắt nơ trước duyên dáng, form A, tùng xòe đuôi cá, sau gài nút. Kèm nón rộng vành cùng tone.', '<p style=\"text-align:center\"><img alt=\"\" src=\"http://localhost/nienluan/ckfinder/userfiles/images/product1-1.jpg\" style=\"width:70%\" /></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://localhost/nienluan/ckfinder/userfiles/images/product1-2.jpg\" style=\"width:70%\" /></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://localhost/nienluan/ckfinder/userfiles/images/product1.jpg\" style=\"width:70%\" /></p>\r\n\r\n<h3 style=\"text-align:justify\"><strong>C&Aacute;CH GIẶT ỦI V&Agrave; BẢO QUẢN QUẦN &Aacute;O TRẺ EM</strong></h3>\r\n\r\n<p style=\"text-align:justify\">- V&ograve; bằng tay với lần giặt đầu ti&ecirc;n, giặt bằng nước l&atilde; v&agrave; kh&ocirc;ng c&oacute; x&agrave; ph&ograve;ng để lớp in mềm hơn, chống bong tr&oacute;c. N&ecirc;n giặt sản phẩm bằng nước lạnh hoặc nước n&oacute;ng dưới 40 độ v&igrave; nếu giặt trong nước qu&aacute; n&oacute;ng sẽ l&agrave;m vải gi&atilde;n ra v&agrave; lỏng sản phẩm.</p>\r\n\r\n<p style=\"text-align:justify\">- Để giữ m&agrave;u sản được l&acirc;u v&agrave; kh&ocirc;ng bị ra m&agrave;u trong qu&aacute; tr&igrave;nh giặt, mẹ c&oacute; thể ng&acirc;m sản phẩm trong nước ấm c&oacute; pha ch&uacute;t giấm trong khoảng 15-20 ph&uacute;t.</p>\r\n\r\n<p style=\"text-align:justify\">- Kh&ocirc;ng đổ trực tiếp c&aacute;c loại x&agrave; b&ocirc;ng hoặc nước tẩy l&ecirc;n h&igrave;nh in. Mẹ n&ecirc;n hạn chế d&ugrave;ng c&aacute;c loại nước xả mềm vải v&igrave; n&oacute; sẽ l&agrave;m sản phẩm bị gi&atilde;n rất nhanh v&agrave; khiến h&igrave;nh in bị mềm, dễ bong tr&oacute;c. Nế n muốn sản phẩm thơm hơn sau khi giặt, mẹ c&oacute; thể d&ugrave;ng c&aacute;c loại nước xả thơm.</p>\r\n\r\n<p style=\"text-align:justify\">- Kh&ocirc;ng n&ecirc;n để sản phẩm ở những nơi ẩm ướt, với t&iacute;nh chất h&uacute;t ẩm, h&uacute;t nước tốt, sản phẩm dễ bị ẩm mốc, thậm ch&iacute; để lại những vết ố tr&ecirc;n vải. Tr&aacute;nh phơi sản phẩm trực tiếp dưới nắng v&igrave; sẽ l&agrave;m m&agrave;u v&agrave; h&igrave;nh in phai m&agrave;u.</p>\r\n\r\n<p style=\"text-align:justify\">- Khi ủi sản phẩm tuyệt đối kh&ocirc;ng được ủi l&ecirc;n bề mặt in h&igrave;nh tr&ecirc;n sản phẩm, n&ecirc;n ủi ở nhiệt độ thấp v&agrave; lộn tr&aacute;i sản phẩm ra trước khi ủi để tr&aacute;nh l&agrave;m chết m&agrave;u sắc của vải v&agrave; l&agrave;m bong tr&oacute;c hay biến dạng những h&igrave;nh ảnh được in tr&ecirc;n sản phẩm.</p>\r\n', '2019-07-16 08:46:08', 2, 99, 145000, 1, 73, 7, 1),
('S10', '1563247146.jpg', 'Bộ kate liền quần sọc kèm BĂNG ĐÔ và GIÀY dễ thương cho bé 0 - 15 tháng SLG1066', 'Bo-kate-lien-quan-soc-kem-BANG-DO-va-GIAY-de-thuong-cho-be-0---15-thang-SLG1066', 'Bộ sơ sinh kate sọc kèm giày và băng đô dễ thương cho bé 0 - 15 Tháng. Chất kate mềm mát, thấm hút mồ hôi tốt thoãi mái cho bé khi mang. Nguyên set gồm áo, giày và băng đô xinh xắn.', '<h3 style=\"text-align:center\"><img alt=\"\" src=\"http://localhost/nienluan/ckfinder/userfiles/images/product5.jpg\" style=\"width:70%\" /></h3>\r\n\r\n<h3 style=\"text-align:justify\"><strong>C&Aacute;CH GIẶT ỦI V&Agrave; BẢO QUẢN QUẦN &Aacute;O TRẺ EM</strong></h3>\r\n\r\n<p style=\"text-align:justify\">- V&ograve; bằng tay với lần giặt đầu ti&ecirc;n, giặt bằng nước l&atilde; v&agrave; kh&ocirc;ng c&oacute; x&agrave; ph&ograve;ng để lớp in mềm hơn, chống bong tr&oacute;c. N&ecirc;n giặt sản phẩm bằng nước lạnh hoặc nước n&oacute;ng dưới 40 độ v&igrave; nếu giặt trong nước qu&aacute; n&oacute;ng sẽ l&agrave;m vải gi&atilde;n ra v&agrave; lỏng sản phẩm.</p>\r\n\r\n<p style=\"text-align:justify\">- Để giữ m&agrave;u sản được l&acirc;u v&agrave; kh&ocirc;ng bị ra m&agrave;u trong qu&aacute; tr&igrave;nh giặt, mẹ c&oacute; thể ng&acirc;m sản phẩm trong nước ấm c&oacute; pha ch&uacute;t giấm trong khoảng 15-20 ph&uacute;t.</p>\r\n\r\n<p style=\"text-align:justify\">- Kh&ocirc;ng đổ trực tiếp c&aacute;c loại x&agrave; b&ocirc;ng hoặc nước tẩy l&ecirc;n h&igrave;nh in. Mẹ n&ecirc;n hạn chế d&ugrave;ng c&aacute;c loại nước xả mềm vải v&igrave; n&oacute; sẽ l&agrave;m sản phẩm bị gi&atilde;n rất nhanh v&agrave; khiến h&igrave;nh in bị mềm, dễ bong tr&oacute;c. Nế n muốn sản phẩm thơm hơn sau khi giặt, mẹ c&oacute; thể d&ugrave;ng c&aacute;c loại nước xả thơm.</p>\r\n\r\n<p style=\"text-align:justify\">- Kh&ocirc;ng n&ecirc;n để sản phẩm ở những nơi ẩm ướt, với t&iacute;nh chất h&uacute;t ẩm, h&uacute;t nước tốt, sản phẩm dễ bị ẩm mốc, thậm ch&iacute; để lại những vết ố tr&ecirc;n vải. Tr&aacute;nh phơi sản phẩm trực tiếp dưới nắng v&igrave; sẽ l&agrave;m m&agrave;u v&agrave; h&igrave;nh in phai m&agrave;u.</p>\r\n\r\n<p style=\"text-align:justify\">- Khi ủi sản phẩm tuyệt đối kh&ocirc;ng được ủi l&ecirc;n bề mặt in h&igrave;nh tr&ecirc;n sản phẩm, n&ecirc;n ủi ở nhiệt độ thấp v&agrave; lộn tr&aacute;i sản phẩm ra trước khi ủi để tr&aacute;nh l&agrave;m chết m&agrave;u sắc của vải v&agrave; l&agrave;m bong tr&oacute;c hay biến dạng những h&igrave;nh ảnh được in tr&ecirc;n sản phẩm.</p>\r\n', '2019-07-16 10:18:31', 1, 199, 139000, 1, 46, 10, 1),
('S11', '1563252855.jpg', 'Set bơi người nhện dễ thương cho bé trai 3 - 10 tuổi BTB20381', 'Set-boi-nguoi-nhen-de-thuong-cho-be-trai-3---10-tuoi-BTB20381', 'Set bơi người nhện dễ thương cho bé trai 3 - 10 tuổi. Chất thun poly co giản mạnh thoãi mái cho bé.', '<h3 style=\"text-align:center\"><img alt=\"\" src=\"http://localhost/nienluan/ckfinder/userfiles/images/product8.jpg\" style=\"width:70%\" /></h3>\r\n\r\n<h3 style=\"text-align:justify\"><strong>C&Aacute;CH GIẶT ỦI V&Agrave; BẢO QUẢN QUẦN &Aacute;O TRẺ EM</strong></h3>\r\n\r\n<p style=\"text-align:justify\">- V&ograve; bằng tay với lần giặt đầu ti&ecirc;n, giặt bằng nước l&atilde; v&agrave; kh&ocirc;ng c&oacute; x&agrave; ph&ograve;ng để lớp in mềm hơn, chống bong tr&oacute;c. N&ecirc;n giặt sản phẩm bằng nước lạnh hoặc nước n&oacute;ng dưới 40 độ v&igrave; nếu giặt trong nước qu&aacute; n&oacute;ng sẽ l&agrave;m vải gi&atilde;n ra v&agrave; lỏng sản phẩm.</p>\r\n\r\n<p style=\"text-align:justify\">- Để giữ m&agrave;u sản được l&acirc;u v&agrave; kh&ocirc;ng bị ra m&agrave;u trong qu&aacute; tr&igrave;nh giặt, mẹ c&oacute; thể ng&acirc;m sản phẩm trong nước ấm c&oacute; pha ch&uacute;t giấm trong khoảng 15-20 ph&uacute;t.</p>\r\n\r\n<p style=\"text-align:justify\">- Kh&ocirc;ng đổ trực tiếp c&aacute;c loại x&agrave; b&ocirc;ng hoặc nước tẩy l&ecirc;n h&igrave;nh in. Mẹ n&ecirc;n hạn chế d&ugrave;ng c&aacute;c loại nước xả mềm vải v&igrave; n&oacute; sẽ l&agrave;m sản phẩm bị gi&atilde;n rất nhanh v&agrave; khiến h&igrave;nh in bị mềm, dễ bong tr&oacute;c. Nế n muốn sản phẩm thơm hơn sau khi giặt, mẹ c&oacute; thể d&ugrave;ng c&aacute;c loại nước xả thơm.</p>\r\n\r\n<p style=\"text-align:justify\">- Kh&ocirc;ng n&ecirc;n để sản phẩm ở những nơi ẩm ướt, với t&iacute;nh chất h&uacute;t ẩm, h&uacute;t nước tốt, sản phẩm dễ bị ẩm mốc, thậm ch&iacute; để lại những vết ố tr&ecirc;n vải. Tr&aacute;nh phơi sản phẩm trực tiếp dưới nắng v&igrave; sẽ l&agrave;m m&agrave;u v&agrave; h&igrave;nh in phai m&agrave;u.</p>\r\n\r\n<p style=\"text-align:justify\">- Khi ủi sản phẩm tuyệt đối kh&ocirc;ng được ủi l&ecirc;n bề mặt in h&igrave;nh tr&ecirc;n sản phẩm, n&ecirc;n ủi ở nhiệt độ thấp v&agrave; lộn tr&aacute;i sản phẩm ra trước khi ủi để tr&aacute;nh l&agrave;m chết m&agrave;u sắc của vải v&agrave; l&agrave;m bong tr&oacute;c hay biến dạng những h&igrave;nh ảnh được in tr&ecirc;n sản phẩm.</p>\r\n', '2019-07-16 11:54:15', 2, 49, 149000, 1, 58, 1, 1),
('S12', '1563413763.jpg', 'Bộ liền quần chấm bi kèm BĂNG ĐÔ và GIÀY dễ thương cho bé 0 - 15 tháng SLG1065', 'Bo-lien-quan-cham-bi-kem-BANG-DO-va-GIAY-de-thuong-cho-be-0---15-thang-SLG1065', 'Bộ sơ sinh chấm bi kèm giày và băng đô dễ thương cho bé 0 - 15 Tháng. Chất thun cotton 4c mềm mại, thấm hút mồ hôi tốt thoãi mái cho bé khi mang. Nguyên set gồm áo, giày và băng đô.', '<p style=\"text-align:center\"><img alt=\"\" src=\"http://localhost/nienluan/ckfinder/userfiles/images/banner_project_4.jpg\" style=\"width:70%\" /></p>\r\n\r\n<h3 style=\"text-align:justify\"><strong>C&Aacute;CH GIẶT ỦI V&Agrave; BẢO QUẢN QUẦN &Aacute;O TRẺ EM</strong></h3>\r\n\r\n<p style=\"text-align:justify\">- V&ograve; bằng tay với lần giặt đầu ti&ecirc;n, giặt bằng nước l&atilde; v&agrave; kh&ocirc;ng c&oacute; x&agrave; ph&ograve;ng để lớp in mềm hơn, chống bong tr&oacute;c. N&ecirc;n giặt sản phẩm bằng nước lạnh hoặc nước n&oacute;ng dưới 40 độ v&igrave; nếu giặt trong nước qu&aacute; n&oacute;ng sẽ l&agrave;m vải gi&atilde;n ra v&agrave; lỏng sản phẩm.</p>\r\n\r\n<p style=\"text-align:justify\">- Để giữ m&agrave;u sản được l&acirc;u v&agrave; kh&ocirc;ng bị ra m&agrave;u trong qu&aacute; tr&igrave;nh giặt, mẹ c&oacute; thể ng&acirc;m sản phẩm trong nước ấm c&oacute; pha ch&uacute;t giấm trong khoảng 15-20 ph&uacute;t.</p>\r\n\r\n<p style=\"text-align:justify\">- Kh&ocirc;ng đổ trực tiếp c&aacute;c loại x&agrave; b&ocirc;ng hoặc nước tẩy l&ecirc;n h&igrave;nh in. Mẹ n&ecirc;n hạn chế d&ugrave;ng c&aacute;c loại nước xả mềm vải v&igrave; n&oacute; sẽ l&agrave;m sản phẩm bị gi&atilde;n rất nhanh v&agrave; khiến h&igrave;nh in bị mềm, dễ bong tr&oacute;c. Nế n muốn sản phẩm thơm hơn sau khi giặt, mẹ c&oacute; thể d&ugrave;ng c&aacute;c loại nước xả thơm.</p>\r\n\r\n<p style=\"text-align:justify\">- Kh&ocirc;ng n&ecirc;n để sản phẩm ở những nơi ẩm ướt, với t&iacute;nh chất h&uacute;t ẩm, h&uacute;t nước tốt, sản phẩm dễ bị ẩm mốc, thậm ch&iacute; để lại những vết ố tr&ecirc;n vải. Tr&aacute;nh phơi sản phẩm trực tiếp dưới nắng v&igrave; sẽ l&agrave;m m&agrave;u v&agrave; h&igrave;nh in phai m&agrave;u.</p>\r\n\r\n<p style=\"text-align:justify\">- Khi ủi sản phẩm tuyệt đối kh&ocirc;ng được ủi l&ecirc;n bề mặt in h&igrave;nh tr&ecirc;n sản phẩm, n&ecirc;n ủi ở nhiệt độ thấp v&agrave; lộn tr&aacute;i sản phẩm ra trước khi ủi để tr&aacute;nh l&agrave;m chết m&agrave;u sắc của vải v&agrave; l&agrave;m bong tr&oacute;c hay biến dạng những h&igrave;nh ảnh được in tr&ecirc;n sản phẩm.</p>\r\n', '2019-07-18 08:35:50', 1, 298, 119000, 1, 13, 10, 1),
('S13', '1563416558.jpg', 'Set vest kaki phong cách Hàn Quốc dễ thương cho bé trai từ 3 - 12 Tuổi BTB19875', 'Set-vest-kaki-phong-cach-Han-Quoc-de-thuong-cho-be-trai-tu-3---12-Tuoi-BTB19875', 'Set vest kaki phong cách Hàn Quốc dễ thương cho bé trai. Nguyên set gồm áo vest và quần vải kaki mềm loại 1 bao đẹp và sang. Áo kết nút to, may túi giả. Quần mổ túi hai bên, lưng thun co giãn thoãi mái cho bé khi mang. LƯU Ý: KHÔNG KÈM ÁO THUN TRONG.', '<p style=\"text-align:center\"><img alt=\"\" src=\"http://localhost/nienluan/ckfinder/userfiles/images/product9-1.jpg\" style=\"width:70%\" /></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://localhost/nienluan/ckfinder/userfiles/images/product9.jpg\" style=\"width:70%\" /></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://localhost/nienluan/ckfinder/userfiles/images/product9-2.jpg\" style=\"width:70%\" /></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://localhost/nienluan/ckfinder/userfiles/images/product9-3.jpg\" style=\"width:70%\" /></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://localhost/nienluan/ckfinder/userfiles/images/product9-4.jpg\" style=\"width:70%\" /></p>\r\n\r\n<h3 style=\"text-align:justify\"><strong>C&Aacute;CH GIẶT ỦI V&Agrave; BẢO QUẢN QUẦN &Aacute;O TRẺ EM</strong></h3>\r\n\r\n<p style=\"text-align:justify\">- V&ograve; bằng tay với lần giặt đầu ti&ecirc;n, giặt bằng nước l&atilde; v&agrave; kh&ocirc;ng c&oacute; x&agrave; ph&ograve;ng để lớp in mềm hơn, chống bong tr&oacute;c. N&ecirc;n giặt sản phẩm bằng nước lạnh hoặc nước n&oacute;ng dưới 40 độ v&igrave; nếu giặt trong nước qu&aacute; n&oacute;ng sẽ l&agrave;m vải gi&atilde;n ra v&agrave; lỏng sản phẩm.</p>\r\n\r\n<p style=\"text-align:justify\">- Để giữ m&agrave;u sản được l&acirc;u v&agrave; kh&ocirc;ng bị ra m&agrave;u trong qu&aacute; tr&igrave;nh giặt, mẹ c&oacute; thể ng&acirc;m sản phẩm trong nước ấm c&oacute; pha ch&uacute;t giấm trong khoảng 15-20 ph&uacute;t.</p>\r\n\r\n<p style=\"text-align:justify\">- Kh&ocirc;ng đổ trực tiếp c&aacute;c loại x&agrave; b&ocirc;ng hoặc nước tẩy l&ecirc;n h&igrave;nh in. Mẹ n&ecirc;n hạn chế d&ugrave;ng c&aacute;c loại nước xả mềm vải v&igrave; n&oacute; sẽ l&agrave;m sản phẩm bị gi&atilde;n rất nhanh v&agrave; khiến h&igrave;nh in bị mềm, dễ bong tr&oacute;c. Nế n muốn sản phẩm thơm hơn sau khi giặt, mẹ c&oacute; thể d&ugrave;ng c&aacute;c loại nước xả thơm.</p>\r\n\r\n<p style=\"text-align:justify\">- Kh&ocirc;ng n&ecirc;n để sản phẩm ở những nơi ẩm ướt, với t&iacute;nh chất h&uacute;t ẩm, h&uacute;t nước tốt, sản phẩm dễ bị ẩm mốc, thậm ch&iacute; để lại những vết ố tr&ecirc;n vải. Tr&aacute;nh phơi sản phẩm trực tiếp dưới nắng v&igrave; sẽ l&agrave;m m&agrave;u v&agrave; h&igrave;nh in phai m&agrave;u.</p>\r\n\r\n<p style=\"text-align:justify\">- Khi ủi sản phẩm tuyệt đối kh&ocirc;ng được ủi l&ecirc;n bề mặt in h&igrave;nh tr&ecirc;n sản phẩm, n&ecirc;n ủi ở nhiệt độ thấp v&agrave; lộn tr&aacute;i sản phẩm ra trước khi ủi để tr&aacute;nh l&agrave;m chết m&agrave;u sắc của vải v&agrave; l&agrave;m bong tr&oacute;c hay biến dạng những h&igrave;nh ảnh được in tr&ecirc;n sản phẩm.</p>\r\n', '2019-07-18 09:22:38', 1, 395, 145000, 1, 135, 12, 1),
('S14', '1563416857.jpg', 'Set váy yếm kaki kèm áo sọc visco dễ thương cho bé gái 2 - 9 tuổi BGB118690', 'Set-vay-yem-kaki-kem-ao-soc-visco-de-thuong-cho-be-gai-2---9-tuoi-BGB118690', 'Set yếm kèm áo sọc visco dễ thương cho bé gái. Yếm ngoài chất kaki thun co giãn đắp logo fashion, dây yếm phối da cực sành điệu. Áo trong chất thun sọc visco mềm mát, thấm hút mồ hôi tốt.', '<p style=\"text-align:center\"><img alt=\"\" src=\"http://localhost/nienluan/ckfinder/userfiles/images/product10-1.jpg\" style=\"width:70%\" /></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://localhost/nienluan/ckfinder/userfiles/images/product10-2.jpg\" style=\"width:70%\" /></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://localhost/nienluan/ckfinder/userfiles/images/product10.jpg\" style=\"width:70%\" /></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://localhost/nienluan/ckfinder/userfiles/images/product10-3.jpg\" style=\"width:70%\" /></p>\r\n\r\n<h3 style=\"text-align:justify\"><strong>C&Aacute;CH GIẶT ỦI V&Agrave; BẢO QUẢN QUẦN &Aacute;O TRẺ EM</strong></h3>\r\n\r\n<p style=\"text-align:justify\">- V&ograve; bằng tay với lần giặt đầu ti&ecirc;n, giặt bằng nước l&atilde; v&agrave; kh&ocirc;ng c&oacute; x&agrave; ph&ograve;ng để lớp in mềm hơn, chống bong tr&oacute;c. N&ecirc;n giặt sản phẩm bằng nước lạnh hoặc nước n&oacute;ng dưới 40 độ v&igrave; nếu giặt trong nước qu&aacute; n&oacute;ng sẽ l&agrave;m vải gi&atilde;n ra v&agrave; lỏng sản phẩm.</p>\r\n\r\n<p style=\"text-align:justify\">- Để giữ m&agrave;u sản được l&acirc;u v&agrave; kh&ocirc;ng bị ra m&agrave;u trong qu&aacute; tr&igrave;nh giặt, mẹ c&oacute; thể ng&acirc;m sản phẩm trong nước ấm c&oacute; pha ch&uacute;t giấm trong khoảng 15-20 ph&uacute;t.</p>\r\n\r\n<p style=\"text-align:justify\">- Kh&ocirc;ng đổ trực tiếp c&aacute;c loại x&agrave; b&ocirc;ng hoặc nước tẩy l&ecirc;n h&igrave;nh in. Mẹ n&ecirc;n hạn chế d&ugrave;ng c&aacute;c loại nước xả mềm vải v&igrave; n&oacute; sẽ l&agrave;m sản phẩm bị gi&atilde;n rất nhanh v&agrave; khiến h&igrave;nh in bị mềm, dễ bong tr&oacute;c. Nế n muốn sản phẩm thơm hơn sau khi giặt, mẹ c&oacute; thể d&ugrave;ng c&aacute;c loại nước xả thơm.</p>\r\n\r\n<p style=\"text-align:justify\">- Kh&ocirc;ng n&ecirc;n để sản phẩm ở những nơi ẩm ướt, với t&iacute;nh chất h&uacute;t ẩm, h&uacute;t nước tốt, sản phẩm dễ bị ẩm mốc, thậm ch&iacute; để lại những vết ố tr&ecirc;n vải. Tr&aacute;nh phơi sản phẩm trực tiếp dưới nắng v&igrave; sẽ l&agrave;m m&agrave;u v&agrave; h&igrave;nh in phai m&agrave;u.</p>\r\n\r\n<p style=\"text-align:justify\">- Khi ủi sản phẩm tuyệt đối kh&ocirc;ng được ủi l&ecirc;n bề mặt in h&igrave;nh tr&ecirc;n sản phẩm, n&ecirc;n ủi ở nhiệt độ thấp v&agrave; lộn tr&aacute;i sản phẩm ra trước khi ủi để tr&aacute;nh l&agrave;m chết m&agrave;u sắc của vải v&agrave; l&agrave;m bong tr&oacute;c hay biến dạng những h&igrave;nh ảnh được in tr&ecirc;n sản phẩm.</p>\r\n', '2019-07-18 09:27:37', 1, 91, 180000, 1, 177, 12, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slider`
--

CREATE TABLE `slider` (
  `id_slider` int(11) NOT NULL,
  `image` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_create` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `slider`
--

INSERT INTO `slider` (`id_slider`, `image`, `link`, `date_create`) VALUES
(4, '1563284086.jpg', 'trang-chu.html', '2019-07-16 20:16:06'),
(5, '1563284095.jpg', 'trang-chu.html', '2019-07-16 20:29:37'),
(6, '1563284230.jpg', 'trang-chu.html', '2019-07-16 20:37:10');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `type_blog`
--

CREATE TABLE `type_blog` (
  `id_type` int(11) NOT NULL,
  `typename` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `slug_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `date_create` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `type_blog`
--

INSERT INTO `type_blog` (`id_type`, `typename`, `slug_type`, `date_create`) VALUES
(1, 'Khuyến mãi', 'Khuyen-mai', '2019-07-12 13:13:23'),
(2, 'Tin tức mới', 'Tin-tuc-moi', '2019-07-12 13:17:04'),
(8, 'Chia sẽ kinh nghiệm', 'Chia-se-kinh-nghiem', '2019-07-12 20:58:41'),
(25, 'Giới thiệu', 'Gioi-thieu', '2019-07-26 11:01:34'),
(26, 'Liên hệ', 'Lien-he', '2019-07-26 11:01:39');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `type_product`
--

CREATE TABLE `type_product` (
  `id_type` int(11) NOT NULL,
  `typename` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `slug_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `date_create` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `type_product`
--

INSERT INTO `type_product` (`id_type`, `typename`, `slug_type`, `date_create`) VALUES
(1, 'Đồ bé trai', 'Do-be-trai', '2019-07-12 12:10:15'),
(7, 'Đồ bé gái', 'Do-be-gai', '2019-07-12 12:39:00'),
(10, 'Đồ trẻ sơ sinh', 'Do-tre-so-sinh', '2019-07-12 13:18:23'),
(12, 'Đồ bộ', 'Do-bo', '2019-07-12 13:38:23');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id_acc`);

--
-- Chỉ mục cho bảng `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id_blog`);

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id_cart`);

--
-- Chỉ mục cho bảng `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id_contact`);

--
-- Chỉ mục cho bảng `detail_invoice`
--
ALTER TABLE `detail_invoice`
  ADD PRIMARY KEY (`id_detail_invoice`);

--
-- Chỉ mục cho bảng `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id_history`);

--
-- Chỉ mục cho bảng `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id_image`);

--
-- Chỉ mục cho bảng `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`code_invoice`);

--
-- Chỉ mục cho bảng `logo`
--
ALTER TABLE `logo`
  ADD PRIMARY KEY (`id_lg`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`sku_product`);

--
-- Chỉ mục cho bảng `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id_slider`);

--
-- Chỉ mục cho bảng `type_blog`
--
ALTER TABLE `type_blog`
  ADD PRIMARY KEY (`id_type`);

--
-- Chỉ mục cho bảng `type_product`
--
ALTER TABLE `type_product`
  ADD PRIMARY KEY (`id_type`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `account`
--
ALTER TABLE `account`
  MODIFY `id_acc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `blog`
--
ALTER TABLE `blog`
  MODIFY `id_blog` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `id_cart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT cho bảng `contact`
--
ALTER TABLE `contact`
  MODIFY `id_contact` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `detail_invoice`
--
ALTER TABLE `detail_invoice`
  MODIFY `id_detail_invoice` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT cho bảng `history`
--
ALTER TABLE `history`
  MODIFY `id_history` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=422;

--
-- AUTO_INCREMENT cho bảng `image`
--
ALTER TABLE `image`
  MODIFY `id_image` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT cho bảng `logo`
--
ALTER TABLE `logo`
  MODIFY `id_lg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `slider`
--
ALTER TABLE `slider`
  MODIFY `id_slider` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `type_blog`
--
ALTER TABLE `type_blog`
  MODIFY `id_type` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `type_product`
--
ALTER TABLE `type_product`
  MODIFY `id_type` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
