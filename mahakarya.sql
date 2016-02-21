/*
SQLyog Enterprise - MySQL GUI v7.02 
MySQL - 5.5.38-0ubuntu0.14.04.1 : Database - mahakaryatc
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*Table structure for table `aplikasi` */

DROP TABLE IF EXISTS `aplikasi`;

CREATE TABLE `aplikasi` (
  `ID_APS` varchar(20) NOT NULL DEFAULT '',
  `JUDUL_APS` varchar(50) DEFAULT NULL,
  `DESKRIPSI_APS` text,
  `BIDANG` varchar(20) DEFAULT NULL,
  `SCREENSHOT_APS` varchar(40) DEFAULT NULL,
  `VIDEO_APS` varchar(40) DEFAULT NULL,
  `DEMO_APS` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`ID_APS`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `aplikasi` */

/*Table structure for table `dosen` */

DROP TABLE IF EXISTS `dosen`;

CREATE TABLE `dosen` (
  `NIP` varchar(30) NOT NULL DEFAULT '0',
  `NAMA_DOSEN` varchar(40) DEFAULT NULL,
  `EMAIL_DOSEN` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`NIP`),
  CONSTRAINT `FK_dosen_FP` FOREIGN KEY (`NIP`) REFERENCES `fp` (`NIP`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `dosen` */

/*Table structure for table `fp` */

DROP TABLE IF EXISTS `fp`;

CREATE TABLE `fp` (
  `ID_FP` char(10) NOT NULL DEFAULT '',
  `nrp1` varchar(10) DEFAULT NULL,
  `nrp2` varchar(10) DEFAULT NULL,
  `nrp3` varchar(10) DEFAULT NULL,
  `nrp4` varchar(10) DEFAULT NULL,
  `nrp5` varchar(10) DEFAULT NULL,
  `nrp6` varchar(10) DEFAULT NULL,
  `JUDUL_FP` varchar(50) DEFAULT NULL,
  `DESKRIPSI_FP` text,
  `MATA_KULIAH` int(11) DEFAULT NULL,
  `SEMESTER` int(2) DEFAULT NULL,
  `NIP` varchar(30) DEFAULT NULL,
  `LINK_VIDEO` varchar(50) DEFAULT NULL,
  `tahun` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID_FP`),
  KEY `FK_fp_DOSEN` (`NIP`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `fp` */

insert  into `fp`(`ID_FP`,`nrp1`,`nrp2`,`nrp3`,`nrp4`,`nrp5`,`nrp6`,`JUDUL_FP`,`DESKRIPSI_FP`,`MATA_KULIAH`,`SEMESTER`,`NIP`,`LINK_VIDEO`,`tahun`) values ('','511310091','511310091','511310091','511310091',NULL,NULL,NULL,NULL,22,NULL,NULL,NULL,NULL),('1','511310106','511310143','511310135','511310143','','','Gundam','',22,3,'51123123','https://www.youtube.com/embed/kzI49jA60qo','2014'),('2','511310091','511310091','511310091',NULL,NULL,NULL,'Teknologi Informasi Sebagai Penunjang Masa Depan',NULL,1,NULL,NULL,NULL,NULL);

/*Table structure for table `fpmahasiswa` */

DROP TABLE IF EXISTS `fpmahasiswa`;

CREATE TABLE `fpmahasiswa` (
  `ID_FP` varchar(10) NOT NULL,
  `NRP` varchar(10) NOT NULL,
  KEY `FK_fpmahasiswa_NRP` (`NRP`),
  KEY `FK_fpmahasiswa_ID` (`ID_FP`),
  CONSTRAINT `FK_fpmahasiswa_ID` FOREIGN KEY (`ID_FP`) REFERENCES `fp` (`ID_FP`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `fpmahasiswa` */

/*Table structure for table `kontak_kami` */

DROP TABLE IF EXISTS `kontak_kami`;

CREATE TABLE `kontak_kami` (
  `id_kontak` int(11) NOT NULL AUTO_INCREMENT,
  `nama` text,
  `email` text,
  `subjek` text,
  `pesan` text,
  PRIMARY KEY (`id_kontak`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `kontak_kami` */

/*Table structure for table `mahasiswa` */

DROP TABLE IF EXISTS `mahasiswa`;

CREATE TABLE `mahasiswa` (
  `NRP` varchar(10) NOT NULL DEFAULT '0',
  `NAMA_MAHASISWA` varchar(40) DEFAULT NULL,
  `EMAIL_MAHASISWA` varchar(20) DEFAULT NULL,
  `NO_HP` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`NRP`),
  CONSTRAINT `FK_mahasiswa_FPMHS` FOREIGN KEY (`NRP`) REFERENCES `fpmahasiswa` (`NRP`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `mahasiswa` */

/*Table structure for table `matakuliah` */

DROP TABLE IF EXISTS `matakuliah`;

CREATE TABLE `matakuliah` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_matakuliah` varchar(50) DEFAULT NULL,
  `show` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=latin1;

/*Data for the table `matakuliah` */

insert  into `matakuliah`(`id`,`nama_matakuliah`,`show`) values (1,'Matematika Diskrit',1),(2,'Sistem Digital',NULL),(3,'Dasar Pemrograman',NULL),(4,'Sistem dan Teknologi Informasi',NULL),(5,'Aljabar Linier',NULL),(6,'Matematika Informatika',NULL),(7,'Organisasi Komputer',NULL),(8,'Struktur data',NULL),(9,'Pemrograman Berorientasi Objek',NULL),(10,'Perancangan dan Analisis Algoritma I',NULL),(11,'Sistem Basis Data',NULL),(12,'Teori Graf',NULL),(13,'Probabilitas dan Statistik',NULL),(14,'Sistem Operasi',NULL),(15,'Pemrograman Web',NULL),(16,'Perancangan dan Analisis Algoritma II',NULL),(17,'Manajemen Basis Data',NULL),(18,'Kecerdasan Buatan',NULL),(19,'Otomata',NULL),(20,'Jaringan Komputer',NULL),(21,'Analisis dan Perancangan Sistem Informasi',NULL),(22,'Grafika Komputer',NULL),(23,'Kecerdasan Komputasional',NULL),(24,'Komputasi Numerik',NULL),(25,'Pemrograman Jaringan',NULL),(26,'Manajemen Proyek Perangkat Lunak',NULL),(27,'Rekayasa Kebutuhan',NULL),(28,'Penjamin Mutu Perangkat Lunak',NULL),(29,'Arsitektur Perangkat Lunak',NULL),(30,'Interaksi Manusia dan Komputer',NULL),(31,'Animasi Komputer dan Pemodelan 3D',NULL),(32,'Teknik Pengembangan Game',NULL),(33,'Pemrograman berbasis Kerangka Kerja',NULL),(34,'Rekayasa Pengetahuan',NULL),(35,'Sistem Enterprise',NULL),(36,'Analisis Data Multivariat',NULL),(37,'Data Mining',NULL),(38,'Pengolahan Citra Digital',NULL),(39,'Pemrograman Linier',NULL),(40,'Keamanan Informasi dan Jaringan',NULL),(41,'Komputasi Bergerak',NULL),(42,'Komputasi Awan',NULL),(43,'Jaringan Nirkabel',NULL),(44,'Tekniologi antar Jaringan',NULL),(45,'Kerja Praktik',NULL),(46,'Evolusi Perangkat Lunak',NULL),(47,'Konstruksi Perangkat Lunak',NULL),(48,'Realitas Virtual dan Augmentasi',NULL),(49,'Sistem Game',NULL),(50,'Topik Khusus IGS',NULL),(51,'Pemrograman Perangkat Bergerak',NULL),(52,'Topik Khusus Algroritma dan Pemrograman',NULL),(53,'Audit Sistem',NULL);

/*Table structure for table `pkm` */

DROP TABLE IF EXISTS `pkm`;

CREATE TABLE `pkm` (
  `id_pkm` int(11) NOT NULL AUTO_INCREMENT,
  `judul_pkm` text,
  `kategori` int(11) DEFAULT NULL,
  `nrp1` text,
  `nrp2` text,
  `nrp3` text,
  `nrp4` text,
  `nrp5` text,
  `dosbing` text,
  `tahun` text,
  `ringkasan` text,
  PRIMARY KEY (`id_pkm`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `pkm` */

insert  into `pkm`(`id_pkm`,`judul_pkm`,`kategori`,`nrp1`,`nrp2`,`nrp3`,`nrp4`,`nrp5`,`dosbing`,`tahun`,`ringkasan`) values (1,'“HOVERA” Teknologi Mobil Melayang Masa Depan dengan Kunggulan Ramah Lingkungan dan Kecepatan Tinggi',0,'3413100053','5113100090','3314100061','','','3413100053','2015',NULL);

/*Table structure for table `prestasi` */

DROP TABLE IF EXISTS `prestasi`;

CREATE TABLE `prestasi` (
  `ID_PRESTASI` int(10) NOT NULL AUTO_INCREMENT,
  `AJANG` varbinary(200) DEFAULT NULL,
  `TAHUN` year(4) DEFAULT NULL,
  `BIDANG` varchar(20) DEFAULT NULL,
  `TINGKAT` varchar(30) DEFAULT NULL,
  `PERINGKAT` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID_PRESTASI`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `prestasi` */

insert  into `prestasi`(`ID_PRESTASI`,`AJANG`,`TAHUN`,`BIDANG`,`TINGKAT`,`PERINGKAT`) values (1,'Harvard National Model United Nations (HNMUN)',2015,'Social Venture Chall','Internasioanal','Winner'),(2,'Gemastik 2014\r\n\r\n',2014,'Data Mining','Nasional','Juara 1'),(3,'Gemastik 2014\r\n\r\n',2014,'Programming\r\n\r\n','Nasional','Juara 2'),(4,'Gemastik 2012',2012,'Piranti Cerdas','Nasional','Juara 2'),(5,'Gemastik 2012',2012,'Pengembangan Aplikas','Nasional','Finalis'),(6,'Gemastik 2012',2012,'Pengembangan Permain','Nasional','Finalis'),(7,'Gemastik 2012',2012,'Pemrograman','Nasional','Finalis'),(8,'Gemastik 2012',2012,'Karya Tulis Ilmiah','Nasional','Finalis');

/*Table structure for table `prestasimahasiswa` */

DROP TABLE IF EXISTS `prestasimahasiswa`;

CREATE TABLE `prestasimahasiswa` (
  `NRP` varchar(10) NOT NULL,
  `ID_PRESTASI` varchar(10) NOT NULL,
  KEY `FK_prestasimahasiswa_NRPPRESTASI` (`ID_PRESTASI`),
  KEY `FK_prestasimahasiswa_PRSMHS` (`NRP`),
  CONSTRAINT `FK_prestasimahasiswa_PRSMHS` FOREIGN KEY (`NRP`) REFERENCES `mahasiswa` (`NRP`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `prestasimahasiswa` */

/*Table structure for table `rmk` */

DROP TABLE IF EXISTS `rmk`;

CREATE TABLE `rmk` (
  `id_rmk` int(11) NOT NULL AUTO_INCREMENT,
  `nama_rmk` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_rmk`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `rmk` */

insert  into `rmk`(`id_rmk`,`nama_rmk`) values (1,'RPL'),(2,'IGS'),(3,'ALPRO'),(4,'MI'),(5,'KCV'),(6,'DTK'),(7,'KBJ'),(8,'AJK');

/*Table structure for table `ta` */

DROP TABLE IF EXISTS `ta`;

CREATE TABLE `ta` (
  `ID_TA` char(10) NOT NULL DEFAULT '',
  `JUDUL_TA` varchar(50) DEFAULT NULL,
  `DESKRIPSI_TA` text,
  `RMK` varchar(20) DEFAULT NULL,
  `TANGGAL_POST` date NOT NULL,
  `image` varchar(50) DEFAULT NULL,
  `NRP` varchar(10) NOT NULL,
  `NIP1` varchar(20) NOT NULL,
  `NIP2` varchar(20) NOT NULL,
  PRIMARY KEY (`ID_TA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `ta` */

insert  into `ta`(`ID_TA`,`JUDUL_TA`,`DESKRIPSI_TA`,`RMK`,`TANGGAL_POST`,`image`,`NRP`,`NIP1`,`NIP2`) values ('TA00000001','ABCD A','deskripsi bebas','1','2015-05-16','google.com/.....','5114100110','1234567890','2332322222'),('TA00000002','ABCD A','deskripsi bebas','1','2015-05-16','google.com/.....','5114100110','1234567890','2332322222');

/*Table structure for table `tahun_pelajaran` */

DROP TABLE IF EXISTS `tahun_pelajaran`;

CREATE TABLE `tahun_pelajaran` (
  `id_tahun` int(11) NOT NULL AUTO_INCREMENT,
  `tahun` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_tahun`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `tahun_pelajaran` */

insert  into `tahun_pelajaran`(`id_tahun`,`tahun`) values (1,2014),(2,2015),(3,NULL);

/*Table structure for table `tentang_kami` */

DROP TABLE IF EXISTS `tentang_kami`;

CREATE TABLE `tentang_kami` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) DEFAULT NULL,
  `peran` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

/*Data for the table `tentang_kami` */

insert  into `tentang_kami`(`user_id`,`nama`,`peran`) values (1,'Didit Sepiyanto','Ketua'),(2,'Burhanuddin Rasyid','Database Arsitektur'),(3,'Muhammad Dery Rahma','Database Arsitektur'),(4,'Dewangga Winardi','Web Developer'),(5,'Hanif Sudira','Web Developer'),(6,'Sani Puji Rahayu','Web Designer'),(7,'Ruchi Intan','Pendataan TA'),(8,'Opit','Pendataan TA'),(9,'Arga Lancana','Pendataan TA'),(10,'Andre Reinaldi','Pendataan FP'),(11,'Daniel Fabilus','Pendataan FP'),(12,'I Gede Agung','Pendataan FP'),(13,'Dewi Kartika Prasetyawati','Pendataan FP'),(14,'Rizki Okta Ekoputris','Admin'),(15,'Armirara Reva','Admin'),(16,'Julio Antoni Leonard','Admin'),(17,'Djuned Fernando Djusdek','Web Developer');

/*Table structure for table `tot_view` */

DROP TABLE IF EXISTS `tot_view`;

CREATE TABLE `tot_view` (
  `id_view` int(11) NOT NULL AUTO_INCREMENT,
  `tot_view` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_view`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `tot_view` */

insert  into `tot_view`(`id_view`,`tot_view`) values (1,94);

/*Table structure for table `tugas_akhir` */

DROP TABLE IF EXISTS `tugas_akhir`;

CREATE TABLE `tugas_akhir` (
  `ID_TA` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `JUDUL_TA` varchar(500) DEFAULT NULL,
  `DESKRIPSI_TA` text,
  `RMK` varchar(20) DEFAULT NULL,
  `TAHUN` year(4) DEFAULT NULL,
  `NRP` varchar(20) DEFAULT NULL,
  `NIP1` varchar(30) DEFAULT NULL,
  `NIP2` varchar(30) DEFAULT NULL,
  `TIPE_IMG` varchar(10) DEFAULT NULL,
  `TOT_VIEW` int(11) DEFAULT '0',
  PRIMARY KEY (`ID_TA`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

/*Data for the table `tugas_akhir` */

insert  into `tugas_akhir`(`ID_TA`,`JUDUL_TA`,`DESKRIPSI_TA`,`RMK`,`TAHUN`,`NRP`,`NIP1`,`NIP2`,`TIPE_IMG`,`TOT_VIEW`) values (1,'PITCH RECOGNITION PADA PIANO SHEET MUSIC DENGAN METODE TEMPLATE MATCHING',NULL,'2',2015,'5111100065','198106222005012002','197804122006042001','.jpg',6),(2,'IMPLEMENTASI METODE GENETIC ALGORITHM, K-MEANS, DAN K-NEAREST NEIGHBOR UNTUK KLARIFIKASI PENYAKIT KANKER COLON',NULL,'3',2015,'5111100013','197804122006042001','197512202001122002','.jpg',1),(3,'IMPLEMENTASI PICTURE STREAMING PADA JARINGAN MESH BERBASIS FISHEYE STATE ROUTING MENGGUNAKAN RASBERRY PI UNTUK PEMANTAUAN JALAN RAYA',NULL,'7',2015,'5110100037','197708242006041001','510000003','.jpg',0),(4,'IMPLEMENTASI SISTEM PENYIMPANAN DATA DAN PENGGALIAN DATA TERDISTRIBUSI MENGGUNAKAN HADOOP & MAHOUT DENGAN STUDI KASUS DATASET STACK OVERFLOW',NULL,'4',2015,'5110100180','197906262005012002','051100114','.jpg',0),(5,'RANCANG BANGUN APLIKASI DETEKSI KANTUK BAGI PENGEMUDI MOBIL MENGGUNAKAN DETEKSI AKTIVITAS MATA DAN BIBIR SERTA DETEKSI ROTASI KEPALA BERBASIS ANDROID',NULL,'1',2015,'5111100001','197411232006041001','198106222005012002','.jpg',6),(10,'CODEPLAYER PEMUTAR ULANG PROSES PEMBUATAN PROGRAM UNTUK MENDUKUNG PEMBELAJARAN PEMROGRAMAN','','1',2015,'5111100109','197906262005012002','198701032014041001','.jpg',0),(11,'ARJUNA','','1',2015,'5111100196','19741123006041001','051100124','.jpg',0),(12,'PENGEMBANAGAN INSTRUSION DETECTION SYSTEM BERBASIS SUPPORT VECTOR MACHINE DAN DECISION TREE','','7',2015,'5108100184','197410222000031001','198705112012121003','.jpg',0),(13,'IMPLEMENTASI SEGMENTASI CITRA NATURAL MENGGUNAKAN TEKNIK BERBASIS THRESHOLDING','','5',2015,'5108100078','19710428 199412 2 001','198106222005012002','.jpg',0),(14,'SISTEM PENGENDALI POWER SUPPLY RUANGAN BERBASIS WEB DENGAN ARDUINO','','5',2015,'511011175','198410162008121002','1977008242006041001','.jpg',0),(16,'IMPLEMENTASI LATENT DIRICHLET ALLOCATION GIBBS SAMPLING PADA SISTEM REKOMENDASI TOPIK TUGAS AKHIR DENGAN KEMIRIPAN TRANSKRIP AKADEMIK MAHASISWA','','5',2015,'5111100020','197804102003122001','197208091995121001','.jpg',0),(17,'PENGUKURAN KETEBALAN CORTICAL BONE PADA CITRA DENTAL PANORAMIC RADIOGRAPH DENGAN PENDEKATAN KURVA POLINOMIAL','','5',2015,'5111100036','197208091995121001','197512202001122002','.jpg',0),(19,'IMPLEMENTASI CONVOLUTIONAL NEURAL NETWORK UNTUK KLASIFIKASI OBYEK PADA CITRA','','5',2015,'5111100076','197512202001122002','197104281994122001','.jpg',0),(20,'IMPLEMENTASI METODE HYBRID SALIENCY SVM UNTUK PEMILIHAN DATA TRAINING SECARA OTOMATIS DALAM SEGMENTASI CITRA','','5',2015,'511110050','197512202001122002','197002131994021001','.jpg',0),(21,'DETEKSI KELELAHAN MENTAL BERBASIS GELOMABANG OTAK MENGGUNAKAN TRANSFORMASI DAN SUPPORT VECTOR','','5',2015,'511110061','194908231976032001','5100201405003','.jpg',0),(22,'PEMBANGKIT LABIRIN DINAMIS PADA GAME BERHITUNG BERBASIS ANDROID DENGAN ACCELEROMETER','','2',2015,'5111100114','197612152003121001','197104281994122001','.png',2),(23,'RANCANG BANGUN APLIKASI RUANG GANTI VIRTUAL BERDASARKAN SKELETON TRACKTING DAN DEPTH DATA MENGGUNAKAN MICROSOFT KINECT','','2',2015,'5111100156','198603122012122004','198102132014041001','.jpg',3),(24,'PENGGUNAAN HAND GESTURE UNTUK PENGENDALIAN AUDIO PLAYER MENGGUNAKAN TEKNOLOGI LEAP MOTION','','2',2015,'5111100151','198106222005012002','197712172003121001','.png',2),(25,'RANCANG BANGUN SISTEM PEMANTAUAN DETAK JANTUNG PASIEN PENGGUNA KENDARAAN BERBASIS MIKROKONTROLLER ARDUINO','','7',2015,'5111100126','198410162008121002','5100000003','.jpg',1),(26,'PERMAINAN SIMULASI JUAL-BELI DAN PERAWATAN HEWAN QURBAN DENGAN PEMODELAN FINITE STATE MACHINE','','2',2015,'5111100142','197612152003121001','198106222005012002','.png',0),(27,'IMPLEMENTASI INDOOR LOCALIZATION MENGGUNAKAN SINYAL WI-FI DAN CLUSTERING FILTERED K-NEAREST NEIGHBORS UNTUK PELACAKAN KEBERADAAN SESEORANG DAN EVALUASI AKURASI PELACAKAN DI KAMPUS TEKNIK INFORMATIKA ITS','','3',2015,'5111100168','196505181992031103','198702182014041001','.jpg',0),(28,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0);

/* Function  structure for function  `AUTO_ID_FP` */

/*!50003 DROP FUNCTION IF EXISTS `AUTO_ID_FP` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `AUTO_ID_FP`() RETURNS char(10) CHARSET latin1
BEGIN
	SET @ID=(SELECT MAX(ID_FP) FROM fp);
	IF (ISNULL(@ID)=1) THEN RETURN "FP00000001";
	END IF;
	
	SET @ID3=(SUBSTRING(@ID,3,1));
	SET @ID4=(SUBSTRING(@ID,4,1));
	SET @ID5=(SUBSTRING(@ID,5,1));
	SET @ID6=(SUBSTRING(@ID,6,1));
	SET @ID7=(SUBSTRING(@ID,7,1));
	SET @ID8=(SUBSTRING(@ID,8,1));
	SET @ID9=(SUBSTRING(@ID,9,1));
	SET @ID10=(SUBSTRING(@ID,10,1));
	
	SET @ID10=@ID10+1;
	IF (@ID10>9) THEN 
		SET @ID9=@ID9+1;
		SET @ID10=0;
	END IF;
	IF (@ID9>9) THEN 
		SET @ID8=@ID8+1;
		SET @ID9=0;
	END IF;
	IF (@ID8>9) THEN 
		SET @ID8=@ID8+1;
		SET @ID9=0;
	END IF;
	IF (@ID7>9) THEN 
		SET @ID7=@ID7+1;
		SET @ID8=0;
	END IF;
	IF (@ID6>9) THEN 
		SET @ID6=@ID6+1;
		SET @ID7=0;
	END IF;
	IF (@ID5>9) THEN 
		SET @ID5=@ID5+1;
		SET @ID6=0;
	END IF;
	IF (@ID4>9) THEN 
		SET @ID4=@ID4+1;
		SET @ID5=0;
	END IF;
	IF (@ID3>9) THEN 
		SET @ID3=@ID3+1;
		SET @ID4=0;
	END IF;
	RETURN CONCAT("FP",@ID3,@ID4,@ID5,@ID6,@ID7,@ID8,@ID9,@ID10);
    END */$$
DELIMITER ;

/* Function  structure for function  `AUTO_ID_PRS` */

/*!50003 DROP FUNCTION IF EXISTS `AUTO_ID_PRS` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `AUTO_ID_PRS`() RETURNS char(10) CHARSET latin1
BEGIN
	SET @ID=(SELECT MAX(ID_PRESTASI) FROM prestasi);
	IF (ISNULL(@ID)=1) THEN RETURN "PRS0000001";
	END IF;
	
	SET @ID4=(SUBSTRING(@ID,4,1));
	SET @ID5=(SUBSTRING(@ID,5,1));
	SET @ID6=(SUBSTRING(@ID,6,1));
	SET @ID7=(SUBSTRING(@ID,7,1));
	SET @ID8=(SUBSTRING(@ID,8,1));
	SET @ID9=(SUBSTRING(@ID,9,1));
	SET @ID10=(SUBSTRING(@ID,10,1));
	
	SET @ID10=@ID10+1;
	IF (@ID10>9) THEN 
		SET @ID9=@ID9+1;
		SET @ID10=0;
	END IF;
	IF (@ID9>9) THEN 
		SET @ID8=@ID8+1;
		SET @ID9=0;
	END IF;
	IF (@ID8>9) THEN 
		SET @ID8=@ID8+1;
		SET @ID9=0;
	END IF;
	IF (@ID7>9) THEN 
		SET @ID7=@ID7+1;
		SET @ID8=0;
	END IF;
	IF (@ID6>9) THEN 
		SET @ID6=@ID6+1;
		SET @ID7=0;
	END IF;
	IF (@ID5>9) THEN 
		SET @ID5=@ID5+1;
		SET @ID6=0;
	END IF;
	IF (@ID4>9) THEN 
		SET @ID4=@ID4+1;
		SET @ID5=0;
	END IF;
	
	RETURN CONCAT("PRS",@ID4,@ID5,@ID6,@ID7,@ID8,@ID9,@ID10);
    END */$$
DELIMITER ;

/* Function  structure for function  `AUTO_ID_TA` */

/*!50003 DROP FUNCTION IF EXISTS `AUTO_ID_TA` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `AUTO_ID_TA`() RETURNS char(10) CHARSET latin1
BEGIN
	SET @ID=(SELECT MAX(ID_TA) FROM ta);
	IF (ISNULL(@ID)=1) THEN RETURN "TA00000001";
	END IF;
	
	SET @ID3=(SUBSTRING(@ID,3,1));
	SET @ID4=(SUBSTRING(@ID,4,1));
	SET @ID5=(SUBSTRING(@ID,5,1));
	SET @ID6=(SUBSTRING(@ID,6,1));
	SET @ID7=(SUBSTRING(@ID,7,1));
	SET @ID8=(SUBSTRING(@ID,8,1));
	SET @ID9=(SUBSTRING(@ID,9,1));
	SET @ID10=(SUBSTRING(@ID,10,1));
	
	SET @ID10=@ID10+1;
	IF (@ID10>9) THEN 
		SET @ID9=@ID9+1;
		SET @ID10=0;
	END IF;
	IF (@ID9>9) THEN 
		SET @ID8=@ID8+1;
		SET @ID9=0;
	END IF;
	IF (@ID8>9) THEN 
		SET @ID8=@ID8+1;
		SET @ID9=0;
	END IF;
	IF (@ID7>9) THEN 
		SET @ID7=@ID7+1;
		SET @ID8=0;
	END IF;
	IF (@ID6>9) THEN 
		SET @ID6=@ID6+1;
		SET @ID7=0;
	END IF;
	IF (@ID5>9) THEN 
		SET @ID5=@ID5+1;
		SET @ID6=0;
	END IF;
	IF (@ID4>9) THEN 
		SET @ID4=@ID4+1;
		SET @ID5=0;
	END IF;
	IF (@ID3>9) THEN 
		SET @ID3=@ID3+1;
		SET @ID4=0;
	END IF;
	RETURN CONCAT("TA",@ID3,@ID4,@ID5,@ID6,@ID7,@ID8,@ID9,@ID10);
    END */$$
DELIMITER ;

/* Procedure structure for procedure `SP_ADD_TOT_VIEW` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP_ADD_TOT_VIEW` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_ADD_TOT_VIEW`()
BEGIN
	update tot_view set tot_view = tot_view + 1 where id_view = 1;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `SP_CARI_JUDUL_TA` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP_CARI_JUDUL_TA` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_CARI_JUDUL_TA`(data_ text)
BEGIN
	select * from tugas_akhir,rmk where rmk.id_rmk = tugas_akhir.RMK and (tugas_akhir.JUDUL_TA like CONCAT('%', data_ , '%') or tugas_akhir.TAHUN like CONCAT('%', data_ , '%') or tugas_akhir.NRP like CONCAT('%', data_ , '%'));
    END */$$
DELIMITER ;

/* Procedure structure for procedure `SP_GET_TOT_VIEW` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP_GET_TOT_VIEW` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_GET_TOT_VIEW`()
BEGIN
	SELECT tot_view from tot_view where id_view = 1;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `SP_INSERT_FP` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP_INSERT_FP` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_INSERT_FP`(JUDUL VARCHAR(50),NRP1 VARCHAR(10),NRP2 VARCHAR(10),NRP3 VARCHAR(10),NRP4 VARCHAR(10),NRP5 VARCHAR(10),NRP6 VARCHAR(10),DESKRIPSI TEXT,SEMESTER INT,NIP VARCHAR(30),MATKUL INT,SCREENSHOT VARCHAR(50),VIDEO VARCHAR(50),DEMO VARCHAR(50))
BEGIN
	SET @ID=AUTO_ID_FP();
	INSERT INTO FP(ID_FP,JUDUL_FP,DESKRIPSI_FP,MATA_KULIAH,SEMESTER,NIP,IMAGE,LINK_VIDEO,TANGGAL_POST,DEMO_PDF) VALUES (@ID,JUDUL,DESKRIPSI,MATKUL,SEMESTER,NIP,SCREENSHOT,VIDEO,NOW(),DEMO);
	IF (ISNULL(NRP1)=0) THEN INSERT INTO FPMAHASISWA VALUES(@ID,NRP1); END IF;
	IF (ISNULL(NRP2)=0) THEN INSERT INTO FPMAHASISWA VALUES(@ID,NRP2); END IF;
	IF (ISNULL(NRP3)=0) THEN INSERT INTO FPMAHASISWA VALUES(@ID,NRP3); END IF;
	IF (ISNULL(NRP4)=0) THEN INSERT INTO FPMAHASISWA VALUES(@ID,NRP4); END IF;
	IF (ISNULL(NRP5)=0) THEN INSERT INTO FPMAHASISWA VALUES(@ID,NRP5); END IF;
	IF (ISNULL(NRP6)=0) THEN INSERT INTO FPMAHASISWA VALUES(@ID,NRP6); END IF;
	
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `SP_INSERT_PRS` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP_INSERT_PRS` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_INSERT_PRS`(NAMA_PRS VARCHAR(30),NRP1 VARCHAR(10),NRP2 VARCHAR(10),NRP3 VARCHAR(10),NRP4 VARCHAR(10),NRP5 VARCHAR(10),NRP6 VARCHAR(10),DESKRIPSI TEXT,TAHUN YEAR,BIDANG VARCHAR(20),TINGKAT VARCHAR(30),PERINGKAT VARCHAR(20),DOKUMENTASI VARCHAR(30),VIDEO VARCHAR(40))
BEGIN
	SET @ID=AUTO_ID_PRS();
	INSERT INTO prestasi VALUES(now(),ID,NAMA_PRS,DESKRIPSI,TAHUN,BIDANG,TINGKAT,PERINGKAT,	DOKUMENTASI,VIDEO);
	IF (ISNULL(NRP1)=0) THEN INSERT INTO prestasimahasiswa VALUES(NRP1,@ID); END IF;
	IF (ISNULL(NRP2)=0) THEN INSERT INTO prestasimahasiswa VALUES(NRP2,@ID); END IF;
	IF (ISNULL(NRP3)=0) THEN INSERT INTO prestasimahasiswa VALUES(NRP3,@ID); END IF;
	IF (ISNULL(NRP4)=0) THEN INSERT INTO prestasimahasiswa VALUES(NRP4,@ID); END IF;
	IF (ISNULL(NRP5)=0) THEN INSERT INTO prestasimahasiswa VALUES(NRP5,@ID); END IF;
	IF (ISNULL(NRP6)=0) THEN INSERT INTO prestasimahasiswa VALUES(NRP6,@ID); END IF;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `SP_INSERT_TA` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP_INSERT_TA` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_INSERT_TA`(JUDUL_TA_ VARCHAR(500),DESKRIPSI_TA_ TEXT,RMK_TA_ VARCHAR(20),NRP_TA_ VARCHAR(20),NIP1_TA_ VARCHAR(30),NIP2_TA_ VARCHAR(30), TIPE_IMG_ VARCHAR(10))
BEGIN
	INSERT INTO tugas_akhir (JUDUL_TA, DESKRIPSI_TA, RMK, TAHUN, NRP, NIP1,NIP2,TIPE_IMG) 
		VALUES(JUDUL_TA_,DESKRIPSI_TA_,RMK_TA_,now(),NRP_TA_,NIP1_TA_,NIP2_TA_,TIPE_IMG_);
	SET @id_terakhir= (SELECT ID_TA FROM tugas_akhir ORDER BY ID_TA DESC LIMIT 1);
	SELECT @id_terakhir AS `id_terakhir`;
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP_LIST_FP` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP_LIST_FP` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_LIST_FP`()
BEGIN
	select * from matakuliah where matakuliah.show <> ' ';
    END */$$
DELIMITER ;

/* Procedure structure for procedure `SP_LIST_TA` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP_LIST_TA` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_LIST_TA`(id_ text)
BEGIN
	select * from tugas_akhir,rmk where rmk.id_rmk = tugas_akhir.RMK and tugas_akhir.RMK=id_;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `SP_MOST_VIEW_TA` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP_MOST_VIEW_TA` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_MOST_VIEW_TA`()
BEGIN
	SELECT TOT_VIEW, JUDUL_TA, ID_TA from tugas_akhir order by TOT_VIEW desc limit 10;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `SP_POST_KONTAK_KAMI` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP_POST_KONTAK_KAMI` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_POST_KONTAK_KAMI`(nama_ text,email_ text,subjek_ text,pesan_ text)
BEGIN
	insert into kontak_kami (nama,email,subjek,pesan) values(nama_,email_,subjek_,pesan_);
    END */$$
DELIMITER ;

/* Procedure structure for procedure `SP_RMK_RINCI` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP_RMK_RINCI` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_RMK_RINCI`(data_ int)
BEGIN
	update tugas_akhir set TOT_VIEW = TOT_VIEW+1 where ID_TA = data_ ;
	SELECT * from tugas_akhir where ID_TA = data_;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `SP_SUBMIT_PKM` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP_SUBMIT_PKM` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_SUBMIT_PKM`(judul_pkm_ text, kategori_ int, nrp1_ text, nrp2_ text, 
nrp3_ text, nrp4_ text, nrp5_ text, dosbing_ text, tahun_ text, ringkasan_ text)
BEGIN
	insert into pkm (judul_pkm, kategori, nrp1, nrp2, nrp3, nrp4, nrp5, dosbing, tahun, ringkasan) 
values(judul_pkm_, kategori_, nrp1_, nrp2_, nrp3_, nrp4_, nrp5_, dosbing_, tahun_, ringkasan_);
	SET @id_terakhir= (SELECT id_pkm FROM pkm ORDER BY id_pkm DESC LIMIT 1);
	SELECT @id_terakhir AS `id_terakhir`;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `SP_SUBMIT_PRESTASI` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP_SUBMIT_PRESTASI` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_SUBMIT_PRESTASI`()
BEGIN
	insert into prestasi(TAHUN, AJANG, BIDANG, TINGKAT, PERINGKAT) values (tahun_, ajang_, bidang_, tingkat_, peringkat_);
    END */$$
DELIMITER ;

/* Procedure structure for procedure `SP_TAMBAH_TA` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP_TAMBAH_TA` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_TAMBAH_TA`()
BEGIN
    END */$$
DELIMITER ;

/* Procedure structure for procedure `SP_UPDATE_IMAGE_TIPE_TUGAS_AKHIR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP_UPDATE_IMAGE_TIPE_TUGAS_AKHIR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_UPDATE_IMAGE_TIPE_TUGAS_AKHIR`(p_id INT(10),p_type varchar(20))
BEGIN
	UPDATE tugas_akhir SET `tipe_img`=p_type WHERE id_ta=p_id;
    END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
