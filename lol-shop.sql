-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 15, 2023 at 03:58 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lol-shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `bau_vat`
--

CREATE TABLE `bau_vat` (
  `ma_bau_vat` int(11) NOT NULL,
  `ten_bau_vat` varchar(255) NOT NULL,
  `trang_thai` int(11) NOT NULL,
  `hinh_anh` varchar(68) DEFAULT NULL,
  `ma_loai_bau_vat` int(11) NOT NULL,
  `mo_ta` varchar(10000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bau_vat`
--

INSERT INTO `bau_vat` (`ma_bau_vat`, `ten_bau_vat`, `trang_thai`, `hinh_anh`, `ma_loai_bau_vat`, `mo_ta`) VALUES
(2, 'Rương hextech', 1, 'ea96b137b7673f9ef87c307e7bf5e003.webp', 3, NULL),
(3, 'Rương tuyệt phẩm', 1, '6957d460e293c3cbc926ed1bb05c4c75.webp', 1, NULL),
(4, 'Chìa khóa rương', 1, 'baba44936f88126c9d68c0e0f1aa43e2.webp', 3, NULL),
(5, 'Token trang phục thường vĩnh viễn', 1, '12bcee8c13b3d0de563ff132da124279.webp', 4, NULL),
(6, 'Token trang phục huyền thoại vĩnh viễn', 1, 'e9108e3e3730bfdbbbf39b75ed077138.webp', 4, NULL),
(7, 'Viên giao thừa', 1, '320aa0317abaf0c6731b0054156c5eb0.png', 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `chuc_nang`
--

CREATE TABLE `chuc_nang` (
  `ma_chuc_nang` int(11) NOT NULL,
  `ten_chuc_nang` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chuc_nang`
--

INSERT INTO `chuc_nang` (`ma_chuc_nang`, `ten_chuc_nang`) VALUES
(1, 'Admin'),
(2, 'Nhân viên'),
(3, 'Khách hàng');

-- --------------------------------------------------------

--
-- Table structure for table `dong_skin`
--

CREATE TABLE `dong_skin` (
  `ma_dong_skin` int(11) NOT NULL,
  `ten_dong_skin` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dong_skin`
--

INSERT INTO `dong_skin` (`ma_dong_skin`, `ten_dong_skin`) VALUES
(1, 'Cao bồi'),
(2, 'Siêu phẩm'),
(3, 'Học viện anh hùng'),
(4, 'Vệ binh tinh tú'),
(5, 'KDA'),
(6, 'Đại suy vong'),
(7, 'Ẩn chính'),
(8, 'Tiên hắc ám'),
(9, 'Sứ giả xứ tuyết'),
(10, 'Vũ trụ nổi loạn'),
(11, 'Tiệc bể bơi'),
(12, 'Máy móc'),
(13, 'Pentakill'),
(14, 'Chiến binh rồng'),
(15, 'Chòm sao'),
(16, 'Đặc vụ siêu linh'),
(17, 'Thần sứ'),
(18, 'Hỏa ngục'),
(19, 'Vũ khí tối thượng'),
(20, 'Ma sứ'),
(22, 'Thần rừng');

-- --------------------------------------------------------

--
-- Table structure for table `do_hiem`
--

CREATE TABLE `do_hiem` (
  `ma_do_hiem` int(11) NOT NULL,
  `ten_do_hiem` varchar(30) NOT NULL,
  `gia` int(11) NOT NULL,
  `hinh_anh` varchar(68) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `do_hiem`
--

INSERT INTO `do_hiem` (`ma_do_hiem`, `ten_do_hiem`, `gia`, `hinh_anh`) VALUES
(1, 'Cao Cấp', 155000, ''),
(2, 'Tiêu Chuẩn', 200000, ''),
(3, 'Sử Thi', 280000, ''),
(4, 'Huyền Thoại', 370000, ''),
(5, 'Tối Thượng', 670000, '');

-- --------------------------------------------------------

--
-- Table structure for table `ds_tuong`
--

CREATE TABLE `ds_tuong` (
  `ma_tuong` int(11) NOT NULL,
  `ten_tuong` varchar(30) NOT NULL,
  `hinh_anh` varchar(68) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ds_tuong`
--

INSERT INTO `ds_tuong` (`ma_tuong`, `ten_tuong`, `hinh_anh`) VALUES
(1, 'Aatrox', '5e02ba80d040e0255d7928413a13d9e2.jpg'),
(2, 'Ahri', '4ad17f548bfd3987560070b0738b0704.jpg'),
(3, 'Akali', '40378a51d62a50b66d3f6db10d89caaa.jpg'),
(4, 'Akshan', '301c5ef09abd2ec03c064703717de5d1.jpg'),
(5, 'Alistar', '6d83078e3d0daf3202245876b5ff51bd.jpg'),
(6, 'Amumu', '8b5daec7b901f944f883e3514d1ab481.jpg'),
(7, 'Annie', '9b6934e3b8da33b273c56a9cc9b69457.jpg'),
(8, 'Aphelios', '5f45e430cc19842b58204dec27d36856.jpg'),
(9, 'Ashe', '66c284ef3946026c07bd284d3b04e147.jpg'),
(10, 'Aurelion Sol', '5b2396b57cdc3bc587b2e5b992dd9aee.jpg'),
(11, 'Azir', '146fc9281bfb178d9671e87b0118cff3.jpg'),
(12, 'Bard', 'ffa6f57dec0f1cacf5ab9849aa823cd5.jpg'),
(13, 'Bel\'Veth', 'feb1a1e363f8319f5bbc838e287adaf0.jpg'),
(14, 'Blitzcrank', 'e7b257479a355a7b7d35d778178df269.jpg'),
(15, 'Brand', 'c6c4920fa3e5a578950176b9de2ce615.jpg'),
(17, 'Braum', '6df224ed0a219e2a6262a7e58e115825.jpg'),
(18, 'Briar', 'ead62ef0e6e85607f5b1b2ff8b6bf822.jpg'),
(19, 'Caitlyn', 'ef43f48758bf3af920d70e05c444b942.jpg'),
(20, 'Camille', 'b79f71501077e9ebc898dabc4ddd89fc.jpg'),
(21, 'Cassiopeia', 'ce3970e731847f409da52b5052d69832.jpg'),
(22, 'Cho\'Gath', '7d54aa2b397425e83f93d41fe3097419.jpg'),
(23, 'Corki', '121a0a08a4543abfe1a5de961ce0aaad.jpg'),
(24, 'Darius', '1e5491acf803d6b21d3726a4a2dc96a5.jpg'),
(25, 'Diana', '881211f1f5c3939df0cdccc64117e328.jpg'),
(26, 'Dr. Mundo', 'd127c6d1303f1851cfb034d0ead15589.jpg'),
(27, 'Draven', '2bd24b7fd4e8ade5ffa8c1512bdac31c.jpg'),
(28, 'Ekko', 'c162e69697dea033f9d59214ce527913.jpg'),
(29, 'Elise', '2cf85a3946b3e67c72819a258b8043b4.jpg'),
(30, 'Evelynn', '7ab48f22b7084aba0df387b11f7504ce.jpg'),
(31, 'Ezreal', '35459880ab111e9459efbbbe14e63734.jpg'),
(32, 'Fiddlesticks', '6aa443fd3d220e6bbbfdd917a7890441.jpg'),
(33, 'Fiora', '88c76d0968b01478a1b36d4f48b2f90e.jpg'),
(34, 'Fizz', '6ff857979a494cc9707b3b6acffd5b0f.jpg'),
(35, 'Galio', 'f64bfc8193f596e232b2ec00779bed6c.jpg'),
(36, 'Gangplank', '406d42725150b878ce5183d18c6bd850.jpg'),
(37, 'Garen', '7742b1acb4c1f9d19abefcaab398b541.jpg'),
(38, 'Gnar', '8aa05091f5c6068dedec3ec5000b0570.jpg'),
(39, 'Gragas', '5fcffccaca3a7c6aea9eea6c127d80f1.jpg'),
(40, 'Graves', '1cf4e71a430a9937c54013c44db2d078.jpg'),
(41, 'Gwen', '40e4d04c5299ce19d8fefd230d23ce9c.jpg'),
(42, 'Hecarim', 'c36e88fdcdba89f37fac129a5ec23f25.jpg'),
(43, 'Heimerdinger', '66680df4c50256dc51fbfce07e56bf16.jpg'),
(44, 'Hwei', 'a2b186287f84042d5e794b1af8c48b6e.jpg'),
(45, 'Illaoi', '344e4f887e58485610f78aec51ac5b01.jpg'),
(46, 'Irelia', '6614dfe313e8604f735629d8ab69a0f3.jpg'),
(47, 'Ivern', '430abd56e964f76b855f52e8e527e184.jpg'),
(48, 'Janna', 'bafb506d348d0de3410bf955e278008f.jpg'),
(49, 'Jarvan IV', '869f609ff3adec069d27f7a2a0476e5b.jpg'),
(50, 'Jax', '8dcc42272180cc7c7a4009304bf67125.jpg'),
(51, 'Jayce', '93093dffe44976f48bd42a333d533c9a.jpg'),
(52, 'Jhin', 'bb1b4c9288efb73fe149c0d903de7839.jpg'),
(53, 'Jinx', 'a36c5d4dd56c2ed471530ae183d5cc4d.jpg'),
(54, 'K\'Sante', '2ea87e06842d1d16dad09e690629d364.jpg'),
(55, 'Kai\'Sa', '0d4a03756725fa905959545bd782ea4a.jpg'),
(56, 'Kalista', '52d2e9deee9c77bb4ecb72b23e4da094.jpg'),
(57, 'Karma', '9fb638dbab2a0cf137a622ad7e9cfda3.jpg'),
(58, 'Karthus', '3796a4b6318e74f3740ecd83c2316c23.jpg'),
(59, 'Kassadin', '5b37ba1f8c4ce3d3012b0308b9020fd2.jpg'),
(60, 'Katarina', '4f75d9cfcc54038c1af4d34c1191b4a6.jpg'),
(61, 'Kayle', '298792ab554974d9fdce8f60b310ea19.jpg'),
(62, 'Kayn', '1f2ce95939d5cd8c1e307ad444f0ed9e.jpg'),
(63, 'Kennen', '211f103caeaf5ad34a3bb80fa547709a.jpg'),
(64, 'Kha\'Zix', 'abcf0e669b718f7a33d173d7733bbcfc.jpg'),
(65, 'Kindred', '2d17c460d2b6d05c9f2e95193aa091f2.jpg'),
(66, 'Kled', '19f38546eb7b59e53b0894159df03801.jpg'),
(67, 'Kog\'Maw', 'f8a76ee0420537a1d3b33a5e9e474b1e.jpg'),
(68, 'LeBlanc', 'a719889199a6d01a7707bd281806c065.jpg'),
(69, 'Lee Sin', 'c5a99f6cb3b330cd477cd5887b0f447c.jpg'),
(70, 'Leona', 'e6936476b74ec7a1998b05373599a547.jpg'),
(71, 'Lillia', '4d076a8c79ffa4deda65fae3df5875a8.jpg'),
(72, 'Lissandra', '8308a210ebb53269de7ed8e734796f90.jpg'),
(73, 'Lucian', '97f7c50dff60836b22257bbc948e9215.jpg'),
(74, 'Lulu', 'dbb797630bac95fb36733fc7ed6566d5.jpg'),
(75, 'Lux', 'c37d3d38552d33e3fa4c9727bbc5d300.jpg'),
(76, 'Malphite', 'e56f00709f69d2fa939a5d66954c2f67.jpg'),
(77, 'Malzahar', '8c2b0294a0215eb94814bdd2c19c3af0.jpg'),
(78, 'Maokai', 'c1fb186a6ee4c38956785f99c8d2f477.jpg'),
(79, 'Master Yi', 'd62a9ab2200bcf177620c4ccfa481ccb.jpg'),
(80, 'Milio', '4b340dc9bbe97e22283eaa0119cd29ea.jpg'),
(81, 'Miss Fortune', '68807ff18073745185cd5227c648b5fc.jpg'),
(82, 'Mordekaiser', '89fc70991f83715e71f47baf12c2381c.jpg'),
(83, 'Morgana', '02fc9de1646bc042aa725e3da9629934.jpg'),
(84, 'Naafiri', 'cb790cf84199bea0446ea3b4e953d0d2.jpg'),
(85, 'Nami', 'fab7425b64f9edc4af9ddc64bac14508.jpg'),
(86, 'Nasus', 'cf8e4bf51d30d10f536c67a38695c149.jpg'),
(87, 'Nautilus', '040c12eb7001af29001ad2f8c909b529.jpg'),
(88, 'Neeko', '87ca616e4acbcb288a1fe39694975b4c.jpg'),
(89, 'Nidalee', 'd65f9ed08b74341bf72a11abd3e6101a.jpg'),
(90, 'Nilah', '93213d117f91fe3f7b0f346afe72b5ce.jpg'),
(91, 'Nocturne', 'f25936c380660505d4867692fc6d3d0b.jpg'),
(92, 'Nunu & Willump', '7b85d76c48e1cf577f58024c816eeb44.jpg'),
(93, 'Olaf', '8db5da274fc4f25edad38d9da9d978f8.jpg'),
(94, 'Orianna', 'd08cf9dd96172bf9a6d91cea08e9544c.jpg'),
(95, 'Ornn', '3d2e490c73ca2483bc00945f92148492.jpg'),
(96, 'Pantheon', 'a7be177979067bbe434e3f45190e0bab.jpg'),
(97, 'Poppy', '91aea9bff3448ceda2a9b2459af3215c.jpg'),
(98, 'Pyke', '46198508405ed6095ef7d73fe1fccb16.jpg'),
(99, 'Qiyana', '54fa551025374a9e320f983ae39966e8.jpg'),
(100, 'Quinn', '2004f8be94fd35f850752f003a816341.jpg'),
(101, 'Rakan', '1a79190d7b3761f3f63436e325e8c197.jpg'),
(102, 'Rammus', '5c2710dc865c72a9d16665a731be5ac1.jpg'),
(103, 'Rek\'Sai', '11e0a879048d8fceeac7402080ee721f.jpg'),
(104, 'Rell', '5f72b3f449b40c95e968aae4e2eab255.jpg'),
(105, 'Renata Glasc', '8e8fa4a40dc378f009d7e3add1e62493.jpg'),
(106, 'Renekton', '0b8c631508ccebf5d747eea2ecda9d2f.jpg'),
(107, 'Rengar', 'b150ead61d7ab24952ceba07103fe2c4.jpg'),
(108, 'Riven', '6765474cbf2f7ea2a76e665dcd1d9723.jpg'),
(109, 'Rumble', '4f3ecb1785f61f4242f0fdcae987cb78.jpg'),
(110, 'Ryze', '5fef6d4fb93ce5fcd4a46a476062cb2a.jpg'),
(111, 'Samira', '155bad8ea6c9db548ba814be64209564.jpg'),
(112, 'Sejuani', '7edc73c6c2f8e68de0c261ac815d176c.jpg'),
(113, 'Senna', 'a4f403c32814a8a8b6bbe5a2064a0235.jpg'),
(114, 'Seraphine', '1931321dd47cb53372bcb3d41fe7a2d1.jpg'),
(115, 'Sett', 'a197e4e3eebab8c16375816aefdcb5ce.jpg'),
(116, 'Shaco', '671773364f79645bd7a38fbd33122809.jpg'),
(117, 'Shen', '8ca68779033154801899cc77ac14093a.jpg'),
(118, 'Shyvana', '15d6cc24e42dd69983fd2396db60ea09.jpg'),
(119, 'Singed', 'ccfc44c0c2c5a846ad02552c2c039759.jpg'),
(120, 'Sion', '68326d5442d8760abf015bff955424a5.jpg'),
(121, 'Sivir', 'dddcf5a3f1365c8505d22c3032480246.jpg'),
(122, 'Skarner', '71fd6de6233fd824d17a84faa0831b71.jpg'),
(123, 'Sona', '439403e8bc86f7882ff3db4f3ae35b4a.jpg'),
(124, 'Soraka', 'eb08bf8870767d45ad5c58e378fcb4a3.jpg'),
(125, 'Swain', '2e76c71c80f9118ed9540bd17645b723.jpg'),
(126, 'Sylas', '9479ed56248616801f041dd22ba95857.jpg'),
(127, 'Syndra', '28e8bd34cce7b43de81000e61f556912.jpg'),
(128, 'Tahm Kench', '6ba9df5b143e7234a4c9fd08b1c1f510.jpg'),
(129, 'Taliyah', 'b98797b96ea676a442bced933876bbf2.jpg'),
(130, 'Talon', '50d75ee5144f38b87c8f04bce55e9ac1.jpg'),
(131, 'Taric', 'c1821d9d38ec3c0988effd8871ec0c25.jpg'),
(132, 'Teemo', '89f2f42eed964e2a786bb4cdff8ad2f5.jpg'),
(133, 'Thresh', '4058b87b94d7a29c154efc98588d78d3.jpg'),
(134, 'Tristana', '0ca3ccec50fddf11d383ed6771605ea4.jpg'),
(135, 'Trundle', 'e5eb8002535788cfff2ffa65d7fe8a89.jpg'),
(136, 'Tryndamere', '1bdca81665e543f08958395e3d12fb26.jpg'),
(137, 'Twisted Fate', '3830cf41af7a5f2e338c36c9f980f9de.jpg'),
(138, 'Twitch', '0fb4cf148d10abe224976cbcf06adf52.jpg'),
(139, 'Udyr', 'e4f56f93043abdd9d5dad3ed823de387.jpg'),
(140, 'Urgot', '1ba86bbd6cddaa2be5b3d25b91ad4079.jpg'),
(141, 'Varus', '785b7a5560f2b9d97f3c5d3ed11f4ff6.jpg'),
(142, 'Vayne', '9f40f52c74272038e2d4678c629a6426.jpg'),
(143, 'Veigar', 'a9f57c86e1828758a5e450464db26b2b.jpg'),
(144, 'Vel\'Koz', '8ea4b890bbded21aa2cf10764e88e5a9.jpg'),
(145, 'Vex', '22c38c94a9e8296ce563833f45c45d0e.jpg'),
(146, 'Vi', '4818761c9e5995abc3902a704cf44f1c.jpg'),
(147, 'Viego', 'cd8eec26f281e7a95422a45d3487325e.jpg'),
(148, 'Viktor', '40cc3f23278b51ba123db8570c991cde.jpg'),
(149, 'Vladimir', '3a3078fe673c5c27003b339a0d6cf3fc.jpg'),
(150, 'Volibear', 'dba3faabf4d5e8746eac82271791e1a4.jpg'),
(151, 'Warwick', 'ccaa3694b9fa3dc1f783bbf0b63c83d3.jpg'),
(152, 'Wukong', '77b2dd47e780207c798910c8094c380a.jpg'),
(153, 'Xayah', 'eba3bc7633a1f3cadd6360e2dc0cb5cd.jpg'),
(154, 'Xerath', '01b1427813c65080efd45f380025b0b5.jpg'),
(155, 'Xin Zhao', 'dc0d90ba3f9fb40fed7cf885442f2110.jpg'),
(156, 'Yasuo', 'c97df648906b66ad7093d3e16b8c296c.jpg'),
(157, 'Yone', 'c50005933f483add98332c953dc3faf6.jpg'),
(158, 'Yorick', '033105dbba996f9336cfc44b25221fff.jpg'),
(159, 'Yuumi', '762e9003898addd738b9dd423b8afc69.jpg'),
(160, 'Zac', 'e9c3d65b9e4a0f4d82dd61fe6078c105.jpg'),
(161, 'Zed', '7eec6b6801788a8c31898c070c64cbd8.jpg'),
(162, 'Zeri', 'c8ae809fe855544ee9bb009eb6ab4ac9.jpg'),
(163, 'Ziggs', 'e87d679474513462a420393a2201cd43.jpg'),
(164, 'Zilean', '95d2709e9912d2ec3fc3bec610ef1ccf.jpg'),
(165, 'Zoe', 'd386254a93bd2ef42127dad19958c5b0.jpg'),
(166, 'Zyra', '117721585ebaeb44271999c793e42c30.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `gio_hang`
--

CREATE TABLE `gio_hang` (
  `ma_gio_hang` int(11) NOT NULL,
  `ds_hang` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gio_hang`
--

INSERT INTO `gio_hang` (`ma_gio_hang`, `ds_hang`) VALUES
(22, 'Rương tuyệt phẩm, Mẫu mặt Draven, Rương tuyệt phẩm'),
(23, ''),
(24, '');

-- --------------------------------------------------------

--
-- Table structure for table `khach_hang`
--

CREATE TABLE `khach_hang` (
  `ma_khach_hang` int(11) NOT NULL,
  `tai_khoan` varchar(30) NOT NULL,
  `email` varchar(68) NOT NULL,
  `ma_gio_hang` int(11) NOT NULL,
  `ma_ls_mua_hang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `khach_hang`
--

INSERT INTO `khach_hang` (`ma_khach_hang`, `tai_khoan`, `email`, `ma_gio_hang`, `ma_ls_mua_hang`) VALUES
(16, 'cust1', 'mashiro1420@gmail.com', 22, 22),
(17, 'cust2', 'thao84899@st.vimaru.edu.vn', 23, 23),
(18, 'cust3', '234@gmail.com', 24, 24);

-- --------------------------------------------------------

--
-- Table structure for table `lich_su_mua_hang`
--

CREATE TABLE `lich_su_mua_hang` (
  `ma_ls_mua_hang` int(11) NOT NULL,
  `ds_ls_mua_hang` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lich_su_mua_hang`
--

INSERT INTO `lich_su_mua_hang` (`ma_ls_mua_hang`, `ds_ls_mua_hang`) VALUES
(22, 'Ashe cao bồi, Let Do This, Rương hextech, Rương tuyệt phẩm'),
(23, ''),
(24, '');

-- --------------------------------------------------------

--
-- Table structure for table `loai_bau_vat`
--

CREATE TABLE `loai_bau_vat` (
  `ma_loai_bau_vat` int(11) NOT NULL,
  `ten_loai_bau_vat` varchar(255) NOT NULL,
  `gia` int(11) NOT NULL,
  `loai_san_pham` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `loai_bau_vat`
--

INSERT INTO `loai_bau_vat` (`ma_loai_bau_vat`, `ten_loai_bau_vat`, `gia`, `loai_san_pham`) VALUES
(1, 'Rương', 30000, 'bau_vat'),
(2, 'Viên', 80000, 'bau_vat'),
(3, 'Chìa khóa', 20000, 'bau_vat'),
(4, 'Token', 1000000, 'bau_vat');

-- --------------------------------------------------------

--
-- Table structure for table `loai_vat_pham`
--

CREATE TABLE `loai_vat_pham` (
  `ma_loai_vat_pham` int(11) NOT NULL,
  `ten_loai_vat_pham` varchar(255) NOT NULL,
  `gia` int(11) NOT NULL,
  `loai_san_pham` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `loai_vat_pham`
--

INSERT INTO `loai_vat_pham` (`ma_loai_vat_pham`, `ten_loai_vat_pham`, `gia`, `loai_san_pham`) VALUES
(1, 'Mẫu mắt', 50000, 'vat_pham'),
(2, 'Biểu cảm', 40000, 'vat_pham');

-- --------------------------------------------------------

--
-- Table structure for table `nguoi_dung`
--

CREATE TABLE `nguoi_dung` (
  `tai_khoan` varchar(30) NOT NULL,
  `mat_khau` varchar(64) NOT NULL,
  `trang_thai` int(11) NOT NULL,
  `ma_chuc_nang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nguoi_dung`
--

INSERT INTO `nguoi_dung` (`tai_khoan`, `mat_khau`, `trang_thai`, `ma_chuc_nang`) VALUES
('admin', 'c4ca4238a0b923820dcc509a6f75849b', 1, 1),
('cust1', 'c4ca4238a0b923820dcc509a6f75849b', 1, 3),
('cust2', 'c4ca4238a0b923820dcc509a6f75849b', 0, 3),
('cust3', 'c4ca4238a0b923820dcc509a6f75849b', 1, 3),
('manager', 'c4ca4238a0b923820dcc509a6f75849b', 0, 2),
('staff1', 'c4ca4238a0b923820dcc509a6f75849b', 1, 2),
('staff2', 'c4ca4238a0b923820dcc509a6f75849b', 0, 2),
('staff3', 'c4ca4238a0b923820dcc509a6f75849b', 0, 2),
('staff4', 'c4ca4238a0b923820dcc509a6f75849b', 1, 2),
('staff6', 'c4ca4238a0b923820dcc509a6f75849b', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `thong_ke`
--

CREATE TABLE `thong_ke` (
  `thang` varchar(30) NOT NULL,
  `doanh_thu_trang_phuc` int(11) NOT NULL,
  `doanh_thu_vat_pham` int(11) NOT NULL,
  `doanh_thu_bau_vat` int(11) NOT NULL,
  `trang_phuc_da_ban` int(11) NOT NULL,
  `vat_pham_da_ban` int(11) NOT NULL,
  `bau_vat_da_ban` int(11) NOT NULL,
  `tong_da_ban` int(11) NOT NULL,
  `tong_doanh_thu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `trang_phuc`
--

CREATE TABLE `trang_phuc` (
  `ma_trang_phuc` int(11) NOT NULL,
  `ten_trang_phuc` varchar(30) NOT NULL,
  `ma_tuong` int(11) NOT NULL,
  `hinh_anh` varchar(68) DEFAULT NULL,
  `model` varchar(68) DEFAULT NULL,
  `trang_thai` int(11) NOT NULL,
  `ma_do_hiem` int(11) NOT NULL,
  `ma_dong_skin` int(11) NOT NULL,
  `loai_san_pham` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `trang_phuc`
--

INSERT INTO `trang_phuc` (`ma_trang_phuc`, `ten_trang_phuc`, `ma_tuong`, `hinh_anh`, `model`, `trang_thai`, `ma_do_hiem`, `ma_dong_skin`, `loai_san_pham`) VALUES
(6, 'Ashe cao bồi', 9, '55fa24aacf0b28ea96131a65a05b8d1a.webp', '50ad8084ce1a4231255584a70e00f682.webp', 1, 4, 1, 'trang_phuc'),
(7, 'Darius cao bồi', 24, '6a8b5591dfa48317badb3fe348eec9fa.webp', 'f9c78fe86b31b1352035aea23558d745.webp', 1, 4, 1, 'trang_phuc'),
(8, 'Jhin cao bồi', 52, '0f3843f3115642a09198bf9c3d5b5b47.webp', 'fbe9bb82a8b38086cf0cc85bbac54c29.webp', 1, 1, 1, 'trang_phuc'),
(9, 'Lucian cao bồi', 73, '7e2e4a775b0bdf444050c858c70a3cb7.webp', '67fe765d7f0842dfe4c78e061e6b6962.webp', 1, 4, 1, 'trang_phuc'),
(10, 'Samira cao bồi', 111, 'a842c581eb628f84d61bfad7a7c22aba.webp', '97c61389be7cefb7bed82efaf02f3e66.webp', 1, 1, 1, 'trang_phuc'),
(11, 'Yasuo cao bồi', 156, 'cbe8138992453064827a963922ce397e.webp', '3f5a2e55f11353792a80cc3b509b9f8e.webp', 1, 2, 1, 'trang_phuc'),
(12, 'Leona cao bồi', 70, '351f0cb9b861e8ec6f2408548b59c32d.webp', '3406521a64753e3c8539e7603e541ed8.webp', 1, 4, 1, 'trang_phuc'),
(13, 'Varus cao bồi', 141, '7b5fe6ac66ef5fee2529b8be674df1fd.webp', '774fa0a3837f4a7ef61f16f1ac0d56ae.webp', 1, 3, 1, 'trang_phuc'),
(14, 'Katarina', 60, 'cd17f1523dbd85963f5c0ef19f05b31c.webp', 'dd4ec2ccd91a953ccb163c612d7213c2.webp', 1, 3, 1, 'trang_phuc'),
(15, 'Tahm Kench cao bồi', 128, 'ddec761d4e7959e8faa79067c7108f25.webp', '09adc0f2a2d79c81373801ace3edb156.webp', 1, 3, 1, 'trang_phuc'),
(16, 'Twitch cao bồi', 138, '13024d6979cff98f979ecac41c373a68.webp', 'f833f7b53c3eb48e5bbda715231c4610.webp', 1, 1, 1, 'trang_phuc'),
(17, 'Irelia cao bồi', 46, 'b2581aeeee338e8fa2b5487f7483b25f.webp', '1215f16628288832460cec1a1e80e7be.webp', 1, 4, 1, 'trang_phuc'),
(18, 'Senna cao bồi', 113, '67af3d899ea38cd8b550d2696fe17ab5.webp', '652b0f7e320e7393c0e26813a848bb22.webp', 0, 4, 1, 'trang_phuc'),
(19, 'Sion cao bồi', 120, '4d964efac70b794bcac44b075f908e58.webp', '3cb9a9cdce740b434ff0dddd262ab6c9.webp', 1, 3, 1, 'trang_phuc'),
(20, 'Hecarim cao bồi', 42, 'c608ac955585c9678b89ff8b52725a15.webp', '2e5003f3a0f3132f08d5fdcbb27e2ed5.webp', 1, 3, 1, 'trang_phuc'),
(21, 'Fiora siêu phẩm', 33, 'd8c4c10ce28bd12b49a3ced5af8c5119.webp', 'f7653f23736423c90dea7184405f57f7.webp', 1, 3, 2, 'trang_phuc'),
(22, 'Ashe siêu phẩm', 9, '6f31a1338e7c901448ac653c5c81b9c4.webp', '48c55723328d500ae3f2ed3bb2a25041.webp', 1, 4, 2, 'trang_phuc'),
(23, 'Senjuani', 112, '7b4410ea25467e1fd81a344a43e22ab8.webp', 'f11a73696d0f5297031b502b35bf4e61.webp', 1, 3, 2, 'trang_phuc'),
(24, 'Zed siêu phẩm', 161, '6a4cf7744580d62194b45052a763dffb.webp', 'e60e2f7ace7e8d9c75fd2f564da8cbcc.webp', 1, 3, 2, 'trang_phuc'),
(25, 'Renekton siêu phẩm', 106, 'b7ddaf83a28bd4d9497204db87def5bc.webp', 'c3980984b4f17d6cb62564ecc0a766c9.webp', 1, 4, 2, 'trang_phuc'),
(26, 'Akali siêu phẩm', 3, 'a829c9cdce65fabedd9b0366e55f05ed.webp', '5681d562ab5d7752b556544c02e24014.webp', 0, 4, 2, 'trang_phuc'),
(27, 'Jinx siêu phẩm', 53, 'f2b3781cf3bac964a46bcb60fc7aab29.webp', 'e4d53cb974e09c392af3df9348171270.webp', 1, 3, 2, 'trang_phuc'),
(28, 'Pyke siêu phẩm', 98, '856cec8b3f841918aa8832311d35daeb.webp', 'ccf8f0fba1bd5e7ca8466fc822cb3c57.webp', 1, 4, 2, 'trang_phuc'),
(29, 'Sylas siêu phẩm', 126, '2bb0bd9ce939e315e6ea2204a55a8e62.webp', 'ae094a8fcc94935975b82e48cd2468cf.webp', 1, 3, 2, 'trang_phuc'),
(30, 'Mordekaiser siêu phẩm', 82, '02a995e85086662e4fdf48210ab9b0e9.webp', '8aee5c84b6886c78bb5ee1095f8bd613.webp', 1, 4, 2, 'trang_phuc'),
(31, 'Warwick siêu phẩm', 151, '5cc2e2462b86758c7a1541e3ea91e882.webp', '6f4735f649ef65eef633ad5582a814eb.webp', 1, 4, 2, 'trang_phuc'),
(32, 'Senna siêu phẩm', 113, 'a08d1a446e59a09d62d45724b06271bb.webp', '3a18f9259a22496a0abd9f3472c0a9e5.webp', 1, 3, 2, 'trang_phuc'),
(33, 'Yone học viện anh hùng', 157, '462d5f280f99eef8ca6e178f7a705b51.webp', 'a016f4299ce03c611385a3f31b97fda2.webp', 1, 3, 3, 'trang_phuc'),
(34, 'Caitlyn học viện anh hùng', 19, 'ae0d3b40370be86554f75bfac85bf974.webp', '211a16f67098246d78ec7e50613b2913.webp', 1, 4, 3, 'trang_phuc'),
(35, 'Ezreal học viện anh hùng', 31, '717effaa3c5f6c0a1ee4386f1d66229a.webp', 'bec9a0a08545c5c8ba28532fad92454d.webp', 1, 4, 3, 'trang_phuc'),
(36, 'Garen học viện anh hùng', 37, 'f0097c2b3a7f8c3fd5b9fd5599052c16.webp', 'a667b7b6880be8237985525213e3ef3d.webp', 1, 3, 3, 'trang_phuc'),
(37, 'Jayce học viện anh hùng', 51, '0eef5f981b314d576e051749bd664c83.webp', 'bc4af0a1972438b3fd60f6ce585a5c55.webp', 1, 4, 3, 'trang_phuc'),
(38, 'Graves học viện anh hùng', 40, 'd413b6c55a0af3bfe38e15aa4d14022b.webp', '7f39efd01b5f448acc12b31c28641093.webp', 1, 4, 3, 'trang_phuc'),
(39, 'Yuumi học viện anh hùng', 159, '807a48e8144049af94ba33a86864f0c2.webp', '4d0144440bcf0deafd54d4df44dd7c19.webp', 1, 3, 3, 'trang_phuc'),
(40, 'Wukong học viện anh hùng', 152, 'e54b95b90e83e60e8827de95a39ad717.webp', 'ee1a6e2d5cf5ca84ae34fc884d6b9caa.webp', 1, 3, 3, 'trang_phuc'),
(41, 'KDA Ahri', 2, 'c3ef839dd355572e4f41ed5fbbf4d9a5.webp', '3371ac61a50dd38d6629b2c8a4b5eb03.webp', 1, 4, 5, 'trang_phuc'),
(42, 'KDA Evelynn', 30, '59cd5467ae68900fbf1a6528fd2d2592.webp', '76b0df44a9520db1d6c2e41469f3e11e.webp', 1, 3, 5, 'trang_phuc'),
(43, 'Seraphine vệ binh tinh tú', 114, 'f084cf21ac4d95b1888d8880a2a7e151.webp', 'ec7438fad21e9836528f87e888c6e1f6.webp', 1, 3, 4, 'trang_phuc'),
(44, 'KDA Akali', 3, '0aed39929f7f120a5ff2d02d08093a2c.webp', '091601171716c5b7efe45c48685ed49c.webp', 1, 3, 5, 'trang_phuc'),
(45, 'KDA Kai\'Sa', 55, 'b758bd8f833c30f8c53f0ad51c28cffb.webp', '128daa11872b7d6c0bb8db52dd7d21bb.webp', 1, 3, 5, 'trang_phuc'),
(46, 'Xayah vệ binh tinh tú', 153, '56fec446912e3452151a0b72a52d68c4.webp', '4f9849f9394df6736312ba92c68d6951.webp', 1, 3, 4, 'trang_phuc'),
(47, 'Rakan vệ binh tinh tú', 101, '2e67bfe0b2ca9fce3a328c15baa657cb.webp', '2ca3060b80165942d3643e071ad7c6dc.webp', 1, 3, 4, 'trang_phuc'),
(48, 'Miss Fortune đại suy vong', 81, '0b9d66c1ca064a2e372ab2314dcc15a8.webp', 'd5c4febab01fdfa8b1b0ddf6a17c32e5.webp', 1, 1, 6, 'trang_phuc'),
(49, 'Shyvana đại suy vong', 118, '04a63fabf9f2288a2385499431a88160.webp', '67c04db68158935139c01f2b503f472c.webp', 1, 3, 6, 'trang_phuc'),
(50, 'Draven đại suy vong', 27, 'af9837a6fb194f842c6e753236b15c73.webp', '614a13f4983777e0bdb1f93c9042824e.webp', 1, 3, 6, 'trang_phuc'),
(51, 'Karma đại suy vong', 57, '3d8b34c8c0b58914973cb063f743d977.webp', '6792053476d36189e7f2dc0cdf194e83.webp', 1, 3, 6, 'trang_phuc'),
(52, 'Gangplank đại suy vong', 36, '4ae2a55cb51a982ea1f83d8660e045b1.webp', '28c442b4fac8e6336ade64cf773f27f6.webp', 1, 2, 6, 'trang_phuc'),
(53, 'Pantheon đại suy vong', 96, '09318c98606b33e3c6a171b6a9395620.webp', 'ad05cf4fcebf045c010d4fa25afd5ae2.webp', 1, 3, 6, 'trang_phuc'),
(54, 'Thresh cao bồi', 133, '6637d3a34375f5dd2d11c143d5a7148b.webp', '70673d03a8bf14436e07a893f601434f.webp', 1, 3, 1, 'trang_phuc'),
(55, 'Ryze ẩn chính', 110, 'c00c8fa32b132edd9defbba9ac9f3e66.webp', '4d5dc530ae0551a1c7470f5555bcabed.webp', 1, 3, 7, 'trang_phuc'),
(56, 'Camille ẩn chính', 20, '5a6c08f6a6b1a7ba47a3e0518ba6215e.webp', '8ee77a80da835e753cd856a61dc67b1d.webp', 1, 4, 7, 'trang_phuc'),
(57, 'Hecarim ẩn chính', 42, 'af16e7f97c4d625f903ac08056592de0.webp', 'f74192768479292d2c3a7e599cd26e8c.webp', 0, 3, 7, 'trang_phuc'),
(58, 'Xerath ẩn chính', 154, 'd5c19af5685643d032f8a39112700270.webp', '3e3b151371d7699886be6e1ee7fac2a0.webp', 1, 4, 7, 'trang_phuc'),
(59, 'Zyra tiên hắc ám', 166, 'e51d578d0c90f0121c0afdc5cb2441a8.webp', 'c713de38e761835cd2373926db246a45.webp', 1, 3, 8, 'trang_phuc'),
(60, 'Zoe vệ binh tinh tú', 165, 'df83e9cb9b735a1d5e91c6ce4943830b.webp', '51281a37152a61587f9083f09559f664.webp', 1, 3, 4, 'trang_phuc'),
(61, 'Zilean sứ giả xứ tuyết', 164, 'e718ef3d177a80913428ce7c10372fec.webp', '319490a160bb07e6f111516b24aaf2da.webp', 1, 3, 9, 'trang_phuc'),
(62, 'Ziggs vũ trụ nổi loạn', 163, '2623e908eb9f5c801c605a5c5cb5682c.webp', '7785733dec6eb4a13b4d424783b776df.webp', 1, 1, 10, 'trang_phuc'),
(63, 'Zeri tiệc bể bơi', 162, '60c0d651ffdd76a2fa4061a81b952821.webp', 'c4a59d356bee9f83bba1ca2162220a3b.webp', 1, 3, 11, 'trang_phuc'),
(64, 'Zac máy móc', 160, '938eb99fae64aa0edd0b77bb9d73f476.webp', '0b9c85b701c87ab296f0e6421fc767ff.webp', 1, 4, 12, 'trang_phuc'),
(65, 'Yorick pentakill', 158, '425f2b13bcd3c466e8d09eb0f1ffc1d9.webp', '8170027f0b8c4b841bf9a5f51cb0bd9f.webp', 1, 2, 13, 'trang_phuc'),
(66, 'Xinzhao vũ trụ', 155, 'b5cdf70eed76f0319409be03a1d3230c.webp', '8e7a0b6486c35ace109a7c0b5058d9c2.webp', 1, 3, 15, 'trang_phuc'),
(67, 'Volibear', 150, '3b9b5dd7a495b3335d66e9850f204e16.webp', 'd36ee176e91254b7340e81b18e3b960b.webp', 1, 3, 14, 'trang_phuc'),
(68, 'Vladimir chòm sao', 149, '19d40253fa0f9e0d5148d13194fd9baf.webp', 'c0c2662e453b3b92050c2364886eacd3.webp', 1, 4, 15, 'trang_phuc'),
(69, 'Viktor cao bồi', 148, '5e0f47e7aa04c39e121140422b4ccc82.webp', '7f3ab326b980ed9b3bce89ce90df8e66.webp', 1, 3, 1, 'trang_phuc'),
(70, 'Viego pentakill', 147, '9192075ba9b1fe1ac2dae95851187c3f.webp', 'b0c82b8bea9dd04343a4ebe458e8ae87.webp', 1, 3, 13, 'trang_phuc'),
(71, 'Vi đặc vụ siêu linh', 146, '76542633ea9afb30e5a1489337a2a609.webp', '1d9138c3f4e1be1c4d1b87b497aab23d.webp', 1, 1, 16, 'trang_phuc'),
(72, 'Vex thần sứ', 145, 'a762ff7a4f438a18b8ad862307236a8c.webp', '84e9565f92453be07e0c2035ea8e86d4.webp', 1, 2, 17, 'trang_phuc'),
(73, 'Vel\'Koz hỏa ngục', 144, 'ef02bff3f6203b41f2fb63578679e3e6.webp', 'e898c44d44b6c4ac569f03d488f43051.webp', 1, 1, 18, 'trang_phuc'),
(74, 'Veigar vũ trụ nổi loạn', 143, 'f4817ad67c94ee18ace5fcc8364f7de3.webp', '7a2c767ae1c3e5f9128f093ea74fd4c1.webp', 1, 1, 10, 'trang_phuc'),
(75, 'Vayne chiến binh rồng', 142, '4bf418407fe09129def388db772629a8.webp', 'a9f15fed02481ae61c95a57576dfe66a.webp', 1, 2, 14, 'trang_phuc'),
(76, 'Urgot máy móc', 140, 'c852fe8b08e2a48f27c7a3db7bcf1dfd.webp', '8477d847d3673d8d79183a4a029194b4.webp', 1, 3, 12, 'trang_phuc'),
(77, 'Udyr', 139, '9563e286b609c8dea92bfdfffa85c741.webp', 'd724cf09ef7aab7902c955104e9a12ae.webp', 1, 3, 14, 'trang_phuc'),
(78, 'Twisted Fate vũ khí tối thượng', 137, 'd79e1a2eb7c3fc6575700a1257c79d67.webp', '4a027f18377f494c1629ecae70f292a1.webp', 1, 4, 19, 'trang_phuc'),
(79, 'Tryndamere ma sứ', 136, '8a2df7a235db392dc95aa380c422be56.webp', 'e2bcc1db32df063ac9eb2babf030ed6a.webp', 1, 4, 20, 'trang_phuc'),
(80, 'Trundle chiến binh rồng', 135, '7510f6b9331f086ae5713133ac0fbf8b.webp', '46eb54d8ab22217f8ef99f03f482b704.webp', 1, 3, 14, 'trang_phuc'),
(81, 'Tristana luyện rồng', 134, 'c2fb68755c027e1f876ba68130d1b5c2.webp', '51c797db3895b45c811d5824e0c6e3ac.webp', 1, 2, 14, 'trang_phuc'),
(82, 'Teemo vũ trụ', 132, 'a57f5a346593e314bae3faa31924a360.webp', '9840345db7eb20333fdf66a29bf81f5e.webp', 1, 3, 10, 'trang_phuc'),
(83, 'Talon cao bồi', 130, '67bcc93fe33da8b6eeaeebb933f96a73.webp', '0f617df3dafc4dd4e6ec473768a6afd4.webp', 1, 3, 1, 'trang_phuc'),
(84, 'Taric tiệc bể bơi', 131, '5be134997f1e45e6e461b8da548b41f4.webp', 'ef0a2c4612ed9c096e6c1c7832001ba3.webp', 1, 2, 11, 'trang_phuc'),
(85, 'Taliyah tiệc bể bơi', 129, 'ff7bb3e3f3fe9539ab953eceffb715d4.webp', 'ab28e096b3ce39aa89c198f084d72db7.webp', 0, 2, 11, 'trang_phuc'),
(86, 'Taliyah vệ binh tinh tú', 129, '3a7335edd645817fff241c6da6759bbb.webp', '0fb1f3a6e07faa1f9f2e75807fc1928f.webp', 1, 3, 4, 'trang_phuc'),
(87, 'Syndra vệ binh tinh tú', 127, '68f9eb918ad2e36d6c7d3d40380a6cee.webp', '75105cf8e1c7ddca0f0fc1ab4a178fdc.webp', 1, 4, 4, 'trang_phuc'),
(88, 'Swain sứ giả xứ tuyết', 125, '01d9c995af456f8fc157c5c866fb162d.webp', 'f45423ba389888f2d235f98f2084fcbf.webp', 1, 3, 9, 'trang_phuc'),
(89, 'Soraka mùa đông', 124, 'baa40c0ac562cab1113ecf8bd7527896.webp', 'e77f42e347308ea8dfb668dce43b53d4.webp', 1, 2, 9, 'trang_phuc'),
(90, 'Sona đặc vụ siêu linh', 123, '5513dbf99faf85351c2cf2ccc60a00d3.webp', 'cecb66f1ea5f55e420eec1634502a377.webp', 1, 4, 16, 'trang_phuc'),
(91, 'Skarner chòm sao', 122, '61c37a9328f37b4f33844865d0813002.webp', '3d79893853fd4b405bd1e47ffc59f1a7.webp', 1, 3, 15, 'trang_phuc'),
(92, 'Sirvir vũ trụ nổi loạn', 121, '845db9c2d20bcb623bccc453e2db7b47.webp', '2b4aa77faae9d0d09cbf6131b8532770.webp', 1, 3, 10, 'trang_phuc'),
(93, 'Singed máy móc', 119, 'b588be07c0aeb71248f9fdb63917e57d.webp', '9c7236d3155a0fcecd3be869beb39108.webp', 1, 3, 12, 'trang_phuc'),
(94, 'Shen hỏa ngục', 117, '2e74e3fb77ae1d62b0850d3f94546bc9.webp', '63194a5c5e58aaeb35168c074f6c3719.webp', 1, 3, 18, 'trang_phuc'),
(95, 'Shaco sứ giả xứ tuyết', 116, '1ca46c9387d1d68608a530a7be300606.webp', '73e713daf46ad9f5deabbfd34dbfb062.webp', 1, 1, 9, 'trang_phuc'),
(96, 'Sett tiệc bể bơi', 115, 'd602282ca68a0c73dec49e866b609e1d.webp', '814829021396ccf28a97487f5a3f7c76.webp', 1, 3, 11, 'trang_phuc'),
(97, 'Rumble máy móc', 109, 'd3dbef1bbee5e1857d0c23ebf2b171a9.webp', '2b343c884f57fac9376cedb3fba9e2ac.webp', 1, 2, 12, 'trang_phuc'),
(98, 'Riven thần sứ', 108, 'd737ab768fe0c213243ed265a206c54c.webp', '845b03b611e3b16fdd4fa20ba5d2c4ce.webp', 1, 4, 17, 'trang_phuc'),
(99, 'Rengar máy móc', 107, '6e060aa111a1bd717c00ab88534668f7.webp', 'eba0a3ae57d7a84a196097d34b2e47d5.webp', 1, 3, 12, 'trang_phuc'),
(100, 'Renata Glasc máy móc', 105, '424b49cca0cec023f957d089079ecff0.webp', 'bea320262dee581af7de391b9d385527.webp', 1, 2, 12, 'trang_phuc'),
(101, 'Rell vệ binh tinh tú', 104, '197f55a8ec3a7c87a62c725039d367ed.webp', 'f0ba0ea86cbf7fe8fbf5cf14cd3b4f9c.webp', 1, 3, 4, 'trang_phuc'),
(102, 'Rek\'Sai tiệc bể bơi', 103, '3bc76261e0cea8b0d7ef1850a623557e.webp', 'b14c02d79479e0761df2562aa1539fd3.webp', 1, 2, 11, 'trang_phuc'),
(103, 'Rammus vũ trụ', 102, '05f5c4ac517c96c6a00fdc3cf2e6e363.webp', '10aaee79f2ede1322df1363d187d714f.webp', 1, 3, 10, 'trang_phuc'),
(104, 'Quinn vệ binh tinh tú', 100, '27d8f97de9c334b1a13b37cfdbf540ad.webp', '1fb31f0bb99b9955e01df9516ace1a1d.webp', 1, 3, 4, 'trang_phuc'),
(105, 'Qiyana chiến binh', 99, '8f75b80a8c9d34d8250e74b3cee56623.webp', 'c143b1495d76836f072330fbebbdd40f.webp', 1, 3, 14, 'trang_phuc'),
(106, 'Ornn thần rừng', 95, 'bc16c26d0d017a2b3b418e92351f58e7.webp', '3c34b3b9b72a51c24683d9cfdf133931.webp', 1, 3, 22, 'trang_phuc'),
(107, 'Orianna vệ binh tinh tú', 94, '31b900ad225a88d000d21bf1e38b3644.webp', '60869b14eae37c9e88fb061efb7e6c8d.webp', 1, 3, 4, 'trang_phuc'),
(108, 'Olaf pentakill', 93, 'c07ba0006bca33e649b1c9ce4f8064bd.webp', '502d18d2a987bbfbd88c444bb59624e9.webp', 1, 3, 13, 'trang_phuc'),
(109, 'Nunu & Willump thần rừng', 92, '3c8d6111ce2e63192739498318de8133.webp', '7645baf7658cae6d3cb2d60a5cc3552a.webp', 1, 2, 22, 'trang_phuc'),
(110, 'Nocturne thần rừng', 91, '0184a19a35a0ae2a88c314187ffc4338.webp', '675a736671e060d49022f94161401975.webp', 1, 3, 22, 'trang_phuc'),
(111, 'Nilah tiên hắc ám', 90, '95f486acee902b604f624e31aab7c721.webp', '6b8c354b636382cf982555fc1dcaf7e2.webp', 1, 3, 8, 'trang_phuc'),
(112, 'Nidalee thần sứ', 89, '7d443cad5fbfb2192a1a90391c768869.webp', '18e961b53960143f225721b5c1862162.webp', 1, 3, 17, 'trang_phuc'),
(113, 'Neeko thần rừng', 88, 'c34e2e36219f2d5d7d867ac662876f1f.webp', '3c44151993a1dd8a00463d9ee23f20ba.webp', 1, 3, 22, 'trang_phuc'),
(114, 'Nautilus chòm sao', 87, '06f8038952d373b705c52471f8f19cb7.webp', '9ed2fcd42729c02dad9de58098d3256f.webp', 1, 3, 15, 'trang_phuc'),
(115, 'Nasus ma sứ', 86, '9716bc78e3d8a72fe3cafadf1495a0f6.webp', '800ecd9d363e84325f24320a49ba1d06.webp', 1, 3, 20, 'trang_phuc'),
(116, 'Nami tiên hắc ám', 85, '8dbcdcd6db15ec7b93fef82baa1e519b.webp', 'e143da688dc6cb8222a2890a21d20fa2.webp', 1, 3, 8, 'trang_phuc'),
(117, 'Naafiri chiến binh', 84, '239cebc5318c41064132aec882f2b832.webp', '4af09dfd12d31bb649b2f5f6eb0ce62a.webp', 1, 3, 14, 'trang_phuc'),
(118, 'Morgana thần sứ', 83, '47b5ee066b9ed73463013e7d8c5d1935.webp', 'cd3ce2c0aa9fd7249fdec8bd0cc841a9.webp', 1, 4, 17, 'trang_phuc'),
(119, 'Aatrox máy móc', 1, '4a38b47a7cd481656aadeaf2fed02428.webp', 'b3e3e6ad3f2e35ab4613e601204d865e.webp', 1, 3, 12, 'trang_phuc'),
(120, 'Akshan vũ trụ', 4, '43d882af3269be1d324c292bf369a0f5.webp', '67c73783ee67955e2e4c708d71fe0a43.webp', 1, 3, 10, 'trang_phuc'),
(121, 'Alistar băng giá', 5, 'a99f9ff3d0021b403b103d30277e06d1.webp', 'ff1b66a6f9f4a5061ff436dc4f593a64.webp', 1, 3, 9, 'trang_phuc'),
(122, 'Amumu hỏa ngục', 6, '802c5f407ea43e572549bd56de0f4b87.webp', '0c26e6c5478c9ba1a238621ec9e9530f.webp', 1, 3, 18, 'trang_phuc'),
(123, 'Annie mùa đông', 7, 'b5a1da5c6a46d381a44cafa0f236310c.webp', '9cc5d0ac68b0d0eeaaa554e418c32327.webp', 1, 1, 9, 'trang_phuc'),
(124, 'Aphelios ma sứ', 8, '65bbb7cc17fdeff2676152c594bb2765.webp', '8b009965d593c5b79fa64e8566bc5adb.webp', 1, 4, 20, 'trang_phuc'),
(125, 'Aurelion Sol máy móc', 10, '07a945d3f86f91d7886bcf544988747d.webp', '22026999a14285d958fa5398c13004c1.webp', 1, 4, 12, 'trang_phuc'),
(126, 'Azir thần rừng', 11, '26a2b8023bf90b716256f3172fbe8404.webp', '331f16aa63c6eb301ff2cca8ecc06596.webp', 1, 3, 22, 'trang_phuc'),
(127, 'Bard vũ trụ', 12, '085a7e072bffba124a033f84831cb039.webp', '1bb4cbfba87de9c0e32ec82e30952bbd.webp', 1, 3, 10, 'trang_phuc'),
(128, 'Bel\'Veth chòm sao', 13, '7628698123ee26a3b286985246271af1.webp', '0996f4223fa622b47a23ecedbfa3798f.webp', 1, 1, 15, 'trang_phuc'),
(129, 'Blitzcrank máy móc', 14, '6ccf35db207ba621bf7a2ff6a8d1765d.webp', '95c3474f2d0f91a9095e798f2058406a.webp', 1, 3, 12, 'trang_phuc'),
(130, 'Brand chiến binh', 15, '034b354061545fd5b463fe36d6a6cd53.webp', '51424a463629f6187740f71ae5b2ee5a.webp', 1, 1, 14, 'trang_phuc'),
(131, 'Braum chiến binh', 17, '1d5e125c28f346b0b3902f2f8a87af42.webp', 'deaee8ae639281269d596f3600ad7413.webp', 1, 3, 14, 'trang_phuc'),
(132, 'Briar vũ trụ', 18, '300d7273dbc7d8fb116a01eb056a7677.webp', '2a37f57a37c1ef46e686ad6e00b7cd78.webp', 1, 2, 10, 'trang_phuc'),
(133, 'Cassiopeia tiên hắc ám', 21, '7bb0812cea693a7bffeea5beac5ba491.webp', '79e35628e6b6de2fae497a94813870c2.webp', 1, 3, 8, 'trang_phuc'),
(134, 'Cho\'Gath máy móc', 22, 'aed09019cc0c78d9153a83baf02044ea.webp', '0c9da18a18a83800acc1ac13a962a3e0.webp', 1, 3, 12, 'trang_phuc'),
(135, 'Corki vũ trụ', 23, 'acda536012ccf436fca1c079f3d342d4.webp', '144a99fde8dce061ce18402cf2ce7c30.webp', 1, 3, 10, 'trang_phuc'),
(136, 'Diana mùa đông', 25, '3d982b7c860a020dd55ea8273a16dad6.webp', '939a91d6d3b1096287949718d27677b8.webp', 1, 4, 9, 'trang_phuc'),
(137, 'Dr.Mundo mùa đông', 1, '7bf97625a9b22d4546dff23707c14905.webp', '58c39b7a836ba8b44ee8bf500ce886ad.webp', 1, 3, 9, 'trang_phuc'),
(138, 'Ekko vũ khí tối thượng', 28, 'e506195035f198166691b2f71e750554.webp', 'fa1e6695edc8006bd4e1bc5dd02bc4dc.webp', 1, 4, 19, 'trang_phuc'),
(139, 'Elise tiên hắc ám', 29, '43ae6bbb3f3d0152105b9a43af4697c0.webp', '7bb5ce5d3a728e723b62131385c55cbf.webp', 1, 1, 8, 'trang_phuc'),
(140, 'Fiddlestick vệ binh tinh tú', 32, '36c6fa5589fd0a10a8aa6a181802fa60.webp', '854a6ce08f6c30aee9ecbf72f558d27c.webp', 1, 3, 4, 'trang_phuc'),
(141, 'Fizz vũ trụ', 34, '578fb4f162d93e2ab1df2d75ff658cf3.webp', '09cffa716193878b31600c2592531b9e.webp', 1, 3, 10, 'trang_phuc'),
(142, 'Galio hỏa ngục', 35, '3578d5a8de997c700a4a587d4e60ffad.webp', '1ae2407c1a305d59b7fe53ecebcefa72.webp', 1, 3, 18, 'trang_phuc'),
(143, 'Gnar thần rừng', 38, '7cc9150c70dd4b3336a148a33e795c41.webp', '16371b76849174821274ad9769c8a3ff.webp', 1, 3, 22, 'trang_phuc'),
(144, 'Gragas thần sứ', 39, '36a75dfe94797ba6a6c07061b02705e0.webp', '4afd57837a6a84ec899bef2536151abc.webp', 1, 3, 17, 'trang_phuc'),
(145, 'Gwen chiến binh', 41, '66d9045174740296b63436db5171fcf3.webp', '0b43457a5ff5655b82626b4ed66a319d.webp', 1, 4, 14, 'trang_phuc'),
(146, 'Heimerdinger tiệc bể bơi', 43, '1161eed096912b3c52eb0370368a76ff.webp', 'c56ad34f6fcbe88f8b9a77028d6fb419.webp', 1, 3, 11, 'trang_phuc'),
(147, 'Hwei mùa đông', 44, '558b07cac0d4e8e014c7c10af0f635ff.webp', 'c734626dc394444cd3ffd541ad5f1315.webp', 1, 4, 9, 'trang_phuc'),
(148, 'Illaoi chòm sao', 45, 'a5bf1390919d1562234fbb7fc603c19b.webp', 'a356450f578a9a029ddd7aeda0c4d292.webp', 1, 3, 15, 'trang_phuc'),
(149, 'Ivern thần rừng', 47, '21cf57681f62d2e27a44ca112a863fc9.webp', '1e5dee8ad29f5d75b62a617c9076fd2a.webp', 1, 3, 22, 'trang_phuc'),
(150, 'Jarvan ma sứ', 49, '5a85ce293ac93f4136cad445ae752bd8.webp', '493e59f6c2c6b18858fb3d3eada501f3.webp', 1, 4, 20, 'trang_phuc'),
(151, 'Jax máy móc', 50, 'e62e210d831becaae8fd62ad94d4c1a9.webp', '7643164938ee6c461a29e9bad21c8ec0.webp', 1, 4, 12, 'trang_phuc'),
(152, 'K\'Sante', 54, '0f0fedfb309468f7e1ca8147a9af7fe3.webp', '8a2b4603f45debfbca7c13892f671aeb.webp', 1, 4, 14, 'trang_phuc'),
(153, 'Kalista chiến binh', 56, 'a4f352524edeff6975ed2291d868dcc5.webp', 'e8d8c536d8854e0da17bdf721c458e14.webp', 1, 2, 14, 'trang_phuc'),
(154, 'Karthus thần rừng', 58, '6e46df558826fab889622185fafda8f6.webp', '6e46df558826fab889622185fafda8f6.webp', 1, 3, 22, 'trang_phuc'),
(155, 'Kassadin chiến binh', 59, 'e675da625cacd0f797557c472f72f739.webp', '3e8c1976de4f2421995ff04c8910f110.webp', 1, 3, 14, 'trang_phuc'),
(156, 'Kayle đặc vụ siêu linh', 61, '90ba48c53d18a111777d6693c3e1dcb9.webp', '1db23c6f60c9fbdb93ca917bdcfac617.webp', 1, 3, 16, 'trang_phuc'),
(157, 'Kayn vũ trụ', 62, 'c2b479492888cd040e08ee7951b9caa0.webp', 'ed7f8384c4bcc92cc0aa37619dd4de64.webp', 1, 4, 10, 'trang_phuc'),
(158, 'Kennen hỏa ngục', 63, '49dbb672a2d0fe6b091b89b1a5e7d52d.webp', 'd3f15b857547b76e8e0163db5b1fdcf2.webp', 1, 3, 18, 'trang_phuc'),
(159, 'Kha\'Zix máy móc', 64, 'bdf9833013a1feea66a5061c21bb3f2d.webp', '5e432d3a166cd9889eee78a11e1d4ae5.webp', 1, 1, 12, 'trang_phuc'),
(160, 'Kindred thần rừng', 65, 'aeb8b79ca6dfd195152dfbf50e71149d.webp', '4170fc0c1fb52c2e5cda5586bddf2ca1.webp', 1, 3, 22, 'trang_phuc'),
(161, 'Kled chiến binh', 66, 'e354746fe0ec28c0a855f256d39a6abb.webp', '886e13e77997b1ae77120eb5a53fd22b.webp', 1, 3, 14, 'trang_phuc'),
(162, 'Leblanc tiên hắc ám', 68, 'e2638461c986ae325849da2b9a622461.webp', '732b15b11c50151bb8edd35a704811f4.webp', 1, 3, 8, 'trang_phuc'),
(163, 'Leesin chiến binh rồng', 69, '13d05040e73b9babe64a042844dfef3e.webp', 'b28fd4c1ea2532983507cd5ccf3e6040.webp', 1, 3, 14, 'trang_phuc'),
(164, 'Lillia ma sứ', 71, '196a3d70b7e4766da5417739a507cba8.webp', '1f58431e725490885458a4e39ac22c93.webp', 1, 3, 20, 'trang_phuc'),
(165, 'Lissandra tiên hắc ám', 72, 'a07861f20b1962ee7b48da56954a9a36.webp', '08d13d3c7c26da6719150c24a4546aed.webp', 1, 3, 8, 'trang_phuc'),
(166, 'Lulu chòm sao', 74, 'fdd7501f07bd75a0d429935075b5244e.webp', 'bebca8744f4788295f50611d72aec60e.webp', 1, 5, 15, 'trang_phuc'),
(167, 'Lux thập đại nguyên tố', 75, '396c59b607fa76c0c7f5e2e90d542859.webp', '2b1de0db88a30b187ab1913a29cf77c2.webp', 1, 5, 17, 'trang_phuc'),
(168, 'Malphite máy móc', 76, '07c2ca0b8d73b97cb37d1b230e449eae.webp', '914745254fcd37b79d3fe64b9913d36f.webp', 1, 3, 12, 'trang_phuc'),
(169, 'Malzahar mùa đông', 77, '92a1ed3180e59f4535d21cbcf944da4b.webp', 'cfffe9a6271faab26f70a55f0e0a3ae1.webp', 1, 2, 9, 'trang_phuc'),
(170, 'Maokai vũ trụ', 78, '994f7e4602fb0d6f537b53ecaf08a641.webp', '23d4a9091197ad4e1977187020c97c86.webp', 1, 3, 10, 'trang_phuc'),
(171, 'Master Yi đặc vụ siêu linh', 79, 'cd9537deee908c786fe4f72e2de07dce.webp', '9e728e46a9a09f4f9a6d55dced07d0e6.webp', 1, 3, 16, 'trang_phuc'),
(172, 'Milio vệ binh tinh tú', 80, '3e89fe646f7b1dd426c6f49da12fb6bb.webp', '6c82736dc7ef0c65da1bb3455b817be2.webp', 1, 3, 4, 'trang_phuc'),
(173, 'Yasuo ma sứ', 156, '15b241130174a2c634d46de4ab50a9e7.webp', 'd1abb7945fcb597ea4d33cd0a156e4e2.webp', 1, 4, 20, 'trang_phuc');

-- --------------------------------------------------------

--
-- Table structure for table `vat_pham`
--

CREATE TABLE `vat_pham` (
  `ma_vat_pham` int(11) NOT NULL,
  `ten_vat_pham` varchar(255) NOT NULL,
  `trang_thai` int(11) NOT NULL,
  `hinh_anh` varchar(68) DEFAULT NULL,
  `ma_loai_vat_pham` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vat_pham`
--

INSERT INTO `vat_pham` (`ma_vat_pham`, `ten_vat_pham`, `trang_thai`, `hinh_anh`, `ma_loai_vat_pham`) VALUES
(1, 'Mẫu mắt Starcall', 1, 'ddd90f0577b339735721942898f5c2d7.webp', 1),
(2, 'Mẫu mặt Draven', 1, '52f3c276565c227af2cbba23a62c71b8.webp', 1),
(3, 'Let Do This', 1, '1672db83f33b10486125066d40ebe308.webp', 2),
(4, 'Mẫu mắt Luminosity', 1, 'b3ce74f75dc44f99c84671c89cfac085.webp', 1),
(5, 'Mẫu mặt URF Triumphant', 1, 'f519637c26b411bd2a3185c3a35df141.webp', 1),
(6, 'According to Plan', 1, '94997ecab74cf61965540676110500bc.webp', 2),
(7, 'Cup-Yayy', 1, '508fb0718683d990cc72efb17a3096f4.webp', 2),
(8, 'Mẫu mắt Dragonslayer', 1, '7800b9e6edc8807ed938ee9b1a92a255.webp', 1),
(9, 'Mẫu mắt Golden Goal', 1, '00041694800043937d31a2d18beddd4a.webp', 1),
(10, 'Mẫu mắt Mecha', 1, '9072ab6ef2d4ed7d5d5335028a8f359a.webp', 1),
(11, 'Mẫu mắt Battlecast', 1, 'fb86316ba58df2405a4d4f8b1aec2573.webp', 1),
(12, 'Mẫu mắt Lunar Dragon', 1, 'b14d05d5713de777776e40e4e44ef162.webp', 1),
(13, 'Mẫu mắt Optic Enhancer', 1, '307df6688c82691c5a66b394a5f30cab.webp', 1),
(14, 'Mẫu mắt Riggle', 1, 'fd76a990ff5d3c718fd390c471cae190.webp', 1),
(15, 'Mẫu mắt Definitely Not A', 1, '81770d9c1597cfb34163bc6c6d9299fd.webp', 1),
(16, 'Mẫu mắt Mecha Zero', 1, '766529efb2ac4bf98e85249dcf3e54b9.webp', 1),
(17, 'Mẫu mắt El Poro', 1, '2ba10035c019a6071d52b1bcd57e94cc.webp', 1),
(18, 'Mẫu mắt Dark Star', 1, 'b48636b826e93d0f072890e42f5334eb.webp', 1),
(19, 'Mẫu mắt His Royal Crabness', 1, 'c8dad8b0b3d136a2bebc0e09787e6eb6.webp', 1),
(20, 'Mẫu mắt Recon Drone', 1, '144421edfd1025c1ed05ea2e7f6723ee.webp', 1),
(21, 'Mẫu mắt GAME ON', 1, '63559764743d24e00d8e47a7a823f141.webp', 1),
(22, 'Mẫu mắt Star Guardian', 1, 'f1d3a6960cfd4a7486f7748ce15e962d.webp', 1),
(23, 'Mẫu mắt Mechs vs Minions', 1, 'c86b3f426543398457736adc8f7e29cb.webp', 1),
(24, 'Mẫu mắt Blood Demon', 1, 'ab31d18cb3d0c000e5de859500bd6147.webp', 1),
(25, 'Mẫu mắt Eye of the Dragon', 1, '8e0685e5277d49772fd38714e0d75727.webp', 1),
(26, 'Mẫu mắt God Fist', 1, 'bcdf22317a8449bd1b58fef75b839268.webp', 1),
(27, 'Mẫu mắt Corruptant', 1, '5ca08591b13c88cdcb317cabad54e055.webp', 1),
(28, 'Mẫu mắt Pulsefire', 1, '944599ab9a4186f33ef27074762f9af7.webp', 1),
(29, 'Mẫu mắt Omega Squad', 1, '891a84889b2393ab92471b5aa6766d68.webp', 1),
(30, 'Mẫu mắt Pentakill', 1, '81fc598df1074f3f243504777ed1177d.webp', 1),
(31, 'Mẫu mắt Mimi', 1, 'e02ceca1cebb7da9e2069c72545a396c.webp', 1),
(32, 'Mẫu mắt Divine Sword', 1, '1dc049a1bd3ddb8122815a335c2de674.webp', 1),
(33, 'Mẫu mắt April Foods', 1, 'b08b045e255887946f279925d1924e1e.webp', 1),
(34, 'Mẫu mắt 2018 Pulsefire', 1, '91ced68bf8d02e25d2049e9071f5b02d.webp', 1),
(35, 'Mẫu mắt The Lion', 1, '87dec2181835665bf1d20eb027f43d6d.webp', 1),
(36, 'Mẫu mắt The Wolf', 1, '7cab558eec09f9d082acff62eeee0f78.webp', 1),
(37, 'Mẫu mắt Hang Loose Pengu', 1, '8f1800633d4c2925adde6eb1f4c5cfa1.webp', 1),
(38, 'Mẫu mắt Surfin\' Pengu', 1, '80e06e99af0f08304a5d01e7cb9e62a6.webp', 1),
(39, 'Mẫu mắt Wipeout Pengu', 1, '63fb3ad635a39f56866bce071a084876.webp', 1),
(40, 'Mẫu mắt Devil Vulture', 1, '0778e1c3b8a3cd6c965041268f5151d8.webp', 1),
(41, 'Mẫu mắt Space Lizard', 1, 'd42a78f38c020d0ab52451e355b3923d.webp', 1),
(42, 'Mẫu mắt Trained Dragon', 1, 'bbcfeff569acca2d6b9ddb6e054409a0.webp', 1),
(43, 'Mẫu mắt Pajama Guardian', 1, 'd3ebc975c04378b18548261bc6e303f7.webp', 1),
(44, 'Mẫu mắt Unassuming Snowman', 1, '97e5a03340830ed1f450db0732c305ca.webp', 1),
(45, 'Mẫu mắt 2019 Blood Moon', 1, '5dee47be4d195052407e71db329fe3a8.webp', 1),
(46, 'Mẫu mắt Cat Lover', 1, 'b5baddf6f34c8064d3a6c60ade44eea2.webp', 1),
(47, 'Mẫu mắt Dog Lover', 1, 'd8798946f4fdbfe4f07f83e99eb04e9f.webp', 1),
(48, 'Mẫu mắt Elementalist', 1, 'ccb6bb579a7130bd9b13984896e76097.webp', 1),
(49, 'Mẫu mắt Exo-Ward', 1, '4538a8a4ec78e87cd5afb6cbf05acf54.webp', 1),
(50, 'Mẫu mắt Sun Disc', 1, '0733482d6485ea32a652df39a015cc77.webp', 1),
(51, 'Mẫu mắt Mother Serpent', 1, 'dde4ddd5ee55a2031f52abcd4d5c9b55.webp', 1),
(52, 'Mẫu mắt Slaughter Fleet', 1, '687794eacad8725eecc07c2c73dfa996.webp', 1),
(53, 'Mẫu mắt Hextech', 1, 'a8f6a115b8cc0992eb133074c10d584a.webp', 1),
(54, 'Mẫu mắt SKT T1', 1, '87e0030212ff5bda8d4e47d088d615e3.webp', 1),
(55, 'mẫu mắt Conqueror', 1, '869757f4e1c07a8bbe1209e925c3ef4a.webp', 1),
(56, 'Mẫu mắt SKT T1 kkOma', 1, '9b134d468bc0689d38fe8886d8dcd3b3.webp', 1),
(57, 'Mẫu mắt MSI_2018', 1, 'aa26ec13fbcaba8796fb9653b8efaa6a.webp', 1),
(58, 'Mẫu mắt Championship Hot Dog', 1, 'f91b90d6d4885c0582d27ae1a40719a8.webp', 1),
(59, 'Mẫu mắt 2019 Conqueror', 1, '7eec5e8d4ae2fb5fbc99b32b2866ebee.webp', 1),
(60, 'Mẫu mắt Poro', 1, 'f43db971103fc1f054678478bc67962f.webp', 1),
(61, 'Mẫu mắt Astronaut Poro', 1, 'ebda71a6e5e1095f6ca80841d9f54cfa.webp', 1),
(62, 'Mẫu mắt Gentleman Poro', 1, '6e9be9268b72ad221ad6ede80e37c95a.webp', 1),
(63, 'Mẫu mắt Underworld Poro', 1, '832963eae689fd48ddf00921ee2bc725.webp', 1),
(64, 'Mẫu mắt Battlecast Poro', 1, '9b2de8c7a04adf204fee452aa6149e50.webp', 1),
(65, 'Mẫu mắt Dragonslayer Poro', 1, '6581d0e1b47cd1f4af058727770dd745.webp', 1),
(66, 'Mẫu mắt Bat-O-Lantern', 1, '98152f2f2a6b644c2ed0d8afa5e5116d.webp', 1),
(67, 'Mẫu mắt Haunting', 1, 'f7e220c6e64897822da4b15e6f20d40e.webp', 1),
(68, 'mẫu mắt Widow', 1, 'e9464e9bf186f63bf79d9bec48777d98.webp', 1),
(69, 'Mẫu mắt Deadfall', 1, '18316b46516b0dad8bfcacc74249cf8a.webp', 1),
(70, 'Mẫu mắt Deadfall', 1, 'e58c9e99b8ac49c3a48cf47f7ea57edf.webp', 1),
(71, 'Mẫu mắt Tomb Angel', 1, '726a46528c204ed70847d80fd345f114.webp', 1),
(72, 'Mẫu mắt Vamporo', 1, '83024cb43437fb6d00011f3f0dcab770.webp', 1),
(73, 'Mẫu mắt Tales from Rift 2019', 1, '58f4abbedf4da3b367737bdff54d975b.webp', 1),
(74, 'Mẫu mắt Lantern of the Serpent', 1, '1c4f5fbfd90d5933c59fca70793a82c7.webp', 1),
(75, 'Mẫu mắt Banner of the Serpent', 1, 'bb6922a6e033afa263f290606c4f5a67.webp', 1),
(76, 'Mẫu mắt Banner of the Horse', 1, '9269222d75f20afde922836bc0402b6c.webp', 1),
(77, 'Mẫu mắt Gong', 1, '7361b783801b9ae76ba54d3a42f9b969.webp', 1),
(78, 'Mẫu mắt Rising Dawn', 1, '8b4581e79eaaa4aa15c3945dc3da4143.webp', 1),
(79, 'Mẫu mắt Crest of the Rooster', 1, '4968c31a663be12a2948bfced4fa624e.webp', 1),
(80, 'Mẫu mắt Nasus Puppy', 1, 'c3327be3ad5b50618fef1ff306055955.webp', 1),
(81, 'Mẫu mắt Warwick Puppy', 1, 'a254b0416694ddae9e7d812a70595737.webp', 1),
(82, 'Mẫu mắt Year of the Pig', 1, 'bb038a0cef61c6e3430792f0d54a19b2.webp', 1),
(83, 'Mẫu mắt Snowman', 1, '55441d7cce60859901f35b94e8659791.webp', 1),
(84, 'Mẫu mắt Gingerbread', 1, '1461d1974e50c468639a57db258205f0.webp', 1),
(85, 'Mẫu mắt Candy Cane', 1, 'f60125ea8753ccec02eace2495b6f406.webp', 1),
(86, 'Mẫu mắt Penguin Skier', 1, '42ae730e24cf39cae25bd5625c64bd02.webp', 1),
(87, 'Mẫu mắt Santa Penguin', 1, '74f849cc4c903fa726045440d8a4b047.webp', 1),
(88, 'Mẫu mắt Dearest Deer', 1, 'c97848746e575c7c2b934e93abba1d44.webp', 1),
(89, 'Mẫu mắt Bouquet', 1, '3404836af22973538cf9c3ae380dcdfc.webp', 1),
(90, 'Mẫu mắt Heartseeker', 1, '43379aac3e49f3eab40e743d9c32aea3.webp', 1),
(91, 'Mẫu mắt Harpseeker', 1, '51bb70a94e5698feffa6134dae26724f.webp', 1),
(92, 'Mẫu mắt Love Dove', 1, '223a3827791da5fbf4ba9bb1ee8ffd6e.webp', 1),
(93, 'Mẫu mắt Lovebirds', 1, '742824362e8c153284875bfca9119618.webp', 1),
(94, 'Mẫu mắt Queen Poro', 1, '0de910a5407580e15c3234c2a1672eed.webp', 1),
(95, 'Mẫu mắt Essence Collector', 1, '419b61d1dd017be2860de9caf0523c59.webp', 1),
(96, 'Mẫu mắt Season 3 Championship', 1, '9a2778826ab2810a84da1f191cfc94eb.webp', 1),
(97, 'Mẫu mắt All Star 2014', 1, 'f981b37d4ed0009c0cef5e17c83307da.webp', 1),
(98, 'Mẫu mắt Season 2014 Championship', 1, '73c3f72a669f2048ee62851281c21449.webp', 1),
(99, 'Mẫu mắt Season 2015 Championship', 1, '382b44ebebebc6ea6a0d85b68cb6bf65.webp', 1),
(100, 'Mẫu mắt 2015 All Star Team Fire', 1, '84a0de67ac8b7d9d344d9211aac306a4.webp', 1),
(101, 'Mẫu mắt 2015 All Star Team Ice', 1, '898bfc6e5fb628f4fb497a7ddf643266.webp', 1),
(102, 'Mẫu mắt 2016 Championship', 1, '09cb0cda10d6536685ed82a2bc2414bd.webp', 1),
(103, 'Mẫu mắt 2016 All Star', 1, '2510ace31c523963329617bbf80b5039.webp', 1),
(104, 'Mẫu mắt 2017 Championship', 1, '5a40a5e3b895b53f89c6f8f20810d12e.webp', 1),
(105, 'Mẫu mắt 2018 Championship', 1, '6564c53176be73d6a6056eabc489d851.webp', 1),
(106, 'Mẫu mắt Dawnbringer', 1, '2e17faff62ddcafc44bc71ac75788b09.webp', 1),
(107, 'Mẫu mắt Nightbringer', 1, 'c49dd6dd3eccda61a28a7916f59dc038.webp', 1),
(108, 'Mẫu mắt Arcade Poro', 1, 'b756390e16b867db33296c2ebf9cdd99.webp', 1),
(109, 'Mẫu mắt 2017 Golden Championship', 1, '00deb5f9ce49d45579c769cecc8a68aa.webp', 1),
(110, 'Mẫu mắt 2018 Golden Championship', 1, '35e84f0b2aa5eb16fc100623ddda8c07.webp', 1),
(111, 'Mẫu mắt Pumpkin Cat', 1, '46253ea05acb8a2f0e622b99223bfb96.webp', 1),
(112, 'Mẫu mắt Pop Music A', 1, 'a0f757d0690a11862fa4c655ec341bd8.webp', 1),
(113, 'You\'re next', 1, '2b25421a52704494e9467645c094fee6.webp', 2),
(114, 'Smug', 1, '2737a9c73c150f61c9df8f8b8b108553.webp', 2),
(115, 'Ty Bro!', 1, '169f8f6804f7fa965bcfe36c671eabf4.webp', 2),
(116, 'Hulk Hulf!', 1, 'b22e64e7e0e64181f7ea0f0c961e9afe.webp', 2),
(117, 'The Neigh of a Certain Horse', 1, '30527174df054bb98f596dba452121f2.webp', 2),
(118, 'C\'mon, People!', 1, '3dbf3e693188ad7447eeac8ffdf55bb1.webp', 2),
(119, 'Handsome', 1, '329c713869f95e01ab093016a19ea862.webp', 2),
(120, 'BROnekton', 1, 'b4727ad7d98cc74ff93d64bc80c7449c.webp', 2),
(121, 'Alpaca', 1, 'f335ea070d61e94c039ad4eaabe98981.webp', 2),
(122, 'Foxy Chovy', 1, '058ea008b716a630728a36af77b3003f.webp', 2),
(123, 'KT Rolster Gragas', 1, 'dc1c38e65c84e72c5d726b12c4eca5d8.webp', 2),
(124, 'Red Peterfan', 1, '9f8d1fdc4920829cfe290212e4b515f5.webp', 2),
(125, 'Gimme Dat', 1, '9e58a6b3f38020391695ca68245d413b.webp', 2),
(126, 'Crab9', 1, '1e3d2dd809bb78d9de27f1f048566f60.webp', 2),
(127, 'Paw-don Me', 1, 'd03e94629b7974e608da6ba0204336f1.webp', 2),
(128, 'Bee for Real', 1, 'b51311fa574c01cf2bf2e6165c8a83a3.webp', 2),
(129, 'Revenge', 1, '67cbbbce8b60125a123fa54b8941c9c8.webp', 2),
(130, 'Sike! Not This Time', 1, 'ee0a3fe1fc0db7fabc8f869569cbd807.webp', 2),
(131, 'In for a shock', 1, '007ea3b178d669fe6b798642e86cc916.webp', 2),
(132, 'My Job is Done', 1, '0815b74302488236262ecdbfc436240a.webp', 2),
(133, 'Boba Break', 1, 'ff76b62fdfe2d43f6623e76084a72e67.webp', 2),
(134, 'Take That L', 1, 'd831200a61586337633bb8cb4900de8d.webp', 2),
(135, 'Nice Try', 1, 'dbfbce89fe1544eae79af1589d5834ab.webp', 1),
(136, 'Codygma', 1, '144c53469d62ca3032cc2065a801c25a.webp', 2),
(137, 'El Topo', 1, '4ab43785523d6de7935ebec6c9c5c09f.webp', 2),
(138, 'PFFF', 1, 'd3b6feaf1e950038eb16c57955dd584d.webp', 2),
(139, 'El Toro Draven', 1, 'fd4d54cfa5158749fa468f5be3cbe3e4.webp', 2),
(140, 'That\'s It?', 1, 'b59fd87ef564fde8dd9a58d0439a905b.webp', 2),
(141, 'Check That Out!', 1, '308de605edd4692f074e635ba6cc820c.webp', 2),
(142, 'Take That', 1, '2e5ca8e9745ed419ab9c710149d7c0bb.webp', 2),
(143, 'Miss Me?', 1, '885ba0b0a531b063d023240ae0ba1bca.webp', 2),
(144, 'No You Don\'t', 1, '3f7f3cac31f71882088cef0e6e3d2221.webp', 2),
(145, 'Show Me Your Love', 1, '3106973433ee52c523657d300b6fdf05.webp', 2),
(146, 'That\'s Just Great', 1, 'b15bd6ecae5762b18c8087295acdb225.webp', 2),
(147, 'Good Job, Buddy!', 1, '3c39245073f90708d24b250dea0cb1c7.webp', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bau_vat`
--
ALTER TABLE `bau_vat`
  ADD PRIMARY KEY (`ma_bau_vat`);

--
-- Indexes for table `chuc_nang`
--
ALTER TABLE `chuc_nang`
  ADD PRIMARY KEY (`ma_chuc_nang`);

--
-- Indexes for table `dong_skin`
--
ALTER TABLE `dong_skin`
  ADD PRIMARY KEY (`ma_dong_skin`);

--
-- Indexes for table `do_hiem`
--
ALTER TABLE `do_hiem`
  ADD PRIMARY KEY (`ma_do_hiem`);

--
-- Indexes for table `ds_tuong`
--
ALTER TABLE `ds_tuong`
  ADD PRIMARY KEY (`ma_tuong`);

--
-- Indexes for table `gio_hang`
--
ALTER TABLE `gio_hang`
  ADD PRIMARY KEY (`ma_gio_hang`);

--
-- Indexes for table `khach_hang`
--
ALTER TABLE `khach_hang`
  ADD PRIMARY KEY (`ma_khach_hang`);

--
-- Indexes for table `lich_su_mua_hang`
--
ALTER TABLE `lich_su_mua_hang`
  ADD PRIMARY KEY (`ma_ls_mua_hang`);

--
-- Indexes for table `loai_bau_vat`
--
ALTER TABLE `loai_bau_vat`
  ADD PRIMARY KEY (`ma_loai_bau_vat`);

--
-- Indexes for table `loai_vat_pham`
--
ALTER TABLE `loai_vat_pham`
  ADD PRIMARY KEY (`ma_loai_vat_pham`);

--
-- Indexes for table `nguoi_dung`
--
ALTER TABLE `nguoi_dung`
  ADD PRIMARY KEY (`tai_khoan`);

--
-- Indexes for table `thong_ke`
--
ALTER TABLE `thong_ke`
  ADD PRIMARY KEY (`thang`);

--
-- Indexes for table `trang_phuc`
--
ALTER TABLE `trang_phuc`
  ADD PRIMARY KEY (`ma_trang_phuc`);

--
-- Indexes for table `vat_pham`
--
ALTER TABLE `vat_pham`
  ADD PRIMARY KEY (`ma_vat_pham`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bau_vat`
--
ALTER TABLE `bau_vat`
  MODIFY `ma_bau_vat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `chuc_nang`
--
ALTER TABLE `chuc_nang`
  MODIFY `ma_chuc_nang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `dong_skin`
--
ALTER TABLE `dong_skin`
  MODIFY `ma_dong_skin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `do_hiem`
--
ALTER TABLE `do_hiem`
  MODIFY `ma_do_hiem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ds_tuong`
--
ALTER TABLE `ds_tuong`
  MODIFY `ma_tuong` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;

--
-- AUTO_INCREMENT for table `gio_hang`
--
ALTER TABLE `gio_hang`
  MODIFY `ma_gio_hang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `khach_hang`
--
ALTER TABLE `khach_hang`
  MODIFY `ma_khach_hang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `lich_su_mua_hang`
--
ALTER TABLE `lich_su_mua_hang`
  MODIFY `ma_ls_mua_hang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `loai_bau_vat`
--
ALTER TABLE `loai_bau_vat`
  MODIFY `ma_loai_bau_vat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `loai_vat_pham`
--
ALTER TABLE `loai_vat_pham`
  MODIFY `ma_loai_vat_pham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `trang_phuc`
--
ALTER TABLE `trang_phuc`
  MODIFY `ma_trang_phuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=174;

--
-- AUTO_INCREMENT for table `vat_pham`
--
ALTER TABLE `vat_pham`
  MODIFY `ma_vat_pham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
