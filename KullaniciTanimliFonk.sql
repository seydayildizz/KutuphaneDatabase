-- yabancýl anahtar tanýmlamarý  ve cascade iþlemleri

alter table Emanet add constraint UyelerEmanet_fk
		foreign key (uye_no) references Uyeler (uye_no)
		on delete cascade
		on update cascade;


alter table Emanet add constraint KutuphaneEmanet_fk
		foreign key (kutuphane_no) references Kutuphane (kutuphane_no)
		on delete cascade
		on update cascade;


alter table KitapKategori add constraint KategorilerKitapKategori_fk
		foreign key (kategori_no) references Kategoriler (kategori_no)
		on delete cascade
		on update cascade;



alter table KitapYazar add constraint YazarlarKitapYazar_fk
		foreign key (yazar_no) references Yazarlar (yazar_no)
		on delete cascade;


alter table KitapKutuphane add constraint KitaplarKitapKutuphane_fk
		foreign key (isbn) references Kitaplar (isbn)
		on delete cascade;


alter table Kutuphane add constraint KutuphaneAdresler_fk
		foreign key (adres_no) references Adresler (adres_no);


alter table Emanet add constraint EmanetKitaplar_fk
		foreign key (isbn) references Kitaplar (isbn)
		on delete cascade
		on update cascade;
		

alter table KitapKategori add constraint KitapKategoriKitaplar_fk
		foreign key (isbn) references Kitaplar (isbn)
		on delete cascade
		on update cascade;


alter table KitapYazar add constraint KitapYazarKitaplar_fk
		foreign key (isbn) references Kitaplar (isbn)
		on delete cascade
		on update cascade;

alter table KitapKutuphane add constraint KitapKutuphaneKutuphane_fk
		foreign key (kutuphane_no) references Kutuphane(kutuphane_no)
		on delete cascade;