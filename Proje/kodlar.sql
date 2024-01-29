use deneme


CREATE TABLE Musteriler (
  MusteriID INT PRIMARY KEY IDENTITY(1,1),
  MusteriAd� VARCHAR(50) NOT NULL,
  MusteriSoyadi VARCHAR(50) NOT NULL,
  MusteriBakiyesi INT NOT NULL
)

CREATE TABLE UrunKategorileri (
  KategoriID INT PRIMARY KEY IDENTITY(1,1),
  KategoriAd� VARCHAR(50) NOT NULL
)


CREATE TABLE Urunler(
 UrunID INT NOT NULL PRIMARY KEY IDENTITY(1,1),
 KategoriID INT NOT NULL FOREIGN KEY REFERENCES UrunKategorileri(KategoriID),
 UrunIsmi VARCHAR(255) NOT NULL,
 Marka VARCHAR(255) NOT NULL,
 Beden VARCHAR(50) NOT NULL,
 Stok INT,
 Fiyat INT NOT NULL
 )


CREATE TABLE Siparisler(
  SiparisID INT PRIMARY KEY IDENTITY(1,1),
  SiparisTarihi DATETIME NOT NULL,
  SiparisAdresi VARCHAR(255) NOT NULL,
  TelNo VARCHAR(50),
  KategoriID INT NOT NULL FOREIGN KEY REFERENCES UrunKategorileri(KategoriID),
  UrunIsmi VARCHAR(255) NOT NULL,
  Marka VARCHAR(255) NOT NULL,
  Beden VARCHAR(50) NOT NULL,
  Miktar INT NOT NULL,
  BirimFiyat INT,
  MusteriID INT NOT NULL FOREIGN KEY REFERENCES Musteriler(MusteriID)
)

create TABLE UrunYorumlari(
 YorumID INT PRIMARY KEY IDENTITY(1,1),
 MusteriID INT NOT NULL FOREIGN KEY REFERENCES Musteriler(MusteriID),
 SiparisID INT NOT NULL FOREIGN KEY REFERENCES Siparisler(SiparisID),
 UrunAdi VARCHAR(255),
 Yorum VARCHAR(255)
 )
 
 CREATE TABLE SiparisKargo(
  KargoID INT PRIMARY KEY IDENTITY(1,1),
  MusteriID INT FOREIGN KEY REFERENCES Musteriler(MusteriID),
  SiparisID INT,
  KargoDurum VARCHAR(255)
   )
  

  
  
create TABLE UrunIade(
  IadeID INT PRIMARY KEY IDENTITY(1,1),
  UrunID INT,
  MusteriID INT NOT NULL FOREIGN KEY REFERENCES Musteriler(MusteriID),
  Adet INT,
  UrunIsmi VARCHAR(255),
  Marka VARCHAR(255),
  Beden VARCHAR(255),
  Fiyat INT,
  IadeAciklama VARCHAR(255)
  )
  
 
  
INSERT INTO Musteriler VALUES('Ahmet', 'Y�lmaz' , 1000)
INSERT INTO Musteriler VALUES('Ay�e', '�zt�rk', 500)
INSERT INTO Musteriler VALUES('Mehmet', 'Kara',  750)
INSERT INTO Musteriler VALUES('Fatma', 'Akta�',  250)
INSERT INTO Musteriler VALUES('Mustafa', 'Demir',  800)

INSERT INTO UrunKategorileri VALUES('Ti��rtler')
INSERT INTO UrunKategorileri VALUES('Elbiseler')
INSERT INTO UrunKategorileri VALUES('Ayakkab�lar')
INSERT INTO UrunKategorileri VALUES('�apkalar')
INSERT INTO UrunKategorileri VALUES('�antalar')


INSERT INTO Urunler VALUES(1, 'Lacivert Polo Yaka Ti��rt', 'Lacoste', 'S', 10, 150)
INSERT INTO Urunler VALUES(1, 'Lacivert Polo Yaka Ti��rt', 'Lacoste', 'M', 20, 150)
INSERT INTO Urunler VALUES(1, 'Lacivert Polo Yaka Ti��rt', 'Lacoste', 'L', 30, 150)
INSERT INTO Urunler VALUES(1, 'Lacivert Polo Yaka Ti��rt', 'Lacoste', 'XL', 40, 150)
INSERT INTO Urunler VALUES(1, 'Siyah Bask�l� Ti��rt', 'Nike', 'S', 10, 200)
INSERT INTO Urunler VALUES(1, 'Siyah Bask�l� Ti��rt', 'Nike', 'M', 20, 200)
INSERT INTO Urunler VALUES(1, 'Siyah Bask�l� Ti��rt', 'Nike', 'L', 30, 200)
INSERT INTO Urunler VALUES(1, 'Siyah Bask�l� Ti��rt', 'Nike', 'XL', 40, 200)


INSERT INTO Urunler VALUES(2, 'Siyah Elbise', 'Zara', 'XS', 10, 300)
INSERT INTO Urunler VALUES(2, 'Siyah Elbise', 'Zara', 'S', 20, 300)
INSERT INTO Urunler VALUES(2, 'Siyah Elbise', 'Zara', 'M', 30, 300)
INSERT INTO Urunler VALUES(2, 'Siyah Elbise', 'Zara', 'L', 40, 300)
INSERT INTO Urunler VALUES(2, 'K�rm�z� Abiye Elbise', 'Vakko', 'XS', 10, 500)
INSERT INTO Urunler VALUES(2, 'K�rm�z� Abiye Elbise', 'Vakko', 'S', 20, 500)
INSERT INTO Urunler VALUES(2, 'K�rm�z� Abiye Elbise', 'Vakko', 'M', 30, 500)
INSERT INTO Urunler VALUES(2, 'K�rm�z� Abiye Elbise', 'Vakko', 'L', 40, 500)



INSERT INTO Urunler VALUES(3, 'Siyah Spor Ayakkab�', 'Adidas', '39', 100, 600)
INSERT INTO Urunler VALUES(3, 'Siyah Spor Ayakkab�', 'Adidas', '40', 200, 600)
INSERT INTO Urunler VALUES(3, 'Siyah Spor Ayakkab�', 'Adidas', '41', 300, 600)
INSERT INTO Urunler VALUES(3, 'Siyah Spor Ayakkab�', 'Adidas', '42', 400, 600)
INSERT INTO Urunler VALUES(3, 'Siyah Spor Ayakkab�', 'Adidas', '43', 500, 600)
INSERT INTO Urunler VALUES(3, 'Siyah Spor Ayakkab�', 'Adidas', '44', 600, 600)
INSERT INTO Urunler VALUES(3, 'Beyaz Sneaker', 'Converse', '39', 200, 700)
INSERT INTO Urunler VALUES(3, 'Beyaz Sneaker', 'Converse', '40', 300, 700)
INSERT INTO Urunler VALUES(3, 'Beyaz Sneaker', 'Converse', '41', 400, 700)
INSERT INTO Urunler VALUES(3, 'Beyaz Sneaker', 'Converse', '42', 500, 700)
INSERT INTO Urunler VALUES(3, 'Beyaz Sneaker', 'Converse', '43', 600, 700)
INSERT INTO Urunler VALUES(3, 'Beyaz Sneaker', 'Converse', '44', 700, 700)


INSERT INTO Urunler VALUES(4, 'Lacivert �apka', 'New Era', '59Fifty', 50, 800)
INSERT INTO Urunler VALUES(4, 'Lacivert �apka', 'New Era', '6 Panel', 100, 800)
INSERT INTO Urunler VALUES(4, 'K�rm�z� �apka', 'Supreme', '59Fifty', 150, 900)
INSERT INTO Urunler VALUES(4, 'K�rm�z� �apka', 'Supreme', '6 Panel', 200, 900)
INSERT INTO Urunler VALUES(4, 'Siyah Bucket �apka', 'New Era', '59Fifty', 250, 1000)
INSERT INTO Urunler VALUES(4, 'Siyah Bucket �apka', 'New Era', '6 Panel', 300, 1000)
INSERT INTO Urunler VALUES(4, 'Beyaz Bucket �apka', 'Supreme', '59Fifty', 350, 1100)
INSERT INTO Urunler VALUES(4, 'Beyaz Bucket �apka', 'Supreme', '6 Panel', 400, 1100)


INSERT INTO Urunler VALUES(5, 'Siyah �apraz �anta', 'Michael Kors', 'Medium', 200, 1000)
INSERT INTO Urunler VALUES(5, 'Siyah �apraz �anta', 'Michael Kors', 'Large', 300, 1000)
INSERT INTO Urunler VALUES(5, 'K�rm�z� Omuz �antas�', 'Chanel', 'Small', 350, 1100)
INSERT INTO Urunler VALUES(5, 'K�rm�z� Omuz �antas�', 'Chanel', 'Medium', 400, 1100)
INSERT INTO Urunler VALUES(5, 'Beige �antas�', 'Louis Vuitton', 'Small', 450, 1200)
INSERT INTO Urunler VALUES(5, 'Beige �antas�', 'Louis Vuitton', 'Medium', 500, 1200)
INSERT INTO Urunler VALUES(5, 'Lacivert El �antas�', 'Gucci', 'Small', 550, 1300)
INSERT INTO Urunler VALUES(5, 'Lacivert El �antas�', 'Gucci', 'Medium', 600, 1300)



CREATE TRIGGER BakiyeStokKontrolu
ON Siparisler
AFTER INSERT
AS
BEGIN
  DECLARE @KategoriID INT;
  DECLARE @Miktar INT;
  DECLARE @Stok INT;
  DECLARE @MusteriID INT;
  DECLARE @Beden VARCHAR(255);
  DECLARE @BirimFiyat INT;
  DECLARE @Bakiye INT;
  DECLARE @UrunIsmi VARCHAR(255);
  DECLARE @ToplamFiyat INT;

  SELECT 
    @KategoriID = i.KategoriID,
    @Miktar = i.Miktar,
    @MusteriID = i.MusteriID,
    @UrunIsmi = i.UrunIsmi,
    @Beden = i.Beden,
    @BirimFiyat = i.BirimFiyat,
    @ToplamFiyat = i.Miktar * i.BirimFiyat
  FROM inserted i;

  SELECT 
    @Stok = Stok
  FROM Urunler
  WHERE KategoriID = @KategoriID AND UrunIsmi = @UrunIsmi AND Beden = @Beden;

  SELECT 
    @Bakiye = MusteriBakiyesi
  FROM Musteriler
  WHERE MusteriID = @MusteriID;

  IF (@Miktar > @Stok)
  BEGIN
    PRINT 'Stok yetersiz.';
    ROLLBACK
  END
  ELSE IF (@ToplamFiyat > @Bakiye)
  BEGIN
    PRINT 'Bakiye yetersiz.';
    ROLLBACK
  END
  ELSE
  BEGIN
    UPDATE Urunler
    SET Stok = Stok - @Miktar
    WHERE KategoriID = @KategoriID AND UrunIsmi = @UrunIsmi AND Beden = @Beden;

    UPDATE Musteriler
    SET MusteriBakiyesi = MusteriBakiyesi - @ToplamFiyat
    WHERE MusteriID = @MusteriID;

    PRINT 'Sipari�iniz Olu�turuldu�!';
��END;
END;




CREATE TRIGGER UrunIadee
ON UrunIade
AFTER INSERT
AS
BEGIN
  DECLARE @SiparisID INT;
  DECLARE @MusteriID INT;
  DECLARE @UrunIsmi VARCHAR(255);
  DECLARE @Beden VARCHAR(255);
  DECLARE @Fiyat INT;
  DECLARE @Adet INT;

  SELECT 
    @SiparisID = UrunID,
    @MusteriID = MusteriID,
    @UrunIsmi = UrunIsmi,
    @Adet = Adet,
    @Beden = Beden,
    @Fiyat = Fiyat
  FROM inserted ;

  UPDATE Urunler
  SET Stok = Stok + @Adet
  WHERE UrunIsmi = @UrunIsmi AND Beden = @Beden;

  UPDATE Musteriler
  SET MusteriBakiyesi = MusteriBakiyesi + @Fiyat
  WHERE MusteriID = @MusteriID;
  
  DELETE FROM Siparisler WHERE SiparisID = @SiparisID;
  
  PRINT '�ade i�lemi ba�ar�yla ger�ekle�tirildi.';
END;



CREATE TRIGGER SiparisKargoDurum
ON SiparisKargo
AFTER INSERT
AS
BEGIN
 DECLARE @SiparisID INT;
 DECLARE @KargoDurum VARCHAR(255);

 SELECT 
  @SiparisID = SiparisID
 FROM inserted;

 PRINT CAST(@SiparisID AS VARCHAR(10)) + ' numaral� sipari�iniz kargoya verildi.';
END;



CREATE TRIGGER SiparisKargoGuncelle
ON SiparisKargo
AFTER UPDATE
AS
BEGIN
  DECLARE @SiparisID INT;
  DECLARE @KargoDurum VARCHAR(255);
  
  SELECT 
    @SiparisID = SiparisID,
    @KargoDurum = KargoDurum
  FROM inserted ;

  IF (@KargoDurum = 'Teslim Edildi')
  BEGIN
    PRINT CAST(@SiparisID AS VARCHAR(10)) + ' numaral� kargonuz teslim edildi..';

    DELETE FROM Siparisler WHERE SiparisID = @SiparisID;
  END;
END;



CREATE TRIGGER UrunYorumlariEklendi
ON UrunYorumlari
AFTER INSERT
AS
BEGIN
  PRINT 'G�r��leriniz i�in te�ekk�rler.';
END;


CREATE TRIGGER YeniUrunEklendi
ON Urunler
AFTER INSERT
AS
BEGIN
  PRINT 'Yeni �r�nler geldi !';
END;


CREATE PROCEDURE MusteriEkle
  @MusteriAdi VARCHAR(50),
  @MusteriSoyadi VARCHAR(50),
  @MusteriBakiyesi INT
AS
BEGIN
  INSERT INTO Musteriler (MusteriAd�, MusteriSoyadi, MusteriBakiyesi)
  VALUES (@MusteriAdi, @MusteriSoyadi, @MusteriBakiyesi);
  PRINT 'M��teri eklendi: ' + @MusteriAdi + ' ' + @MusteriSoyadi;
END;
