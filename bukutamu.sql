-- MariaDB dump 10.19  Distrib 10.5.18-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: global-db    Database: bukutamu
-- ------------------------------------------------------
-- Server version	10.8.2-MariaDB-1:10.8.2+maria~focal-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `id_admin` int(5) NOT NULL AUTO_INCREMENT,
  `username` varchar(35) NOT NULL,
  `password` varchar(35) NOT NULL,
  PRIMARY KEY (`id_admin`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'adminkominfo','e97a658231588cda40dc4d4483ad0115');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_pengunjung`
--

DROP TABLE IF EXISTS `tbl_pengunjung`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_pengunjung` (
  `nama` varchar(100) NOT NULL,
  `tanggal` date NOT NULL,
  `jenkel` char(20) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `nohp` varchar(13) NOT NULL,
  `email` text NOT NULL,
  `maksud` varchar(100) NOT NULL,
  `saran` varchar(100) NOT NULL,
  `id_tamu` int(10) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_tamu`)
) ENGINE=InnoDB AUTO_INCREMENT=248 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_pengunjung`
--

LOCK TABLES `tbl_pengunjung` WRITE;
/*!40000 ALTER TABLE `tbl_pengunjung` DISABLE KEYS */;
INSERT INTO `tbl_pengunjung` VALUES ('SUNARKO','2018-07-03','Laki - Laki','DINDIKBUD PURBALINGGA','085224690989','-','KONSULTASI SIRUP','TINGKATKAN PELAYANAN',12),('SOKHEH','2018-07-07','Laki - Laki','Bag. Umum Setda Purbalingga','081327417705','-','konsultasi SIRUP','-',13),('Ananto Pratomo','2018-07-07','Laki - Laki','Jl.Letkol Isdiman No 73 B','089649669965','pratomo0107@gmail.com','Konfirmasi Data','mudah2 an  e guess book ini bisa dikembangkan ke OPD lain...',14),('WIDI ASMOKO','2018-07-11','Laki - Laki','PDAM PURBALINGGA','081226788333','WIDI_ASMOKO@YAHOO.CO.ID','MENANYAKAN SISTEM SPSE NYA SUDAH VERSI 4 APA BELUM KARENA AKAN MENGGUNAKAN TENDER CEPAT','',15),('nur azizah erlita','2018-07-11','Perempuan','kelurahan purbalingga kidul','085222575047','nurazizaherlita@yahoo.com','konsultasi terkait pembuatan website kelurahan','terima kasih tim bidang informatika atas bantuannya memfasilitasi kami membuat website',16),('anang tedy asmoro, S. Farm., Apt','2018-07-11','Laki - Laki','Jl. letnan Kusni Rt 03 Rw 06 Kelurahan Bancar Purbalingga','081327687471','anangtedyasmoro@gmail.com','Konsultasi Pengadaan Ecatalog di bawah pengadaan 200 Juta','-',17),('PRIYO DIDI TAMTAMA, A.Md.','2018-07-11','Laki - Laki','Kecamatan Kalimanah','08112766999','dydytama13@gmail.com','konsultasi aplikasi SIRUP dan Permohonan PPK, PP','perlu diadakanya sosialisasi atau bintek dg adanya sistem yg sesuai dg perpres yg terbaru..',18),('Ratnawati Dewi','2018-07-14','Perempuan','Bagian Pemerintahan Setda Purbalingga','081548038380','ratn4dewi@gmsil.com','Konsultasi terkait pembuatan SIM Kerjasama','',19),('GALIH BUDI KURNIAWAN','2018-07-19','Laki - Laki','Dinas Perhubungan \r\nJl. Raya Kaligondang Km 2,4 Purbalingga','085291250599','braling_putra@yahoo.co.id','Koordinasi Upload Dokumen SAKIP','',20),('Suprapto','2018-07-26','Laki - Laki','Dinas Perhubungan','085875325671','dinhub@purbalinggakab.go.id','Permohonan reset password PPK DINHUB dan menerima user dan Password PPK DINHUB','Pelayanan  Baik, perlu ditingkatkan lagi',21),('kristianto','2018-07-26','Laki - Laki','Perum Griya Perwira Asri Blok H2 No.10 Padamara, Purbalingga','085866840717','krissardi@gmail.com','konsultasi','terus tingkatkan',22),('Rahadian','2018-07-26','Laki - Laki','Purbalingga wetan','089626160868','fnatic.rahadian@gmail.com','Silaturahmi dengan Pak oyong dan membetulkan cctv','mungkin meja tamu perlu disediakan snack permen yora dll :D',23),('yuli sulistiyorini','2018-07-27','Perempuan','puskesmas karangreja kec karangreja','081328730242','sulistiyorini78@gmail.com','menanyakan permasalahan upload pembelian obat','',24),('GALIH BUDI KURNIAWAN','2018-07-27','Laki - Laki','Dinas Perhubungan\r\nJl. Raya Kaligondang Km 2,4 Purbalingga','085291250599','braling_putra@yahoo.co.id','Konsultasi Tentang Penambahan Paket Kegiatan Pada SIRUP','-',25),('Arif Dwi Utomo, S.Farm., Apt','2018-07-27','Laki - Laki','RSIA Ummu Hani','085878601926','arifdwiutomo2309@gmail.com','belajar e purchasing obat','',26),('Budiyanto','2018-08-02','Laki - Laki','Dinrumkin Kab Purbalingga','082220527979','budiy_kb51@yahoo.co.id','Konsultasi perubahan RUP serta resert paswerd ppk Dinrumkin','Baiik Pelayanannya dan bantuannya',27),('arif dwi utomo','2018-08-03','Laki - Laki','RSIA UMMU HANI','085878601926','arifdwiutomo2309@.gmail.com','kursus epurchasing','',28),('herwindo','2018-08-08','Laki - Laki','jalan ketuhu no 3','081327580040','tiencatering2017@gmail.com','pengajuan spamkodok','',29),('wacono','2018-08-11','Laki - Laki','kalimanah wetan gang jati','081327580040','wacanacv@yahoo.com','upload dokumen','',30),('Basuki Rahmat','2018-08-11','Laki - Laki','Jl. kalibener gg.2 RT 5/2 Kranji Purwokerto','081226680385','ukioke.sp@gmail.com','ngobrol soal smart city','ccuuaanngggiiihhh bbiinggiiitttsss',31),('gotheng praminto','2018-08-14','Laki - Laki','karangsari rt 06 rw 3, kalimanah, purbalingga','082137303999','gotheng.praminto@gmail.com','konsultasi akun ppk dan akun sirup bagian perekonomian','',32),('yuli setiawan s.kom','2018-08-21','Laki - Laki','Badan Keuangan Daerah\r\nJl. Onje No 4','082134513195','unionoffeeling7@gmail.com','koordinasi E file','',33),('Yuli Sulistiyorini','2018-08-21','Perempuan','Ouskesmas Karangreja','081328730242','sulistiyorini78@gmail.com','Konsultasi pembuatan akun','',34),('gotheng praminto','2018-08-21','Laki - Laki','setda pbg','082137303999','gotheng.praminto@gmail.com','konsultasi sirup','baik',35),('Ampera Budi Riyanto, S.Sos, M.Si','2018-09-03','Laki - Laki','Banjarsari Kulon Rt 4 Rw 3 Kec. Sumbang, Kab. Banyumas','085781367299','Ampera.sumbang@mail.com','Permohonan pembuata user ID PPK dan penerima user ID','',36),('Muhamad Ruarizki Fais','2018-09-14','Laki - Laki','Dinas Lingkungan Hidup','085600009240','muhamadruarizki@gmail.com','Konsultasi pengisian kegiatan baru di aplikasi sirup','',37),('Era Hesti Pratiwi','2018-09-24','Perempuan','Puskesmas Karangjambu','082223749909','puskesmaskarangjambu@yahoo.com','membuat akun lpse dan sirup','',38),('Fenuk Zulaihah','2018-09-24','Perempuan','Puskesmas Karangjambu','085292727299','puskesmaskarangjambu@yahoo.com','membuat akun lpse dan sirup','',39),('siti latifah','2018-09-24','','BPBD purbalingga','085747807811','novanlatifah77@gmail.com','Reset Pasword PPK RUP','good',40),('adi wuryantoro','2018-09-25','Laki - Laki','kec.karangmoncol','08975470223','kecamatankarangmoncol@gmail.com','pengurusan pengambilan motor kecamatan','baik',41),('Linda Kusningsih','2018-09-25','Perempuan','Jl. Letjend. S. Parman No. 19 Purbalingga','085227396889','lindakusningsih@rocketmail.com','Konsultasi dan pengisian RUP di Perubahan Anggaran 2018','Puas....pelayanan ramah dan sangat membantu',42),('HERI PURBOWO','2018-09-26','Laki - Laki','Jl,Soekarno Hatta Km.2 Purbalingga','081327247483','purbowo_heri@yahoo.co.id','konsultasi sirup','baik dan alhamdulillah paham',43),('rianto','2018-09-27','Laki - Laki','Dinas Kesehatan Purbalingga','081327943393','riantopbg56@gmail.com','Konsultasi dan pengimputan sirup anggaran perubahan','Terima kasih atas bantuannya.',44),('fakhrudin ikhsani','2018-09-27','Laki - Laki','Puskesmas Pengaden','08164285352','fakhrudinikhsani4@gmail.com','Konsultasi dan pengimputan Sirup','Terima kasih telah dibantu',45),('ENDAH PURWANINGSIH WIDIASTUTI','2018-10-01','Perempuan','DINRUMKIM KAB.PURBALINGGA','081327430594','endahpurwaningsihwidiastuti@gmail.com','konsultasi sirup','buat ruang pelayanan tersendiri',46),('ady suharto','2018-10-02','Laki - Laki','Dinkes Purbalingga Jl. Jend.S. Parman No 21 Pbg','082138401079','wahyuningady@gmail.com','Pengimputan SIRUP Perubahan Anggaran 2018','',47),('ady suharto','2018-10-03','Laki - Laki','Dinkes Purbalingga Jl. Jend.S. Parman No 21 Pbg','082138401079','wahyuningady@gmail.com','Pengimputan SIRUP Perubahan Anggaran 2018','Terima Kasih atas pendampinganya',48),('GALIH BUDI KURNIAWAN','2018-10-04','Laki - Laki','jl raya kaligondang km 2,4','085291250599','braling_putra@yahoo.co.id','konsultaasi Sirup LKPP','',49),('ady suharto','2018-10-04','Laki - Laki','Dinkes Purbalingga Jl. Jend.S. Parman No 21 Pbg','082138401079','wahyuningady@gmail.com','Pengimputan SIRUP Perubahan Anggaran 2018','',50),('Endah Fitriani','2018-10-04','Perempuan','Dinkop UKM Purbalingga','081327600081','viethreeany@gmail.com','Konsultasi pengisian SIRUP','Pelayanan sudah bagus..tingkatkan dan lanjutkan!!',51),('Endah Fitriani','2018-10-10','Perempuan','Dinkop UKM','081327600081','vietyhreeany@gmail.com','Konsultasi Pengisin Sirup Metode Baru','',52),('Muhamad Ruarizki Fais','2018-10-11','Laki - Laki','DLH kabupaten purbalingga','085600009240','muhamadruarizki@gmail.com','Konsultasi penambahan paket pada aplikasi sirup','',53),('Purwanto','2018-10-11','Laki - Laki','klampok Rt 02 Rw 05 purwareja klampok','081548668194','apur64@yahoo.co.id','konsultasi sirup','pelayanan bagus',54),('priyo didi tamtama','2018-10-12','Laki - Laki','Jl. Melati 1 No. 63 Rt.02 RW.07 Purbalinggga','082135639701','dydytama13@gmail.com','Pengimputan Anggaran Perubahan di SIRUP ','',55),('Puspa Kencana Ika Nilasari','2018-10-19','Perempuan','Desa Bojong, RT 07/03','08562614427','brittleblossom28@yahoo.com','Menanyakan dan meminta solusi mengenai reaktivasi kartu prabayar hangus/terblokir.','',56),('yanuar respita sari','2018-10-22','Perempuan','puskesmas kutasari','081226399160','respita87@gmail.com','konsultasi dan penginputan anggaran perubahan','baik dan terima kasih.sukses kominfo',57),('sunarko','2018-10-22','Laki - Laki','Dindikbub Purbalingga','085224690989','disdik@purbalinggakab.go.id ','Pengimputan Anggaran Perubahan 2018','',58),('ROKHAYAH','2018-10-26','Perempuan','Jl. Letjend S Parman 95 Purbalingga','082334929345','rokhayahdinnakan@gmail.com','Penginputan perubahan anggaran 2018 dan Konsultasi SIRUP','',59),('wiyardoko','2018-11-12','Laki - Laki','puskesmas bukateja','085741215889','wiyar.doko@yahoo.com','konsultasi dan pengimputan perubahan anggaran 2018','',60),('Astri Puspitasari S.Farm.,Apt','2018-11-15','Perempuan','Puskesmas Pengadegan','081327514112','astri.lupe@gmail.com','konsultasi sirup lkpp','',61),('rakhmayanto','2019-01-07','Laki - Laki','kalitinggar kidul 2/1','08156997484','rakhmayantoabizulfa@yahoo.com','penginputan sirup','pelayanan baik',62),('Rasiti','2019-01-08','Perempuan','Kedungbenda RT.02 RW.02','081391504205','rasitisiti770@gmail.com','Pengimputan SIrup tahun 2019','baik',63),('Suprijati','2019-10-16','Perempuan','Bakeuda Kab.Purbalingga','089643144584','suprijatipbg@gmail.com','Konfirmasi kesiapan penyediaan server untuk Bakeuda','Mohon segera dicukupi ',64),('Fibria sustiana','2019-10-16','Perempuan','Labkes Pbg','081225705559','Labkeskab_purbalingga@yahoo.co.id','Input SIRUP','',65),('Krissardi','2019-10-16','Laki - Laki','Perum GPA Gemuruh RT03 RW04 Padamara PBG','085866840717','krissardi@gmail.com','Bertamu','Baik banget pegawainya',66),('IRA basoeki','2019-10-22','Perempuan','GPA pbg','085866840717','suprijatipbg@gmail.com','Deck aplikasi','Semoga semakin meningkatksn kinerja kominfo',67),('Dian sulistiono','2019-10-22','Laki - Laki','Jetix kec. Kemangkon','081903343764','dian_sulistiono@yahoo.com','Konsultasi website','',68),('Rinta','2019-10-23','Perempuan','Purbalingga wetan','082177595220','dian_sulistiono@yahoo.com','Ketemu sama yang dihati','Harus diketemukan',69),('Naufal Muhammad','2019-10-28','Laki - Laki','Munjul, Kutasari, Purbalingga, rt01 rw01','085647636909','naufalmehmet17@gmail.com','Magang','Semoga lebih baik',70),('Supriyanto,s.sos.MSI.','2019-10-29','Laki - Laki','-','081225705559','-','Konsultasi matur bup','-',71),('Did in tubuon','2019-10-29','Laki - Laki','Premmiere','081548808835',',','Penawaran','.-',72),('Sukman','2019-10-30','Laki - Laki','RT 02/05 Sagan Bobotsari','081228616112','sianakdesa08@gmail.com','Konsultasi SID','',73),('ARIF SUHERMAN','2019-10-30','Laki - Laki','SMP Negeri 2 Pengadegan','082314217888','arifsuherman38@yahoo.com','Penginputan APBD Perubahan TA 2019','Pelayanan dari pegawai sangat baik',74),('Setiyawan','2019-10-30','Laki - Laki','SMP Negeri 1 Pengadegan','085271188557','setiyaone914@gmail.com','Konsultasi penginputan sirup APBDP 2019','',75),('Titik Kurniawati','2019-10-30','Perempuan','SMP Negeri 4 Kemangkon','081228321162','abiyuhafiz@gmail.com','Konsultasi Input APBDP Tahun 2019','',76),('Salim','2019-10-30','Laki - Laki','Kembaran ','085725592342','suprijatipbg@gmail.com','Ambil dokumen','',77),('M Elfan Zulmi','2019-10-31','Laki - Laki','Purbalingga','0895330009681','Elfan.zulmi@gmail.com','Konsultasi Sirup','',78),('Mugi Rahayu','2019-10-31','Perempuan','SMP Negeri 3Karangmoncol','082135447848','muggirahayu05@gmail.com','Input Sirup  RKAP Bangub 2019','',79),('Achmad shdik','2019-10-30','Laki - Laki','Bojanegara','08562634533','vandyhenny@@gmail.com','Konnsultasi','Good',80),('Yosa Eko Pratomo','2019-10-31','Laki - Laki','Desa Purbayasa RT 02 RW 02, Padamara, Purbalingga','085740030018','yosaekop7601@gmail.com','Mengikuti Rapat PPID','',81),('Yosa Eko Pratomo','2019-10-31','Laki - Laki','Desa Purbayasa RT 02 RW 02, Padamara, Purbalingga','085740030018','yosaekop7601@gmail.com','Mengikuti Rapat PPID','',82),('Arif Suherman','2019-10-31','Laki - Laki','SMP Negeri 2 Pengagean','082314217888','Arifsuherman38@yahoo.com','Konsultasi Dan entry SIRUP APBDP 2019','-',83),('Setiyawan','2019-10-31','Laki - Laki','SMP n 1 pengadegan','085271188557','Setiyaone914@gmail.com','Pengisian RUP','-',84),('Kiki','2019-10-31','Perempuan','Bukateja','081322254345','kikibukateja@gmail.com','Penelitian','Keren',85),('Sofia Safitri','2019-11-01','Perempuan','Jl.Raya Sidabowa Rt 03/07 Patikraja Banyumas Jaws Tengah','085713214144','sofiasafitri07@gmail.com','Mencari informasi tentang jodoh <3','Diperbanyak bujang bujang muda berkualitas ;)',86),('Moko dantoro','2019-11-04','Laki - Laki','Bojongsari','-','-','Bertemu pak lalang','-',87),('Uswantoro','2019-11-05','Laki - Laki','Babakqn','085227724389',',','Bertemu pak budi',',',88),('Setiyawaan','2019-11-05','Laki - Laki','SMP n 1 pengadegan ','081271188557','-','Konsultasi sirup','-',89),('Arif suherman','2019-11-05','Laki - Laki','Smp n 2 pengadegan','082314217888','-','Konsultasi sirup','-',90),('Sukman','2019-11-05','Laki - Laki','Desa Sagan ','081228616112','-','Konsultasi PPID Desa','-',91),('Titik kurniawati','2019-11-05','Perempuan','Smp n 4 kemangkon','081228321162',',','Konsultasi sirup','-',92),('Agus','2019-11-05','Laki - Laki','Gandasuli bobotsari','-','-','Bertemu pak tito','-',93),('M yulianto S','2019-11-05','Laki - Laki','Gandasuli','-','-','Bertemu pak tito','-',94),('didik darmadi','2019-11-05','Laki - Laki','Smp n 4 kutasari','08562633933','Dharmadi@yahoo.id','Konsultasi sirup','-',95),('Wawan','2019-11-05','Laki - Laki','Purwokerto','085641759889','-','Service','-',96),('Natalia ','2019-11-10','Perempuan','Munjul rt 09 rw 05 kec.kutasari','085749741620','nataliasaputri26@gmail.com','Analisis ','',97),('Billy jodi setyawan','2019-11-12','','Kominfo','-','-','Cari pasangan','',98),('Naufal','2019-11-13','Laki - Laki','Munjul','081225705559',',','Mengambil data','Luar biasa',99),('Meli','2019-11-14','Perempuan','Elzatta purbalingga','0878372641111','melindacahyaningt92@gmail.com','Promo hijab','',100),('Ardi','2019-12-04','Laki - Laki','Pbg wetan','089626160868','Ardi@yahoo.com','Biar g 0 pengunjungnya','Sip',101),('Tri antono','2019-12-04','Laki - Laki','Sidanegara','085726863801','Tri.ant45.ta@gmail.com','Kunjungan','.',102),('Fita Fatmawati','2019-12-23','Perempuan','Perumahan Griya Safira Blok D no.5','08127223777','fitaphyta85@gmail.com','Monitoring TL','',103),('Yogi Bahtiar','2020-01-03','Laki - Laki','Telkom jl Gerilya PWT','08122669100','bahtiaryogi@gmail.com','Perkenalan DG pengelola egov','Keren',104),('Drs.Sosiawan','2020-01-23','Laki - Laki','Komisi Informasi Provinsi Jawa Tengah','024-8411093','kiprovjateng@gmail.com','Narasumber Rakor dalam Rangka Penyusunan DIP dan DIK Tahun 2020','Semoga lebih baik lagi.',105),('Purwanto','2020-01-23','Laki - Laki','Komisi Informasi Prov. Jateng','024-8411093','kiprovjateng@gmail.com','Mendampingi Narasumber dari KI Prov Jateng','Semoga Kabupaten Purbalingga menjadi lebih baik lagi!',106),('Sumarno','2020-02-03','Laki - Laki','Perumnas Abdi Negara Purbalingga Jln. Gato t Kaca 2','O81229280016','alamsorga@gmai.com','Konsultasi','',107),('Susanti','2020-02-20','Perempuan','Unsoed purwokerto','082133204342','susanti.santii28@gmail.com','Mencari informasi untuk skripsi','Sudah cukup bagus dalam pelayanannya, tingkatkan kembali keramahannya.',108),('Susanti','2020-02-24','Perempuan','Unsoed','082133204342','susanti.santii28@gmail.com','PRA survey skripsi','',109),('Budy Santosa','2020-03-23','Laki - Laki','Jln. Mekar Maya RT. 03/RW. XI Bobotsari','081328720423','bodos.purbalingga@gmail.com','Konsultasi PPID','Agar lbh meningkat lagi pelayanannya',110),('Wachid Arif B','2020-07-22','Laki - Laki','Yogyakarta','08157955557','wachid.budiman@indosatooredoo.com','Bertemu pak yonathan','',111),('Abid nurrahman','2020-07-22','Laki - Laki','Semarang','081555652222','Abid.nurrahman@gmail.com','Bertemu pak yohanes','',112),('Anita','2020-07-23','Perempuan','Museum purbakawatjca','.','.','Konsultasi pembuatan website','-',113),('Arif','2020-07-27','Laki - Laki','.','082122222197','.','Bertemu pak budi','.',114),('Laeli khasanah','2020-07-28','Perempuan','Dpupr kabupaten purbalingga','-','-','Konsultasi isi web','.',115),('Yosa Eko Pratomo','2020-07-29','','Trtrtrt','082122222197','sidesajateng@gmail.com','Dffyty','',116),('Amin mustofa','2020-07-30','Laki - Laki','Wonosobo','08115985899','.','Pengajuan permohonan cellplan menara','.',117),('Dhimas Tri Kuncoro','2020-08-03','Laki - Laki','Wanogara Kulon, RT 03/II, Rembang, Purbalingga','085325293121','Dhimastri12@gmail.com','Perihal magang','Pelayanan sudan baik :)',118),('Aji satya dana','2020-08-06','Laki - Laki','Yogyakarta','082325862491','.','Kunjungan','.',119),('Perceta kan arum','2020-08-06','Laki - Laki','Purbalingga','082122222197','.','Konsultasi bener','.',120),('Perceta kan arum','2020-08-06','Laki - Laki','Purbalingga','082122222197','.','Konsultasi bener','.',121),('Ngaliman','2020-08-13','Laki - Laki','Banjaran','082122222197','.','Konsultasi','.',122),('Igun','2020-08-13','Laki - Laki','.','082122222197','.','Konsultasi','.',123),('Mohammad Faiq Maulana','2020-08-13','Laki - Laki','Bancar, Purbalingga','089619177695','6juli99@gmail.com','Mengajukan permohonan magang','.',124),('Ifran lindu mahargya','2020-08-13','Laki - Laki','.','082122222197','-','Magang','.',125),('Dumas pramesthi sasongko','2020-09-03','Laki - Laki','Cilacap','082138191300','dimaspramesthisasongko@gmail.com','.','.',126),('Mohammad Faiq Maulana','2020-09-03','Laki - Laki','Bancar','089619177695','6juli99@gmail.com','.','.',127),('Sidik Febrianto','2020-09-03','Laki - Laki','Purwokerto','082135205244','Asidiktilama@gmail.com','.','.',128),('Muhammad Iqbal Wijayanto','2020-09-03','Laki - Laki','Sokaraja Wetan','087812915543','Iqballsc8@gmail.com','.','.',129),('Zulfikar Ali Akbar kusuma','2020-09-03','Laki - Laki','Purwokerto selatan','085781552592','Izulfikar796@gmail.com','.','.',130),('Akhsanul Maulana','2020-09-03','Laki - Laki','Tegal','08999269212','Akhsanulmaulana@gmail.com','.','.',131),('Nanda Yulina','2020-09-04','Perempuan','Pekiringan Rt 02/Rw 09 Karangmoncol','085600520176','nandayulina34@gmail.com','Permohonan PKL','',132),('Dita Ferisca','2020-09-04','Perempuan','Majasari Rt 01 Rw 05','085747058545','ditaferisca0602@gmail.com','Permohonan PKL','',133),('Lufti Nur Laeli S','2020-09-04','Perempuan','Desa kalitinggar kec.Padamara Kab.Purbalingga','087815174312','lutfinls015@gmail.com','Permohonan PKL','',134),('Hanhan','2020-09-07','Laki - Laki','Ketuhu','000000','Hanhan@gmail.com','Mencoba','Keren',135),('Labib Umar Sidik','2020-09-15','Laki - Laki','SMK Ma\'arif NU Bbs','085641665301','-','Permohonan Prakerin','-',136),('Dhimas Tri Kuncoro','2020-10-05','Laki - Laki','Wanogara kulon rt 03 rw 02, rembang, purbalingga','085325293121','Dhimastri12@gmail.com','Mengantarkan Surat Dari Humpro Setda Purbalingga','',137),('Ali Murtado','2020-11-17','Laki - Laki','Kaagsentul Purbalingga (TAPM P3MD)','082134179750','alimurta14@gmail.com','Komunikasi Dan Sounding tetang Aplikasi Jogotonggo dari Prov Jateng','Tidak ada.',138),('Aldo','2021-04-14','Laki - Laki','Purwokerto','-','-','Test','',139),('Lusi','2022-12-14','Perempuan','Bancar','09876543','.','Test','Bagus',140),('Luthfiantoro','2022-12-14','Laki - Laki','Jl. Puring 9','081320600097','Muhammad.luthfi1ml@gmail.com','Gatau','Sudan bagus',141),('Heri sulistiyono','2022-12-14','Laki - Laki','Kalimanah wetan rt03 rw07','085842625501','Soelistyonoherry@gmail.com','Berkunjung','Bagus standnya',142),('Lusi','2022-12-14','Perempuan','Bancar','0857789087612','.','Santika','',143),('Ratih Ratna Dewi','2022-12-15','Perempuan','Lumpang, Karanganyar','085726096515','Ratih@gmail.com','Mengayubagyo','Stand terlalu sempit',144),('Tris Dianasari','2022-12-15','Perempuan','Purbalingga Wetan','083873331638','-','-','-',145),('Fikri','2022-12-15','Laki - Laki','Selakambang','0857789087612','Muhammad.luthfi1ml@gmail.com','Kunjungan','Mantap',146),('Rrahadian','2022-12-15','Laki - Laki','Purbalingga wetan','085155193123','-','Lihat aplikasi','Sijoli Dan simita',147),('Edy s','2022-12-15','Laki - Laki','Gembongb\r\n Bojongsari','085842625501','-','Mangayubagyo ','Stand terlalu sempit',148),('Tri antono','2022-12-15','Laki - Laki','Sidanegara','085726863801','Tri.ant45.ta@gmail.com','Kunjungan','',149),('Alifia','2022-12-15','Perempuan','Kutasari','085799201141','-','Healing','Keren uy',150),('Aditria Nur Arghani','2022-12-15','Laki - Laki','Gembong Rt 11/Rw 06','085722116619','aditpbg52@gmail.com','Semoga dapet Rezeki','Sip',151),('Raditya Eka Ramadhan','2022-12-15','Laki - Laki','Kembran Kulon Rt02/Rw01','085867443721','gvalorant63@gmail.com','ngikut adit','Cukup sip,sekian',152),('Hanifah ks','2022-12-15','Perempuan','Pbg','085291533750','Hanifah.khairunisa11@gmail.com','View','Mantap',153),('Fian S','2022-12-15','Perempuan','Purbalingga kidul','089652432269','Fian7996@gmail.com','-','-',154),('Susanti','2022-12-15','Perempuan','Dinkominfo','08122722718','susantisos1978@gmail.com','Jaga Stand','Semangat Selalu',155),('Nerman','2022-12-15','Laki - Laki','Kalirawa RT 4 RW 5','085747115112','Atmj@gmail.com','Ada deh','Oke',156),('inggar','2022-12-15','Perempuan','Dinkominfo','-','-','Tamu','_',157),('Febrian','2022-12-15','Laki - Laki','Kutasari','081326264191','Ukasyahibnuna@gmail.com','Jaga','Ok',158),('Ryan Naga','2022-12-15','Laki - Laki','Pbg kidul','085778381937','Assedef@gmail.com','Pengaduan swat Dan web error','Ok',159),('Umi rusmawati','2022-12-15','Perempuan','Karanglewas','081328727340','umirusmawai72@gmail.com','Menyaksikan','',160),('Ermita Kristanti','2022-12-15','Perempuan','Desa Wiradadi, Kec. Sokaraja','082225941511','mitagotama92@gmail.com','Mengunjungi Expo Purbalingga','Bagus',161),('Mahyati','2022-12-15','Perempuan','Purbalingga','082323889168','Mahyati069@gmail.com','Info','Good',162),('SETYO PUJI W','2022-12-15','Laki - Laki','Purbalingga','085157589977','setyo.pplh@gmail.com','Belajar','Lanjutkan..',163),('Nur imam b','2022-12-15','Laki - Laki','Padamara rt 1 rw3','085868812566','imamkom@gmail.com','Liat2','Internet cepat bust masyarakat',164),('Randi Ermawan','2022-12-15','Laki - Laki','Bojongsari rt 01 rw 03','085842575020','fandiermawan@gmail.com','Kunjungan ','Semakin bagus',165),('Aslan','2022-12-15','Laki - Laki','Kembaran Kulon','0817465999','Riyang@gmail.com','Menambah informasi','Keren abizzzzz',166),('Tama','2022-12-15','Laki - Laki','Bancar','1234567889','Ikp@purbalingganews.id','Kerennn','Abizzzzz',167),('Hanan','2022-12-15','Laki - Laki','Puring','0897969696','Muhammad.luthfi1ml@gmail.com','Dinkominfo juara','Lanjutkan',168),('dian','2022-12-16','Perempuan','Penambongan\r\n','081914448968','-','Mengunjungi stand','Semoga sukses',169),('Annas dian w','2022-12-16','Laki - Laki','Wirasana\r\n','082313996600','.','Kunjungan','Hebat',170),('Hengky irawan','2022-12-16','Laki - Laki','Banjarnegara','081215094570','Muhammad.luthfi1ml@gmail.com','.','.',171),('Muhammad Ahura Mazda','2022-12-16','Laki - Laki','Desa Prigi Rt3 Rw 2','085727516658','ahuramazda71@gmail.com','Until menambah wawasan','',172),('Muhammad Elfano Dzulfikar','2022-12-16','Laki - Laki','Desa slinga rt1 rw5 ','088215663644','elfanoajalah20@gmail.com','Until menambah wawasan','Tidal ada',173),('Muhammad zahran rozak putra','2022-12-16','Laki - Laki','Rumdis kodim rt5 rw11 toyareka','085870814437','rozakputra874@gmail.com','Untuk hiburan','Tidak',174),('Eny wigati','2022-12-16','Perempuan','Purbalingga kidul','082135983747','A@gmail.coj','_','_',175),('Anton','2022-12-16','Laki - Laki','Jl isdiman ','08123244467','Antonwawa@gmail.com','Ingin tau dinkominfo','Hadiahnya zonk semuaaa',176),('Fiatul Chasanah','2022-12-16','Perempuan','sokaraja','085712148979','-','-','-',177),('Ridwan','2022-12-16','Laki - Laki','Kedung menjangan','082326680414','muh.ridwan97@gmail.com','Doorprize','Bagus',178),('Bari Santosa','2022-12-16','Laki - Laki','D\'s Gemuruh RT 003 RW 004 Padamara','082145768969',' paerabbani@gmail.com','Kunjung expo','',179),('Fera','2022-12-16','Perempuan','Kembaran kulon','0857768686220','.','.','.',180),('Luky H','2022-12-16','Laki - Laki','Purbalingga Wetan','08122605070','ikul.joss@gmail.com','Liat-liat','',181),('Shinta valentina','2022-12-16','Perempuan','Bojongsari','089669448073','Valentinabudiman4@gmail.com','Mendapatkan doorprize','Tambah hadiahnya ',182),('Nisa Asmarina','2022-12-16','Perempuan','Penaruban','081333753636','nisa.asmarina123@gmail.com','Dapet doorprize','Seruuu',183),('Yanti','2022-12-16','Perempuan','Wirasana','083873331638','-','-','_',184),('Lisa','2022-12-16','Perempuan','Penambongan','081328725976','Soelistyonoherry@gmail.com','Mampir','',185),('Ari Andriyani','2022-12-16','Perempuan','Karangmanyar','085385848030','ariandriyani77@gmail.com','Mendapatkan dorprize','.',186),('Chelsy medisya','2022-12-16','Perempuan','Desa grecol rt.03/rw.01, kalimanah','085701032287','novitadian735@gmail.com','hanya ingin berkunjung','-',187),('Septiana Respitaningrum','2022-12-16','Perempuan','Bobotsari','085799954254','khanzalfa.althafalisa23@gmail.com','Ikut berpartisipasi donk...','Good job',188),('Tutut DWI ','2022-12-16','Perempuan','Mewek','085647848432','tututwani@gmail.com','Berkunjung ke expo pbg Stan dinkominfo','Bagus',189),('Rohyani','2022-12-16','Perempuan','Majatengah rt 06/02','081327640453','Rohyayani15@gmail.com','Kunjungan expo','',190),('Dian Nur Anggraeni','2022-12-16','Perempuan','Kembangan rt02/05, Bukateja, Purbalingga','085866858739','diananggraeniarisona01@gmail.com','Kunjungan expo','',191),('Davira','2022-12-16','Perempuan','Gemuruh rt 02/03 padamara','087733942847','Suroniyati@gmail.com','Tamu','Perbanyak doorprize',192),('Qistina','2022-12-16','Perempuan','Padamara, rt03/03','082325526314','qistinarosyada496@gmail.com','Tamu','Jaya',193),('Ema','2022-12-16','Perempuan','Bukateja','081326188525','setianingrumema@gmail.com','Kunjungan','',194),('Siti','2022-12-16','Perempuan','Bukateja','081326188525','setianingrumema@gmail.com','Kunjungan','',195),('Fika nurwahyuni','2022-12-16','Perempuan','Kembangan rt05 rw 04','085842605648','Nurwahyunifika@gmail.com','Mengunjungi stand dinkominfo','',196),('Anisatun alifah','2022-12-16','Perempuan','Karangcengis rt04 rw05','081382721509','anisatunalifah99@gmail.com','Mengunjungi Expo','',197),('Herbs anggun wilma','2022-12-16','Perempuan','Perumahan Puritama indahblok h9,gemuruh ,Purbalingga','08811087311','any gun king gaol gmail.com','Lihat expo','',198),('Fani','2022-12-16','Perempuan','Sinduraja','085700297160','Vita.safitri1316@gmail.com','Mendapatkan informasi','',199),('Dini ariestantia','2022-12-16','Perempuan','Padamara rt 4 rw 1','082181318888','diniariestantia@gmail.com','Jalan jalan','',200),('Triani','2022-12-16','Perempuan','Padamara','081586547525','Anianiani629@gmail.com','Wisata kuliner','',201),('Sunarti','2022-12-16','Perempuan','Padamara rt 04/ rw 01','08112585853','andungkrui06@gmail.com','Hiling','',202),('Dina Rahmadani','2022-12-16','Perempuan','Padamara rt 4/1','082281282528','dinarahmadanii99@gmail.com','Main game','',203),('Mono','2022-12-16','Laki - Laki','Gemuruh','081215121484','Mono_arm@yahoo.com','Ngendong','',204),('Vira ayu rahmawati','2022-12-16','Perempuan','Munjul 13/07','083876786553','viraayu33@gmail.com','Mengetahui tugas dinkominfo','Seru',205),('Marghita setyo utami','2022-12-16','Perempuan','Bojongsari, purbalingga','085162664929','Marghita.setyo@gmail.com','Mengetahui informatiia ttng purbalinga','',206),('Gilang Abi Zaifa Situmorang','2022-12-16','Laki - Laki','Jl. Fatmawati, Cilandak, Jaksel','0895422880227','gilangabizaifa@upnvj.ac.id','Kunjngan','',207),('Wiwid','2022-12-16','Laki - Laki','Penambongan','085726375407','Ddd@gmail.com','Melihat Stan dinkominfo','Scukup vagus pelayanannya',208),('Azizah Nurhayati','2022-12-17','Perempuan','Brobot RT.13 RW.04','081327007572','azizah.nurhayati7@gmail.com','Cari Informasi','Ramah',209),('Yudi','2022-12-17','Laki - Laki','Penambobgan','09876543','Muhammad.luthfi1ml@gmail.com','Polisi','Ninuninuninu',210),('Anna','2022-12-18','Perempuan','Purbalingga','.','.','.','.',211),('Tiwi','2022-12-18','Perempuan','Purbalingga','.','.','Keren','Semangat',212),('Sudono','2022-12-18','Laki - Laki','Purbalingga','.','-','Bagus sekali','Lebih banyak dorprise',213),('Yayu Irma sari','2022-12-18','Perempuan','Bukateja','085647883096','.','.','Vagus Dan inovatif',214),('Yayu Irma sari','2022-12-18','Perempuan','Bukateja','085647883096','.','.','Vagus Dan inovatif',215),('Dhelina','2022-12-18','Perempuan','Krenceng','085726442143','Dhelinaretnowulan@',',','Keren',216),('Udin','2022-12-18','Laki - Laki',',','.','.','.','.',217),('Zaimatun','2022-12-18','Perempuan','Perum Raman permata blok d7','085310523503','-','Berkunjung expo','Star dinkominfo keren',218),('Tari','2022-12-18','Perempuan','Purbalingga','.','.','.','.',219),('Tari','2022-12-18','Perempuan','Purbalingga','.','.','.','.',220),('Yani purwati','2022-12-18','Perempuan','Jl panjaitan 79purbalingga','082135352298','Yanir09@gmail.com','Melihat stand kominfo','Bagus top',221),('Desi','2022-12-18','Perempuan','Jatisaba','081399072929','pbgarfan@gmail.com','Berkunjung,','Bagus',222),('Yugi sulistiyono','2022-12-18','Laki - Laki','Sempor lor','082313179579','yugisulistiyono09@gmail.com','Mengikuti pameran','',223),('ISNA minani ','2022-12-18','Perempuan','One rt 03/01 mrebet purbalingga','089603605225','Dewayana27@gmail.com','Mengikuti pameran','Cukup bagus seru',224),('Faza azkiya','2022-12-18','Perempuan','Onje','085727604313','Fazaazkiyasabilaaziz@gmail.com','Ikut oameran','Seru',225),('Farhn','2022-12-18','Laki - Laki','Kasih','085727727841','Farhan85sae@gmail.com','Dolan ','Bagus',226),('Dani Lazuardi','2022-12-18','Laki - Laki','Bojanegara','085726424063','lazuardiramadhani@gmail.com','Kangen ikp ????','Sukses untuk Dinkominfo Purbalingga ?',227),('Rokhimah Mardi astuti','2022-12-18','Perempuan','Sidakangen','081391716767','rokhimahmardiastuti @gmail.com','Mencari informasi & pengetahuan','Bagus',228),('Asni','2022-12-18','Perempuan','Ledug ','085742213956','-','Melihat lihat stand','',229),('Fatimah ratna','2022-12-18','Perempuan',' Pegandekan','08123456789','-','Melihat pameran','Lebihbaik Dan memuaskan',230),('Parsono','2022-12-18','Laki - Laki','Pegandekan','085385310202','.','.','.',231),('Nur hidayati','2022-12-18','Perempuan','Purbalingga kidul','089644813546','Ida04044@gmail.com','.','.',232),('April','2022-12-18','Perempuan','Purwkerto','085866063965','.','Quiz','.',233),('Lifiana','2022-12-18','','Purwokerto','085647003156','Y','Ikut quis','.',234),('Nina aminah','2022-12-18','Perempuan','Bedagas ','081393838285','-','Ikut quiz','.',235),('Srinurlaila','2022-12-18','','Pegandekan','.','.','Mengunjungi pameran','Stand vagus, Dan ramah',236),('Iffahbnur fahmi','2022-12-18','Perempuan','Kalikabong 4/4','085799261216','Fahziez@gmail.com','Mengikuti quiz','Dibayakkin doorprisenya hehe',237),('Ratih ratna dewi','2022-12-18','Perempuan','Lumpang','081390941596','Dewiratih5996@gmail.com','Meramaikan','Stand sumuk',238),('Sri wahyuniatun','2022-12-18','Perempuan','Lumpang kec karanganyar','.','.','Ingin tahu lebih DSLAM tentang APA saja yg ada do dinkominfo pbg','.',239),('Nadia','2022-12-18','Perempuan','Lumpangkec karanganyar','.','.','.','.',240),('Fahmi','2022-12-18','Laki - Laki','Sidanegara ','081327633425','fahmi@gmail.com','Bermain','Bagus',241),('Nabih','2022-12-18','Laki - Laki','Sidaegara','081327633425','Nabih@gmail.cm','Bermain','Bagus',242),('Jihan','2022-12-18','Laki - Laki','Bobotsari','.','.','.','.',243),('Ananta','2022-12-18','Perempuan','Pbg','08575552830','Ananta@yahoo.com','Info','Tambahmaju',244),('Isriana','2022-12-18','Perempuan','Selabaya','085842887277','isrianarakhmawati@gmail.com','Meramaikan','-',245),('FM arts pramushinta','2022-12-18','Perempuan','Purwokerto','081225209996','fmaryapramushinta@gmail.com','Meramaikan acara','-',246),('Inayatul mardhiyah indah sulistiyani','2022-12-18','Perempuan','Karangmalang','085287599992','Hinayatul88@gmail.com','Melihat expo','Sudan baik',247);
/*!40000 ALTER TABLE `tbl_pengunjung` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-09  7:28:48