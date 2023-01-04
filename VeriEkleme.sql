--Tablolara veri ekleme iþlemleri

--Tablolarda çeþitli þekillerde veri ekleme 
insert into Adresler (cadde,mahalle,bina_no,sehir,posta_kodu,ulke)
				   values('Orhangazi','Esentepe',5,'Tokat',60100,'Türkiye');
           
insert into Adresler (cadde,mahalle,bina_no,sehir,posta_kodu,ulke)
				   values('Sivas','Kemer',34,'Tokat',60100,'Türkiye');
           
insert into Adresler (mahalle,bina_no,sehir,posta_kodu,ulke)
				   values('Evrenköy',21,'Tokat',60100,'Türkiye');    
		   
insert into Adresler (mahalle,bina_no,sehir,posta_kodu,ulke)
				   values('Cumhuriyet',56,'Tokat',60100,'Türkiye');
				   
insert into Adresler (cadde,mahalle,bina_no,sehir,posta_kodu,ulke)
				   values('Atatürk','Barbaros',142,'Ýstanbul',34200,'Türkiye');
				   
insert into Adresler (cadde,mahalle,bina_no,sehir,posta_kodu,ulke)
				   values('C.Gürsel','Tuna',65,'Ýzmir',35600,'Türkiye');
				   
insert into Adresler (cadde,mahalle,bina_no,sehir,posta_kodu,ulke)
				   values('Sipahi','Þamlar',85,'Amasya',05200,'Türkiye');
				   
insert into Adresler (mahalle,bina_no,sehir,posta_kodu,ulke)
				   values('Kýzýlay',114,'Ankara',06400,'Türkiye');

select * from Adresler;

-------------------------------------------------------------------------------------------------------
--truncate table Uyeler;

insert into Uyeler(uye_adi,uye_soyadi,cinsiyet,adres_no,telefon,e_posta)
				values('Ayþe','Kara','0',1,123456789,'ak@mail.com');

insert into Uyeler(uye_adi,uye_soyadi,cinsiyet,adres_no,telefon,e_posta)
				values('ali','uçar','1',1,123456780,'au@mail.com');

insert into Uyeler(uye_adi,uye_soyadi,cinsiyet,adres_no,telefon,e_posta)
				values('ahmet','davut','1',1,123456781,'ad@mail.com');

insert into Uyeler(uye_adi,uye_soyadi,cinsiyet,adres_no,telefon,e_posta)
				values('murat','sönmez','1',1,123456782,'ms@mail.com');

insert into Uyeler(uye_adi,uye_soyadi,cinsiyet,adres_no,telefon,e_posta)
				values('burak','torun','1',1,123456783,'bto@mail.com');

insert into Uyeler(uye_adi,uye_soyadi,cinsiyet,adres_no,telefon,e_posta)
				values('ayla','yýlmaz','0',1,123456784,'ay@mail.com');

insert into Uyeler(uye_adi,uye_soyadi,cinsiyet,adres_no,telefon,e_posta)
				values('mustafa','demir','1',1,123456785,'md@mail.com');

insert into Uyeler(uye_adi,uye_soyadi,cinsiyet,adres_no,telefon,e_posta)
				values('turgut','özseven','1',1,123456786,'to@mail.com');

insert into Uyeler(uye_adi,uye_soyadi,cinsiyet,adres_no,telefon,e_posta)
				values('elif','uymaz','0',1,123456787,'eu@mail.com');

select* from Uyeler;

-------------------------------------------------------------------------------------------------------

insert into Kutuphane(kutuphane_ismi,aciklama,adres_no) values('merkez','merkez kütüphane',1);
insert into Kutuphane(kutuphane_ismi,aciklama,adres_no) values('zile','zile kütüphane',3);
insert into Kutuphane(kutuphane_ismi,aciklama,adres_no) values('turhal','turhal kütüphane',4);
insert into Kutuphane(kutuphane_ismi,aciklama,adres_no) values('amasya','amasya kütüphane',7);

select * from Kutuphane;

-------------------------------------------------------------------------------------------------------

insert into Kategoriler(kategori_adi) values('Bilgisayar');
insert into Kategoriler(kategori_adi) values('Ekonomi');
insert into Kategoriler(kategori_adi) values('Eðitim');
insert into Kategoriler(kategori_adi) values('Edebiyat');
insert into Kategoriler(kategori_adi) values('Matematik');
insert into Kategoriler(kategori_adi) values('Psikoloji');
insert into Kategoriler(kategori_adi) values('Kültür');
insert into Kategoriler(kategori_adi) values('Muhasebe');
insert into Kategoriler(kategori_adi) values('Bilim');
insert into Kategoriler(kategori_adi) values('Diðer');

select * from Kategoriler;

-------------------------------------------------------------------------------------------------------


insert into Yazarlar (yazar_adi,yazar_soyadi) values('turgut','özseven');
insert into Yazarlar (yazar_adi,yazar_soyadi) values('Ebubekir','yaþar');
insert into Yazarlar (yazar_adi,yazar_soyadi) values('çebi','bal');
insert into Yazarlar (yazar_adi,yazar_soyadi) values('fahri','özkan');
insert into Yazarlar (yazar_adi,yazar_soyadi) values('murat','can');
insert into Yazarlar (yazar_adi,yazar_soyadi) values('ötügen','sengen');
insert into Yazarlar (yazar_adi,yazar_soyadi) values('ali','feyiz');
insert into Yazarlar (yazar_adi,yazar_soyadi) values('ramazan','inal');
insert into Yazarlar (yazar_adi,yazar_soyadi) values('gökhan','çuval');
insert into Yazarlar (yazar_adi,yazar_soyadi) values('salih','özkan');
insert into Yazarlar (yazar_adi,yazar_soyadi) values('christian','marazzi');
insert into Yazarlar (yazar_adi,yazar_soyadi) values('hatice','ergin');
insert into Yazarlar (yazar_adi,yazar_soyadi) values('Armaðan','yýldýz');
insert into Yazarlar (yazar_adi,yazar_soyadi) values('Rýza','özel');
insert into Yazarlar (yazar_adi,yazar_soyadi) values('Anne','taylor');
insert into Yazarlar (yazar_adi,yazar_soyadi) values('paul','Lunda');
insert into Yazarlar (yazar_adi,yazar_soyadi) values('kathryn','Wilkinson');
insert into Yazarlar (yazar_adi,yazar_soyadi) values('turgut','akýl');
insert into Yazarlar (yazar_adi,yazar_soyadi) values('mehmet','asi');

select * from Yazarlar;

-------------------------------------------------------------------------------------------------------

insert into Kitaplar(isbn,kitap_adi,yayin_tarihi,sayfa_sayisi) values(123456780,'algoritma','01.01.2010',300);
insert into Kitaplar(isbn,kitap_adi,yayin_tarihi,sayfa_sayisi) values(123456781,'internet 1','09.02.2000',200);
insert into Kitaplar(isbn,kitap_adi,yayin_tarihi,sayfa_sayisi) values(123456782,'internet 2','05.01.2011',350);
insert into Kitaplar(isbn,kitap_adi,yayin_tarihi,sayfa_sayisi) values(123456783,'Bilgisayar 1','05.06.2019',109);
insert into Kitaplar(isbn,kitap_adi,yayin_tarihi,sayfa_sayisi) values(123456784,'Muhasebe','03.03.2013',360);
insert into Kitaplar(isbn,kitap_adi,yayin_tarihi,sayfa_sayisi) values(123456785,'sermaye ve dil','07.07.2009',240);
insert into Kitaplar(isbn,kitap_adi,yayin_tarihi,sayfa_sayisi) values(123456786,'Geliþim psikolojisi','06.06.2017',167);
insert into Kitaplar(isbn,kitap_adi,yayin_tarihi,sayfa_sayisi) values(123456787,'Þifreler','01.01.2010',753);
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
