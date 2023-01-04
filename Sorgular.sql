--tablolarda karmaþýk sorgulama iþlemleri

--alt sorgularla iþlemlerde exists kullaný
select * from Kitaplar where sayfa_sayisi> (
		select min(sayfa_sayisi) from Kitaplar group by kitap_adi
		having kitap_adi like '%aa%' 
);
    
    	
select * from Kitaplar where sayfa_sayisi>all(
		select sayfa_sayisi from KitapYazar ky
		inner join Kitaplar k on k.isbn=ky.isbn
		inner join Yazarlar y on y.yazar_no=ky.yazar_no
		where y.yazar_adi like '%ç%' and y.yazar_soyadi like '%as%'
);

select * from Yazarlar where not exists (
	select * from KitapYazar 
	where Yazarlar.yazar_no=KitapYazar.yazar_no
);


select * from Kategoriler where not exists(
	select * from KitapKategori 
	where Kategoriler.kategori_no=Kategoriler.kategori_no 
);


select * from Kitaplar k where not exists (
	select *from Emanet e 
	where e.isbn=k.isbn
);

select * from Yazarlar y where not exists(
	select * from KitapYazar ky 
	where y.yazar_no=ky.yazar_no
	having count(*)>=5
);


-- bilgisayar kategorisinde kitap yazan yazarlar listesi
select * from Yazarlar y where exists (
	select * from KitapYazar ky
	inner join KitapKategori kk on kk.isbn= ky.isbn
	inner join Kategoriler ka on ka.kategori_no=kk.kategori_no
	where ka.kategori_adi='Bilgisayar' and y.yazar_no=ky.yazar_no
);

--ayný adrese sahip üyelerin olup olmadýgýnýn kontrolü
select distinct 'Ayný adrese sahip üye vardýr' where exists (
	select * from Uyeler group by adres_no having count(*)>1
);


select kitap_adi, (
	select yazar_adi from Yazarlar,KitapYazar
	where KitapYazar.yazar_no=Yazarlar.yazar_no and Kitaplar.isbn=KitapYazar.isbn
) as "Yazar"  from Kitaplar ;


--kitaplarýn kagegorilerini listeleyen sql sorgusu
select (select kategori_adi from Kategoriler
		where kategori_no=KitapKategori.kategori_no )as "Kategori"	,
		(select  kitap_adi from Kitaplar where isbn=KitapKategori.isbn)as "kitap"
		from KitapKategori order by kategori;
		

--turhal kütüphanesinde bulunan yazarlarýn kitaplarýnýn sayisini listeleyen sql sorgusu
select yazar_adi,yazar_soyadi,
  ( select SUM(adet) from KitapYazar,KitapKutuphane
    where yazar_no=Yazarlar.yazar_no 
    AND KitapKutuphane.isbn=KitapYazar.isbn
    AND kutuphane_no = ( select kutuphane_no from Kutuphane where kutuphane_ismi='Turhal' )
  ) as "Kitap sayisi"
from Yazarlar order by yazar_adi;

--her üyenin kütüphanelerini kaç kez kullandýgýný listeleyen sql sorgusu
select uye_adi,uye_soyadi,
	(select count(*) from Emanet where Uyeler.uye_no=Emanet.uye_no) as "alýnan kitap sayýsý" 
from Uyeler;

--yazarlarýn en fazla kitap sayisina sahip yazarýn kitap sayisi
select MAX(yzr.kitap_sayisi) as en_fazla_kitap from 
	(select COUNT(*)as kitap_sayisi from KitapYazar group by yazar_no) yzr;


update Uyeler set adres_no=7 where uye_no=3;
--tokat ikamet eden üyelerin ad soyad bilgilerini listeleyen sql solgusu
select uye_adi,uye_soyadi from Uyeler,(select  adres_no from Adresler where sehir like '%amasya%') adres
where adres.adres_no=Uyeler.adres_no;


--ortalama sayfa sayýsýndan daha fazla sayfaya sahip olan kitaplarý listeleyn sql sorgusu
select * from Kitaplar , (select AVG(sayfa_sayisi) as "sayfa_ort"  from Kitaplar) ort
where Kitaplar.sayfa_sayisi>ort.sayfa_ort;

-- gruplandýrarak sorgulama
select kategori_no,COUNT(isbn) as "kitap sayisi" from KitapKategori group by kategori_no;
select uye_no ,COUNT(kutuphane_no)as"kullaným adedi" from Emanet group by uye_no order by [kullaným adedi]; 
select COUNT(isbn) as adet,yazar_no from KitapYazar group by yazar_no;
select kutuphane_no, AVG(DATEDIFF(DAY,emanet_tarihi,teslim_tarihi))as"emanet süresi" from Emanet group by kutuphane_no;
select kutuphane_no,COUNT(isbn) as "kitap sayisi" from KitapKutuphane where adet=1 group by kutuphane_no;
select kutuphane_no,SUM(adet)as "toplam kitap sayisi" from KitapKutuphane group by kutuphane_no;
select kutuphane_no,COUNT(isbn) as "kitap sayisi" from KitapKutuphane group by kutuphane_no;
				  
select adres_no,COUNT(*) as "adres sayýsý" from Uyeler group by adres_no having COUNT(*)>1;
select isbn,COUNT(*) from KitapKategori group by isbn having COUNT(*)>=1;
select COUNT(yazar_no),isbn from KitapYazar group by isbn having COUNT(yazar_no)=1;
select isbn, COUNT(uye_no) as "emanet sayýsý" from Emanet group by isbn having COUNT(uye_no)>3;
select kategori_no,COUNT(*) as "kitap sayýsý" from KitapKategori group by kategori_no having COUNT(*)>3;
select kategori_no ,COUNT(isbn)"kitap sayýsý" from KitapKategori group by kategori_no; 
select isbn,uye_no,COUNT(uye_no)as"uye adedi" from Emanet group by isbn,uye_no;
select kutuphane_no,isbn from Emanet group by kutuphane_no,isbn order by kutuphane_no,isbn;

				  --birden fazla tablo üzreinde sorgulamalar
select isbn,yazar_adi,yazar_soyadi from	KitapYazar ky, Yazarlar y where ky.yazar_no=y.yazar_no;

select isbn,kategori_adi from KitapKategori kk ,Kategoriler k where kk.kategori_no=k.kategori_no;

select isbn,yazar_adi,yazar_soyadi from Yazarlar y inner join KitapYazar ky on y.yazar_no=ky.yazar_no
order by yazar_adi,yazar_soyadi;

select kitap_adi,kk.isbn,kk.kutuphane_no from Kitaplar 
inner join KitapKutuphane kk on Kitaplar.isbn=kk.isbn;

select kategori_adi,SUM(adet) as "kitap sayisi"  from KitapKutuphane kk 
inner join KitapKategori kkt on kk.isbn=kkt.isbn
inner join Kategoriler kkg on kkg.kategori_no=kkt.kategori_no
group by kategori_adi;

select y.yazar_adi,y.yazar_soyadi,SUM (sayfa_sayisi) as "sayfa sayisi" from Yazarlar y 
inner join KitapYazar ky on ky.yazar_no=y.yazar_no
inner join Kitaplar k on k.isbn=ky.isbn
group by y.yazar_adi,y.yazar_soyadi
order by [sayfa sayisi] desc;

select y.yazar_adi,y.yazar_soyadi, COUNT(kk.adet) as "kitap sayisi" from  KitapKutuphane kk
inner join KitapYazar ky on ky.isbn=kk.isbn 
inner join Yazarlar y on y.yazar_no=ky.yazar_no
group by y.yazar_adi,y.yazar_soyadi;

select k.kutuphane_ismi,y.yazar_adi,y.yazar_soyadi from Kutuphane k 
inner join KitapKutuphane kk on kk.kutuphane_no=k.kutuphane_no
inner join KitapYazar ky on ky.isbn=kk.isbn
inner join Yazarlar y on y.yazar_no=ky.yazar_no
where k.kutuphane_ismi='turhal' or k.kutuphane_ismi='zile'
group by k.kutuphane_ismi,y.yazar_adi,y.yazar_soyadi
order by k.kutuphane_ismi,yazar_adi;

select u.uye_adi,u.uye_soyadi,u.telefon from Uyeler u 
inner join  Emanet e on e.uye_no=u.uye_no
where e.teslim_tarihi is null;

select u.uye_adi,u.uye_soyadi,u.telefon,a.* from Uyeler u 
inner join  Emanet e on e.uye_no=u.uye_no
inner join Adresler a on u.adres_no=a.adres_no
where e.teslim_tarihi is null;

select Yazarlar.*, COUNT(KitapYazar.isbn) as"kitap sayisi" from Yazarlar
left join KitapYazar on Yazarlar.yazar_no=KitapYazar.yazar_no
group by Yazarlar.yazar_no,yazar_adi,yazar_soyadi;

select Yazarlar.*, COUNT(KitapYazar.isbn) as"kitap sayisi" from Yazarlar
inner join KitapYazar on Yazarlar.yazar_no=KitapYazar.yazar_no
group by Yazarlar.yazar_no,yazar_adi,yazar_soyadi;

select Kategoriler.*,SUM(KitapKutuphane.adet) as "kitap sayisi" from KitapKutuphane
inner join KitapKategori on KitapKutuphane.isbn=KitapKategori.isbn
right join Kategoriler on Kategoriler.kategori_no=KitapKategori.kategori_no
group by Kategoriler.kategori_no,Kategoriler.kategori_adi;

select isbn from KitapKutuphane
intersect 
select isbn from Kitaplar

select kategori_no from Kategoriler
intersect 
select kategori_no from KitapKategori
				  
				  --Altsorgular 

select isbn from KitapKategori 
where kategori_no=(select kategori_no from Kategoriler where kategori_adi='bilgisayar');

select * from Kitaplar where sayfa_sayisi>(select AVG(sayfa_sayisi) from Kitaplar);

select * from Emanet where kutuphane_no=(select kutuphane_no from Kutuphane where kutuphane_ismi='turhal')

select * from Yazarlar where yazar_no not in(select yazar_no from KitapYazar)

select * from KitapKategori where 
kategori_no not in(select kategori_no from Kategoriler where kategori_adi='diðer' )

select * from KitapYazar where yazar_no in 
(select yazar_no from Yazarlar where (yazar_adi='turgut' and yazar_soyadi='özseven') or (yazar_adi='ebubekir' and yazar_soyadi='yaþar'))

select * from Uyeler where uye_no in (select uye_no from Emanet where teslim_tarihi is null)

select * from Kitaplar where isbn in
(select isbn from Kutuphane where kutuphane_ismi='Turhal' or kutuphane_ismi='Zile')

select * from Kitaplar where sayfa_sayisi >(select SUM(sayfa_sayisi) from Yazarlar y
inner join KitapYazar ky on ky.yazar_no=y.yazar_no
inner join Kitaplar k on k.isbn=ky.isbn
where yazar_adi='çebi' and yazar_soyadi='Bal')