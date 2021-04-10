-- create table transaksi & detail transaksi
CREATE TABLE `transaksi` (
  `id` varchar(255) PRIMARY KEY NOT NULL,
  `tanggal_order` datetime NOT NULL,
  `status_pelunasan` varchar(255) NOT NULL,
  `tanggal_pembayaran` datetime NOT NULL
);

CREATE TABLE `detail_transaksi` (
  `id` varchar(255) NOT NULL,
  `id_transaksi` varchar(255) NOT NULL,
  `harga` int NOT NULL,
  `jumlah` int NOT NULL,
  `sub_total` int NOT NULL,
  PRIMARY KEY (`id`, `id_transaksi`)
);

ALTER TABLE `detail_transaksi` ADD FOREIGN KEY (`id_transaksi`) REFERENCES `transaksi` (`id`);

-- seed table transaksi
INSERT INTO transaksi VALUES
(uuid(),'2021-4-10 12:00:00','lunas', '2021-4-10 12:00:00'),
(uuid(),'2021-4-10 12:00:00','pending', '2021-4-10 12:00:00'),
(uuid(),'2021-4-10 12:00:00','pending', '2021-4-10 12:00:00');

-- seed table detail transaksi
INSERT INTO detail_transaksi VALUES
(uuid(),'1fd6d645-99c3-11eb-8c4e-283926a5d3a5','30000', '2','60000'),
(uuid(),'1fd91e22-99c3-11eb-8c4e-283926a5d3a5','40000', '2','80000'),
(uuid(),'1fd91e22-99c3-11eb-8c4e-283926a5d3a5','20000', '2','40000');

-- menampilkan data transaksi dengan Total dan jumlah detail transaksi
SELECT transaksi.id, tanggal_order, status_pelunasan, tanggal_pembayaran, sub_total, jumlah
FROM transaksi
INNER JOIN detail_transaksi;







