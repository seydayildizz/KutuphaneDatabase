
-- Veri tabaný oluþturuldu. Tablolar ve yabancýl anahtar tanýmlamalarý yapýldý.

--veri tabaný oluþturulmasu
create database Kutuphane;

-- tablo oluþturulma iþlermleri
create table Uyeler(
	uye_no int identity(1,1) primary key not null,
	uye_adi nvarchar(50) not null ,
	uye_soyadi nvarchar(50)  not null,
	cinsiyet nvarchar(5) ,
	telefon int not null unique,
	e_posta nvarchar(50) unique,
	adres_no int 
);

create table Emanet(
	emanet_no int  identity(1,1) primary key not null,
	isbn int not null,
	uye_no int not null,
	kutuphane_no int not null,
	emanet_tarihi datetime,
	teslim_tarihi datetime,
);

create table Yazarlar(
	yazar_no int identity(1,1) primary key not null,
	yazar_adi varchar(20),
	yazar_soyadi varchar(20)
);

create table Kutuphane(
	kutuphane_no int identity(1,1) primary key not null,
	kutuphane_ismi varchar(20),
	aciklama varchar(20),
	adres_no int
);

create table KitapKutuphane(
	kutuphane_no int not null,
	isbn int not null,
	adet int,
	constraint "KitapKutuphane_pk"
	primary key("kutuphane_no","isbn")
);

create table KitapYazar(
	isbn int not null,
	yazar_no int not null,
	constraint "KitapYazar_pk"
		primary key("isbn","yazar_no")
);


create table KitapKategori(
	isbn int not null ,
	kategori_no int not null, 
	constraint "KitapKategori_pk"
		primary key("isbn","kategori_no")
);

create table Adresler(
	adres_no int identity(1,1) primary key,
	cadde varchar(20),
	mahalle varchar(20),
	bina_no int,
	sehir varchar(20),
	posta_kodu int,
	ulke varchar(20)	
);


create table Kitaplar(
	isbn int primary key,
	kitap_adi varchar(20),
	yayin_tarihi datetime,
	sayfa_sayisi int	
);

create table Kategoriler(
	kategori_no int identity(1,1) primary key,
	kategori_adi varchar(20)
);


