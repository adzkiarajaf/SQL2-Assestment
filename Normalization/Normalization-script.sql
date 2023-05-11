create table pelanggan (
 id_pelanggan varchar(10),
 nama_pelanggan varchar(100),
 alamat_pelanggan varchar(100),
 no_telpon int,
 tujuan varchar(30),
 primary key(id_pelanggan)
 )
 
 create table driver (
 id_driver varchar(10),
 nama_driver varchar(10),
 platnomor varchar(10),
 no_telpon int(13),
 jenis_kendaraan varchar(10),
 primary key(id_driver)
 )
 
 create table pemesanan( 
 id_pemesanan varchar(10),
 id_pelanggan varchar(10),
 id_driver varchar(10),
 tanggal date,
 biaya_perjalanan int(10),
 biaya_jasa int(10),
 jarak varchar(10),
 waktu varchar(10),
 primary key(id_pemesanan),
 constraint FK_id_pelanggan foreign key (id_pelanggan) references pelanggan(id_pelanggan),
 constraint FK_id_driver foreign key (id_driver) references driver(id_driver)
 )
 
 insert into pelanggan
 values
 (001,"Balqis Rizki Permata","STIKES MUHAMMADIYAH CIAMIS, Jl. K. H. Ahmad Dahlan No 20, Ciamis Selatan","0877123123","Toko Ujang Haji Jana, Jl.Otista No46,Ciamis")
 
 insert into driver
 values
 ('d001','Heryawan','Z1830TD','0877123541','Daihatsu Sigra')
 
 insert into pemesanan (id_pemesanan,tanggal,biaya_perjalanan,biaya_jasa,biaya,jarak,waktu)
 values ('RB-19274-3068613','Rabu, 21 Desember 2022','Rp 26.000','Rp 4.000','Rp 30.000','3.0 km','16 menit')
 
 insert into pemesanan (id_pemesanan,id_pelanggan,id_driver)
 select 'RB-19274-3068613','001','d001' from pelanggan where id_pelanggan = '001'
 
 select * from pelanggan
 select * from driver
 select * from pemesanan
 
select pemesanan.id_pemesanan,pemesanan.tanggal,pemesanan.biaya_perjalanan,pemesanan.biaya_jasa,pemesanan.jarak,pemesanan.waktu,
pelanggan.nama_pelanggan,pelanggan.alamat_pelanggan,pelanggan.tujuan,driver.nama_driver,driver.platnomor,driver.jenis_kendaraan
from pemesanan
join pelanggan 
on pelanggan.id_pelanggan = pemesanan.id_pelanggan
join driver 
on driver.id_driver = pemesanan.id_driver
where id_pemesanan = 'RB-19274-3068613'


