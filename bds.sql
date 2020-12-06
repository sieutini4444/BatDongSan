-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 05, 2020 lúc 08:53 AM
-- Phiên bản máy phục vụ: 10.4.14-MariaDB
-- Phiên bản PHP: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `bds`
--
CREATE DATABASE IF NOT EXISTS `bds` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `bds`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `account`
--

CREATE TABLE `account` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` int(11) NOT NULL,
  `date` date NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `account`
--

INSERT INTO `account` (`id`, `username`, `pass`, `email`, `name`, `number`, `date`, `level`) VALUES
(1, '51800001', 'e10adc3949ba59abbe56e057f20f883e', 'truongan2001kg@yahoo.com', 'Trường An', 213123123, '2000-11-01', 1),
(2, 'admin', 'e10adc3949ba59abbe56e057f20f883e', 'truongan2000kg@gmail.com', 'Admin', 974565966, '1999-02-17', 2),
(3, 'minhtan2000kg', 'e10adc3949ba59abbe56e057f20f883e', 'minhtan2000kg@gmail.com', 'Đặng Minh Tân', 35123123, '2000-12-18', 0),
(4, 'nhanvien2', 'e10adc3949ba59abbe56e057f20f883e', 'nhanvien2@gmail.com', 'Trần Công Phong', 909858686, '2000-02-01', 1),
(5, 'nhanvien3', 'e10adc3949ba59abbe56e057f20f883e', 'nhanvien3@gmail.com', 'Phan Nho Trung', 975313521, '2000-05-04', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `baiviet`
--

CREATE TABLE `baiviet` (
  `idbaiviet` int(11) NOT NULL,
  `tenbaiviet` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `noidungbaiviet` varchar(999) NOT NULL,
  `idnguoiviet` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `baiviet`
--

INSERT INTO `baiviet` (`idbaiviet`, `tenbaiviet`, `image`, `noidungbaiviet`, `idnguoiviet`) VALUES
(6, 'Đất tăng giá ở đâu, dân \"sầu\" đến đấy', 'baiviet1.jpg', 'Trúng đậm nhờ bán lô đất vườn trồng cây lâu năm, ông Nguyễn Văn Việt một \r\nnông dân sinh sống tại Cửa Dương, Phú Quốc cho biết cảm giác buồn nhiều\r\n hơn vui khi giàu lên nhờ đất. Cả đời chủ yếu là làm nông, khi có thông tin về\r\n đặc khu kinh tế giá đất Phú Quốc tăng kinh người, hơn chục công đất vườn \r\nvốn chỉ có giá 100-200 nghìn/m2 của ông một bước khoác áo mới lên đến \r\ngần 1,5-2 triệu/m2, nhiều hộ dân lân cận bán đất mà đổi đời. Không suy xét\r\n thiệt hơn mà chỉ thấy người người bán đất giàu lên, ông Việt nghe theo con\r\n cái, cắt đất bán với mục đích kiếm số vốn lớn cho các con làm ăn thay vì\r\n phải sống đời làm nông mãi như vợ chồng ông.\r\n\r\n“Tôi thấy tiếc công đất mình đã bán đi, không phải\r\n là vì giá tăng 3-4 lần mà do tôi đã sai lầm khi không\r\n suy nghĩ kỹ càng khi quyết định bán đất làm ăn. Giờ\r\n thu nhập cả nhà chỉ còn biết dựa vào cửa hàng vật\r\n liệu của con trai. ', 1),
(8, 'Mũi Né và sức hấp dẫn khó cưỡng từ dòng sản phẩm shophouse biển', 'baiviet3.jpg', 'Nhắc đến Mũi Né, Phan Thiết, Bình Thuận yếu tố đầu tiên là bãi biển\r\n hoang sơ, nắng vàng, biển xanh, những đồi cát đẹp và di tích văn \r\nhóa đa sắc. Đặc biệt, khí hậu hiền hòa, hơn 300 ngày nắng ấm nên\r\n Mũi Né có thời gian khai thác du lịch hầu như quanh năm. Tiềm \r\nnăng du lịch của Mũi Né được dự báo sẽ còn tăng mạnh hơn trong \r\ntương lai khi các dự án liên kết hạ tầng giao thông tại thị trường này\r\n đi vào vận hành. Cụ thể, cao tốc Dầu Giây – Phan Thiết dự kiến hoàn\r\n thành năm 2022 sẽ kéo thời gian di chuyển từ TP.HCM ra Mũi Né chỉ \r\nchưa đầy 2 tiếng; Sân bay Phan Thiết đi vào hoạt động năm 2023 sẽ giúp\r\n lượng khách nội địa và quốc tế đến Mũi Né tăng gấp đôi, gấp ba so với\r\n hiện tại. Ngoài ra, nơi đây vừa được công nhận là khu du lịch quốc gia \r\nnên hiện Mũi Né sẽ càng thu hút nhiều đầu tư về cơ sở hạ tầng, các sản \r\nphẩm bất động sản, du lịch đa dạng.\r\nLoại hình shophouse đang hoạt động tại Bình Thuận chủ yếu tập trung\r\n tại đô thị trung tâm như thành phố Phan Thiết. Trong khi ', 1),
(9, 'Lộc Nam - Cửa ngõ phía nam Bảo Lộc và định hướng mở rộng Thành phố', 'baiviet4.jpg', 'Theo Đồ án Quy hoạch chung TP. Bảo Lộc và vùng phụ cận, tỉnh \r\nLâm Đồng đến năm 2040, không gian đô thị TP. Bảo Lộc và vùng \r\nphụ cận sẽ được mở rộng rộng lên hơn 597 km2, bao gồm các xã\r\n Lộc An, Lộc Tân, Lộc Thành, Tân Lạc và Lộc Nam (huyện Bảo Lâm).\r\n Năm 2040, đất xây dựng đô thị khoảng 4.800 ha, trong đó đất dân\r\n dụng khoảng 2.500 ha. Quy mô dân số đô thị khoảng 320.000 \r\nngười; trong đó, nội thị là 168.000 người và ngoại thị 72.000 người.\r\nVai trò mới của Bảo Lộc đối với tỉnh Lâm Đồng là xây dựng mục tiêu\r\n và tầm nhìn chiến lược phát triển thành phố gắn liền với vùng phụ \r\ncận phía Nam, để phát huy vai trò, tính chất và động lực phát triển \r\nkinh tế - xã hội của thành phố; xứng tầm là đô thị cấp vùng, một thành\r\n phố tỉnh lỵ trong tương lai.\r\n\r\nTP. Bảo Lộc là đô thị tổng hợp, trung tâm kinh tế phía Nam của tỉnh. \r\nDo đó, việc tổ chức định hình không gian cho TP. Bảo Lộc và vùng phụ\r\n cận tạo thành một cực phát triển về kinh tế - xã hội cân bằng so với\r\n khu vực phía Bắc tỉnh l', 4),
(10, 'TP.HCM: Cảnh báo dấu hiệu lừa đảo tại một dự án nhà ở thuộc quận 12', 'baiviet5.jpg', 'Theo nội dung văn bản này, thời gian gần đây, UBND phường Tân Thới\r\n Nhất nắm được thông tin một sàn giao dịch tổ chức giới thiệu một \r\ndự án căn hộ “nhà ở xã hội Lê Minh bộ Công an” nằm trên đường Phan\r\n Văn Hớn, phường Tân Thới Nhất, quận 12. Nhưng kết quả kiểm tra, rà\r\n soát cho thấy không có dự án nào của Công ty Lê Minh trên địa bàn. \r\nDo đó, UBND phường Tân Thới Nhất gửi thông báo đến người dân để\r\n tránh bị lừa đảo, đồng thời đảm bảo an ninh trật tự trên địa bàn.\r\n\r\nTrước đó, ông Nguyễn Hữu Huynh, Giám đốc Công ty TNHH Lê Minh\r\n cũng đã gửi các cơ quan chức năng văn bản tố cáo một số sàn môi giới\r\n giả mạo công ty để rao bán dự án khu tái định cư 38ha của công ty này\r\n với tên gọi dự án căn hộ xã hội Lê Minh bộ Công an. Theo văn bản này,\r\n dự án chung cư Lê Minh là dự án thành phần trong khu tái định cư 38ha.\r\n Phía công ty cũng chưa có bất cứ hoạt động giới thiệu, rao bán, chuyển \r\nnhượng nào mà mới chỉ đang hoàn thiện thủ tục pháp lý.', 4),
(11, 'Lập quy hoạch khu đô thị rộng 300ha tại TP. Bắc Ninh', 'baiviet6.jpg', 'Cũng theo văn bản này, việc lập quy hoạch trên khu vực có diện tích\r\n 300ha là thực hiện kết luận ngày 04/11/2020 của Ban Thường vụ \r\nTỉnh ủy về việc lập quy hoạch chi tiết Khu đô thị tại các phường Đại\r\n Phúc, Vân Dương, Nam Sơn, Khắc Niệm bằng nguồn tài trợ của\r\n doanh nghiệp và trên cơ sở đề nghị của Công ty CP Him Lam - \r\nchi nhánh Bắc Ninh.\r\n\r\nKinh phí do Công ty CP Him Lam chi nhánh Bắc Ninh cam kết tài\r\n trợ 100% không hoàn lại, không điều kiện bắt buộc.\r\n\r\nBan quản lý khu vực phát triển đô thị Bắc Ninh được UBND tỉnh Bắc\r\n Ninh giao nhiệm vụ tiếp nhận hồ sơ nhiệm vụ và đồ án quy hoạch \r\ntrình cấp có thẩm quyền thẩm định, phê duyệt theo quy định.\r\n\r\nVăn bản này có hiệu lực đến hết tháng 11/2021 để hoàn thành việc lập,\r\n thẩm định, phê duyệt đồ án quy hoạch chi tiết theo quy định, đồng thời\r\n sẽ hết hiệu lực nếu đồ án quy hoạch chi tiết được phê duyệt trong thời\r\n hạn nêu trên.', 5),
(12, 'Chuyên gia dự báo triển vọng lạc quan cho thị trường bất động sản châu Á-Thái Bình Dương', 'baiviet7.jpg', 'Theo báo cáo, các gói kích cầu khổng lồ và chính sách hỗ trợ việc \r\nlàm của chính phủ nhiều nước đã tạm thời ngăn chặn tác động của\r\n những cuộc suy thoái sâu. Ở nhiều nước, người thuê nhà gặp khó khăn \r\ncũng được hỗ trợ. Nhờ vậy, thị trường bất động sản châu Á-TBD hoạt \r\nđộng tương đối ổn so với các khu vực khác trên thế giới. Dữ liệu của \r\nReal Capital Analytics cho biết dù khối lượng đầu tư vào thị trường \r\nnày đã sụt giảm 38% so với năm ngoái, giá bán gần như vẫn được \r\nduy trì ở mức ổn định.\r\n\r\nTuy vậy, cả người mua và người bán nhà đất ở châu Á-TBD đều gặp khó \r\nkhăn trong việc định giá bất động sản. Trong khi người mua kỳ vọng đại \r\ndịch sẽ khiến tăng trưởng giá chững lại, có thể mua bất động sản với giá \r\nthấp hơn thì người bán vẫn còn đủ tiềm lực tài chính nên không muốn \r\nbán rẻ mà đặt kỳ vọng kinh tế phục hồi, vượt qua đại dịch. Chính điều \r\nnày tạo ra sự chênh lệch lớn về mức giá giữa người mua và người bán. ', 5),
(13, 'Có nên mua cổ phiếu bất động sản lúc này?', 'baiviet8.jpg', 'Bàn về việc lựa chọn cổ phiếu BĐS nhà ở và BĐS công nghiệp, ông\r\n Phương cho rằng, nếu các nhà đầu tư muốn lời nhanh hơn thì nên\r\n đầu tư vào nhóm cổ phiếu BĐS công nghiệp. Thị trường chứng \r\nkhoán luôn là đồ thị hình sin, lúc lên lúc xuống, cho nên các nhà \r\nđầu tư nên mua lúc thị trường bắt đầu lên và nên tối ưu hoá và bán\r\n lúc thì trường bắt đầu giảm. Nên chọn cổ phiếu 50%, lựa chọn \r\nthời điểm 50%. Theo đó, Việt Nam đang có nhiều thuận lợi để đón\r\n đầu ngọn gió cổ phiếu bất động sản công nghiệp. Nền kinh tế được\r\n dự báo sẽ phục hồi mạnh nhất Asean; các doanh nghiệp FDI Nhật\r\n Bản, Hàn Quốc cam kết tăng cường đầu tư vào Việt Nam; làn sóng\r\n dịch chuyển sản xuất từ doanh nghiệp FDI điện tử, công nghệ ở \r\nTrung Quốc ra Đông Nam Á và bất động sản khu công nghiệp sẽ\r\n là điểm đến của làn sóng này; nguồn cung chưa thể mở rộng \r\nnhanh chóng, giá thuê sẽ tăng mạnh cho các khu công nghiệp hiện hữu.\r\n\r\n“Xét về thị trường cho thấy, bất động sản công nghiệp được xem là bất\r\n khả chiến bại b', 5),
(14, 'Giấy tay là gì? Vì sao không nên mua nhà đất bằng giấy tay?', 'baiviet9.jpg', '-Giá bán rẻ, giao dịch “né” thuế: Những căn nhà giấy tay thông\r\n thường có giá rẻ hơn hẳn giá thị trường, song phần lớn là những\r\n căn nhà vướng quy hoạch, chưa chuyển nhượng mục đích sử \r\ndụng đất, pháp lý không rõ ràng,... Trường hợp không lên được \r\nthổ cư hay nằm trong khu đất quy hoạch giải tỏa thì người mua \r\nrơi vào cảnh tiền mất, nhà không có. Tuy nhiên, vì ham giá rẻ, \r\nngại làm thủ tục chuyển nhượng rườm rà và muốn “né” các loại \r\nthuế phí nên nhiều người mua nhà vẫn đánh liều mua nhà đất \r\nbằng giấy tay dù biết giao dịch này tiềm ẩn nhiều rủi ro.\r\n\r\n- Người mua quá tin tưởng vào bên bán: Tin tưởng bên bán là \r\nbạn bè, người quen nên người mua chủ quan cho rằng sẽ không\r\n xảy ra trường hợp lừa đảo, tranh chấp. Lợi dụng tâm lý này, kẻ \r\nxấu sẽ dụ dỗ bạn mua nhà đất mà không có hợp đồng công \r\nchứng, chỉ là thỏa thuận miệng và giấy tay với những điều khoản \r\nsơ sài. Đây cũng là một bài học cảnh tỉnh cho tất cả mọi người khi giao\r\n dịch mua bán một tài sản có giá trị lớn như nh', 5),
(15, 'Quyết mua nhà ra riêng vì sống chung bố mẹ chồng khổ hơn ở trọ', 'baiviet10.jpg', 'Tôi quê Thái Bình, học xong ra trường đi làm 1-2 năm thì lấy chồng là\r\n bạn học yêu nhau từ thời sinh viên. Bố mẹ chồng tôi cùng là người gốc \r\nThái Bình, ra Hà Nội lập nghiệp. Nhờ chịu thương chịu khó ông bà cũng \r\nmua được đất cất nhà 3 tầng ở Quan Nhân (quận Thanh Xuân, Hà Nội)\r\n. Trải qua tuổi trẻ vất vả nơi xứ người nên ông bà luôn giữ thói quen tiết \r\nkiệm và hay làm. Khi nghỉ hưu, ông vẫn chạy thêm grab kiếm tiền, bà lo nội trợ.\r\n\r\nNgôi nhà 45m2, 3 tầng do bố mẹ chồng tôi tự xây nên rất khang trang. \r\nÔng bà ở tầng 2, chúng tôi được chia cho 1 phòng trên tầng 3. Tầng 2 \r\ncòn 1 phòng nữa là của chị chồng tôi ở khi chưa lập gia đình, được giữ \r\nnguyên để thỉnh thoảng chị về chơi.\r\n\r\nBan đầu việc sống chung khá ổn thỏa, vì vợ chồng tôi đi làm suốt, tối về\r\n cả nhà cùng ăn cơm, tôi dọn dẹp xong thì lên phòng mình, thỉnh thoảng \r\nngồi trò chuyện cùng gia đình. Cuối tuần cả nhà đi chợ làm cơm, có khi \r\nhọ hàng đến ăn uống cũng vui. Tuy nhiên từ khi tôi có bầu thì mầm mống\r\n các mâu t', 1),
(16, 'Bất động sản Quận 8: Thời điểm và cơ hội hiếm có', 'baiviet11.jpg', 'Việc cải tạo kênh rạch được xem là “chìa khóa” khiến cho điều \r\nkiện sông nước được thiên nhiên ban tặng sẽ phát huy đúng \r\nmức lợi thế sinh thái xanh cho Quận 8. Các kênh như kênh Tàu \r\nHủ - Bến Nghé, kênh Đôi, kênh Tẻ khi hoàn thiện cải tạo sẽ phục\r\n vụ tốt cho mục tiêu giao thông thủy, thoát nước, giảm ngập, chỉnh \r\ntrang đô thị, cải thiện môi trường… góp phần nâng cao chất lượng sống của người dân. \r\nChính vì vậy, chính quyền Thành phố đang đẩy mạnh triển khai dự \r\nán cải thiện môi trường nước (giai đoạn 3) lưu vực kênh Tàu Hủ - Bến \r\nNghé - kênh Đôi - kênh Tẻ với diện tích khoảng 1.600ha thuộc các \r\nđịa bàn Quận 4, 7, 8 và huyện Bình Chánh với tổng mức đầu tư \r\nkhoảng 13.560 tỷ đồng. \r\n\r\nSau kênh Nhiêu Lộc và kênh Tân Hóa - Lò Gốm, kênh Tàu Hủ - Bến\r\n Nghé là tuyến kênh thứ 3 tại TPHCM cũng được đầu tư cải tạo và\r\n mang về những kết quả trông thấy. Hình ảnh dòng kênh cạn với\r\n nhà cửa tạm bợ san sát giờ đã được thay bằng diện mạo trong\r\n xanh, uốn mình mềm mại dọc theo đại lộ Đôn', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binhluan`
--

CREATE TABLE `binhluan` (
  `idbinhluan` int(11) NOT NULL,
  `idnguoicmt` int(11) NOT NULL,
  `idbaiviet` int(11) NOT NULL,
  `datecmt` date NOT NULL,
  `noidungcmt` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `binhluan`
--

INSERT INTO `binhluan` (`idbinhluan`, `idnguoicmt`, `idbaiviet`, `datecmt`, `noidungcmt`) VALUES
(11, 3, 6, '2020-12-05', 'Bài viết hay lắm bạn!');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `duyetbaiviet`
--

CREATE TABLE `duyetbaiviet` (
  `idbaiviet` int(11) NOT NULL,
  `tenbaiviet` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `noidungbaiviet` varchar(999) NOT NULL,
  `idnguoiviet` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `idsp` int(11) NOT NULL,
  `tensp` varchar(255) NOT NULL,
  `mucgia` int(11) NOT NULL,
  `dientich` int(11) NOT NULL,
  `SLphongngu` int(11) NOT NULL,
  `trangthai` varchar(10) NOT NULL,
  `thongtin` varchar(455) NOT NULL,
  `idnguoidang` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`idsp`, `tensp`, `mucgia`, `dientich`, `SLphongngu`, `trangthai`, `thongtin`, `idnguoidang`, `image`) VALUES
(9, 'Nhà cần bán hẻm Phạm Văn Chiêu Phường 14 Gò Vấp dt: 4 x 13m đúc 1 tấm giá bán: 4 tỷ 180tr', 300, 52, 3, 'bán', 'Nhà chính chủ càn bán hẻm xe hơi Phạm Văn Chiêu Phường 14 Gò Vấp.\r\n\r\nDT: 4 x 13m đúc 1 tấm.\r\n\r\nVị trí: Khu dân trí cao xung quanh toàn nhà cao tầng.', 1, 'sp1.jpg'),
(10, 'Cần bán căn hộ Jamila', 990, 80, 2, 'bán', 'Bán Căn Hộ Jamila Không gian sống trong lành thoáng mát.\r\n+ View Đẹp thoáng mát.\r\n- Vị Trí gần trung tâm duyển chuyển vào chợ bến thành 25 phút xe máy.\r\n\r\n- DT: 80m2 2PN 2WC - Ban công dài thoáng mát.\r\n+ Nội thất: Thiết bị vệ sinh Inax - Phòng ngủ sàn gỗ.\r\n\r\n+ Giá: 990 tr - Sổ Hồng chính chủ.', 1, 'sp2.jpg'),
(11, 'Công ty Duhahome cần thuê', 80, 100, 15, 'thuê', '1. Giá dao động 80 triệu, chính chủ và cho thuê dài hạn.\r\n2. Nhà nguyên căn (ưu tiên nhà phố) từ 5 phòng - 15 phòng, ưu tiên các quận trung tâm (Phú Nhuận - Bình Thạnh - Gò Vấp Quận 1 - 3, giáp Phú Nhuận + Bình Thạnh) mình kinh doanh không sang nhượng). Giá khu vực.\r\nACE MG có hàng nào có cơ hội đầu tư thì chia sẽ mình với nhé.\r\nSdt 24/24: 0939.598.179.\r\nXin chân thành cám ơn tất cả ACE.', 1, 'sp3.jpg'),
(12, 'Hanoi House', 110, 120, 8, 'thuê', '+ Khu vực tìm kiếm: Quận Đống Đa, quận Hai Bà Trưng, quận Ba Đình, quận Cầu Giấy và quận Thanh Xuân.\r\n+ Nhu cầu thuê nhà có nhiều phòng khép kín (ít nhất 10 phòng/tòa nhà).\r\n+ Các phòng thiết kế có ban công hoặc cửa sổ thoáng.\r\n+ Tài chính thuê từ 85 triệu tới 120 triệu/tháng.', 1, 'sp4.jpg'),
(13, 'Cần thuê nhà nguyên căn quận 12', 7, 65, 2, 'thuê', 'Cần thuê nhà nguyên căn gần khu vực Lê Văn Khương, quận 12.\r\n+ Diện tích: Hơn 4x15m.\r\n+ Có ít nhất 3 phòng ngủ.\r\n+ Hướng: Bắc, Đông, Nam, Đông - Nam. Ưu tiên hướng Bắc.\r\n+ Hẻm xe hơi thoáng mát, an ninh, hẻm cụt cũng được.\r\n+ Giá tầm 7tr đổ lại.\r\nSố điện thoại & zalo 0393910118. Trao đổi trực tiếp qua zalo. Hạn chế gọi nhiều ạ.', 4, 'sp5.jpg'),
(14, 'Cần thuê nhà nguyên căn tại quận 3', 50, 120, 4, 'thuê', 'Yêu cầu:\r\n- Nguyên căn.\r\n- Diện tích: 100 - 120m2.\r\n- Vị trí: Q3.\r\n- Có 1 phòng đào tạo nội bộ (30 - 40 người).\r\n- Không gian làm việc cho 10 nhân viên.', 4, 'sp6.jpg'),
(15, 'Cần mua chung cư Airport Plaza', 1220, 150, 3, 'bán', 'Cần mua căn hộ Airport Plaza 2 hoặc 3 phòng ngủ, có hỗ trợ vay ngân hàng.\r\nDT: 100 - 150m2.', 4, 'sp7.jpeg'),
(16, 'Mua chung cư Đông Dương, Tp Bắc Ninh', 800, 70, 2, 'bán', 'Mua chung cư Đông Dương, Tp Bắc Ninh.\r\nFull đồ.\r\nDT 50 - 80m2.', 5, 'sp8.jpg'),
(17, 'Cần mua căn hộ Akari A6, tầng trung view nội khu', 489, 75, 2, 'bán', 'Cần mua căn hộ Akari A6, tầng trung view nội khu.\r\nDiện tích: 75m2\r\nChênh lệch thấp.', 5, 'sp9.jpg');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `baiviet`
--
ALTER TABLE `baiviet`
  ADD PRIMARY KEY (`idbaiviet`);

--
-- Chỉ mục cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`idbinhluan`);

--
-- Chỉ mục cho bảng `duyetbaiviet`
--
ALTER TABLE `duyetbaiviet`
  ADD PRIMARY KEY (`idbaiviet`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`idsp`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `account`
--
ALTER TABLE `account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `baiviet`
--
ALTER TABLE `baiviet`
  MODIFY `idbaiviet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `idbinhluan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `duyetbaiviet`
--
ALTER TABLE `duyetbaiviet`
  MODIFY `idbaiviet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `idsp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
