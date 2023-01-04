
---Emanet alınan kitabın emanet tarihini günceller
create trigger tgr_kitapEmanet
ON Kitaplar
after INSERT
AS
	update Emanet set emanet_tarihi=GETDATE() where emanet_tarihi is null;

---------------------------------------------------------
---Kitap ekleme işleminden sonra listeleme yapar
create trigger tgr_KitapListele
on Kitaplar
after insert
as
begin
select * from Kitaplar
end
---Kayıt Ekleme Örneği
insert into
Kitaplar(isbn,kitap_adi,yayin_tarihi,sayfa_sayisi) values ('9789753424141','Dört Arketip','2010-01-01 00:00:00.000','155')

---------------------------------------------------------
--Kitap sayfa sayısını güncelleme işlemi
create trigger tgr_KitapGuncelle on Kitaplar
after update
as
begin
if(exists(select*from inserted, deleted where inserted.sayfa_sayisi= deleted.sayfa_sayisi
or inserted.sayfa_sayisi > deleted.sayfa_sayisi))
begin
raiserror('Eski sayfa sayısı yeni sayfa sayısından fazla olmak zorunda',1,1)
rollback transaction 
end
end

--------------------------------------------------------------------
--Uyelerin cinsiyeti kız ve erkek olanlar eklenebilsin sadece
create trigger tgr_Cinsiyet
on Uyeler
for insert
as
if(exists(select*from inserted where cinsiyet = '0' or cinsiyet = '1'))
begin
raiserror('Uyelerin cinsiyeti kız ya da erkek olabilir',1,1)
rollback transaction 
end



