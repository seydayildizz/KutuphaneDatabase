--Tablolara veri ekleme i�lemleri

--Tablolarda �e�itli �ekillerde veri ekleme 
insert into Adresler (cadde,mahalle,bina_no,sehir,posta_kodu,ulke)
				   values('Orhangazi','Esentepe',5,'Tokat',60100,'T�rkiye');
           
insert into Adresler (cadde,mahalle,bina_no,sehir,posta_kodu,ulke)
				   values('Sivas','Kemer',34,'Tokat',60100,'T�rkiye');
           
insert into Adresler (mahalle,bina_no,sehir,posta_kodu,ulke)
				   values('Evrenk�y',21,'Tokat',60100,'T�rkiye');    
		   
insert into Adresler (mahalle,bina_no,sehir,posta_kodu,ulke)
				   values('Cumhuriyet',56,'Tokat',60100,'T�rkiye');
				   
insert into Adresler (cadde,mahalle,bina_no,sehir,posta_kodu,ulke)
				   values('Atat�rk','Barbaros',142,'�stanbul',34200,'T�rkiye');
				   
insert into Adresler (cadde,mahalle,bina_no,sehir,posta_kodu,ulke)
				   values('C.G�rsel','Tuna',65,'�zmir',35600,'T�rkiye');
				   
insert into Adresler (cadde,mahalle,bina_no,sehir,posta_kodu,ulke)
				   values('Sipahi','�amlar',85,'Amasya',05200,'T�rkiye');
				   
insert into Adresler (mahalle,bina_no,sehir,posta_kodu,ulke)
				   values('K�z�lay',114,'Ankara',06400,'T�rkiye');

select * from Adresler;

-------------------------------------------------------------------------------------------------------
--truncate table Uyeler;

insert into Uyeler(uye_adi,uye_soyadi,cinsiyet,adres_no,telefon,e_posta)
				values('Ay�e','Kara','0',1,123456789,'ak@mail.com');

insert into Uyeler(uye_adi,uye_soyadi,cinsiyet,adres_no,telefon,e_posta)
				values('ali','u�ar','1',1,123456780,'au@mail.com');

insert into Uyeler(uye_adi,uye_soyadi,cinsiyet,adres_no,telefon,e_posta)
				values('ahmet','davut','1',1,123456781,'ad@mail.com');

insert into Uyeler(uye_adi,uye_soyadi,cinsiyet,adres_no,telefon,e_posta)
				values('murat','s�nmez','1',1,123456782,'ms@mail.com');

insert into Uyeler(uye_adi,uye_soyadi,cinsiyet,adres_no,telefon,e_posta)
				values('burak','torun','1',1,123456783,'bto@mail.com');

insert into Uyeler(uye_adi,uye_soyadi,cinsiyet,adres_no,telefon,e_posta)
				values('ayla','y�lmaz','0',1,123456784,'ay@mail.com');

insert into Uyeler(uye_adi,uye_soyadi,cinsiyet,adres_no,telefon,e_posta)
				values('mustafa','demir','1',1,123456785,'md@mail.com');

insert into Uyeler(uye_adi,uye_soyadi,cinsiyet,adres_no,telefon,e_posta)
				values('turgut','�zseven','1',1,123456786,'to@mail.com');

insert into Uyeler(uye_adi,uye_soyadi,cinsiyet,adres_no,telefon,e_posta)
				values('elif','uymaz','0',1,123456787,'eu@mail.com');

select* from Uyeler;

-------------------------------------------------------------------------------------------------------

insert into Kutuphane(kutuphane_ismi,aciklama,adres_no) values('merkez','merkez k�t�phane',1);
insert into Kutuphane(kutuphane_ismi,aciklama,adres_no) values('zile','zile k�t�phane',3);
insert into Kutuphane(kutuphane_ismi,aciklama,adres_no) values('turhal','turhal k�t�phane',4);
insert into Kutuphane(kutuphane_ismi,aciklama,adres_no) values('amasya','amasya k�t�phane',7);

select * from Kutuphane;

-------------------------------------------------------------------------------------------------------

insert into Kategoriler(kategori_adi) values('Bilgisayar');
insert into Kategoriler(kategori_adi) values('Ekonomi');
insert into Kategoriler(kategori_adi) values('E�itim');
insert into Kategoriler(kategori_adi) values('Edebiyat');
insert into Kategoriler(kategori_adi) values('Matematik');
insert into Kategoriler(kategori_adi) values('Psikoloji');
insert into Kategoriler(kategori_adi) values('K�lt�r');
insert into Kategoriler(kategori_adi) values('Muhasebe');
insert into Kategoriler(kategori_adi) values('Bilim');
insert into Kategoriler(kategori_adi) values('Di�er');

select * from Kategoriler;

-------------------------------------------------------------------------------------------------------


insert into Yazarlar (yazar_adi,yazar_soyadi) values('turgut','�zseven');
insert into Yazarlar (yazar_adi,yazar_soyadi) values('Ebubekir','ya�ar');
insert into Yazarlar (yazar_adi,yazar_soyadi) values('�ebi','bal');
insert into Yazarlar (yazar_adi,yazar_soyadi) values('fahri','�zkan');
insert into Yazarlar (yazar_adi,yazar_soyadi) values('murat','can');
insert into Yazarlar (yazar_adi,yazar_soyadi) values('�t�gen','sengen');
insert into Yazarlar (yazar_adi,yazar_soyadi) values('ali','feyiz');
insert into Yazarlar (yazar_adi,yazar_soyadi) values('ramazan','inal');
insert into Yazarlar (yazar_adi,yazar_soyadi) values('g�khan','�uval');
insert into Yazarlar (yazar_adi,yazar_soyadi) values('salih','�zkan');
insert into Yazarlar (yazar_adi,yazar_soyadi) values('christian','marazzi');
insert into Yazarlar (yazar_adi,yazar_soyadi) values('hatice','ergin');
insert into Yazarlar (yazar_adi,yazar_soyadi) values('Arma�an','y�ld�z');
insert into Yazarlar (yazar_adi,yazar_soyadi) values('R�za','�zel');
insert into Yazarlar (yazar_adi,yazar_soyadi) values('Anne','taylor');
insert into Yazarlar (yazar_adi,yazar_soyadi) values('paul','Lunda');
insert into Yazarlar (yazar_adi,yazar_soyadi) values('kathryn','Wilkinson');
insert into Yazarlar (yazar_adi,yazar_soyadi) values('turgut','ak�l');
insert into Yazarlar (yazar_adi,yazar_soyadi) values('mehmet','asi');

select * from Yazarlar;

-------------------------------------------------------------------------------------------------------

insert into Kitaplar(isbn,kitap_adi,yayin_tarihi,sayfa_sayisi) values(123456780,'algoritma','01.01.2010',300);
insert into Kitaplar(isbn,kitap_adi,yayin_tarihi,sayfa_sayisi) values(123456781,'internet 1','09.02.2000',200);
insert into Kitaplar(isbn,kitap_adi,yayin_tarihi,sayfa_sayisi) values(123456782,'internet 2','05.01.2011',350);
insert into Kitaplar(isbn,kitap_adi,yayin_tarihi,sayfa_sayisi) values(123456783,'Bilgisayar 1','05.06.2019',109);
insert into Kitaplar(isbn,kitap_adi,yayin_tarihi,sayfa_sayisi) values(123456784,'Muhasebe','03.03.2013',360);
insert into Kitaplar(isbn,kitap_adi,yayin_tarihi,sayfa_sayisi) values(123456785,'sermaye ve dil','07.07.2009',240);
insert into Kitaplar(isbn,kitap_adi,yayin_tarihi,sayfa_sayisi) values(123456786,'Geli�im psikolojisi','06.06.2017',167);
insert into Kitaplar(isbn,kitap_adi,yayin_tarihi,sayfa_sayisi) values(123456787,'�ifreler','01.01.2010',753);
insert into Kitaplar(isbn,kitap_adi,yayin_tarihi,sayfa_sayisi) values(123456788,'Ticari MAtematik','12.12.2012',399);

select * from Kitaplar;

-------------------------------------------------------------------------------------------------------

insert into KitapKutuphane (kutuphane_no,isbn,adet	) values(1,123456789,3);
insert into KitapKutuphane (kutuphane_no,isbn,adet	) values(2,123456780,4);
insert into KitapKutuphane (kutuphane_no,isbn,adet	) values(3,123456781,5);
insert into KitapKutuphane (kutuphane_no,isbn,adet	) values(4,123456782,6); 
insert into KitapKutuphane (kutuphane_no,isbn,adet	) values(1,123456783,3);
insert into KitapKutuphane (kutuphane_no,isbn,adet	) values(2,123456784,2);
insert into KitapKutuphane (kutuphane_no,isbn,adet	) values(3,123456785,36);
insert into KitapKutuphane (kutuphane_no,isbn,adet	) values(4,123456786,38); 
insert into KitapKutuphane (kutuphane_no,isbn,adet	) values(1,123456787,7);
insert into KitapKutuphane (kutuphane_no,isbn,adet	) values(2,123456788,9); 

select * from KitapKutuphane;

-------------------------------------------------------------------------------------------------------

insert into Emanet( isbn,uye_no ,kutuphane_no,emanet_tarihi,teslim_tarihi)
values(123456789,3,3,'12.10.2009','12.10.2009');

insert into Emanet (isbn,uye_no,kutuphane_no,emanet_tarihi)
values(123456780,3,2,'12.11.2019');

insert into Emanet (isbn,uye_no,kutuphane_no,emanet_tarihi,teslim_tarihi)
values(123456781,8,1,'10.22.2009','10.30.2009');

insert into Emanet (isbn,uye_no,kutuphane_no,emanet_tarihi,teslim_tarihi)
values(123456782,11,2,'12.10.2010','12.17.2010');


insert into Emanet (isbn,uye_no,kutuphane_no,emanet_tarihi,teslim_tarihi)
values(123456783,14,4,'12.10.2011','12.15.2011');


insert into Emanet (isbn,uye_no,kutuphane_no,emanet_tarihi,teslim_tarihi)
values(123456784,8,1,'10.10.2020','10.17.2020');


insert into Emanet (isbn,uye_no,kutuphane_no,emanet_tarihi,teslim_tarihi)
values(123456785,9,4,'09.19.2015','09.30.2015');

insert into Emanet (isbn,uye_no,kutuphane_no,emanet_tarihi,teslim_tarihi)
values(123456786,10,3,'05.01.2008','05.10.2008');	

insert into Emanet (isbn,uye_no,kutuphane_no,emanet_tarihi,teslim_tarihi)
values(123456787,3,2,'12.10.2019','12.10.2020');

insert into Emanet (isbn,uye_no,kutuphane_no,emanet_tarihi,teslim_tarihi)
values(123456788,11,1,'12.10.2010','12.17.2010'); 

-------------------------------------------------------------------------------------------------------

insert into KitapKategori values(123456780,1);
insert into KitapKategori values(123456781,1);
insert into KitapKategori values(123456782,1);
insert into KitapKategori values(123456783,1);
insert into KitapKategori values(123456784,2);
insert into KitapKategori values(123456785,2);
insert into KitapKategori values(123456786,6);
insert into KitapKategori values(123456787,5);
insert into KitapKategori values(123456788,5);
insert into KitapKategori values(123456789,1);

-------------------------------------------------------------------------------------------------------

insert into KitapYazar values(123456789,1);
insert into KitapYazar values(123456780,2);
insert into KitapYazar values(123456781,3);
insert into KitapYazar values(123456782,4);
insert into KitapYazar values(123456783,5);
insert into KitapYazar values(123456784,6);
