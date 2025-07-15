CREATE TABLE araclar (
       arac_kodu  VARCHAR2(3),
       adi   VARCHAR2(30),
       bg NUMBER,
       renk_kodu VARCHAR2(1));
       
       
SELECT * FROM araclar;
DROP TABLE araclar;
SELECT * FROM araclar;

CREATE TABLE araclar (
       arac_kodu  VARCHAR2(3),
       adi   VARCHAR2(30),
       bg NUMBER,
       renk_kodu VARCHAR2(1));

ALTER TABLE araclar ADD (hp number(10,5));

SELECT * FROM araclar;

ALTER TABLE araclar MODIFY (hp varchar2(30));

DESC araclar;

ALTER TABLE araclar DROP COLUMN hp;

DROP TABLE araclar; 

insert into ARACLAR (arac_kodu,adi,bg ,renk_kodu) values('B01','BMW','1,4','K');
insert into ARACLAR (arac_kodu,adi,bg,renk_kodu) values('B02','BMW',1.4,'M');
insert into ARACLAR (arac_kodu,adi,bg,renk_kodu) values('B03','BMW','1,4','S');
insert into ARACLAR (arac_kodu,adi,bg,renk_kodu) values('B04','BMW','1,4','Y');
insert into ARACLAR (arac_kodu,adi,bg,renk_kodu) values('B05','BMW','1,6','K');
insert into ARACLAR (arac_kodu,adi,bg,renk_kodu) values('B06','BMW','1,6','M');
insert into ARACLAR (arac_kodu,adi,bg,renk_kodu) values('B07','BMW','1,6','S');
insert into ARACLAR (arac_kodu,adi,bg,renk_kodu) values('B08','BMW','1,6','Y');
insert into ARACLAR (arac_kodu,adi,bg,renk_kodu) values('M01','MERCEDES','1,4','K');
insert into ARACLAR (arac_kodu,adi,bg,renk_kodu) values('M02','MERCEDES','1,4','M');
insert into ARACLAR (arac_kodu,adi,bg,renk_kodu) values('M03','MERCEDES','1,4','S');
insert into ARACLAR (arac_kodu,adi,bg,renk_kodu) values('M04','MERCEDES','1,4','Y');
insert into ARACLAR (arac_kodu,adi,bg,renk_kodu) values('M05','MERCEDES','1,6','K');
insert into ARACLAR (arac_kodu,adi,bg,renk_kodu) values('M06','MERCEDES','1,6','M');
insert into ARACLAR (arac_kodu,adi,bg,renk_kodu) values('M07','MERCEDES','1,6','S');
insert into ARACLAR (arac_kodu,adi,bg,renk_kodu) values('M08','MERCEDES','1,6','Y');
insert into ARACLAR (arac_kodu,adi,bg,renk_kodu) values('A01','AUDI','1,6','K');
insert into ARACLAR (arac_kodu,adi,bg,renk_kodu) values('A02','AUDI','1,6','M');
insert into ARACLAR (arac_kodu,adi,bg,renk_kodu) values('A03','AUDI','1,6','S');
insert into ARACLAR (arac_kodu,adi,bg,renk_kodu) values('A04','AUDI','1,6','Y');
insert into ARACLAR (arac_kodu,adi,bg,renk_kodu) values('A05','AUDI','1,4','K');
insert into ARACLAR (arac_kodu,adi,bg,renk_kodu) values('A06','AUDI','1,4','M');
insert into ARACLAR (arac_kodu,adi,bg,renk_kodu) values('A07','AUDI','1,4','S');
insert into ARACLAR (arac_kodu,adi,bg,renk_kodu) values('A08','AUDI','1,4','Y');

commit;
End;

SELECT * FROM araclar ORDER BY adi;
SELECT * FROM araclar ORDER BY adi ASC;
SELECT * FROM araclar ORDER BY adi DESC;
SELECT * FROM araclar ORDER BY 2 ASC;
SELECT * FROM araclar ORDER BY adi, bg ASC;
SELECT * FROM araclar ORDER BY adi ASC, bg DESC;
SELECT * FROM araclar ORDER BY renk_kodu ASC;

CREATE TABLE arac_renkleri
(renk_kodu VARCHAR2(1),
 renk_adi  VARCHAR2(20));

insert into arac_renkleri(renk_kodu,renk_adi) VALUES('K','Kırmızı');
insert into arac_renkleri(renk_kodu,renk_adi) VALUES('M','Mavi');
insert into arac_renkleri(renk_kodu,renk_adi) VALUES('S','Sarı');
insert into arac_renkleri(renk_kodu,renk_adi) VALUES('Y','Yeşil');

commit;
END;

select * from arac_renkleri;

UPDATE arac_renkleri
SET renk_adi = UPPER(renk_adi);

SELECT * FROM arac_renkleri;

ROLLBACK;
SELECT renk_kodu, renk_adi, FROM arac_renkleri;

SELECT renk_kodu, UPPER(renk_adi) FROM arac_renkleri;

SELECT SUBSTR (renk_adi, 1,1) FROM arac_renkleri;

SELECT SUBSTR(renk_adi, 1,2) FROM arac_renkleri;

CREATE TABLE ogrenci(adi varchar2(20), soyadi varchar2(20));

SELECT * FROM ogrenci; 

INSERT INTO ogrenci (adi,soyadi) values ('idil', 'doğan');
INSERT INTO ogrenci(adi,soyadi) values ('can', 'doğan');
INSERT INTO ogrenci (adi, soyadi) values ('kadir', 'öztürk');
INSERT INTO ogrenci (adi,soyadi) values ('enes' ,'varol');

SELECT * FROM ogrenci; 
 UPDATE ogrenci; 
 SET adi = UPPER(adi), soyadi = UPPER(soyadi)
 where adi= 'enes'; 

 SELECT * FROM ogrenci; 

 UPDATE ogrenci 
 SET adi= UPPER(adi), soyadi =UPPER(soyadi)
 where adi<> 'idil'; --idil hariç hepsi
 SELECT * FROM ogrenci; 

 update ogrenci
set adi = UPPER(adi), soyadi = Upper(soyadi);
select * from ogrenci;

ALTER TABLE ogrenci ADD (fullname varchar2(50));

select * from ogrenci;

select adi "name", soyadi "soyadi", fullname , substr (adi, 1,1) || '.' || ' ' || soyadi "tam adi" from ogrenci;

update ogrenci
set fullname = substr (adi, 1,1) || '. ' || soyadi;

select * from ogrenci;

commit;

select sysdate from dual;
desc dual;

select 25*4 from dual;

select adi, soyadi, fullname, sysdate from ogrenci;

select 25 * 4 from ogrenci;

select * from dual;

select length('kadir') from dual;

select systimestamp from dual;

select to_char (sysdate, 'yyyy/mm/dd hh24:mi:ss') from dual;

select to_char (sysdate, 'hh24:mi:ss') from dual;

select to_char (5.5) from dual;

select to_date ('23/12/2003', 'dd/mm/yyyy') from dual;
