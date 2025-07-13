CREATE TABLE renkler(renkKodu number, renkAdi varchar2(20));

SELECT * FROM renkler;
SELECT renkKodu FROM renkler;
INSERT INTO renkler (renkKodu, renkAdi) VALUES (1,'kırmızı'); 

SELECT * FROM renkler;

INSERT INTO renkler (renkKodu, renkAdi) VALUES (2,'Yeşil'); 
INSERT INTO renkler (renkKodu, renkAdi) VALUES (3,'MAVİ'); 
INSERT INTO renkler (renkKodu, renkAdi) VALUES (4,'saRı'); 

COMMIT; --veri kaydedilir. 

INSERT INTO renkler (renkKodu, renkAdi) VALUES (12,'Yeşil'); 
INSERT INTO renkler (renkKodu, renkAdi) VALUES (13,'MAVİ'); 
INSERT INTO renkler (renkKodu, renkAdi) VALUES (14,'saRı');

SELECT * FROM renkler;

ROLLBACK; --henüz kaydedilmemiş veriler geri alınır. 

INSERT INTO renkler (renkKodu, renkAdi) VALUES (14,'saRı');
ROLLBACK;
INSERT INTO renkler (renkKodu, renkAdi) VALUES (15,'saRı');
COMMIT;
ROLLBACK;
SELECT * FROM renkler;

SELECT * FROM renkler WHERE renkKodu = 2;

SELECT * FROM renkler WHERE renkAdi = 'kırmızı';

DELETE FROM renkler WHERE renkKodu = 15; 

SELECT * FROM renkler; 

commit;

DELETE FROM renkler; --tüm veriler silinir.

SELECT * FROM renkler;
