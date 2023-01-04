# Kütüphane Veri tabanı

* Proje : Kütüphane veri tabanının modellenmesi
* Kullanılan veri tabanı [Microsof SQL SERVER 2019](https://www.microsoft.com/tr-tr/sql-server/sql-server-downloads) ' dir
* E-R Diyagram Çizimi için [Umlet](https://www.umlet.com/) kullanılmıştır.

# Veri tabanı yapısı ve özellikleri

 Veri tabanı birden fazla kütüphane, kütÜphanelerin içerdiği kitaplar ve üyeler temeline dayanmaktadır.


| Tablolar     | İşlevi        |
| -------------| ------------- |
|ÜYELER	|Kütüphaneye kayıt olan kişilerin bilgilerini tutar.
|EMANET|Üyelerin emanet aldığı ve nereden aldığı gibi verileri tutar.
|YAZARLAR	|Yazarlarla ilgili verileri tutar.
|KÜTÜPHANE|Kütüphane adı da dahil olmak üzere ilgili verileri tutar.
|KİTAPKÜTÜPHANE	|kitap ve kütüphane arasındaki ilişkileri tutar.
|KİTAPYAZAR	|Kitapların hangi yazarın yazdığı bilgileri tutar.
|KİTAPKATEGORİ	|Kitapların hangi kategoriye girdikleri verileri tutar.
|ADRESLER	|Adres bilgilerini tutar.
|KİTAPLAR|Kitaplar ile ilgili verileri tutar.
|KATEGORİLER	|Kategori türlerini tutar.


### E-R Diyagram

---
\DatabaseProjectDBDiyagram.png

---
### Veri tabanında bulunan nesneler

*	10 adet Tablo
*	1 adet view
*	4 adet stored procedure
*	3 adet trigger
*	3 adet fonksiyon
