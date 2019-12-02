-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 02, 2019 at 07:25 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.1.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quanlybansach`
--

-- --------------------------------------------------------

--
-- Table structure for table `chitietdathang`
--

CREATE TABLE `chitietdathang` (
  `IdCTDH` int(11) NOT NULL,
  `IdDatHang` int(11) DEFAULT NULL,
  `MaSach` int(11) DEFAULT NULL,
  `SoLuongBan` int(11) DEFAULT NULL,
  `GiaBan` decimal(65,0) DEFAULT NULL,
  `TinhTrang` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `chitietdathang`
--

INSERT INTO `chitietdathang` (`IdCTDH`, `IdDatHang`, `MaSach`, `SoLuongBan`, `GiaBan`, `TinhTrang`) VALUES
(10, 4, 211, 1, '25000', 1),
(11, 4, 301, 20, '760000', 1),
(12, 4, 410, 1, '76000', 1);

-- --------------------------------------------------------

--
-- Table structure for table `danhmucsach`
--

CREATE TABLE `danhmucsach` (
  `IdDanhMuc` int(11) NOT NULL,
  `TenDanhMuc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BiXoa` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `danhmucsach`
--

INSERT INTO `danhmucsach` (`IdDanhMuc`, `TenDanhMuc`, `BiXoa`) VALUES
(1, 'Văn Học', 0),
(2, 'Thiếu Nhi', 0),
(3, 'Kinh Tế', 0),
(4, 'Kĩ Năng Sống', 0),
(5, 'Học Ngoại Ngữ', 0),
(17, 'mẹ và bé yêu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `dathang`
--

CREATE TABLE `dathang` (
  `IdDatHang` int(11) NOT NULL,
  `UserId` int(11) DEFAULT NULL,
  `LoaiGiaoHang` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TongGia` decimal(65,0) DEFAULT NULL,
  `TinhTrang` int(11) DEFAULT NULL,
  `NgayLap` datetime(6) DEFAULT NULL,
  `NgayDuKienGiaoHang` datetime(6) DEFAULT NULL,
  `DiaChiNhanHang` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `dathang`
--

INSERT INTO `dathang` (`IdDatHang`, `UserId`, `LoaiGiaoHang`, `TongGia`, `TinhTrang`, `NgayLap`, `NgayDuKienGiaoHang`, `DiaChiNhanHang`) VALUES
(4, 2, 'Giao hàng tiết kiệm', '861000', 1, '2018-12-27 09:38:51.000000', '2018-12-27 09:38:51.000000', '1');

-- --------------------------------------------------------

--
-- Table structure for table `loainguoidung`
--

CREATE TABLE `loainguoidung` (
  `IdLoai` int(11) NOT NULL,
  `TenLoai` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Quyen` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BiXoa` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `loainguoidung`
--

INSERT INTO `loainguoidung` (`IdLoai`, `TenLoai`, `Quyen`, `BiXoa`) VALUES
(1, 'admin', 'them', 0);

-- --------------------------------------------------------

--
-- Table structure for table `nguoidung`
--

CREATE TABLE `nguoidung` (
  `IdNguoiDung` int(11) NOT NULL,
  `TenHienThi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `UserName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PassWord` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SDT` int(11) DEFAULT NULL,
  `DiaChi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HinhAnh` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BiXoa` int(11) DEFAULT '0',
  `IdLoai` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `nguoidung`
--

INSERT INTO `nguoidung` (`IdNguoiDung`, `TenHienThi`, `UserName`, `PassWord`, `SDT`, `DiaChi`, `Email`, `HinhAnh`, `BiXoa`, `IdLoai`) VALUES
(1, 'An', 'admin', '21232f297a57a5a743894a0e4a801fc3', 909897691, 'ửueofcaf', '342534547474', '', 0, 1),
(2, 'tTrung', 'trunghoang', 'e10adc3949ba59abbe56e057f20f883e', 963237832, 'hoangtrung', 'haongtrung@gmail.com', 'logo.png', 0, 1),
(3, 'Thành', 'moon', 'fcea920f7412b5da7be0cf42b8c93759', 909897691, '43 Trần Nhật Duật', 'phungtran294@gmail.com', '17.png', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nhasanxuat`
--

CREATE TABLE `nhasanxuat` (
  `IdNSX` int(255) NOT NULL,
  `TenNSX` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Logo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BiXoa` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `nhasanxuat`
--

INSERT INTO `nhasanxuat` (`IdNSX`, `TenNSX`, `Logo`, `BiXoa`) VALUES
(1, 'Kim Đồng', 'logo.png', 0),
(2, 'Thế Giới', NULL, 0),
(3, 'Văn Học', 'logo.png', 0),
(4, 'Phụ Nữ', NULL, 0),
(5, 'NXB Trẻ', NULL, 0),
(6, 'NXB Tổng Hợp', NULL, 0),
(7, 'Nhã Nam', NULL, 0),
(8, 'thanh tuyền', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sach`
--

CREATE TABLE `sach` (
  `IdSach` int(11) NOT NULL,
  `MaSach` int(11) NOT NULL,
  `TenSach` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TacGia` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LoaiSach` int(11) DEFAULT NULL,
  `NgayNhap` datetime(6) DEFAULT NULL,
  `SoLuongTon` int(255) DEFAULT NULL,
  `SoLuongBan` int(11) NOT NULL,
  `HinhAnhSach` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Gia` decimal(60,0) DEFAULT NULL,
  `LuotXem` int(255) DEFAULT NULL,
  `IdNhaSX` int(255) DEFAULT NULL,
  `XuatXu` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MoTa` varchar(5000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BiXoa` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `sach`
--

INSERT INTO `sach` (`IdSach`, `MaSach`, `TenSach`, `TacGia`, `LoaiSach`, `NgayNhap`, `SoLuongTon`, `SoLuongBan`, `HinhAnhSach`, `Gia`, `LuotXem`, `IdNhaSX`, `XuatXu`, `MoTa`, `BiXoa`) VALUES
(1, 100, 'Cảm Ơn Người Lớn', 'Nguyễn Nhật Ánh', 0, '2018-11-28 13:52:26.000000', 5000, 0, 'images\\VanHoc\\cam-on-nguoi-lon.jpg\r\n', '110000', 4255, 5, 'Việt Nam', 'Cảm ơn người lớn (Bìa Mềm) - một áng văn lãng mạn trong giọng hài hước đặc biệt “dành cho trẻ em, và những ai từng là trẻ em”.Bạn sẽ gặp lại Mùi, Tủn, Tí sún, Hải cò… của Cho tôi xin một vé đi tuổi thơ, cùng chơi những trò chơi quen thuộc, và được đắm mình vào những ước mơ điên rồ, ngốc nghếch nhưng trong veo của tuổi mới lớn hồn nhiên và đầy ắp dự định.Và cả khi họ đã trưởng thành, bạo chúa thời gian đã vùng vẫy thế nào trong cuộc đời của những nhân vật mà bạn yêu quý…Hãy bắt đầu đọc từ bất cứ trang nào, có thể đọc bất cứ lúc nào, và cùng với bất cứ ai. Bạn sẽ nhận được món quà “n trong 1” của nhà văn Nguyễn Nhật Ánh: sẽ n lần thổn thức qua 1 cuốn sách 19 chương đầy ắp tình bạn ngây thơ, tình xóm giềng tốt lành nhân ái, tình yêu đắm đuối ngọt ngào…Cảm ơn người lớn được Nguyễn Nhật Ánh đặt bút viết đúng sau 10 năm ra đời Cho tôi xin một vé đi tuổi thơ – cuốn sách bán chạy tới nay đã 400.000 bản.', 0),
(2, 101, 'All In Love', 'Cố Tây Tước', 0, '2018-11-28 14:00:28.000000', 5000, 0, 'images\\VanHoc\\all-in-love.jpg', '118000', 5425, 7, 'Trung Quốc', 'All In Love - Ngập Tràn Yêu ThươngTừ Vi Vũ hơi mắc bệnh sạch sẽ, có chút bỉ ổi, có chút mặt dày, tuy nhiên trước mặt người ngoài anh luôn hào hoa phong nhã, sống tách biệt, độc lập, lạnh lùng mà kiêu ngạo, lạnh lùng mà xa cách, trong sự xa cách ấy lại toát lên sự cao quý. Nhưng cứ về đến nhà, anh liền biến thành quý ông “thích cởi”, luôn miệng kêu: “Tắm, tắm, tắm! Cố Thanh Khê, em có muốn đến chà đạp anh không?”Cố Thanh Khê luôn nghĩ, con người này còn có thể bỉ ổi hơn được nữa không?Nếu không sẽ là:“Vợ ơi, mau nấu cơm cho anh, yêu cầu hợp pháp đấy!”“Vợ ơi, hôm nay đi xem phim nhé! Yêu cầu hợp pháp đấy!”“Thanh Khê, hát tặng anh một bài đi, yêu cầu hợp pháp đấy!”Mỗi lần như thế, bạn Cố Thanh Khê lại phải cố kiềm chế không xử lý anh một cách phi pháp.Hạnh phúc là gì?Hạnh phúc là mười ba năm trước, cứ tan học về, có một cậu bé lại đi hình chữ S đến trước mặt bạn.Mười ba năm sau, vẫn cậu bé đó ôm bạn vào lòng, thủ thỉ: “Cố Thanh Khê, cả tuổi thanh xuân của anh đều dành hết cho em, thế nên em phải có trách nhiệm với anh đấy!”', 0),
(3, 102, 'Nhà Giả Kim', 'Paulo Coelho', 1, '2018-12-04 14:06:01.000000', 5000, 0, 'images\\VanHoc\\nha-gia-kim.jpg', '69000', 3256, 3, 'Ai Cập', 'Nhà Giả Kim\r\n\r\nTất cả những trải nghiệm trong chuyến phiêu du theo đuổi vận mệnh của mình đã giúp Santiago thấu hiểu được ý nghĩa sâu xa nhất của hạnh phúc, hòa hợp với vũ trụ và con người.\r\n\r\nTiểu thuyết Nhà giả kim của Paulo Coelho như một câu chuyện cổ tích giản dị, nhân ái, giàu chất thơ, thấm đẫm những minh triết huyền bí của phương Đông. Trong lần xuất bản đầu tiên tại Brazil vào năm 1988, sách chỉ bán được 900 bản. Nhưng, với số phận đặc biệt của cuốn sách dành cho toàn nhân loại, vượt ra ngoài biên giới quốc gia, Nhà giả kim đã làm rung động hàng triệu tâm hồn, trở thành một trong những cuốn sách bán chạy nhất mọi thời đại, và có thể làm thay đổi cuộc đời người đọc.\r\n\r\n“Nhưng nhà luyện kim đan không quan tâm mấy đến những điều ấy. Ông đã từng thấy nhiều người đến rồi đi, trong khi ốc đảo và sa mạc vẫn là ốc đảo và sa mạc. Ông đã thấy vua chúa và kẻ ăn xin đi qua biển cát này, cái biển cát thường xuyên thay hình đổi dạng vì gió thổi nhưng vẫn mãi mãi là biển cát mà ông đã biết từ thuở nhỏ. Tuy vậy, tự đáy lòng mình, ông không thể không cảm thấy vui trước hạnh phúc của mỗi người lữ khách, sau bao ngày chỉ có cát vàng với trời xanh nay được thấy chà là xanh tươi hiện ra trước mắt. ‘Có thể Thượng đế tạo ra sa mạc chỉ để cho con người biết quý trọng cây chà là,’ ông nghĩ.”', 0),
(4, 103, 'Bạn Đắt Giá Bao Nhiêu?', 'Vãn Tình', 1, '2018-11-27 14:08:25.000000', 5000, 0, 'images\\VanHoc\\ban-dat-gia-bao-nhieu.jpg\r\n', '99000', 4256, 6, 'Việt Nam', 'Bạn Đắt Giá Bao Nhiêu?\r\n\r\nCâu trả lời này do chính bạn quyết định, chính bạn “định giá”.\r\n\r\nHơn bốn mươi câu chuyện trong sách xoay quanh các chủ đề tình yêu, hôn nhân, gia đình, sự nghiệp… đến từ chính cuộc sống của tác giả và những người xung quanh, vừa thực tế lại vừa gợi mở, dễ dàng giúp chúng ta liên hệ với tình huống của chính mình. Với những câu chuyện đó, Vãn Tình hi vọng có thể giúp các cô gái thoát khỏi tình cảnh khó khăn, tìm lại bản ngã, sống cuộc đời theo cách mà mình mong muốn.\r\n\r\nĐọc cuốn sách này, đôi khi bạn nên dừng lại và thành thực với bản thân, liệu bạn có đang là phiên-bản-mà-bạn-yêu-thích-nhất, phiên-bản-bạn-mong- muốn-trở-thành. Hãy thử trả lời các câu hỏi: Sự thỏa hiệp có làm bạn hạnh phúc hay không? Bạn có đang cố gắng lấy lòng tất cả mọi người? Bạn có dám thay đổi?... Và quan trọng nhất: Bạn đắt giá bao nhiêu?,0', 0),
(5, 104, 'Khi Hơi Thở Hóa Thinh Không', 'Paul Kalanithi', 1, '2018-11-28 14:10:31.000000', 5500, 0, 'images\\VanHoc\\khi-hoi-tho-hoa-thinh-khong.jpg\r\n', '109000', 5637, 6, 'Hàn Quốc', 'Khi Hơi Thở Hóa Thinh Không là tự truyện của một bác sĩ bị mắc bệnh ung thư phổi. Trong cuốn sách này, tác giả đã chia sẻ những trải nghiệm từ khi mới bắt đầu học ngành y, tiếp xúc với bệnh nhân cho tới khi phát hiện ra mình bị ung thư và phải điều trị lâu dài.\r\n\r\nKalanithi rất yêu thích văn chương nên câu chuyện của anh đã được thuật lại theo một phong cách mượt mà, dung dị và đầy cảm xúc. Độc giả cũng được hiểu thêm về triết lý sống, triết lý nghề y của Kalanithi, thông qua ký ức về những ngày anh còn là sinh viên, rồi thực tập, cho đến khi chính thức hành nghề phẫu thuật thần kinh. “Đối với bệnh nhân và gia đình, phẫu thuật não là sự kiện bi thảm nhất mà họ từng phải đối mặt và nó có tác động như bất kỳ một biến cố lớn lao trong đời. Trong những thời điểm nguy cấp đó, câu hỏi không chỉ đơn thuần là sống hay chết mà còn là cuộc sống nào đáng sống.” – Kalanithi luôn biết cách đưa vào câu chuyện những suy nghĩ sâu sắc và đầy sự đồng cảm như thế.\r\n\r\nBạn bè và gia đình đã dành tặng những lời trìu mến nhất cho con người đáng kính trọng cả về tài năng lẫn nhân cách này. Dù không thể vượt qua cơn bệnh nan y, nhưng thông điệp của tác giả sẽ còn khiến người đọc nhớ mãi.', 0),
(6, 105, 'Cuộc Chiến Giữa Nhíp Và Quần Đùi Hoa', 'LiNi Thông Minh', 1, '2018-06-13 14:17:48.000000', 5000, 0, 'images\\VanHoc\\cuoc-chien-giua-nhip-va-quan-dui-hoa.jpg\r\n', '98000', 5326, 3, 'Việt Nam', 'Cuộc Chiến Giữa Nhíp Và Quần Đùi Hoa – Sự trở lại của cặp vợ chồng lầy lội nhất Vịnh Bắc Bộ. Đã 4 năm trôi qua kể từ ngày khi phiên bản đầu tiên của “Cuộc chiến giữa Nhíp và Quần đùi hoa” đến với bạn đọc, cặp đôi oan gia Hoàng và Vy ngày nào cũng đã trở thành vợ chồng, và sinh ra bé Táo – cô bé đáng yêu sở hữu lượng fan đông đảo lên đến hàng trăm nghìn người. 4 năm, bao chuyện xảy đến trong đời sống hôn nhân, duy chỉ có sự lầy lội của họ là không hề thay đổi. Và như một món quà dành tặng cho tất cả những fan hâm hộ luôn dõi theo bé Táo và ông bà bô Hoàng hôi và Vy nhíp, “Cuộc chiến giữa Nhíp và Quần đùi hoa” đã trở lại với một diện mạo mới, “chất hơn”, “trưởng thành hơn”.\r\n\r\n“Cuộc chiến giữa Nhíp và Quần đùi hoa” là phiên bản khác của câu chuyện Nhà nàng ở cạnh nhà tôi đã từng gây sốt cộng đồng mạng với những tình huống vô cùng hài hước, đời thường nhưng vô cùng sâu sắc.', 0),
(7, 106, 'Có Hai Con Mèo Ngồi Bên Cửa Sổ', 'Nguyễn Nhật Ánh', 1, '2018-12-05 23:31:15.000000', 5000, 0, 'images\\VanHoc\\co-hai-con-meo-ngoi-ben-cua-so.jpg', '85000', 5345, 5, 'Việt Nam', 'Có Hai Con Mèo Ngồi Bên Cửa Sổ\r\n\r\nNhân vật chính thứ nhất tên là Gấu.\r\n\r\nNhân vật thứ hai là Tí Hon.\r\n\r\nNhân vật thứ ba, tên là…; còn nữa, nhân vật thứ tư, tên là…\r\n\r\nĐể biết tại sao Gấu lại chơi thân với Tí Hon, thì mời bạn hãy mở sách ra.\r\n\r\nGấu và Tí Hon thân nhau đến mức có thể chia sẻ từng chuyện vui buồn trong những phút giây mềm yếu, lo lắng và chăm sóc, giúp nhau từ miếng ăn đến “chiến lược” để tồn tại lâu dài.Tình bạn là gì? Bạn gái là gì? Tình yêu là gì?\r\nBọn mèo chuột kể với chúng ta nhiều câu chuyện nhỏ, gửi thông điệp rằng, tình yêu có sức mạnh tuyệt diệu, có thể làm nên mọi điều phi thường trong cuộc sống muôn loài.\r\n\r\nCuốn truyện có độ dầy vừa phải, 67 hình vẽ của họa sĩ Đỗ Hoàng Tường sinh động đến từng nét nũng nịu hay kiêu căng của nàng mèo người yêu mèo Gấu, câu chuyện thì hấp dẫn duyên dáng điểm những bài thơ tình lãng mạn nao lòng song đọc to lên thì khiến cười hinh hích…', 0),
(8, 107, 'Cứ Cười Thôi Mặc Kệ Đời', 'Gari', 1, '2018-12-04 23:42:04.000000', 5000, 0, 'images\\VanHoc\\cu-cuoi-thoi-mac-ke-doi.jpg', '89000', 4352, 3, 'Việt Nam', 'Cứ Cười Thôi Mặc Kệ Đời!\r\n\r\nCó thể bạn không là ai cả, nhưng không có nghĩa bạn chẳng là gì cả.\r\n\r\nTình yêu giống như một liều thuốc ngọt ngào nó có thể giúp chúng ta sống trong màu hồng đầy gia vị hạnh phúc, và cảm xúc ấm áp nhưng tình yêu cũng chính là liều thuốc độc khiến chúng ta vật vã, đớn đau. Nhưng ai cũng muốn được một lần yêu, để đắm chìm trong giây phút lúc đầy thăng hoa lúc đầy nước mắt đó.\r\n\r\nCó thể mọi cuộc tình đều có kết thúc có hậu cũng có thể dở dang, và khi tình yêu dở dang thì người ở lại bao giờ cũng là người buồn lâu hơn cả. Chúng ta rồi ai cũng phải vượt qua nỗi buồn đó để trưởng thành hơn, yêu bản thân nhiều hơn. Tác giả Gari qua “Cứ cười thôi, mặc kệ đời” dường như đang muốn nhắn nhủ những ai đã thất bại trong tình yêu rằng: Có thể bạn không là ai cả, nhưng không có nghĩa bạn chẳng là gì cả. Hãy cứ cười lên và yêu lấy chính mình, mặc kệ ngoài kia dông bão…', 0),
(9, 108, 'Thất tịch không mưa', 'Lâu Vũ Tình', 1, '2018-12-04 23:49:07.000000', 5000, 0, 'images\\VanHoc\\that-tich-khong-mua.jpg', '79000', 5473, 4, 'Trung Quốc', 'Hai con người yêu nhau đến tận xương tủy, yêu đến vụn vỡ con tim nhưng lại không thể nào đến với nhau. Hai con người ấy mang theo con tim khiếm khuyết đi tìm kiếm yêu thương trong thế giới ngoài kia nhưng không thể. Vì với cô, anh là Thẩm Hàn Vũ độc nhất vô nhị không ai có thế thay thế, chỉ có một mình anh. Còn với anh, cô là Thẩm Thiên Tình mà anh yêu quí nhất, là người mà anh thề sẽ bảo vệ suốt đời, không có cô anh chỉ là một cái xác không hồn. Một tình yêu đẹp đến thế, sâu nặng đến thế, thế nhưng họ lại không thể là của nhau. Không thể trách anh, không thể trách cô, có chăng là oán hận cái số phận đã đặt tình yêu nồng đậm của họ vào một tình huống quá éo le, biến nó trở thành bi kịch của cả cuộc đời. Anh yêu cô, yêu đến đau lòng, nhưng chỉ có thể ở bên cô, chăm sóc cô với tư cách là một người anh trai, anh yêu cô, yêu đến mức thà để cô được thanh thản đã không ngần ngại mang một trái tim trống rỗng đi tìm kiếm hình bóng người con gái anh yêu trong những cô gái khác. Còn cô, cô yêu anh từ bé, yêu đến mức đối với cô, chỉ cần anh là đủ, chỉ cần anh tồn tại thì cô hạnh phúc, thế nhưng tình cảm ấy bị thứ bi kịch đau lòng kia ngăn chặn.', 0),
(10, 109, 'Quá Trẻ Để Chết', 'Đinh Hằng', 1, '2018-11-27 23:55:49.000000', 5000, 0, 'images\\VanHoc\\qua-tre-de-chet.jpg', '65000', 5453, 4, 'Việt Nam', 'Quá Trẻ Để Chết: Hành Trình Nước Mỹ\r\n\r\nQuá trẻ để chết: Hành trình nước Mỹ là hành trình đơn độc của tác giả - một cô gái Việt trẻ đi xuyên nước Mỹ từ Bờ Đông sang bờ Tây. Hành trình du lịch bụi của cô trải dài trên 20 bang, kéo dài suốt sáu tháng liên tiếp.\r\n\r\nĐó là chuyến đi để khám phá thế giới bên trong của những người Mỹ bình thường, dù có thể chỉ là một phần của thế giới ấy. Đó cũng là hành trình khám phá những vẻ đẹp muôn màu muôn vẻ của thế giới - của thiên nhiên nước Mỹ, và của tâm hồn con người trong những hình thức thăng hoa khác nhau của nó.\r\n\r\nNhưng hành trình xuyên qua nước Mỹ này không chỉ là để khám phá một phần thế giới bên ngoài mà còn là để tìm trở lại một phần trọng yếu của bản thân cô gái: tình yêu đối với chính mình và cuộc đời mình, cái tình yêu mà cô đã có lúc đánh mất. Xuất phát điểm của “Quá trẻ để chết: Hành trình nước Mỹ” là một tình yêu tan vỡ, một nỗi đau đớn vì tình, lớn đến độ khiến tác giả có lúc đã gần kề cái chỗ đâm đầu vào tàu điện ngầm tự sát, một kết cục khiến ta không khỏi nghĩ tới Anna Karenina.', 0),
(11, 110, 'Rừng NaUy', 'Haruki Murakami', 1, '2018-11-29 23:59:17.000000', 5000, 0, 'images\\VanHoc\\rung-na-uy.jpg\r\n', '128000', 4242, 3, 'Nhật Bản', 'Xuất bản lần đầu ở Nhật Bản năm 1987, Truyện Tiểu Thuyết Rừng Na Uy thực sự là một hiện tượng kỳ lạ với 4 triệu bản sách được bán ra, và theo thống kê hiện tại, cứ 7 người Nhật thì có 1 người đã đọc Rừng Na Uy. Tại Trung Quốc, Rừng Na Uy đã trở thành một hiện tượng văn hoá với hơn 1 triệu bản sách được tiêu thụ và được đánh giá là 1 trong 10 cuốn sách có ảnh hưởng lớn nhất ở đại lục trong thế kỷ 20.\r\n\r\nTheo tờ Publisher Weekly, “đã hai mươi năm nay, Rừng Na Uy luôn nằm trong danh sách 10 tiểu thuyết được giới trẻ Nhật Bản và Hàn Quốc tìm đọc nhiều nhất”. - Publisher Weekly\r\n\r\nNắm bắt sự đam mê và gấp gấp của ái tình tuổi trẻ... Lặng lẽ lôi cuốn người đọc và cuối cùng lay động tam can. - Time Literary Supplement', 0),
(12, 111, 'Totto-Chan Bên Cửa Sổ', 'Kuroyanagi Tetsuko', 1, '2018-12-02 00:02:49.000000', 5000, 0, 'images\\VanHoc\\totto-chan-ben-cua-so.jpg\r\n', '90000', 5344, 3, 'Nhật Bản', 'Totto-Chan Bên Cửa Sổ (Tái Bản 2017)\r\n\r\nVừa vào lớp một được vài ngày, Totto-chan đã bị đuổi học!!!\r\n\r\nKhông còn cách nào khác, mẹ đành đưa Totto-chan đến một ngôi trường mới, trường Tomoe. Đấy là một ngôi trường kỳ lạ, lớp học thì ở trong toa xe điện cũ, học sinh thì được thoả thích thay đổi chỗ ngồi mỗi ngày, muốn học môn nào trước cũng được, chẳng những thế, khi đã học hết bài, các bạn còn được cô giáo cho đi dạo. Đặc biệt hơn ở đó còn có một thầy hiệu trưởng có thể chăm chú lắng nghe Totto-chan kể chuyện suốt bốn tiếng đồng hồ! Chính nhờ ngôi trường đó, một Totto-chan hiếu động, cá biệt đã thu nhận được những điều vô cùng quý giá để lớn lên thành một con người hoàn thiện, mạnh mẽ.\r\n\r\nTotto-chan bên cửa sổ, là cuốn sách gối đầu giường của nhiều thế hệ trẻ em trên toàn thế giới suốt ba mươi năm nay. Sau khi xuất bản lần đầu vào năm 1981, cuốn sách đã gây được tiếng vang lớn không chỉ ở Nhật Bản mà còn trên toàn thế giới. Tính đến năm 2001, tổng số bản sách bán ra ở Nhật đã lên đến 9,3 triệu bản, trở thành một trong những cuốn sách bán chạy nhất trong lịch sử ngành xuất bản nước này. Cuốn sách đã được dịch ra 33 thứ tiếng khác nhau, như Anh, Pháp, Đức, Hàn Quốc, Trung Quốc…Khi bản tiếng Anh của Totto-chan được xuất bản tại Mỹ, tờ New York Times đã đăng liền hai bài giới thiệu trọn trang, một “vinh dự” hầu như không tác phẩm nào có được.', 0),
(13, 112, 'Đức Phúc - I Believe I Can Fly', 'Đức Phúc & Đào Trung Uyên', 1, '2018-11-28 00:08:35.000000', 5000, 0, 'images\\VanHoc\\i-believe-i-can-fly.jpg', '125000', 2967, 2, 'Việt Nam', '\r\nTự truyện Đức Phúc – I Believe I Can Fly chính là chân dung một Đức Phúc ngây thơ, trong trẻo, lạc quan, luôn dũng cảm theo đuổi đam mê ca hát, sẵn sàng vượt qua mọi chông gai và giữ vững lòng tin vào chính mình để vươn đến thành công. Đó cũng là một Đức Phúc đi từ nhút nhát, rụt rè đến tự tin hơn; từ một Đức Phúc có ngoại hình ít ưa nhìn đến một \"hot boy\", \"nam thần\" như dân mạng phong tặng.', 0),
(14, 113, 'Chiến Binh Cầu Vồng', 'Andrea Hirata', 1, '2018-10-03 00:16:13.000000', 5000, 0, 'images\\VanHoc\\chien-binh-cau-vong.jpg', '100000', 2935, 7, 'Indonesia', 'Chiến binh Cầu vồng có cả trong sáng tuổi học trò lẫn những trò đùa tinh quái, cả nước mắt lẫn tiếng cười – một bức tranh chân thực về hố sâu ngăn cách giàu nghèo, một tác phẩm văn học cảm động truyền tải sâu sắc nhất ý nghĩa đích thực của việc làm thầy, việc làm trò và việc học. Tác phẩm đã bán được trên năm triệu bản, được dịch ra 26 thứ tiếng, là một trong những đại diện xuất sắc nhất của  văn học Indonesia hiện đại.', 0),
(15, 114, 'Mặc Kệ Thiên Hạ - Sống Như Người Nhật', 'Mari Tamagawa', 1, '2018-12-04 19:13:51.000000', 5000, 0, 'images\\VanHoc\\mac-ke-thien-ha-song-nhu-nguoi-nhat.jpg', '79000', 3625, 2, 'Nhật Bản', 'Mặc Kệ Thiên Hạ - Sống Như Người Nhật\r\n\r\n\r\nCuốn sách gối đầu giường cho những người hay lo lắng, sợ hãi và luôn thấy mình kém may mắn\r\n\r\nDành cho những ai muốn được sống là chính mình, cuộc đời của mình, tuổi trẻ của mình.\r\n\r\nĐã đến lúc bạn nên dừng tìm kiếm sự an ủi ở người khác, hoặc chờ đợi sự giúp đỡ từ một ai đó. Bởi an ủi hay giúp đỡ về mặt cảm xúc đôi khi giống như con dao hai lưỡi. Nó có thể giúp bạn chống đỡ lo âu hay muộn phiền nhất thời, nhưng lại đẩy bạn chìm sâu hơn vào những cảm xúc tiêu cực đó. Giống như một đứa trẻ khi vấp ngã, bạn mong đợi một sự xoa dịu từ người lớn, mà quên mất rằng sự “hỗ trợ” ấy chỉ càng khiến bạn mãi chẳng thể nào “biết đi”.', 0),
(23, 206, 'Hoàng Tử Bé', 'Antoine De Saint-Exupéry', 2, '2018-11-29 00:55:37.000000', 5000, 0, 'images\\ThieuNhi\\hoang-tu-be.jpg', '69000', 2348, 7, 'Pháp', 'Hoàng Tử Bé được viết ở New York trong những ngày tác giả sống lưu vong và được xuất bản lần đầu tiên tại New York vào năm 1943, rồi đến năm 1946 mới được xuất bản tại Pháp. Không nghi ngờ gì, đây là tác phẩm nổi tiếng nhất, được đọc nhiều nhất và cũng được yêu mến nhất của Saint-Exupéry. Cuốn sách được bình chọn là tác phẩm hay nhất thế kỉ 20 ở Pháp, đồng thời cũng là cuốn sách Pháp được dịch và được đọc nhiều nhất trên thế giới. Với 250 ngôn ngữ dịch khác nhau kể cả phương ngữ cùng hơn 200 triệu bản in trên toàn thế giới, Hoàng tử bé được coi là một trong những tác phẩm bán chạy nhất của nhân loại.', 0),
(25, 208, 'Thế Giới Nhỏ Của Liz Climo', 'Liz Climo', 2, '2018-11-28 01:01:44.000000', 4000, 0, 'images\\ThieuNhi\\the-gioi-nho-cua-liz.jpg', '128000', 2561, 1, 'Anh', 'Thế Giới Nhỏ Của Liz Climo\r\n\r\nNữ họa sĩ Liz Climo đã tạo ra một thế giới động vật dễ thương và lôi cuốn, nơi gấu xám, thỏ , nhím, cáo… cũng gặp phải đủ loại vấn đề thường ngày và xử lí chúng theo những cách vừa thông minh, vừa hài hước.\r\n\r\nĐọc cuốn sách này, các bạn sẽ được học những phương pháp dạy con kiểu … khủng long, cách chế đồ hóa trang Halloween siêu nhanh theo phong cách tatu và thỏ, cùng vô vàn sáng kiến thông minh khác của những ngừoi bạn động vật để giữ cho cuộc sống hằng ngày của chúng luôn tươi mới và tràn đầy niềm vui!', 0),
(26, 209, 'Ehon Nhật Bản - Cá Vàng Trốn Ở Đâu Rồi Nhỉ?', 'Gomi Taro', 2, '2018-08-22 01:04:50.000000', 4000, 0, 'images\\ThieuNhi\\ca-vang-tron-o-dau-roi-nhi.jpg\r\n', '29000', 3267, 3, 'Nhật Bản', 'Ehon Nhật Bản - Cá Vàng Trốn Ở Đâu Rồi Nhỉ?\r\n\r\nCó một bạn cá vàng, bạn rất thích đi trốn để các em nhỏ tìm kiếm. Các em hãy chú ý nhé, bạn trốn rất kỹ trong từng bức tranh, lúc thì ở chậu hoa, lúc lại ở tấm rèm cửa, có khi bạn còn trốn trong hộp kẹo nhiều màu sắc. Làm thế nào tìm ra bạn ấy bây giờ?\r\n\r\nEhon Nhật Bản Cá vàng trốn ở đâu rồi nhỉ? với những hình vẽ ngộ nghĩnh, màu sắc bắt mắt sẽ là món quà ý nghĩa mẹ dành tặng các bé từ 0-3 tuổi để cả nhà cùng bé đọc, cùng bé khám phá.', 0),
(27, 210, 'Đi Qua Hoa Cúc', 'Nguyễn Nhật Ánh', 2, '2018-11-29 01:07:19.000000', 4000, 0, 'images\\ThieuNhi\\di-qua-hoa-cuc.jpg\r\n', '56000', 5257, 5, 'Việt Nam', 'Đi Qua Hoa Cúc\r\n\r\nCuốn Đi Qua Hoa Cúc là tập truyện dài của Nguyễn Nhật Ánh, mở đầu câu truyện tác giả kể lại tuổi ấu thơ hồn nhiên của nhân vật trong truyện, kết hợp với tả cảnh ở miền quê, những ngôi nhà nằm dọc hai bên đường đá sỏi dọc theo hai bên hàng dâm bụt và cả cây sứ cây bàng tỏa bóng mát, tỏa hương thơm trước sân nhà. Một nét vẽ nên thơ thật đầm ấm ở một vùng quê xa xôi tác giả dường như làm ấm lòng cho người đọc. Thật vậy mỗi cốt truyện của Nguyễn Nhật Ánh đã phác họa lên một nét quê hương ngọt ngào, một thời ấu thơ đẹp, một tình yêu của tuổi học trò cũng hòa lẫn tình yêu khát khao của bao lứa tuổi. Cuốn truyện dài Đi Qua Hoa Cúc là một trong những tác phẩm tuyệt tác hay của tác giả làm thôi thúc người đọc thêm nhiều ấn tượng và sự lôi cuốn tràn dâng trong lòng bạn đọc', 0),
(28, 300, '7 Thói Quen Hiệu Quả\r\n', 'Stephen R. Covey', 3, '2018-09-11 01:09:46.000000', 5000, 0, 'images\\KinhTe\\7-thoi-quen-hieu-qua.jpg\r\n', '145000', 2536, 6, 'Anh', '7 Thói Quen Hiệu Quả\r\n\r\nTác phẩm \"7 Thói quen Hiệu quả / 7 Habits for Highly Effective People\" đã ra đời hơn 25 năm, được biết đến là cuốn sách quản trị (quản trị bản thân và quản trị tổ chức) bán chạy nhất mọi thời đại với hơn 30 triệu bản bán ra trên toàn thế giới và được dịch sang 40 ngôn ngữ. Sách có mặt tại thị trường Việt Nam hơn 10 năm nay dưới cái tên \"7 Thói quen để Thành đạt\" . Ấn bản mới năm 2016 được đặt lại đúng với cái tên mộc mạc vốn có của bản gốc Tiếng Anh và có nội dung không chỉ được dịch lại toàn bộ cho sát nghĩa, dễ đọc hơn với các độc giả mà còn được cập nhật thêm những công cụ và ví dụ thực tiễn từ phiên bản nước ngoài mới nhất và có hình ảnh bìa (màu xanh đậm) giống với phiên bản gốc mới nhất.', 0),
(29, 301, 'Ai Lấy Miếng Pho Mát Của Tôi ', 'Spencer Johnson', 3, '2018-12-23 01:48:38.000000', 5000, 0, 'images\\KinhTe\\ai-lay-mieng-pho-mat-cua-toi.jpg', '38000', 3792, 2, 'Mỹ', 'Ai Lấy Miếng Pho Mát Của Tôi\r\n\r\nĐây là một câu chuyện giản dị chứa đựng những triết lý sâu sắc về cách vượt qua những khó khăn và thay đổi trong cuộc sống.\r\n\r\nCâu chuyện kể về hai chú chuột và hai con người tí hon cùng chung sống trong một mê cung rộng lớn luôn tất bật đi tìm những miếng phó mát để nuôi sống mình và để cảm thấy hạnh phúc. Hai chú chuột Đánh Hơi và Nhanh Nhẹn chỉ có bộ não đơn giản của loài gặm nhắm, vốn không có óc phân tích và phán đoán, nhưng chúng lại có bản năng rất nhanh nhạy và sắc sảo. Như các con chuột khác, chúng đặc biệt rất thích pho mát và sẵn sàng làm bất cứ điều gì để có pho mát.', 0),
(30, 302, 'Dám Nghĩ Lớn!', 'David J. Schwartz. Ph.D', 3, '2018-11-28 01:15:01.000000', 5000, 0, 'images\\KinhTe\\dam-nghi-lon.jpg', '98000', 4850, 6, 'Mỹ', 'Dám Nghĩ Lớn!\r\n\r\nDám Nghĩ Lớn! – tác phẩm nổi tiếng thế giới về những ý tưởng và phương pháp tư duy độc đáo và hiệu quả đã làm thay đổi một cách kỳ diệu cuộc đời của hàng triệu người qua nhiều thế hệ. Qua quyển sách này, Tiến sĩ David Schwartz trình bày một cách sinh động và dễ hiểu cách tư duy giúp bạn đạt được mục tiêu cao nhất trong công việc, cuộc sống và trong cộng đồng của bạn. Bạn không cần phải thông minh tuyệt đỉnh hay tài năng xuất chúng mới đạt được thành công lớn lao, bạn chỉ cần rèn luyện và áp dụng thường xuyên tư duy Dám Nghĩ Lớn.', 0),
(31, 303, 'Đọc Vị Bất Kỳ Ai', 'TS. David J. Lieberman', 3, '2018-10-11 01:19:59.000000', 5000, 0, 'images\\KinhTe\\doc-vi-bat-ki-ai.jpg', '69000', 4658, 2, 'Mỹ', 'Đọc Vị Bất Kỳ Ai (Tái Bản)\r\n\r\nBạn băn khoăn không biết người ngồi đối diện đang nghĩ gì? Họ có đang nói dối bạn không? Đối tác đang ngồi đối diện với bạn trên bàn đàm phán đang nghĩ gì và nói gì tiếp theo?\r\n\r\nĐỌC người khác là một trong những công cụ quan trọng, có giá trị nhất, giúp ích cho bạn trong mọi khía cạnh của cuộc sống.', 0),
(32, 304, 'Khéo Ăn Nói Sẽ Có Được Thiên Hạ', 'Trác Nhã', 3, '2018-11-30 01:21:39.000000', 5000, 0, 'images\\KinhTe\\kheo-an-kheo_noi-se-co-duoc-thien-ha.jpg', '110000', 2883, 3, 'Trung Quốc', 'Khéo Ăn Nói Sẽ Có Được Thiên Hạ ( Tái Bản )\r\n\r\nTrong xã hội thông tin hiện đại, sự im lặng không còn là vàng nữa, nếu không biết cách giao tiếp thì dù là vàng cũng sẽ bị chôn vùi. Trong cuộc đời một con người, từ xin việc đến thăng tiến, từ tình yêu đến hôn nhân, từ tiếp thị cho đến đàm phán, từ xã giao đến làm việc... không thể không cần đến kĩ năng và khả năng giao tiếp. Khéo ăn khéo nói thì đi đâu, làm gì cũng gặp thuận lợi. Không khéo ăn nói, bốn bề đều là trở ngại, khó khăn. Trong thời đại thông tin và liên lạc phát triển nhanh chóng, tin tức được cập nhật liên tục, các công cụ thông tin và kĩ thuật truyền thông được ứng dụng rộng rãi như ngày nay thì việc khéo ăn nói đã trở thành “cái tài số một thiên hạ”. ', 0),
(33, 305, ' 13 Nguyên Tắc Nghĩ Giàu Làm Giàu', 'Napoleon Hill', 3, '2018-09-04 01:24:38.000000', 5000, 0, 'images\\KinhTe\\nghi_giau_lam_giau.jpg', '89000', 6144, 2, 'Mỹ', '13 Nguyên Tắc Nghĩ Giàu Làm Giàu là cuốn sách “chỉ dẫn” duy nhất chỉ ra những nguồn lực bạn phải có để thành công. Cuốn sách sẽ giúp bạn trở nên giàu có, làm giàu thêm cho cuộc sống của bạn trên tất cả các phương diện của cuộc sống chứ không chỉ về tài chính và vật chất. Những ý tưởng trong cuốn sách Think and Grow rich – 13 nguyên tắc nghĩ giàu, làm giàu bắt nguồn từ những động lực tốt đẹp: “Thành công cá nhân” và “Quan điểm suy nghĩ tích cực”.', 0),
(34, 306, 'Người Nam Châm - Bí Mật Của Luật Hấp Dẫn', 'Jack Canfield, D.D Watkins', 3, '2018-12-05 01:35:45.000000', 4000, 0, 'images\\KinhTe\\nguoi_nam_cham.jpg', '55000', 2566, 2, 'Anh', 'Người Nam Châm - Bí Mật Của Luật Hấp Dẫn\r\n\r\nCuốn sách viết về cách hoạt động của Luật hấp dẫn trong cuộc sống của bạn, từ đó bạn có thể hiểu nhiều hơn về bản thân mình - thực ra bạn là ai và tại sao bạn lại ở đây. Cuốn sách này chính là chìa khóa của bạn. Nó có thể mở cánh cửa tới tương lai như bạn mong ước và đưa bạn tới con đường có nhiều niềm vui, sung túc và giàu có hơn. Khi đọc cuốn sách này, bạn sẽ thấy mình được truyền cảm hứng vì bạn nhận ra rằng bạn có thể tạo ra cuộc sống mà bạn khao khát, và bạn sẽ được trao quyền khi sử dụng những công cụ, những chiến lược và những khái niệm cơ bản được chuyển tải trong những trang sách này.', 0),
(35, 307, 'Tôi Tài Giỏi - Bạn Cũng Thế', 'Adam Khoo', 3, '2018-12-23 01:39:11.000000', 5000, 0, 'images\\KinhTe\\toi-tai-gioi.jpg', '110000', 5389, 4, 'Singapore', 'Tôi Tài Giỏi - Bạn Cũng Thế sẽ giúp tìm ra giải pháp tốt nhất cho mọi vấn đề, và giúp nhận ra cách thức để thành công. Tuy nhiên để làm một người tài giỏi thì người đọc cần đặt quyển sách xuống và thực thi ngay các kế hoạch. Đương nhiên, không phải chỉ chăm chỉ ngày một, ngày hai mà mỗi người phải thực hiện lâu dài, thậm chí cả đời thì mới đạt được những gì mình muốn.\r\n\r\nThật sự đây là một quyển sách rất tuyệt vời và bổ ích, đem lại cho chúng ta những kinh nghiệm quý báu. Một quyển sách không - thể - thiếu trong tủ sách!', 0),
(36, 308, 'Tư Duy Nhanh Và Chậm', 'Daniel Kahneman', 3, '2018-10-16 01:41:38.000000', 5000, 0, 'images\\KinhTe\\tu_duy_nhanh_va_cham.jpg', '239000', 2637, 2, 'Mỹ', 'Chúng ta thường tự cho rằng con người là sinh vật có lý trí mạnh mẽ, khi quyết định hay đánh giá vấn đề luôn kĩ lưỡng và lý tính. Nhưng sự thật là, dù bạn có cẩn trọng tới mức nào, thì trong cuộc sống hàng ngày hay trong vấn đề liên quan đến kinh tế, bạn vẫn có những quyết định dựa trên cảm tính chủ quan của mình. “Tư duy nhanh và chậm”, cuốn sách nổi tiếng tổng hợp tất cả nghiên cứu được tiến hành qua nhiều thập kỷ của nhà tâm lý học từng đạt giải Nobel Kinh tế Daniel Kahneman sẽ cho bạn thấy những sư hợp lý và phi lý trong tư duy của chính bạn. Cuốn sách được đánh giá là “kiệt tác” trong việc thay đổi hành vi của con người, Tư duy nhanh và chậm đã dành được vô số giải thưởng danh giá, lọt vào Top 11 cuốn sách kinh doanh hấp dẫn nhất năm 2011. Alpha Books đã mua bản quyền và sẽ xuất bản cuốn sách trong Quý 1 năm nay. Tư duy nhanh và chậm dù là cuốn sách có tính hàn lâm cao nhưng vô cùng bổ ích với tất cả mọi người và đặc biệt rất dễ hiểu và vui nhộn.', 0),
(37, 309, 'Thế Giới Phẳng', 'Thomas L. Friedman', 3, '2018-12-23 01:50:15.000000', 5000, 0, 'images\\KinhTe\\the-gioi-phang.jpg\r\n', '272000', 3792, 5, 'Mỹ', 'Thế Giới Phẳng\r\n\r\nTrong xu thế toàn cầu hóa, việc tiếp cận và tham khảo những tri thức đương đại từ những nước đã phát triển về sự chuyển động của thế giới (đang ở bước ngoặt từ “tròn” sang “phẳng”, như cách nói của tác giả) có lẽ sẽ giúp chúng ta có thêm những thông tin bổ ích để có sự chủ động trong quá trình hội nhập. Tác phẩm được xếp vào danh mục sách bán chạy nhất ở Mỹ (kể từ lần xuất bản đầu tiên tháng 4/ 2005 cho đến nay). Đây là bản dịch từ bản sách gốc mới nhất được sửa chữa, cập nhật và bổ sung hai chương mới nhất bởi chính tác giả.', 0),
(38, 400, 'Cà Phê Cùng Tony', 'Tony Buổi Sáng', 4, '2019-01-02 10:41:09.000000', 5000, 0, 'images\\KiNangSong\\caphe_cung_tony.jpg', '90000', 5329, 5, 'Việt Nam', 'Có đôi khi vào những tháng năm bắt đầu vào đời, giữa vô vàn ngả rẽ và lời khuyên, khi rất nhiều dự định mà thiếu đôi phần định hướng, thì CẢM HỨNG là điều quan trọng để bạn trẻ bắt đầu bước chân đầu tiên trên con đường theo đuổi giấc mơ của mình. Cà Phê Cùng Tony là tập hợp những bài viết của tác giả Tony Buổi Sáng. Đúng như tên gọi, mỗi bài nhẹ nhàng như một tách cà phê, mà bạn trẻ có thể nhận ra một chút gì của chính mình hay bạn bè mình trong đó: Từ chuyện lớn như định vị bản thân giữa bạn bè quốc tế, cho đến chuyện nhỏ như nên chú ý những phép tắc xã giao thông thường.', 0),
(42, 404, 'Khí Chất Bao Nhiêu, Hạnh Phúc Bấy Nhiêu', 'Vãn Tình', 4, '2018-10-03 10:50:53.000000', 6000, 0, 'images\\KiNangSong\\khi_chat_bao_nhieu_hp_baynhieu.jpg', '119000', 4658, 2, 'Trung Quốc', 'Khí Chất Bao Nhiêu, Hạnh Phúc Bấy Nhiêu\r\n\r\nCó ai đó từng nói:\r\n\r\n“Hãy sống như một trái dứa: Đầu đội vương miện, dáng đứng hiên ngang – Bên ngoài gai góc, bên trong ngọt ngào.”\r\n\r\nCũng giống như trái dứa, khi một người phụ nữ đủ bản lĩnh để chống đỡ và vượt qua nghịch cảnh, đủ tĩnh tại để tận hưởng trọn vẹn niềm vui cuộc sống, thì đó chính là lúc họ đội lên đầu chiếc vương miện và trở thành nữ hoàng trong thế giới của chính mình.\r\n\r\nTiếp nối thành công từ Bạn đắt giá bao nhiêu? dành cho các cô gái trẻ mới bước chân vào cuộc sống, Khí chất bao nhiêu – Hạnh phúc bấy nhiêu của Vãn Tình đặc biệt hướng đến những phụ nữ mong muốn trưởng thành, khát khao tự do và tự chủ.', 0),
(43, 405, 'Tony Buổi Sáng - Trên Đường Băng', 'Tony Buổi Sáng', 4, '2018-12-05 10:52:59.000000', 5000, 0, 'images\\KiNangSong\\tren_duong_bang.jpg', '80000', 7282, 5, 'Việt Nam', 'Tony Buổi Sáng - Trên Đường Băng (Tái Bản 2017)\r\n\r\n\"Khi còn trẻ, hãy ra ngoài nhiều hơn ở nhà. Hãy nhào vô xin người khác “bóc hết, lột sạch” khả năng của mình. Chỉ sợ bất tài nộp hồ sơ “xin việc”, mà chả ai thèm cho, chả ai thèm bóc lột. Khi đã được bóc và lột hết, dù sau này đi đâu, làm gì, bạn đều cực kỳ thành công. Vì năng lực được trui rèn trong quá trình làm cho người khác. Sự chăm chỉ, tính kỷ luật, quen tay quen chân, quen ngáp, quen lười… cũng từ công việc mà ra. Mọi ông chủ vĩ đại đều từng là những người làm công ở vị trí thấp nhất. Họ đều rẽ trái trong khi mọi người rẽ phải. Họ có những quyết định không theo đám đông, không cam chịu sống một cuộc đời tầm thường, nhạt nhòa… rồi chết.\r\n\r\nCòn những bạn thu nhập 6 triệu cũng túng thiếu, 20 triệu cũng đi vay mượn để tiêu dùng, thì thôi, cuộc đời họ chấm dứt giấc mơ lớn. Tiền nong cá nhân quản lý không được, thì làm sao mà quản trị tài chính một cơ nghiệp lớn?”. Tư duy thế nào thì nó ra số phận thế đó.\"', 0),
(44, 406, 'Hành Trình Về Phương Đông', 'Baird T. Spalding', 4, '2018-12-08 10:54:50.000000', 5000, 0, 'images\\KiNangSong\\hanh_trinh_ve_phuong_dong.jpg', '78000', 5280, 7, 'Anh', 'Hành Trình Về Phương Đông\r\n\r\nHành Trình Về Phương Đông mở ra một chân trời mới về Đông Tây gặp nhau, để khoa học Minh triết hội ngộ, để Hiện đại Cổ xưa giao duyên, để Đất Trời là một. Thế giới, vì vậy đã trở nên hài hòa hơn, rộng mở, diệu kỳ hơn và, do đó, nhân văn hơn.\r\n\r\nHành Trình Về Phương Đông kể về những trải nghiệm của một đoàn khoa học gồm các chuyên gia hàng đầu của Hội Khoa Học Hoàng Gia Anh được cử sang Ấn Độ nghiên cứu về huyền học và những khả năng siêu nhiên của con người. Suốt hai năm trời rong ruổi khắp các đền chùa Ấn Độ, chúng kiến nhiều pháp luật, nhiều cảnh mê tín dị đoan, thậm chí lừa đảo...của nhiều pháp sư, đạo sĩ...họ được tiếp xúc với những vị thế, họ được chứng kiến, trải nghiệm, hiểu biết sâu sắc về các khoa học cổ xưa và bí truyền của văn hóa Ấn Độ như Yoga, thiền định, thuật chiêm duyên, nghiệp báo, luật nhân quả, cõi sống và cõi chết....', 0),
(45, 407, 'Đi Tìm Lẽ Sống', 'Viktor Emil Frankl', 4, '2018-11-28 10:57:31.000000', 5000, 0, 'images\\KiNangSong\\di_tim_le_song.jpg', '68000', 2479, 6, 'Nga', 'Đi Tìm Lẽ Sống\r\n\r\nĐi tìm lẽ sống của Viktor Frankl là một trong những quyển sách kinh điển của thời đại. Thông thường, nếu một quyển sách chỉ có một đoạn văn, một ý tưởng có sức mạnh thay đổi cuộc sống của một người, thì chỉ riêng điều đó cũng đã đủ để chúng ta đọc đi đọc lại và dành cho nó một chỗ trên kệ sách của mình. Quyển sách này có nhiều đoạn văn như thế.\r\n\r\n', 0),
(46, 408, 'Tuổi Trẻ Không Trì Hoãn\r\n', 'Thần Cách', 4, '2018-12-05 11:02:56.000000', 5000, 0, 'images\\KiNangSong\\tuoi_tre_khong_tri_hoan.jpg', '88000', 2595, 2, 'Trung Quốc', 'Cuốn “Tuổi trẻ không trì hoãn” sẽ giúp bạn nhận diện và nhìn rõ những căn nguyên cơ bản của bệnh trì hoãn, đồng thời đưa ra những phương thuốc thực sự hữu hiệu. Mong rằng qua cuốn sách này, bạn thấy được bản thân trong đó, để rồi tự lập trình cho riêng mình những kế hoạch thoát khỏi sự “trì hoãn” một cách thực sự hiệu quả và sống cuộc đời như chính bạn mong muốn!', 0),
(47, 409, 'Hài Hước Một Chút Thế Giới Sẽ Khác Đi', 'The Book Worm', 4, '2018-12-05 11:04:38.000000', 5000, 0, 'images\\KiNangSong\\hai-huoc-mot-chut-ca-the-gioi-se-khac-di.jpg', '60000', 2347, 7, 'Pháp', 'Hài hước một chút, thế giới sẽ khác đi – cuốn sách với nội dung phong phú mà sâu sắc này sẽ giúp các bạn có được cái nhìn rõ nét hơn về tầm quan trọng của tính hài hước dưới các góc độ, phương diện đánh giá khác nhau, cũng như có them những kĩ năng vận dụng sự hài hước vào trong cuộc sống. Hi vọng sau khi đọc xong cuốn sách này, bạn có thể biến mình thành một người biết nói chuyện, khéo léo vận dụng những ngôn từ hài hước, “gãi đúng chỗ ngứa” của đối phương để mở ra con đường dẫn tới thành công, được mọi người yêu mến.', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tinhtrang`
--

CREATE TABLE `tinhtrang` (
  `IdTinhTrang` int(255) NOT NULL,
  `TenTinhTrang` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tinhtrang`
--

INSERT INTO `tinhtrang` (`IdTinhTrang`, `TenTinhTrang`) VALUES
(1, 'đang giao'),
(2, 'đã giao'),
(3, 'đã giao một phần'),
(4, 'chưa giao');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chitietdathang`
--
ALTER TABLE `chitietdathang`
  ADD PRIMARY KEY (`IdCTDH`) USING BTREE,
  ADD KEY `fk_chitietdatdang` (`TinhTrang`) USING BTREE;

--
-- Indexes for table `danhmucsach`
--
ALTER TABLE `danhmucsach`
  ADD PRIMARY KEY (`IdDanhMuc`) USING BTREE;

--
-- Indexes for table `dathang`
--
ALTER TABLE `dathang`
  ADD PRIMARY KEY (`IdDatHang`) USING BTREE,
  ADD KEY `fk_dathang_tinhtrang` (`TinhTrang`) USING BTREE;

--
-- Indexes for table `loainguoidung`
--
ALTER TABLE `loainguoidung`
  ADD PRIMARY KEY (`IdLoai`) USING BTREE;

--
-- Indexes for table `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD PRIMARY KEY (`IdNguoiDung`) USING BTREE,
  ADD KEY `fk_nguoidung_loainguoidung` (`IdLoai`);

--
-- Indexes for table `nhasanxuat`
--
ALTER TABLE `nhasanxuat`
  ADD PRIMARY KEY (`IdNSX`) USING BTREE;

--
-- Indexes for table `sach`
--
ALTER TABLE `sach`
  ADD PRIMARY KEY (`IdSach`,`MaSach`) USING BTREE,
  ADD KEY `MaSach` (`MaSach`) USING BTREE,
  ADD KEY `fk_sach_danhmucsach` (`LoaiSach`) USING BTREE,
  ADD KEY `fk_sach_nhasanxuat` (`IdNhaSX`) USING BTREE;

--
-- Indexes for table `tinhtrang`
--
ALTER TABLE `tinhtrang`
  ADD PRIMARY KEY (`IdTinhTrang`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chitietdathang`
--
ALTER TABLE `chitietdathang`
  MODIFY `IdCTDH` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `danhmucsach`
--
ALTER TABLE `danhmucsach`
  MODIFY `IdDanhMuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `dathang`
--
ALTER TABLE `dathang`
  MODIFY `IdDatHang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `loainguoidung`
--
ALTER TABLE `loainguoidung`
  MODIFY `IdLoai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `nguoidung`
--
ALTER TABLE `nguoidung`
  MODIFY `IdNguoiDung` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `nhasanxuat`
--
ALTER TABLE `nhasanxuat`
  MODIFY `IdNSX` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sach`
--
ALTER TABLE `sach`
  MODIFY `IdSach` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `tinhtrang`
--
ALTER TABLE `tinhtrang`
  MODIFY `IdTinhTrang` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chitietdathang`
--
ALTER TABLE `chitietdathang`
  ADD CONSTRAINT `fk_chitietdatdang` FOREIGN KEY (`TinhTrang`) REFERENCES `tinhtrang` (`IdTinhTrang`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `dathang`
--
ALTER TABLE `dathang`
  ADD CONSTRAINT `fk_dathang_tinhtrang` FOREIGN KEY (`TinhTrang`) REFERENCES `tinhtrang` (`IdTinhTrang`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD CONSTRAINT `fk_nguoidung_loainguoidung` FOREIGN KEY (`IdLoai`) REFERENCES `loainguoidung` (`IdLoai`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
