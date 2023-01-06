# Host: localhost  (Version 5.5.5-10.1.38-MariaDB)
# Date: 2021-07-26 07:12:54
# Generator: MySQL-Front 6.0  (Build 2.20)


#
# Structure for table "tb_barang"
#

DROP TABLE IF EXISTS `tb_barang`;
CREATE TABLE `tb_barang` (
  `id_barang` varchar(20) NOT NULL,
  `nama_barang` varchar(30) NOT NULL,
  `jumlah` int(10) NOT NULL,
  PRIMARY KEY (`id_barang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

#
# Data for table "tb_barang"
#

INSERT INTO `tb_barang` VALUES ('KB001','Kopi Hitam',20),('KB002','Teh Tarik',4),('KB003','Teh Sosro',10),('KB004','Buku Paket',30);

#
# Structure for table "tb_invoice"
#

DROP TABLE IF EXISTS `tb_invoice`;
CREATE TABLE `tb_invoice` (
  `no_invoice` varchar(20) NOT NULL,
  `tgl_invoice` date NOT NULL,
  `no_suratjalan` varchar(20) NOT NULL,
  `id_barang` varchar(20) NOT NULL,
  PRIMARY KEY (`no_invoice`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

#
# Data for table "tb_invoice"
#

INSERT INTO `tb_invoice` VALUES ('NOINV001','2021-07-25','SJ002','KB001'),('NOINV002','2021-07-25','SJ001','KB002');

#
# Structure for table "tb_klien"
#

DROP TABLE IF EXISTS `tb_klien`;
CREATE TABLE `tb_klien` (
  `id_klien` varchar(20) NOT NULL,
  `nama_klien` varchar(30) NOT NULL,
  `no_telp` varchar(20) NOT NULL,
  `alamat` text NOT NULL,
  PRIMARY KEY (`id_klien`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

#
# Data for table "tb_klien"
#

INSERT INTO `tb_klien` VALUES ('KKL001','Anam','0812131232','Depok'),('KKL002','Rifai','0856234234','Tangerang'),('KKL003','Ani','0898234234','Bekasi'),('KKL004','Lina','0858234521','Jakarta');

#
# Structure for table "tb_prainvoice"
#

DROP TABLE IF EXISTS `tb_prainvoice`;
CREATE TABLE `tb_prainvoice` (
  `no_prainvoice` varchar(20) NOT NULL,
  `tgl_prainvoice` date NOT NULL,
  `no_invoice` varchar(20) NOT NULL,
  PRIMARY KEY (`no_prainvoice`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

#
# Data for table "tb_prainvoice"
#

INSERT INTO `tb_prainvoice` VALUES ('NOPRAINV001','2021-07-25','NOINV001'),('NOPRAINV002','2021-07-25','NOINV002');

#
# Structure for table "tb_suratjalan"
#

DROP TABLE IF EXISTS `tb_suratjalan`;
CREATE TABLE `tb_suratjalan` (
  `no_suratjalan` varchar(20) NOT NULL,
  `tgl_suratjalan` date NOT NULL,
  `id_klien` varchar(20) NOT NULL,
  `tujuan` varchar(50) NOT NULL,
  `keterangan` text NOT NULL,
  `tgl_kadaluarsa` date NOT NULL,
  PRIMARY KEY (`no_suratjalan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

#
# Data for table "tb_suratjalan"
#

INSERT INTO `tb_suratjalan` VALUES ('SJ001','2021-07-25','KKL001','Palembang','Barang Paketan','2021-07-25'),('SJ002','2021-07-25','KKL003','Jakarta','Sepeda','2021-07-27'),('SJ003','2021-07-25','KKL004','Bandung','Barang Paketan','2021-07-28');
