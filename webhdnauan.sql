-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 07, 2019 lúc 11:33 AM
-- Phiên bản máy phục vụ: 10.1.38-MariaDB
-- Phiên bản PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `webhdnauan`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `anh`
--

CREATE TABLE `anh` (
  `anh_id` bigint(20) UNSIGNED NOT NULL,
  `anh` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `loaianh_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blog`
--

CREATE TABLE `blog` (
  `blog_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tieudeblog` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mota` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `anhmota` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `chitiet` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `nhomblog_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `congthuc`
--

CREATE TABLE `congthuc` (
  `congthuc_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tieude` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `anhgioithieu` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `thoigianthuchien` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `khauphan` int(11) NOT NULL,
  `thoigianchuanbi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `capdo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nguyenlieu` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cachlam` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `noibat` int(11) NOT NULL,
  `songuoixem` int(11) NOT NULL,
  `loai_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `congthuc`
--

INSERT INTO `congthuc` (`congthuc_id`, `user_id`, `tieude`, `anhgioithieu`, `thoigianthuchien`, `khauphan`, `thoigianchuanbi`, `capdo`, `nguyenlieu`, `cachlam`, `noibat`, `songuoixem`, `loai_id`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Sữa chua túi.', 'suachua.jpg', '20m', 4, '20m', 'Dễ', 'Sữa đặc 1 lon;Nước 1 lon;Sữa chua 200 gr;Nước 1 lon;Sữa tươi 2 lon', 'Cho nước sôi vào 1 cái tô to rồi thêm sữa đặc và khuấy đều cho hòa tan. Tiếp theo bạn cho nước lọc và sữa tươi vào cùng, khuấy đều nguyên liệu mới cho sữa chua mua sẵn vào khuấy đều cho hòa tan.//Bạn đổ sữa vào 1 chiếc ca có miệng phễu để rót cho dễ sau đó rót sữa đầy khoảng 1 nửa túi, dùng dây thun buộc chặt lại. Cứ như vậy bạn rót sữa vào các túi cho hết nguyên liệu.//Đổ nước ấm vào nồi sau đó đặt giá sắt tròn vào nồi, tiếp theo bạn xếp các bịch sữa chua vào và đậy nắp nồi, ủ sữa 6-8 tiếng là sữa sẽ lên men. Cho sữa chua vào ngăn mát tủ lạnh vài tiếng cho sữa lạnh nếu thích ăn sữa chua đặc mềm, hoặc bạn có thể cất ngăn đá 5 tiếng là có thể dùng được.//Chỉ với vài nguyên liệu và bước làm đơn giản bạn đã có ngay thành phẩm sữa chua ngon mát cho ngày hè rồi. Tuyệt vời quá đúng không nào!\r\n', 1, 100, 'loaict_anvat', '2019-04-04 17:00:00', '2019-04-05 12:36:45'),
(2, 'admin', 'Tự làm kem tươi', 'kemtuoi.jpg', '45m', 2, '20m', 'Dễ', 'Sữa tươi 240 ml;Bột gelatine 10 gr;Vani 1/2 muỗng canh;Đường bột 31 gr', 'Đặt nồi lên bếp, cho khoảng 59ml nước lọc vào, thêm 10g bột gelatine không mùi vào, để yên khoảng 5 phút cho gelatine ngấm nước. Sau đó bật bếp lên và khuấy đều cho gelatine tan hết vào trong nước thì tắt bếp.//Trong 1 tô lớn, cho 240ml sữa tươi nguyên kem vào. Tiếp đến cho phần nước gelatine vào, khuấy đều 20-30 giây. Sau đó thêm 1/2 muỗng canh nước vani, 31g đường bột khuấy đều co đường tan rồi đạt hỗn hợp vào ngăn mát tủ lạnh khoảng 60-90 phút để hỗn hợp thành hình và dày hơn. Trong quá trình đó cứ cách 15-20 phút thì lấy ra khỏi tủ lạnh để khuấy đều lên nhé!//Lần cuối cùng bạn cho ra khỏi tủ lạnh, dùng máy đánh trứng đánh cho đến khi được chỗ kem sữa bông lên và mềm mịn như ý nhé!//', 1, 86, 'loaict_anvat', '2019-04-04 17:00:00', '2019-04-05 12:36:28'),
(3, 'admin', 'Bánh gạo cay - Tteokbokki', 'banhgao.jpg', '1h', 4, '20m', 'Trung bình', 'Bột gạo 200 gr;Bột nếp 150 gr;Nước 280 ml;Cá cơm khô 15 gr;Tỏi 10 gr;Hành tây 30 gr;Nước tương 1 1/2 muỗng canh;Đậu hũ hải sản 5 miếng;Hành boa rô 1 cây;Muối 1/4 muỗng cà phê;Rong biển khô 15 gr;Gừng 10 gr;Tương ớt Hàn Quốc 1 muỗng canh;Đường trắng 1 muỗng canh;Trứng gà 2 quả;', 'Đầu tiên các bạn trộn bột gạo, bột nếp và muối lại với nhau trong một cái âu hoặc một cái tô sâu lòng. Sau đó tạo bột thành hình phễu ở chính giữa tô, từ từ đổ 280ml nước sôi vào, vừa đổ vừa trộn đều đến khi tạo thành bột khối bột kết dính. Cho bột ra thớt (hoặc một mặt phẳng sạch), phủ lên 1 nắm bột gạo khô để chống dính rồi các bạn tiến hành nhào bột thành một khối bột mịn dẻo và không còn bột bị đóng cục.//Đến đây, bạn cắt khối bột ra thành từng khối nhỏ hơn. Dùng tay vo bột thành những que trụ dài, sau đó dùng dao đã nhúng vào nước ấm cắt tteokbokki ra thành những que nhỏ vừa ăn (lúc này bạn muốn tteokbokki có hình thù kích cỡ thế nào thì vo như vậy nhé)//Chuẩn bị một nồi nước sôi, cho tteokbokki vào luộc đến khi tất cả chín, chuyển sang màu trong và nổi trên mặt nước thì vớt ra. Xả ngay tteokbokki vào nước lạnh hoặc ngâm vào tô nước đá để tteokbokki không bị dính vào nhau và nhanh nguội hơn.//Cho vào nồi cá cơm khô, rong biển khô, gừng xắt sợi, tỏi đập dập, hành tây cắt nhỏ và 600ml nước nóng, đun sôi ở lửa vừa. Khi nước sôi, các bạn hớt bọt rồi hạ lửa nhỏ, đun liu riu khoảng 20 phút đến khi thấy nước dùng chuyển sang màu xanh, nếm vào nghe dậy mùi rong biển và cá cơm khô thì tắt bếp. Lọc qua rây lấy 300ml nước dùng.//Cho vào chảo 300ml nước dùng vừa lọc cùng với tương ớt Gochujang, nước tương, đường khuấy đều rồi đun sôi.//Khi nước sốt sôi các bạn cho tteokbokki vào nấu thêm khoảng 5 - 7 phút cho tteokbokki chín hẳn, sau đó thêm đậu hũ, trứng gà và hành bô-roa tùy thích.//Bánh gạo thành phẩm có vị chua cay mặn ngọt của nước sốt, có tteokbokki dai dai mềm mềm, tô điểm thêm các loại topping ăn kèm cực hấp dẫn. Còn chờ gì nữa mà chưa bày ra tô và thưởng thức nào! Chúc bạn thành công với công thức nấu bánh gạo này nhé!', 0, 100, 'loaict_anvat', '2019-04-05 12:37:08', '2019-04-05 12:36:45'),
(4, 'admin', 'Chè hạt kê', 'chehatke.jpg', '35m', 2, '10m', 'Trung bình', 'Hạt kê 100 gr;Đậu xanh không vỏ 100 gr;Đường trắng 50 gr;Muối 1 muỗng cà phê', 'Đãi đậu xanh không vỏ qua nhiều lần với nước cho sạch, ngâm đậu xanh vào tô nước có pha 1 muỗng cà phê muối khoảng 1 giờ. Sau đó, cho đậu xanh không vỏ vào nồi, hấp chín rồi nghiền nhuyễn. Đậu xanh nhuyễn thì chè hạt kê sẽ ngon hơn nè.//Đãi hạt kê qua nhiều lần với nước cho sạch, ngâm trong nước khoảng 1 giờ như hình bên. Đây là bí quyết chế biến hạt kê để có chè hạt kê ngon xuất sắc.//Cho hạt kê vào nồi cùng 3 chén nước, nấu sôi đến khi hạt kê nở, khuấy liên tục. Cho tiếp đậu xanh không vỏ vào cùng, thêm 50gr đường trắng, khuấy đều là hoàn thành chè hạt kê.//Cách nấu chè hạt kê cũng thật đơn giản đúng không nào, đây chính là món ngon dễ làm mà mình cực yêu thích. Nấu xong, bạn múc chè hạt kê ra chén, có thể ăn kèm chúng với bánh đa nướng sẽ rất ngon đấy. Hạt kê có tác dụng tăng cường trí nhớ, làm chậm quá trình lão hóa, hỗ trợ giảm cân, giải nhiệt cơ thể. Tại sao lại không thử làm món chè hạt kê này thường xuyên bạn nhỉ?//', 1, 200, 'loaict_anvat', '2019-04-05 12:37:08', '2019-04-05 12:36:45'),
(5, 'admin', 'Bánh bí đỏ', 'banhbido.jpg', '1h15m', 5, '20m', 'Trung bình', 'Bí đỏ 150 gr;Trứng gà 1 quả;Bơ lạt 45 gr;Chiết xuất vani 1/2 muỗng cà phê;Sữa tươi không đường 120 ml;Đường trắng 60 gr;Muối 3 gr;Men nở 6 gr;Bột mì 350 gr', '300gr bí đó gọt vỏ, rửa sạch rồi cắt miếng nhỏ. Cho bí vào nồi có lót giấy bạc và hấp bí trong nồi đến khi bí chín mềm. Sau đó cho bí vào máy xay xay nhuyễn để hỗn hợp được mịn mượt. Cho vào tô 150gr bí đã nghiền cùng 1 quả trứng gà, 45gr bơ lạt đã đun chảy, 1/2 muỗng cà phê vanila, 120ml sữa tươi không đường. Sau đó trộn đều để hỗn hợp được hòa quyện với nhau.//Tiếp tục cho vào tô 60gr đường, 3 gr muối và trộn đều để đường và muối tan. Sau đó cho 6gr men nở vào tô và khuấy đều hỗn hợp.//Rây 350gr bột mì đa dụng vào tô rồi trộn đều bằng phới đến khi hòa quyện và bột tạo thành khối//Rắc một ít bột khô lên thớt rồi chuyển sang nhồi bột bằng tay. Nhồi bột trong khoảng 15-20 phút đến khi tạo thành khối dẻo, mịn, đàn hồi tốt. Kỹ thuật nhồi bột cơ bản là kéo dãn bột rồi gấp lại, đập bột nhiều lần cho bột được dẻo dai. Sau đó dùng một ít dầu ăn quét lên thành tô dùng để ủ bột. Cho khối bột vào tô, lật bột cho dầu ăn bao quanh bột thành một lớp mỏng (giúp bột không bị khô trong khi ủ). Ủ bột ở nhiệt độ phòng tới khi bột nở gấp đôi. Thời gian ủ khoảng 45 phút tuỳ nhiệt độ ủ, bột sẽ nở nhanh hơn ở nơi nóng ẩm.//Sau khi ủ, lấy bột ra khỏi âu, nhồi lại 2 – 3 phút cho bột mịn. Dùng cân chia bột thành các phần bằng nhau, mỗi phần khoảng 40 – 45 gram. Vê các phần bột thành các viên tròn rồi dùng một sợi chỉ dài, buộc quanh bột để chia thành 8 múi như quả bí. Chuẩn bị khay nướng có lót giấy nến. Đặt bánh bí lên trên và ủ thêm 45 phút cho bột nở gấp đôi.//Dùng cọ nhẹ nhàng quét một lớp mỏng lòng đỏ trứng gà lên bánh. Việc quét trứng sẽ giúp mặt bánh bóng và nâu vàng đẹp.Sau khi quét trứng xong, nhúng que nhọn hay vật tương tự vào dầu ăn rồi cắm vào giữa bánh, tạo một lỗ trống để đặt cuống bánh. Nướng bánh ở 170 độ C trong 20-25 phút đến khi bánh vàng nâu bóng. Dùng kéo cắt dây buộc. Khi bánh còn nóng thì quét kem tươi hoặc bơ chảy lên mặt bánh (quét ít một để kem hay bơ từ từ ngấm). Kem tươi hoặc bơ giúp bánh bóng và thơm hơn. Nếu dùng dây buộc bí thì để bánh nguội rồi cắt dây. Dùng nho khô cắm vào bí để làm cuống.//Bánh khi nướng xong phết một ít bơ để bánh được mềm và thơm. Nên dùng bánh trong ngày, nếu không dùng hết có thể cho vào túi ni lông đậy kín và dùng trong 2 ngày. Bánh có vị thơm của bơ sữa và vị ngọt thanh tự nhiên của bí đỏ cực kỳ hấp dẫn, đảm bảo các bé yêu nhà bạn sẽ thích mê cho xem!', 0, 150, 'loaict_halloween', '2019-04-05 12:37:08', '2019-04-05 12:36:45'),
(6, 'admin', 'Bánh quy con nhện cho Halloween', 'banhquy.jpg', '55m', 4, '20m', 'trung bình', 'Bột mì 75 gr;Bơ đậu phộng 40 gr;Bơ 40 gr;Đường bột 40 gr; Trứng gà 1/2 quả;Chocolate trắng 200 gr;Chocolate đen 200 gr', 'Bơ đậu phộng và bơ mềm cho vào thố sâu lòng, đánh tan và quyện đều. Tiếp đến thêm 25g lòng trứng (trứng đánh), 40g đường vào đánh cho hơi nhạt.//Sau đó cho bột mì vào, dùng tay nhồi thành khối đồng nhất. Chia khối bột thành những viên nhỏ như trái nhãn, ấn dẹp tròn và ấn sâu tạo 1 miệng hố ở giữ. Xếp bánh ra khay nướng có lót sẵn giấy nến. Cho bánh vào lò nướng ở 180 độ C trong khoảng 15 phút.//Đun chảy riêng biệt chocolate trắng và đen rồi cho riêng vào 2 túi bóp kem. Tranh thủ lúc chocolate còn lỏng tiến hành trang trí những chiếc bánh quy thành hình những con nhện dễ thương nhé!//Thay vì phải làm những chiếc bánh ngón tay trông kinh dị và không dám ăn. Thì bạn có thể triển thử những chiếc Bánh quy con nhện siêu dễ thương trên đây. Vừa ngon lại vừa mang không khí Halloween một cách nhẹ nhàng.//', 1, 200, 'loaict_halloween', '2019-04-05 12:37:08', '2019-04-05 12:36:45'),
(7, 'admin', 'Bánh pizza đen Halloween', 'banhpizza.jpg', '1h10m', 4, '20m', 'Khó', 'Bột mì 150 gr;Nước 90 ml;Men nở 2 gr;Muối 2 gr;Đường trắng 5 gr;Bột tinh than tre 3 gr;Bơ 15 gr;Thịt xông khói 2/3 lát;Tương cà 3 muỗng canh;Nấm mỡ 3 cái;Lá oregano xay 1 muỗng cà phê;Tiêu 1/4 muỗng cà phê;Ô liu 5 trái', 'Cho vào thố lớn sâu lòng gồm: 150g bột mì, 3g bột than tre, 2g men nở, 2g muối, 5g đường và 90ml nước ấm, trộn đều thành hỗn hợp đồn nhất. Sau đó cho vào 15g bơ mềm, nhồi cho quyện đều. Sau đó bọc màng thực phẩm ủ bột cho nở gấp đôi.//Nấm mỡ thái lát mỏng. Hành tây thái miếng nhỏ. Thịt xông khói thái nhỏ. Phô mai lá cuộn tròn lại chư chả giò.//Bột sau khi ủ, đem cán mỏng dẹp rồi cho vào khuôn pizza. Xếp các cuộn phô mai theo đường viền bánh. Ngay mỗi mối nối phô mai, gắp đường viền của miếng bột phủ xuống.//Đổ tương cà vào. Rắc thêm phô mai bào sợi. Thêm vào hành tây, trái ô liu thái nhỏ và nấm mỡ. Xếp kín 1 lớp thịt xông khói lên trên cùng, rắc thêm ít phô mai bào. Đem nướng 190 độ C trong khoảng 20 phút.//Bánh sau khi nướng chín, dùng sốt mayonnaise trang trí hình mạng nhện, Trái ô liu trang trí hình con nhện nữa là hoàn tất.//Bánh pizza đen Halloween được tạo hình như một động nhện. Đây là món ăn mặn trông không kinh dị lắm nhưng cũng phủ hợp với không khí của ngày lễ hoa trang Halloween rồi nhé!', 1, 200, 'loaict_halloween', '2019-04-05 12:37:08', '2019-04-05 12:36:45'),
(8, 'admin', 'Thạch nhãn cầu việt quất', 'thachnhancau.jpg', '45m', 4, '20m', 'Dễ', 'Việt quất 4 trái;Bột rau câu 5 gr;Nước 10 ml;Sữa tươi 300 ml;Lá Gelatine 1 lá', 'Việt quất rửa sạch, để ráo. Xếp việt quất vào khuôn rau câu hình tròn. Cho 5g bột rau câu vào chén với 10ml nước nóng, khuấy tan, pha thêm chút màu thực phẩm để tạo phần đẹp và rùng rợn hơn nhé.//Sau đó chia đều bột rau câu vào khuôn và cho vào tủ lạnh 10 phút. Lá gelatin ngâm nước cho mềm rồi cho vào lò vi sóng quay tan chảy. Trộn sữa tươi với gelatin rồi chế vào khuôn ban đầu và cho lại vào tủ lạnh đến khi thạch đông lại là xong. Lấy thạch ra là bạn đã có ngay những chiếc nhãn cầu xinh xắn, đáng yêu cho ngày Halloween rồi đó.//Thạch nhãn cầu việt quất với hương vị giòn sựt, vừa ngọt vừa chua lại có hình dạng rùng rợn cực hợp cho ngày lễ Halloween đấy. Bạn còn chờ gì mà không nhanh chóng thử làm ngay nào.//', 1, 200, 'loaict_halloween', '2019-04-05 12:37:08', '2019-04-05 12:36:45'),
(9, 'admin', 'Sữa đậu đỏ hạt sen', 'suadaudo.jpg', '35m', 2, '10m', 'Trung bình', ' Đậu đỏ 200 gr;Nước 2 lít; Lá dứa 7 lá;Hạt sen tươi 50 gr;Đường trắng 2 muỗng canh;Sữa đặc 1 muỗng canh', 'Đậu đỏ rửa thật sạch, nhạt các hạt lép, hạt hỏng và ngâm từ 12 - 14 tiếng. Sau đó rửa lại với nước sạch và vớt ra rổ để ráo. Hạt sen tươi và lá dứa rửa sạch, lá dứa gập đôi và bó lại.//Xay đậu đỏ thật nhuyễn rồi cho vào ray, lọc lấy nước cốt. Nước cốt sau khi thu được cho vào nồi (rót qua ray 1 lần nữa). Sau đó cho hạt sen và lá dứa vào cùng. Nấu với lửa nhỏ//Cứ 4 - 5 phút thì khuấy nồi 1 lần, tránh đậu khét. Sau khi nấu 30 phút thì cho vào 2 muỗng canh đường, 1 muỗng canh sữa đặc. Nấu đến khi hạt sen nhừ thì tắt lửa. Để nguội và cho vào tủ lạnh. Uống sữa đậu đỏ hạt sen lạnh sẽ ngon hơn.//', 0, 200, 'loaict_giamcan', '2019-04-05 12:37:08', '2019-04-05 12:36:45'),
(10, 'admin', 'Salad bơ giảm cân', 'saladbo.jpg', '15m', 2, '5m', 'Dễ', 'Trái bơ 2 trái;Cà chua 500 gr;Hành tây 1/2 củ;Dưa leo 1 trái;Dầu olive 2 muỗng canh;Nước cốt chanh 2 muỗng canh;Ngò rí 50 gr;Muối 1/2 muỗng cà phê;Tiêu 1/2 muỗng cà phê', 'Dưa leo, cà chua cắt hạt lựu nhỏ. Hành tây cắt mỏng. Trái bơ bóc vỏ, bỏ hạt, cắt miếng hình vuông nhỏ vừa ăn.//Cho dưa leo, trái bơ, cà chua, hành tây, ngò rí cắt nhỏ vào tô.//Pha nước trộn: Hòa tan 2 muỗng canh dầu ôliu, 2 muỗng canh nước cốt chanh, 1/2 muỗng cà phê muối, 1/2 muỗng cà phê tiêu, khuấy đều.//Chan đều nước trộn vào tô salad, dùng đũa trộn đều là xong. Mời cả nhà thưởng thức nhé!', 0, 100, 'loaict_giamcan', '2019-04-05 12:37:08', '2019-04-05 12:36:45'),
(11, 'admin', 'Gỏi khổ qua chà bông', 'goikhoqua.jpg', '20m', 2, '5m', 'Dễ', 'Khổ qua 2 trái;Cà rốt 1 củ;Củ cải trắng 1 củ;Ớt 2 trái;Chà bông 100 gr', 'Rau răm rửa sạch, nhặt lá và ngâm trong nước muối loãng. Chuẩn bị sẵn thau nước đá. Khổ qua bổ đôi, cắt lát mỏng và ngâm trong thau nước đá lạnh.//Vớt khổ đã ngâm và rau răm ra dĩa. Cà rốt và củ cải trắng cắt sợi nhỏ vừa ăn', 0, 200, 'loaict_giamcan', '2019-04-05 12:37:08', '2019-04-05 12:36:45'),
(12, 'admin', 'Salad dưa hấu rau quả', 'saladduahau.jpg', '20m', 4, '5m', 'Dễ', 'Dưa hấu 1/2 trái;Hành tây 1/2 củ;Ớt chuông 3 trái;Ớt 2 trái;Ngò rí 20 gr;Chanh 2 trái;Muối 1/2 muỗng cà phê', 'Dưa hấu gọt vỏ, chẻ đôi ra, chúng ta sẽ làm 1/2 trái dưa hấu thôi nhé, phần còn lại bạn có thể để dành ăn không. Cắt dưa hấu thành từng miếng dày cỡ 2cm rồi xắt hạt lựu. Ớt chuông đỏ, vàng, xanh và ớt Jalapeno rửa sạch, bỏ hạt và xắt hạt lựu. Hành tây lột vỏ, xắt hạt lựu. Ngò cắt gốc, rửa với nước rồi xắt nhuyễn. Cho dưa hấu vào tô cùng ớt, hành tây và ngò.//Sau đó rắc 1/2 muỗng muối, vắt nước cốt chanh vào tô salad và trộn đều lên cho tất cả thấm đều gia vị là xong nha. Bạn có thể thưởng thức không hoặc làm món ăn kèm cũng được nữa đó.//Chỉ với một công thức salad dưa hấu rau quả ở trên là chúng ta đã có ngay món ăn vừa có tác dụng giải ngán, giải nhiệt vừa tốt cho sức khỏe nữa đó. Còn chờ gì mà chúng ta không nhanh tay lưu ngay cách làm nào.', 0, 200, 'loaict_giamcan', '2019-04-05 12:37:08', '2019-04-05 12:36:45'),
(13, 'admin', 'Bánh cam', 'banhcam.png', '1h40m', 2, '20m', 'Dễ', 'Bột nếp 250 gr;Bột gạo 40 gr;Khoai tây 50 gr;Đường trắng 200 gr;Bột nở (baking powder) 1 muỗng cà phê;Muối 1/2 muỗng cà phê;Đậu xanh không vỏ 160 gr;Dầu ăn 1 muỗng canh', 'Trước tiên chúng ta làm nhân bánh trước, cần phải vo sạch đậu xanh rồi cho vào nồi rôi cho nước vào ngập đậu hơn khoảng 2 lóng tay. Đun với lửa nhỏ cho đậu chín mềm, cá bạn nhớ dùng đũa đảo đều đậu. Trong quá trình nấu, nếu thấy nước cạn thì có thể châm thêm nước sôi. Cho đậu xanh vào máy xay, xay nhuyễn. Cho đậu đã xay, đường và dầu ăn vào chảo chống dính. Mở lửa trung bình và dùng muỗng gỗ hoặc spatula đảo đều, sên cho đến khi đậu xanh quyện thành một khối mềm dẻo. Lưu ý rằng: Nếu sau khi nấu, còn ít nước trong nồi, bạn cứ cho cả phần đậu và phần nước vào máy cho dễ xay. Nếu nước đã cạn hết thì bạn có thể cho một ít nước sôi vào xay cùng đậu cho dễ. Ban đầu hỗn hợp đậu xanh còn nhão nhưng sau khi sên đậu sẽ đặc lại dần. Thời gian mình sên thường tốn khoảng 20-25 phút.//Đợi đến khi đậu xanh nguội bớt đi thì chia đậu làm 12 phần và vo thành những viên tròn. Xếp các viên nhân vào hộp rồi đậy kín và cho vào tủ lạnh ít nhất 2 tiếng đồng hồ hoặc nếu có thời gian thì nên để qua đêm.//Tiếp theo đến phần vỏ bánh: Cho bột nếp, bột gạo, muối, đường và bột nở vào một chiếc bát lớn rồi trộn đều. Tiếp đến ta cho khoai tây đã nghiền vào bát bột, trộn sơ cho khoai hoà quyện với bột. Đổ nước ấm vào bát bột. Các bạn nên đổ từ từ khoảng 200 ml nước và nhồi bột dần dần cho đến khi khối bột dẻo mịn. Lưu ý rằng: tuỳ theo độ hút ẩm của các loại bột khác nhau mà lượng nước có thể dao động từ 200-240 ml. Các bạn cứ nhồi bột dần dần, nếu thấy khối bột còn khô thì cứ cho thêm dần lượng nước cho đến khi khối bột dẻo mịn. Mình thường dùng tầm 225 ml là thấy khối bột đã đủ độ dẻo. Lưu ý đừng để bột khô quá nhé, nếu bột quá khô thì sẽ dễ bị nứt khi tạo hình bánh. Dùng màng bọc thực phẩm bọc khối bột lại. Để bột nghỉ khoảng 30 phút.//Chia bột thành 12 phần bằng nhau, mỗi phần khoảng 52g. Vo tròn viên bột, dùng hai ngón tay cái dàn đều viên bột cho mỏng, cho viên nhân vào giữa và dùng tay miết đều sao cho viên bánh tròn đều, khép kín. Lăn các viên bánh qua mè. Để các viên bánh nghỉ 30 phút. Lưu ý: các bạn nhớ bọc phần bột sát phần nhân, đừng để tạo khoảng hở giữa nhân và bột.//Bước tiếp theo, các bạn cho dầu ăn vào nồi/chảo, canh sao cho lượng dầu ngập ít nhất 2/3 bánh. Đun dầu với lửa vừa cho dầu vừa nóng tới. Dầu nóng vừa ở khoảng nhiệt độ 160 độ C là được hoặc có thể thử bằng cách cho đũa gỗ vào dầu, nếu bột sủi li ti quanh chiếc đũa là ổn. Nếu dầu quá nóng thì bánh sẽ vàng nhanh, dễ nứt trong khi bên trong chưa kịp chín tới. Nếu dầu quá nguội thì thời gian chiên sẽ lâu và bánh thường bị chai/cứng. Cho bánh vào chiên, đảo đều trong lúc chiên cho bánh vàng đều. Lưu ý rằng: không để một phần bánh nổi trên mặt dầu quá lâu sẽ làm bánh bị chai. Kiên nhẫn dùng đủa đảo bánh liên tục cho đến khi bánh vàng đều.//Sau khi bánh đã chín tới thì gắp bánh ra giấy cho thấm bớt dầu. Do bánh vừa chiên xong thì lớp vỏ khá cứng. Các bạn kiên nhẫn đợi bánh nguội bớt khoảng 15 phút sau khi chiên thì lớp vỏ sẽ giòn rụm trong khi lớp bên trong dẻo dẻo rất ngon.', 0, 150, 'loaict_anvat', '2019-04-06 13:15:40', '2019-04-06 13:15:40'),
(14, 'admin', 'Bánh sữa chiên pate và cá ngừ mayo', 'bánhsuachien.jpg', '30m', 6, '10m', 'Dễ', 'Bánh sữa 20 cái;Pa tê 50 gr;Trứng gà 4 quả;Cá ngừ 50 gr;ốt Mayonnaise 30 gr', 'Vắt khô nước cá ngừ đóng hộp, sau đó mang bao tay bóp cho cá ngừ tơi ra. Dùng muỗng trộn đều 50gr cá ngừ với 30gr sốt mayonnaise.//Dùng dao xẻ đôi 1 đường ở giữa cái bánh sữa, chừa lại 1/4 bánh. Phết nhân vào giữa bánh gồm pate gan heo hoặc cá ngừ mayo. Gập bánh lại.//Đánh tan 4 quả trứng gà. Cho lần lượt từng cái bánh sữa chiên nhúng phủ đều trứng gà. Cho bánh vào chảo dầu nóng, chiên vàng đều 2 mặt. Vớt ra để ráo dầu//Làm nước chấm bánh sữa chiên: ngâm 50gr me vào 100ml nước ấm trong 10 phút. Lọc bỏ xác me, giữ lại nước cốt cho vào nồi nhỏ. Đổ thêm 50ml nước, 100gr đường và 30ml nước mắm. Nấu sôi 10 phút và tắt bếp để nguội, thêm ớt băm nhỏ vào chén nước chấm me và khuấy đều.//Cắt nhỏ bánh sữa chiên pate và cá ngừ mayo rồi chấm vào nước mắm me là thưởng thức ngay được rồi. Bánh sữa chiên mềm xốp, hòa quyện nhân patê gan thơm ngon, cá ngừ mayo béo ngậy và vị mặn ngọt chua cay từ nước mắm me sẽ khiến bạn ăn hoài ăn mãi thôi. Cùng tụ tập bạn bè và thử ngay cách làm bánh sữa chiên thôi nào.//', 0, 200, 'loaict_anvat', '2019-04-06 13:20:54', '2019-04-06 14:11:28'),
(15, 'admin', 'Nước ép cà chua', 'nuocepcachua.jpg', '10m', 2, '5m', 'Dễ', 'Cà chua 4 trái;Mật ong 10 ml', 'Rửa sạch cà chua, bỏ núm và để ráo nước. Dùng dao khía 2 đường chéo nhau ở phía dưới quả cà.//Đun 1 nồi nước sôi, cho cà chua vào chần khoảng 2 phút đến khi lớp vỏ cà chua bong ra. Trong thời gian chờ bạn có thể sên nước đường để pha vào nước ép cà chua.//Lột hết vỏ cà chua rồi cho vào máy sinh tố, xay nhuyễn. Dùng ray lọc nước ép cà chua đã xay để loại bỏ phần cặn thừa. Cho nước đường sên/ mật ong vào nước ép cà chua và khuấy đều. Đổ nước ép vào bình, chai, đóng kín nắp và cho vào ngăn mát khoảng 15 - 30 phút. Dùng mát hoặc uống cùng đá viên. Vậy, với cách làm nước ép cà chua đơn giản này bạn đã có thể tự tay làm nên những ly cà chua ép thơm ngon, bổ dưỡng rồi đấy!//', 0, 200, 'loaict_giamcan', '2019-04-06 13:20:54', '2019-04-06 13:20:54'),
(16, 'admin', 'Sữa đậu nành lá dứa', 'suadaunanh.jpg', '1h', 4, '20m', 'Trung bình', 'Đậu nành 200 gr;Lá dứa 7 cọng;Sữa đặc 1 muỗng canh;Đường trắng 1 muỗng canh', 'Đem đậu nành rửa sạch qua 2 - 3 lần nước, sau đó ngâm trong nước từ 12 - 14 tiếng. Đậu sau khi ngâm rửa sạch lại và vớt ra rổ để ráo nước.//Xay đậu bằng máy xay sinh tố cho nhuyễn nhừ, cho ra rây để lọc bã đậu. Phần nước đậu đã lọc được cần phải cho vào ray lọc thêm 1 lần nữa trước kho cho vào nồi nấu.//Lá dứa rửa sạch, bẻ đôi và cột lại thành 1 bó cho vào nồi sữa đậu nành.//Sau khi nấu sữa đậu được 30 phút với lửa nhỏ thì cho thêm 1 muỗng canh sữa đặc, 1 - 2 muỗng canh đường trắng (tùy khẩu vị và sở thích uống với nước đá). Tiếp tục nấu trong 30 phút nữa rồi tắt bếp.', 0, 100, 'loaict_giamcan', '2019-04-06 13:23:25', '2019-04-06 13:23:25'),
(17, 'admin', 'Dưa cải muối chua', 'duacaimuoichua', '30m', 2, '10m', 'Trung bình', 'Cải bẹ 350 gr;Muối 3 muỗng cà phê;Hạt tiêu 5 gr', 'Rửa sạch cải bẹ, để ráo nước. Phơi cải bẹ dưới nắng nhẹ đến khi rau hơi héo lại là được. Sau đó, cho cải bẹ vào tô, cho 3 muỗng cà phê muối lên cải bẹ để muối dưa cải. Trộn thật đều tay để dưa cải muối chua mặn đều.//Cách muối dưa cải: Xếp cải bẹ vào hũ thủy tinh hoặc hộp nhựa, thêm hạt tiêu, 100ml nước lọc vào. Dùng miếng sứ hoặc đĩa đặt vào để cải bẹ ngập mặt nước, đậy kín nắp.//Để dưa cải muối chua ngoài nhiệt độ phòng khoảng 4-5 ngày là có thể dùng được rồi. Dưa cải muối chua có thể dùng nấu canh, kho thịt, cá hay dùng ăn kèm với các món khác đều được nhé. Với cách muối dưa cải thật đơn giản và nhanh chóng này, từ nay không cần đến chợ hay siêu thị mua bạn vẫn có thể làm 1 hũ dưa cải muối chua thật ngon tại nhà rồi nhé!//', 0, 100, 'loaict_monchay', '2019-04-06 13:27:57', '2019-04-06 13:27:57'),
(18, 'admin', 'Su su xào tỏi', 'susuxaotoi.jpg', '20m', 1, '5m', 'Dễ', 'Su su 3 quả;Dầu olive 1 muỗng canh;Tỏi 2 tép;Muối 1 muỗng cà phê;Tiêu 1/2 muỗng cà phê', 'Trước tiên bạn rửa sạch su su rồi gọt sạch vỏ và khoét bỏ hết phần vỏ trên các khe dọc quả su su, bổ đôi rồi moi bỏ hết ruột sau đó rửa lại cho sạch. Cắt thành những khối vuông cỡ 1 ngón tay. Tỏi bóc vỏ băm nhỏ.//Đun nóng chút dầu ăn trong chảo, cho tỏi băm vào phi thơm. Trút su su vào chảo xào khoảng 10 phút. Bạn có thể cho thêm chút nước nếu cần, cuối cùng khi nước đã rút bớt, cho muối và tiêu vào đảo đều rồi tắt bếp.//Múc su su xào ra đĩa là món ăn đã sẵn sàng. bạn có thể rắc hành lá băm hoặc rau mùi để tăng thêm hương vị cho món ăn, dùng nóng với cơm rất ngon nhé.//', 0, 150, 'loaict_monchay', '2019-04-06 13:27:57', '2019-04-06 13:27:57'),
(19, 'admin', 'Thịt gà sốt chua ngọt', 'thitgachuangot.jpg', '35m', 2, '10m', 'Trung bình', 'Lườn gà 300 gr;Dầu ăn 2 muỗng canh;Mè trắng 2 muỗng canh;Trứng gà 1 quả;Rượu trắng 15 ml;Sốt cà chua 2 muỗng canh;Đường trắng 1 muỗng canh;Nước mắm 1 muỗng canh;Me gr;Hạt nêm 1 muỗng cà phê', 'Rửa sạch lườn gà, cắt thành miếng nhỏ vừa ăn. Ngâm me trong nước ấm, dầm nhuyễn rồi lọc me qua rây lấy nước cốt me.//Tiếp theo, cho lườn gà, trứng, rượu trắng vào tô, ướp khoảng 10 phút. Rang mè trắng trên lửa nhỏ, thấy lên mùi thơm thì tắt bếp, cho ra chén riêng.//Làm nóng dầu ăn trong chảo, cho lườn gà vào, chiên vàng giòn. Sau đó, cho nước cốt me, sốt cà chua, đường trắng, nước mắm, hạt nêm vào, đảo đều.//Khi thấy sốt sánh lại, gà sốt chua ngọt đều màu rồi thì tắt bếp. Cho gà sốt chua ngọt ra đĩa, rắc ít mè trắng lên để món ăn bùi thơm, thêm ngon. Làm xong dùng gà sốt chua ngọt ngay với cơm nóng là ngon nhất.//', 0, 200, 'loaict_ga', '2019-04-06 13:31:13', '2019-04-06 13:31:13'),
(20, 'admin', 'Gà nướng xá xíu', 'ganuong.jpg', '55m', 6, '10m', 'Dễ', 'Thịt gà 1 3/4 kg;Sốt Mayonnaise 50 gr;Dầu hào 4 muỗng canh;Mật ong 4 muỗng canh;Bột tỏi 2 muỗng cà phê;Tiêu 1/2 muỗng cà phê;Bột ngũ vị hương 1 muỗng cà phê;Sốt tương đen 4 muỗng canh', 'Thịt gà rửa sạch, để ráo nước, cắt thành miếng dài theo sớ thịt, bảng to khoảng 5 cm. Trong một thố lớn, trộn 50g gia vị xá xíu với 4 muỗng canh dầu hào, 4 muỗng canh mật ong, 4 muỗng canh sốt tương đen, 2 muỗng cà phê bột tỏi, 1 muỗng cà phê ngũ vị hương, 4 muỗng cà phê bột súp gà trộn đều và 1/2 muỗng cà phê tiêu.//Cho thịt gà vào thố gia vị, trộn đều, đậy kín thố, để trong tủ lạnh it nhất 24 giờ đồng hồ trong ngăn mát tủ lạnh cho thịt thấm gia vị.//Nướng trên lò barbeque, lò gas hoặc lò than. Để lò nóng ở nhiệt độ 350 độ F (khoảng 180 độ C), sắp thịt lên vĩ nướng, nướng khoảng 10 phút cho thịt vàng một mặt.//Trước khi trở qua mặt bên kia, dùng cọ thoa nước ướp thịt lên từng miếng thịt để khi nướng thịt không bị khô. Nướng thêm khoảng 10 phút nữa thì thịt chín.//Thịt gà nướng xá xíu dung chung với cơm hoặc bánh mì đều ngon.', 0, 100, 'loaict_ga', '2019-04-06 13:35:23', '2019-04-06 13:35:23'),
(21, 'admin', 'Cháo cá cho bé', 'chaoca.jpg', '15m', 1, '5m', 'Dễ', ' Bột gạo 10 gr;Cá 10 gr; Rau 10 gr;Dầu ăn 2 muỗng cà phê;Nước 200 ml', 'Hòa bột gạo với nước và cá nghiền nhỏ vào nồi, vừa đun vừa quấy đều, nhanh tay để sôi trong 5 phút.//Cho rau đã nghiền nhỏ, 1 muỗng cà phê dầu ăn, nửa muỗng cà phê nước mắm, 1 ít hạt nêm, quấy đều cho bột sôi thêm 2- 3 phút nữa. Nêm thấy vừa miệng hoặc hơi nhạt là được.', 0, 150, 'loaict_ca', '2019-04-06 13:35:23', '2019-04-06 13:35:23'),
(22, 'admin', 'Cá kho tương hột', 'cakho.jpg', '35m', 4, '10m', 'Dễ', 'Cá 1 con;Ớt sừng 2 trái;Tỏi 3 tép;Gừng 20 gr;Hành lá 2 nhánh;Hoa hồi 2 cái;Tương Hột 15 gr;Nước tương 15 ml;Giấm 5 ml;Rượu trắng 10 ml;Muối 1/2 muỗng cà phê;Đường trắng 2 muỗng cà phê;Dầu ăn 100 ml', 'Làm sạch cá, cắt khúc rồi thêm rượu và muối vào để ướp trong 20 phút.//Trong lúc ướp cá, bạn chuyển sang công đoạn pha gia vị kho cá: cho tương, giấm và một chút xíu nước vào trong một bát nhỏ. Kế đến, cho tương hột và đường vào rồi khuấy đều cho tất cả tan hết.//Chuẩn bị một chảo dầu nóng, sau đó cho cá vào chiên tới khi cá vàng đều cả 2 mặt thì bạn lấy ra//Phi thơm gừng, tỏi cắt lát và hoa hồi trong chảo khác với 20ml dầu ăn, sau đó đổ phần gia vị đã pha vào. Sau đó, bạn cho cá đã được chiên vào và đun ở lửa nhỏ trong khoảng 10 phút. Cuối cùng, bạn cho hành lá và ớt cắt lát vào đun thêm 5 phút nữa thì tắt bếp.//Để món ăn thêm phần hấp dẫn, bạn nên cho thêm ít ớt và hành lên trên nữa nhé! Cá mềm ngon với độ sánh nhẹ của nước kho, vị đậm đà và mùi thơm đặc trưng của tương hấp dẫn vô cùng luôn! Cá hố kho đậm đà này hẳn sẽ đưa cơm lắm đây!', 0, 200, 'loaict_ca', '2019-04-06 13:41:06', '2019-04-06 13:41:06'),
(23, 'admin', 'Chả lụa - giò lụa\r\n', 'chalua.jpg', '1h30m', 4, '10m', 'Trung bình', 'Thịt nạc vai 600 kg; Mỡ heo 100 gr;Bột năng 2 muỗng cà phê;Muối nở (Baking soda) 1/2 muỗng cà phê;Nước mắm 2 muỗng canh;Muối 1 muỗng cà phê;Tiêu 1 muỗng cà phê;Đường trắng 2 muỗng cà phê;Hành tím băm 1 muỗng cà phê;Thịt gà 400 gr\r\n', 'Khi lựa thịt cần chú ý lựa thịt thăn hay nạc mông. Khi ấn ngón tay vào thịt tháy dính là thịt vừa mới làm xong, nếu thấy bị rịn nước thì khi xay hay giã bị rời rạc, luộc chín chả bị bở//Lạng màng mỡ bao quanh thịt và bỏ gân lấy chỗ nạc, thái ngang thớ thịt rồi cho vào máy xay hoặc cho vào chày giã liên tục. Nêm vào ít muối, đường, bột ngọt, mắm và tiêu cho vào sau cùng//Dùng giấy aluminium gói giò thật chặt, bó kín 2 đầu, sau đó đem luộc sao cho nước không thấm vào giò//nếu dùng lá chuối thì xếp miếng lá chuối vuông lớn, phía mặt xanh xuống dưới, lót xéo mấy miếng lá độn rồi tới lá trong, dưới mấy lớp lá có sẳn sợi dây lạt.//Cân giò sống vào miếng lá riêng, xong đặt chính giữa lớp lá chuối nói trên, bắt đầu cuốn tròn đòn giò, cột sợi giây lạt ngay chính giữa cho khỏi bung lá, để đứng đòn giò dùng cả 2 tay: ngón cái và ngón trỏ vuốt đầu lá bẻ quặp 2 cạnh lá rồi gấp vuông vắn cho đẹp, úp đầu giò xuống để sẳn sợi giây lạt hay giây nylon màu, làm y như vậy phía đầu kia.//Lăn nhẹ đòn giò cho tròn trịa, cột dây ngang dọc thắt chặt, buộc thêm sợi dây nhỏ để treo khi giò chín cho mau nguội.//Nấu nước thật sôi rồi cho đòn giò vô luộc,đổ nước ngập trên mặt giò, luộc đều lửa nữa giờ vớt ra, nếu làm 1/2 kg giò; (gói lớn 1 kg luộc 1 giờ).//khi chả thật nguội, muốn giữ chả lụa thật lâu thì nên cho vô ngăn đá tủ lạnh (để dành được cả tháng).Khi ăn nên lấy ra trước nữa ngày hoặc luộc lại cho giò nóng.', 0, 100, 'loaict_heo', '2019-04-06 13:41:06', '2019-04-06 13:41:06'),
(24, 'admin', 'Thịt ba chỉ kho dừa', 'thikhodua.jpg', '20m', 2, '10m', 'Dễ', 'Thịt ba chỉ 400 gr;Cùi dừa 200 gr;Hành tím 3 củ;Tỏi 3 tép;Hạt nêm 1 muỗng cà phê;Nước mắm 1 1/2 muỗng cà phê;Bột ngọt 1 muỗng cà phê;Tiêu 1/2 muỗng cà phê;Dầu ăn 1 muỗng cà phê;Nước dừa 250 ml', 'Thịt rửa sạch, để ráo, thái miếng vừa ăn, rồi ướp thịt với ½ phần hành khô, tỏi băm nhỏ, 1 thìa hạt nêm, 1,5 thìa nước mắm, 1 thìa bột ngọt, ½ thìa tiêu bột, 1 thìa dầu ăn trong 30 phút cho thịt ba chỉ ngấm đều gia vị. Dừa thái miếng vừa ăn tương đương với miếng thịt ba chỉ. Nước dừa để riêng ra bát.//Phi thơm hành, tỏi cùng chút dầu ăn, cho phần thịt đã ướp vào xào đều. Để thịt trên bếp khoảng 5 phút. Khi thấy miếng thịt săn lại thì cho tiếp dừa đã cắt miếng vào đảo cùng. Lúc này cho phần nước hàng vào đảo đều với dừa và thịt.//iếp đó cho phần nước dừa tươi vào nồi, sao cho nước dừa xâm xấp mặt thịt. Để lửa to cho nồi sôi lên, sau đó hạ lửa nhỏ để miếng thịt được mềm. Khi nước kho thịt bao quanh miếng thịt và dừa một màu cánh gián thì nêm nếm lại gia vị cho vừa miệng.//Cho thịt kho dừa ra đĩa, ăn cùng với cơm nóng. Trong những ngày mưa hơi se lạnh, một nồi thịt kho dừa nóng hổi, thơm lừng sẽ làm cho bữa cơm gia đình bạn thêm ngon miệng.//', 0, 150, 'loaict_heo', '2019-04-06 13:45:36', '2019-04-06 13:45:36'),
(25, 'admin', 'Giò xào - giò thủ cho ngày Tết', 'gioxao.jpg', '55m', 5, '10m', 'Dễ', 'Tai heo 1 cái;Lưỡi heo 1 cái;Nấm mèo 7 cái;Nước mắm 2 muỗng canh;Tiêu 1 1/2 muỗng cà phê;Hạt nêm 2 muỗng cà phê;Hành tím 2 củ;Muối 1 muỗng cà phê;Bột canh 1/2 muỗng canh;Giấm 2 muỗng canh', 'Trước tiên bạn sơ chế tai lợn cho sạch hết lông sau đó cho tai, lưỡi lợn vào chậu cùng với 1 chút giấm, muối rồi bóp thật kỹ sau đó rửa sạch lại vài lần với nước lạnh.//Đun 1 nồi nước sôi thì cho 1/2 muỗng cà phê muối vào nồi, tiếp theo bạn cho tai, lưỡi lợn vào chần sơ qua khoảng 1 phút sau đó vớt ra cạo sạch phần màu trắng của lưỡi lợn rửa lại vài lần cCho tai, lưỡi heo vào 1 cái tô sau đó thêm 2 muỗng canh nước mắm, 1/2 muỗng canh bột canh, 1 muỗng cà phê tiêu, 1.5 muỗng cà phê hạt nêm và đảo đều, ướp 30 phút cho ngấm gia vị. Nấm mèo ngâm nước ấm cho nở mềm sau đó rửa sạch, cắt bỏ phần gốc rồi đem thái sợi to. Hành tím băm nhỏ.//Đun nóng 1 muỗng canh dầu ăn, cho hành tím băm vào phi cho thơm rồi đổ phần tai heo, lưỡi heo đã ướp gia vị vào xào. Đảo đều và xào cho nguyên liệu chín. Khi thấy thịt hơi xém cạnh và phần mỡ bắt đầu chảy ra thì cho nấm mèo vào xào thêm 2 phút nữa cho nấm chín, bạn có thể nêm nếm lại cho vừa khẩu vị là tắt bếp, rắc thêm chút tiêu cho món ăn dậy mùi thơm. Xúc nguyên liệu vừa xào vào khuôn rồi ép chặt, dùng muỗng gỗ ấn đều sau đó bạn có thể dùng dụng cụ để đè lên trên cho giò được chặt.//Giò xào (giò thủ) cho ngày Tết là món ăn truyền thống và quen thuộc trong những ngày đầu năm mới, được nhiều người ưa thích. Miếng giò xào giòn sần sật, béo thơm, cay cay vừa miệng.', 0, 100, 'loaict_vietnam', '2019-04-06 13:45:36', '2019-04-06 13:45:36'),
(26, 'admin', 'Cơm gà Nha Trang', 'comga.jpg', '40m', 2, '10m', 'Trung bình', 'Gà ta 1 con;Gạo 100 gr;Muối 3 gr;Gừng 5 gr;Hành tím 10 gr;Hành tây 30 gr;Bột nghệ 3 gr;Nước 2 lít;Hành tím băm 5 gr;Sốt dầu trứng;Trứng gà 1 quả;Dầu ăn 200 ml;Muối 3 gr;Nước mắm;Đường trắng 2 muỗng canh;Nước 2 muỗng canh;Nước mắm 1 muỗng canh;Tỏi băm 1 muỗng canh;Ớt băm 1 muỗng canh', 'Rửa sạch thịt gà ta, cho vào nồi luộc cùng 2 lít nước và 3gr muối, 30gr củ hành tây, 10gr củ hành tím và 5gr gừng để thịt gà thơm và ngọt. Thêm vào 3gr bột nghệ để thịt gà lên màu vàng đẹp. Khi thịt gà luộc chín, xé tơi thịt ra thành những miếng vừa ăn.//Vo sạch gạo, để ráo. Cho chút dầu ăn vào nồi, phi thơm hành tím băm, cho gạo vào rang đều cho dậy mùi. Sau đó mới bắt đầu nấu chín cơm bằng nước luộc gà và mỡ gà để lấy màu vàng tự nhiên nhất.//Làm sốt bơ trứng gà ăn kèm cơm gà: Bạn cho vào chén 1 lòng đỏ trứng gà, cho từ từ từng chút một 200ml dầu ăn vào và đánh đều tay theo 1 chiều, đến khi sốt sệt lại thì cho vào 3gr muối, trộn đều cho sốt được mịn mượt là đã hoàn thành.//Phần nước chấm cho cơm gà Nhà Trang: Cho vào chén 2 muỗng canh nước lọc, 2 muỗng canh đường rồi khuấy đều. Thêm vào 1 muỗng canh nước mắm, 1 muỗng canh tỏi băm, 1 muỗng canh ớt băm rồi trộn đều. Vậy là đã hoàn thành phần nước mắm ăn kèm cơm gà.//Bày trí đĩa cơm gà Nha Trang: Thịt gà xé đặt lên trên dĩa cơm vàng óng, thêm chút dưa chua bào sợi, rắc thêm hành khô tự làm, rồi chan vào 1 muỗng sốt bơ trứng gà thơm lừng bên cạnh nữa. Một đĩa cơm gà Nha Trang cứ thế mà đầy dần lên, thêm chén nước súp gà nóng hổi cùng chén nước chấm bên cạnh là có một món ăn hoàn chỉnh rồi. Với cách nấu cơm gà Nha Trang từ Cooky, bạn có thể làm được ngay tại nhà mà không khó chút nào.//', 0, 200, 'loaict_vietnam', '2019-04-06 13:48:06', '2019-04-06 13:48:06'),
(27, 'admin', 'Cách muối kim chi ngon', 'kimchi.jpg', '45m', 4, '10m', 'Dễ', 'Cải thảo 900 gr;Muối 1/4 chén;Tỏi 6 tép;Gừng 5 gr;Đường trắng 5 gr;Ớt bột 75 gr;Hành lá 4 cây', 'Chuẩn bị nguyên liệu. Tỏi và gừng bỏ vỏ, băm nhỏ. Củ cải trắng gọt vỏ và bào sợi. Hành lá rửa sạch, cắt khúc 2.5cm. Bổ cải thảo làm 4 phần theo chiều dọc. Sau đó cắt theo chiều ngang thành các đoạn có kích cỡ 5cm.//Cho cải thảo và muối vào tô, đeo gang tay, rồi xoa muối đều vào cải thảo rồi đổ nước vào cho phủ hết cải thảo, bạn có thể đặt một cái đĩa rồi dùng một chai nước đè lên đĩa để nén cải thảo. Để yên trong 1-2 giờ.//Sau đó, cho cải thảo ra, rửa sạch dưới nước lạnh 3 lần rồi để ráo từ 15-20 phút. Trong khi đó, trộn tỏi, gừng, đường trong một chén nhỏ. Sau đó thêm bột ớt Hàn Quốc vào (tùy khẩu vị mà cho ít hay nhiều).//Dùng tay nhẹ nhàng vắt bỏ nước trong cải thảo rồi cho vào chén cùng với củ cải, hành lá và hỗn hợp gia vị gừng tỏi bột ớt. Đeo găng tay và trộn đều cho đến khi gia vị bám đều cải thảo.//Sau đó chi kim chi vào những lọ thủy tinh sạch, ép xuống cho đến khi nước muối phủ lên kim chi, dùng vật nặng nhỏ để nén xuống cho kim chi không bị nổi lên. Đậy nắp lại. Để bình kim chi ở nhiệt độ phòng từ 1-5 ngày.//Kiểm tra kim chi hàng ngày và nhấn xuống khi kim chi nổi lên (nếu không có vật nén). Khi kim chi đã đạt vị ngon thì cho vào tủ lạnh bảo quản nhé! Thời gian bảo quản là 1-2 tuần.', 0, 100, 'loaict_hanquoc', '2019-04-06 13:51:58', '2019-04-06 13:51:58'),
(28, 'admin', 'Cá kho kiểu Hàn Quốc', 'cakhohanquoc.jpg', '30m', 2, '10m', 'Trung bình', 'Cá thu 400 gr;Củ cải trắng 150 gr; Hành lá 100 gr;Hành tây 1/4 củ;Tỏi băm 1 muỗng cà phê;Dầu mè 10 ml;Nước tương 30 ml;Ớt bột 5 gr', 'Trộn đều nước tương, ớt bột, dầu mè, hành lá, hành tây, tỏi băm trong 1 cái tô nhôm.//Tiếp theo, xếp củ cải trắng xuống đáy nồi, đến lượt cá và cuối cùng thì đổ hỗn hợp gia vị đã trộn lên trên cá, thêm 30ml nước. Đậy nấp đun nhỏ lửa cho đến khi cá chín và nước gần cạn là được. Khi đun trở nhẹ tay cho cá ngấm đều gia vị nhé!//Khi thưởng thức món cá kho của Việt Nam và món cá kho kiểu Hàn Quốc này, bạn sẽ thấy được sự khác lạ trong cách chế biến, mùi vị đấy! Không phải mất công đến xứ Hàn, bạn vẫn có thể làm ra một món ăn có hương vị Hàn Quốc để mọi người có thể thưởng thức nhé!//', 0, 100, 'loaict_hanquoc', '2019-04-06 13:51:58', '2019-04-06 13:51:58'),
(29, 'admin', 'Cách làm Đậu hũ Tứ Xuyên', 'dauhu.jpg', '45m', 4, '10m', 'Dễ', 'Đậu hũ non 500 gr;Tỏi 20 gr;Hành tím 20 gr;Sả 20 gr;Gừng 20 gr;Ớt 5 trái;Nấm đông cô 5 cái;Thịt băm 200 gr;Nước sốt;Dầu hào 3 muỗng canh;Sa tế 3 muỗng canh;Ớt bột 1 muỗng canh;Đường trắng 2 muỗng canh;Dầu mè 1 muỗng canh\r\n', 'Băm nhuyễn tỏi, hành tím, gừng, sả, ớt. Đậu hũ non cắt miếng vuông 2cm. Nấm đông cô ngâm nở mềm, thái nhuyễn.//Pha nước sốt gồm 3 muỗng canh dầu hào, 3 muỗng canh ớt sa tế, 2 muỗng canh đường, 1 muỗng canh ớt bột và 1 muỗng canh dầu mè. Khuấy đều cho hỗn hợp hòa quyện, sau đó thêm vào 50ml nước, khuấy thêm lần nữa cho tan đều.//Bắc chảo lên bếp, khi chảo nóng cho dầu vào, tiếp đến lần lượt tỏi, hành tím, ớt, gừng sả băm vào chảo, đảo đều. Khi dậy mùi thơm cho tiếp thịt xay và nấm đông cô vào, đảo đều cho đến khi thịt chín.//Cho nước sốt đã pha trước đó vào chảo, cho thêm 100ml nước, để 2-3 phút cho các gia vị thấm đều và nước sốt sôi lên, cho tiếp đậu hũ vào.//Đảo đậu nhẹ tay cho đậu thấm sốt và không bị nát. Để lửa sôi khoản 5 phút thì tắt bếp, dọn ra dĩa, rắc thêm hành ngò và thưởng thức.//', 0, 150, 'loaict_trungquoc', '2019-04-06 13:56:05', '2019-04-06 13:56:05'),
(30, 'admin', 'Thịt kho Đông Pha', 'thitkho.jpg', '35m', 4, '10m', 'Dễ', 'Thịt ba chỉ 500 gr;Rượu ngoại 300 ml;Gừng 3 củ;Hành lá 3 nhánh;Trứng cút 15 quả;Cải thìa 100 gr;Nước tương 4 muỗng canh;Hắc xì dầu 1 muỗng canh;Đường trắng 1 muỗng canh;Hoa hồi 1 cái;Thanh quế 1 miếng;Tiêu 1 muỗng cà phê', 'Gừng thái lát trải đều dưới đáy nồi, phủ thêm 1 lớp hành lá cắt khúc lên trên.//Thịt ba chỉ để cả tảng, khía sâu ô vuông trên phần da sau đó úp phần da xuống, cho vào nồi.//Thêm vào 4 muỗng canh nước tương, 1 muỗng canh hắc xì dầu, sau đó đổ ngập rượu, cho hoa hồi, thanh quế và tiêu, đường vào đun to lửa trong 30 phút. Sau đó, đun nhỏ lửa thêm 1 giờ 30 phút. Cho trứng cút luộc đã bóc vỏ vào trước khi tắt nồi khoảng 30 phút.//Thịt sau khi kho 2 tiếng, bắc sang 1 nồi khác hấp 30 phút cùng rau cải thìa.//Đến đây chúng ta đã hoàn thiện xong món thịt kho Đông Pha nổi tiếng, món ăn tuy không phức tạp nhưng hơi mất thời gian chờ đợi, bù lại mùi vị hấp dẫn của món ăn, mềm thơm của thịt và rượu khiến cho mọi công lao bỏ ra thực sự xứng đáng.', 0, 100, 'loaict_trungquoc', '2019-04-06 13:56:05', '2019-04-06 13:56:05'),
(31, 'admin', 'Bánh Trung Thu dẻo', 'banhtrungthu.jpg', '2h', 2, '20m', 'Khó', 'Bột bánh dẻo 105 gr;Nước đường 200 ml;Đậu xanh 100 gr;Đường trắng 45 gr;Dầu ăn 28 gr\r\n', 'Làm nhân bánh: Đậu xanh rửa sạch, cho vào tô thêm 130ml nước nóng ngâm khoảng 1-1.5 tiếng để đậu mềm. Sau đó đổ hết nước cho đậu xanh vào nồi, thêm 45gr đường trắng và 200ml nước nóng, bật lửa vào nấu đậu. Khi đậu sôi hạ lửa mức nhỏ và vừa.//Khi đậu mềm nhuyễn, bắc khỏi bếp và để nguội bớt. Sau đó cho đậu xanh lọc qua rây vào chảo để sên. Để lửa vừa và cho vào chảo 20ml dầu ăn Kiddy, khuấy đều để dầu hòa quyện vào đậu.//Khi đậu mềm nhuyễn, bắc khỏi bếp và để nguội bớt. Sau đó cho đậu xanh lọc qua rây vào chảo để sên. Để lửa vừa và cho vào chảo 20ml dầu ăn Kiddy, khuấy đều để dầu hòa quyện vào đậu.//Đổ nhân ra đĩa, để nguội bớt. Khi nhân còn ấm nặn thành viên nặng 25gr. Sau đó dùng màng bọc thực phẩm hoặc bao đậy nhân lại để nhLàm vỏ bánh: Cho 200gr nước đường vào thau inox, 1/2 muỗng canh dầu ăn Kiddy. Một tay kia khuấy nước đường, một tay múc từng muỗng bột đổ vào thau. Khi bột hòa quyện hết trong nước mới cho muỗng tiếp theo. Bột sẽ đặc hơn trong quá trình trộn.ân không bị khô khi chuẩn bị vỏ bánh.//Làm vỏ bánh: Cho 200gr nước đường vào thau inox, 1/2 muỗng canh dầu ăn Kiddy. Một tay kia khuấy nước đường, một tay múc từng muỗng bột đổ vào thau. Khi bột hòa quyện hết trong nước mới cho muỗng tiếp theo. Bột sẽ đặc hơn trong quá trình trộn.//Khi bột đã tương đối đặc, chuyển dùng phới để trộn dễ hơn. Trộn tới khi dùng hết khoảng 2/3 lượng bột khô (140gr). Khối bột lúc này khá đặc nhưng vẫn còn ướt và dính. Dùng 20-30gr bột khô phủ lên bề mặt bàn sạch. Tiếp theo cho bột ra phần bột khô và dùng một muỗng bột khô phủ lên trên mặt khối bột. Để bôt nghỉ 10-15 phút.//Nhồi bột nhẹ nhàng bằng động tác \"gấp\" bột. Dùng bột khô trên bàn để chống dính cho tay. Khi này bột khô trên bàn sẽ thấm vào khối bột làm khối bột dẻo và cứng dần trong qúa trình nhồi. Khi gần hết bột khô, khối bột trở nên rất đặc dẻo và không dính tay là bột đạt.//Tiến hành chia bột thành các phần bằng nhau, mỗi phần có khối lượng 50gr. Cũng dùng màng bọc thực phẩm đậy lại phần bột chưa làm để bột không bị khô. Sau đó lấy một miếng bột cho ra mặt phẳng, dùng lòng bàn tay ép dẹt miếng bột, nặn thành hình tròn, rìa ngoài mỏng hơn ở giữa. Sau đó lấy một phần nhân đã làm ở trên đặt vào giữa miếng bột, gói lại.//Chuẩn bị khuôn bánh cỡ 75gr. Lăn bánh nhẹ trên mặt bàn để bao 1 lớp bột mỏng ngoài vỏ, lớp bột này sẽ giúp bánh không dính vào khuôn. Cho bánh vào khuôn, mặt mịn cho xuống dưới, dùng đầu ngón tay nhấn quanh viền và ở giữa giúp bánh dàn đều trong khuôn. Đổ bánh: úp mặt đáy bánh xuống mặt bàn, rồi nhấn nhẹ lò xo để bánh ra khỏi khuôn, sau đó lấy khuôn lên là bạn đã có được bánh trung thu dẻo hình thú cưng mà bé nhà bạn thích.//Cho bánh vào hộp hoặc đậy bánh lại để không bị khô. Sau 1-2 ngày bánh chuyển trong và dẻo, ăn sẽ ngon hơn. Bảo quản bánh ở nhiệt độ phòng trong 5 ngày.', 0, 1000, 'loaict_trungthu', '2019-04-06 14:00:05', '2019-04-06 14:00:05'),
(32, 'admin', 'Bánh dẻo trà xanh', 'banhtraxanh.jpg', '45m', 4, '10m', 'Dễ', 'Bột trà xanh 5 muỗng cà phê;Đậu xanh không vỏ 250 gr;Bột bánh dẻo 250 gr;Nước hoa bưởi 2 muỗng cà phê;Chanh 1 trái;Đường trắng 620 gr;Muối 1/2 muỗng cà phê;Dầu ăn 40 ml', 'Cho 350ml nước cùng 500g đường, nước nửa trái chanh để không bị lại đường rồi bắt lên bếp đun sôi, không khuấy khi nấu mà để cho đường tan hết. Sau khi nước đường sôi, để lửa nhỏ và nấu thêm 5 phút, tắt bếp và để nguội.//Cho 250g đậu xanh đã ngâm qua đêm vào hộp thủy tinh lớn (loại dùng cho lò vi sóng) cùng 1/2 muỗng cà phê muối và cho nước xâm xấp mặt đậu, trộn đều. Sau đó, bọc kín hộp đậu xanh bằng màng bọc thức ăn, rồi cho vào lò quay công suất Cao trong 10 phút.//Cho đậu xanh đã chín vào máy xay sinh tố, thêm 120 g đường vào và xay nhuyễn, nếu máy xay không có chức năng xay thịt thì nhớ thêm nước vào khi xay, tránh làm kẹt máy. Kế tiếp, dùng chảo sên khô đậu xanh với 40ml dầu ăn, 1 muỗng cà phê nước hoa bưởi. Sên cho đến khi đậu không dính chảo.//Chia đậu làm 2 phần, cho 2 muỗng cà phê trà xanh vào một trong hai phần và trộn đều. Sau đó chia đậu thành những viên nhỏ.//Cho 600 g nước đường và 1 muỗng cà phê nước hoa bưởi (bắt buộc phải có mới đúng vị bánh dẻo) và 3 muỗng cà phê bột trà xanh vào tô rồi quậy đều. Kế tiếp, rây từ từ 200g bột bánh dẻo vào tô nước đường, để tránh làm bột đóng cục. Trộn nhẹ nhàng, trộn sao cho khi trộn xong vẫn thấy bột còn lỏng chứ không đặc sánh như cục bột. Đợi 15 phút cho bột nghỉ.//Trải bột áo ra bàn, đem cục bột trong tô ra nhồi lại cho đều, dàn mỏng bột rồi chia vỏ bánh theo tỷ lệ: 2 phần vỏ và 1 phần nhân. Cho nhân vào phần vỏ, gấp mí lại, viên tròn, nhớ cho bột dính bột áo hoàn toàn để khi cho vào khuôn đóng sẽ không bị dính. Sau đó cho bánh vào khuôn đã thoa chút bột. Dùng tay ấn chặt bánh xuống, sau đó gỡ bánh ra khỏi khuôn.//Bánh dẻo ngon ăn, dễ làm, không cần trải qua nhiều khâu trông coi khi nướng như bánh trung thu nên rất thích hợp làm ngay tại nhà dành tặng riêng cho người thân và và đình, vừa tiết kiệm tiền, vừa có thể nhân đôi được niềm vui của mọi người trong dịp tết trung thu.', 0, 500, 'loaict_trungthu', '2019-04-06 14:00:05', '2019-04-06 14:00:05'),
(33, 'admin', 'Bí ngô rùng rợn từ quýt', 'bingo.jpg', '15m', 4, '5m', 'Dễ', 'Quýt 5 trái;Chocolate đen 100 gr', 'Đầu tiên bạn lột vỏ quýt rồi dùng kéo cắt thành hình tam giác làm cuống bí ngô. Sau đó tiếp tục cắt thành lá bí ngô. Socola cắt nhỏ, cho vào lò vi sóng quay 30 giây rồi lấy ra khuấy đến khi tan chảy và cho vào tùi bắt kem rồi vẽ mắt miệng cho bí ngô trên trái quýt là được rồi đó.//Chẳng cần bao nhiêu thời gian là bạn đã có ngay một dĩa bí ngô rùng rợn từ những trái quýt chua ngọt cho bữa tiệc rồi đó. Nào chúng ta cùng thử và sáng tạo thêm nhiều kiểu nữa nhé.', 0, 100, 'loaict_halloween', '2019-04-06 14:03:11', '2019-04-06 14:03:11'),
(34, 'admin', 'Dâu tây nhúng chocolate Halloween', 'dautay.jpg', '25m', 3, '10m', 'Dễ', 'Chocolate trắng 150 gr;Dâu tây 12 trái', 'Dâu tây rửa sạch, bỏ cuống, cho vào tủ lạnh trong khoảng 1 tiếng để đông lạnh dâu tây. Chocolate bẻ nhỏ rồi đun chảy bằng lò vi sóng hoặc hấp cách thủy. Cặm que ở đuôi dâu tây, nhúng qua lớp chocolate lỏng, nhanh chóng gắn mắt vào rồi để dâu trên một mặt phẳng cho đông lại.//Sản phẩm đã hoàn thành, xinh xắn chưa nào? Chỉ một chút sáng tạo trong cách trang trí có thể hô biến những quả dâu tây thơm ngon thành những con ma với đủ biểu cảm gương mặt, giúp bạn đón halloween đúng chất.//', 0, 200, 'loaict_halloween', '2019-04-06 14:03:11', '2019-04-06 14:03:11'),
(35, 'admin', 'Bánh gato hình trái tim\r\n', 'banhgato.jpg', '50m', 2, '10m', 'Trung bình', 'Kem whipping 200 ml;Trứng gà 4 quả;Đường trắng 100 gr;Bột mì 120 gr;Bơ 20 gChocolate đen 70 gr;Đường bột 70 gr;Sữa tươi 70 ml', 'Dùng máy đánh trứng đánh bông 4 quả trứng gà cùng với 100gr đường trắng. Sau đó, rây bột mì vào tô trứng, cho 20gr bơ tan chảy, trộn đều.//Cho thêm 70ml sữa tươi, khuấy đều cho đến khi hỗn hợp thật mịn và quánh.//Cho bột bánh ra hai 2 khuôn nướng bánh, 1 khuôn hình vuông và 1 khuôn hình tròn.//Làm nóng lò ở 180ºC, cho bánh vào nướng khoảng 10-15 phút. Nướng đến khi mặt bánh vàng nâu là được. Để bánh nguội khoảng 10 phút rồi lấy ra khỏi khuôn.//Xoay bánh hình vuông cho góc vuông hướng lên trên. Cắt đôi bánh hình tròn, để sát vào hai cạnh hình vuông, tạo thành hình trái tim.//Kem whipping lấy 60ml đánh bông cùng 20gr đường bột. 140ml còn lại đánh cùng với chocolate nấu chảy và 50gr đường bột.//Phết kem trắng lên. Sau đó dùng kem chocolate viền quanh bánh nữa là hoàn tất. Lấy những viên chocolate nhỏ xếp thành hình trái tim trên bánh nếu thích.', 0, 100, 'loaict_tinhnhan', '2019-04-06 14:10:45', '2019-04-06 14:10:45'),
(36, 'admin', 'Rau Câu Dừa Trái Cây', 'raucau.jpg', '1h', 4, '10m', 'Trung bình', 'Nước dừa tươi 2 lít;Nước cốt dừa 200 ml;Nho xanh 10 trái;Nho đen 25 trái;Dâu tây 15 trái;Bột rau câu dẻo 12 gr;Đường trắng 200 gr', 'Nấu 2 lít nước dừa ở lửa vừa. Trộn bột rau câu dẻo với đường trắng lại với nhau. Đến khi nước dừa mấp mé sôi (bốc khói và chưa sôi bùng lên) thì cho từ từ lần lượt bột rau câu và đường vào, vừa cho vừa khuấy để bột tan đều trong nước dừa và tránh bị vón cục.//Khi đã đổ hết bột rau câu vào thì chia hỗn hợp nước dừa thành 2 phần. Một phần để riêng không cần đun để một lát đổ vào khuôn trái cây sẽ không làm trái cây héo đi vì nhiệt độ quá nóng. Phần còn lại bạn pha nước cốt dừa vào và vẫn đun lửa liu riu trên bếp để tránh cho rau câu bị đông lại. Nhớ khuấy đều thường xuyên tránh cho hỗn hợp bị đóng váng trên mặt.//Rửa sạch các loại trái cây và xếp trái cây vào khuôn theo thứ tự yêu thích. Mình thì cắt đôi dâu ra và xếp dâu ở ngoài viền để khi hoàn thành lật úp bánh rau câu lại sẽ thấy được những lát dâu xinh đẹp ở xung quanh.//Đổ phần rau câu nước dừa vào khuôn rồi cho vào tủ lạnh để rau câu nhanh đông hơn. Khi rau câu vừa se mặt (tránh để rau câu quá đông sẽ không kết dính với phần rau câu nước cốt dừa) thì lấy ra. Khi chuẩn bị lấy khuôn rau câu ra bạn nên tắt bếp đun rau câu cốt dừa để nhiệt độ không bị nóng quá sẽ làm chảy phần rau câu trong khuôn.//Đổ phần rau câu cốt dừa vào khuôn rau câu rồi tiếp tục cho vào tủ làm lạnh. Khi ăn bạn úp ngược khuôn rau câu ra dĩa nhé!', 0, 100, 'loaict_tinhnhan', '2019-04-06 14:10:45', '2019-04-06 14:10:45');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaianh`
--

CREATE TABLE `loaianh` (
  `loaianh_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tenloai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaiblog`
--

CREATE TABLE `loaiblog` (
  `nhomblog_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tenloaiblog` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaicongthuc`
--

CREATE TABLE `loaicongthuc` (
  `loai_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tenloai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nhom_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loaicongthuc`
--

INSERT INTO `loaicongthuc` (`loai_id`, `tenloai`, `nhom_id`, `created_at`, `updated_at`) VALUES
('loaict_anvat', 'Ăn vặt', 'nhomct_thucdon', '2019-04-06 13:09:35', '2019-04-06 13:09:19'),
('loaict_ca', 'Cá', 'nhomct_nguyenlieu', '2019-04-06 13:09:35', '2019-04-06 13:09:19'),
('loaict_ga', 'Gà', 'nhomct_nguyenlieu', '2019-04-06 13:09:35', '2019-04-06 13:09:19'),
('loaict_giamcan', 'Giảm cân', 'nhomct_thucdon', '2019-04-06 13:09:35', '2019-04-06 13:09:19'),
('loaict_halloween', 'Halloween', 'nhomct_diplehoi', '2019-04-06 13:09:35', '2019-04-06 14:06:57'),
('loaict_hanquoc', 'Hàn Quốc', 'nhomct_amthuc', '2019-04-06 13:09:35', '2019-04-06 13:09:19'),
('loaict_heo', 'Heo', 'nhomct_nguyenlieu', '2019-04-06 13:09:35', '2019-04-06 13:09:19'),
('loaict_monchay', 'Món chay', 'nhomct_thucdon', '2019-04-06 13:09:35', '2019-04-06 13:09:19'),
('loaict_trungquoc', 'Trung Quốc', 'nhomct_amthuc', '2019-04-06 13:09:35', '2019-04-06 13:09:19'),
('loaict_trungthu', 'Trung thu', 'nhomct_diplehoi', '2019-04-06 13:09:35', '2019-04-06 13:09:19'),
('loaict_vietnam', 'Việt Nam', 'nhomct_amthuc', '2019-04-06 13:09:35', '2019-04-06 13:09:19'),
('loaivt_tinhnhan', 'Tình nhân', 'nhomct_diplehoi', '2019-04-06 13:09:35', '2019-04-06 13:09:19');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_04_05_090137_create_slide_table', 1),
(2, '2019_04_05_090340_create_loaianh_table', 1),
(3, '2019_04_05_090717_create_blog_table', 1),
(4, '2019_04_05_091001_create_loaiblog_table', 1),
(5, '2019_04_05_091214_create_loaicongthuc_table', 1),
(6, '2019_04_05_091434_create_nhomcongthuc_table', 1),
(7, '2019_04_05_091617_create_anh_table', 1),
(8, '2019_04_05_091727_create_congthuc_table', 1),
(9, '2019_04_05_092050_create_nguoidung_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguoidung`
--

CREATE TABLE `nguoidung` (
  `user_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hotenUser` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `loginnameUser` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `passUser` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emailUser` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthday` date NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhomcongthuc`
--

CREATE TABLE `nhomcongthuc` (
  `nhom_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tennhom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhomcongthuc`
--

INSERT INTO `nhomcongthuc` (`nhom_id`, `tennhom`, `created_at`, `updated_at`) VALUES
('nhomct_amthuc', 'Ẩm thực', '2019-04-06 13:11:06', '2019-04-06 13:11:19'),
('nhomct_diplehoi', 'Dịp lễ hội', '2019-04-06 13:11:06', '2019-04-06 13:11:19'),
('nhomct_nguyenlieu', 'Nguyên liệu', '2019-04-06 13:11:06', '2019-04-06 13:11:19'),
('nhomct_thucdon', 'Thực đơn', '2019-04-06 13:11:06', '2019-04-06 13:11:19');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slide`
--

CREATE TABLE `slide` (
  `slide_id` bigint(20) UNSIGNED NOT NULL,
  `tenslide` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mota` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `anh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `slide`
--

INSERT INTO `slide` (`slide_id`, `tenslide`, `mota`, `anh`, `created_at`, `updated_at`) VALUES
(1, 'Mực nướng Malaysia', 'Mực nướng Malaysia là món ăn vặt đường phố rất nổi tiếng. Ngoài hình thức mực xiên nướng vàng nâu bắt mắt, món mực nướng Malaysia còn hấp dẫn thực khách bởi vị ngon ngọt từ mực tươi hòa quyện cùng nước sốt tứ vị chua cay mặn ngọt nữa.', '1.jpg', '2019-04-06 13:10:10', '2019-04-06 13:10:39'),
(2, 'Mì hải sản sốt chua cay', 'Nếu bạn đang chán ăn cơm hoặc đang không biết làm gì để bữa ăn vừa đơn giản vừa hấp dẫn thì hãy tham khảo ngay công thức này nha. Mì hải sản sốt chua cay là một biến tấu mới lạ miệng và rất kích thích vị giác', '2.jpg', '2019-04-06 13:10:10', '2019-04-06 13:10:39'),
(3, 'Nước củ năng mía lau hạt chia', 'Nước củ năng mía lau hạt chia sẽ là một thức uống giải nhiệt cơ thể đầy mới mẻ và thú vị mà chắc chắn sẽ khiến bạn phải ngạc nhiên', '3.jpg', '2019-04-06 13:10:10', '2019-04-06 13:10:39');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `anh`
--
ALTER TABLE `anh`
  ADD PRIMARY KEY (`anh_id`);

--
-- Chỉ mục cho bảng `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`blog_id`);

--
-- Chỉ mục cho bảng `congthuc`
--
ALTER TABLE `congthuc`
  ADD PRIMARY KEY (`congthuc_id`);

--
-- Chỉ mục cho bảng `loaianh`
--
ALTER TABLE `loaianh`
  ADD PRIMARY KEY (`loaianh_id`);

--
-- Chỉ mục cho bảng `loaiblog`
--
ALTER TABLE `loaiblog`
  ADD PRIMARY KEY (`nhomblog_id`);

--
-- Chỉ mục cho bảng `loaicongthuc`
--
ALTER TABLE `loaicongthuc`
  ADD PRIMARY KEY (`loai_id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD PRIMARY KEY (`user_id`);

--
-- Chỉ mục cho bảng `nhomcongthuc`
--
ALTER TABLE `nhomcongthuc`
  ADD PRIMARY KEY (`nhom_id`);

--
-- Chỉ mục cho bảng `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`slide_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `anh`
--
ALTER TABLE `anh`
  MODIFY `anh_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `blog`
--
ALTER TABLE `blog`
  MODIFY `blog_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `congthuc`
--
ALTER TABLE `congthuc`
  MODIFY `congthuc_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `slide`
--
ALTER TABLE `slide`
  MODIFY `slide_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
