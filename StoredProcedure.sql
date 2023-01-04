--parametreli procedure
CREATE PROCEDURE stp_KitapBilgi
@isbn int
AS
SELECT isbn,kitap_adi,sayfa_sayisi FROM Kitaplar WHERE isbn = @isbn;

execute stp_KitapBilgi 123456780;

--DROP PROCEDURE [procedure_ad�] var olan yordam� silmek i�in kullan�l�r.
--ALTER PROCEDURE [procedure_ad�] var olan yordam �zerinde de�i�iklik yapmak i�in kullan�l�r.

ALTER PROCEDURE stp_KitapBilgi
AS
SELECT isbn,kitap_adi,sayfa_sayisi FROM Kitaplar

execute stp_KitapBilgi;

---------------------------------------------------------

CREATE PROCEDURE stp_YazarBilgi
@yazar_no int 
AS
SELECT yazar_no,yazar_adi,yazar_soyadi FROM Yazarlar WHERE yazar_no = @yazar_no;

execute stp_YazarBilgi 10;

----------------------------------------------------------------------

CREATE PROCEDURE stp_KategoriBilgi
@kategori_no int 
AS
SELECT kategori_no,kategori_adi FROM Kategoriler WHERE @kategori_no = @kategori_no;

execute stp_KategoriBilgi 10;