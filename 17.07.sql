create table ogrenciRelations(oNo number, AdSoyadi varchar2(30), dogum_yeri varchar2(2));

select * from ogrenciRelations;

insert into ogrenciRelations(oNo,AdSoyadi,dogum_yeri) values (100, 'Enes Varol', '34');
insert into ogrenciRelations(oNo,AdSoyadi,dogum_yeri) values (200, 'Kadir Öztürk', '06');
insert into ogrenciRelations(oNo,AdSoyadi,dogum_yeri) values (300, 'Nurullah Coşkun', '60');
insert into ogrenciRelations(oNo,AdSoyadi,dogum_yeri) values (400, 'Zeynep Erva', '81');
commit;

create table sehirler(plaka varchar2(2), sehir_adi varchar2(40));
insert into sehirler(plaka, sehir_adi) values ('34', 'İstanbul');
insert into sehirler(plaka, sehir_adi) values ('06', 'Ankara');
insert into sehirler(plaka, sehir_adi) values ('60', 'Tokat');
insert into sehirler(plaka, sehir_adi) values ('81', 'Düzce');
select * from sehirler; 
commit;

select * from ogrenciRelations;
select o.oNo, o.AdSoyadi, o.dogum_yeri, s.plaka, s.sehir_adi
from ogrenciRelations o , sehirler s
where o.dogum_yeri = s.plaka;

delete from sehirler where plaka='60';
commit;
select * from ogrenciRelations;
delete from ogrenciRelations where oNo= 200;

select o.oNo, o.AdSoyadi, o.dogum_yeri, s.plaka, s.sehir_adi 
from ogrenciRelations o, sehirler s
where dogum_yeri= plaka(+);

select o.oNo, o.AdSoyadi, o.dogum_yeri, s.plaka, s.sehir_adi 
from ogrenciRelations o, sehirler s
where dogum_yeri(+)= plaka;

select o.oNo, o.AdSoyadi, o.dogum_yeri, s.plaka, s.sehir_adi 
from ogrenciRelations o, sehirler s
where dogum_yeri= plaka;

select o.oNo, o.AdSoyadi, o.dogum_yeri, s.plaka, s.sehir_adi
from ogrenciRelations o
inner join sehirler s
on o.dogum_yeri =s.plaka;

select o.oNo, o.AdSoyadi, o.dogum_yeri, s.plaka, s.sehir_adi
from ogrenciRelations o
right join sehirler s
on o.dogum_yeri =s.plaka;

select o.oNo, o.AdSoyadi, o.dogum_yeri, s.plaka, s.sehir_adi
from ogrenciRelations o
full join sehirler s
on o.dogum_yeri =s.plaka;

select * from uretim; 
select * from satis;
select * from araclar;

select count(*) from uretim;
select count(*) from satis;

select u.uretimserino, u.uretim_tarihi, u.uretiim_maliyeti,
s.uretimserino, s.satis_tarihi, s.satis_tutari
from uretim u
inner join satis s on uretimserino u;

select count(*) from(select u.uretimserino, u.uretim_tarihi, u.uretiim_maliyeti,
s.uretimserino, s.satis_tarihi, s.satis_tutari
from uretim u
inner join satis s= on uretimserino u);

select * from ciro; 
select to_char(sysdate, 'mm') from dual; --ciro tablosundaki 8.ayı almak için 

select to_char(u.uretim_tarihi, 'mm'),sum(kar),arac_adi, renk_adi from ciro
where renk_adi= 'MAVİ' and arac_adi = 'BMW'
group by to_char(uretim_tarihi, 'mm', arac_adi, renk_adi);
create view ciro_view as 
(
    select a.arac_adi, a.motor_hacmi, r.renk_adi, u.uretim_tarihi, s.satis_tarihi, u.uretim_maliyeti 
    from uretim u, satis s, araclar a, arac_renkleri r
    where u.uretimserino= s.uretimserino and u.arac_kodu = a.arac_kodu and a.renk_kodu= r.renk_kodu
);

select * from ciro_view; 
select count(*) from ciro_view; 
select count(*) from ciro; 

select * from uretim; 
delete from uretim where arac_kodu = 'B06';

select * from ogrenciRelations;
alter table ogrenciRelations add tckn varchar(11);
update ogrenciRelations set tckn= '12345678901' where ono=100;
update ogrenciRelations set tckn= '98745678901' where ono=300;
update ogrenciRelations set tckn= '54345678901' where ono=400;

select ono,adsoyadi,dogum_yeri,substr(tckn, 1,2) || '*********' from ogrenciRelations;
create view ogrenciRelations_view as(
    select ono, adsoyadi, dogum_yeri, substr(tckn, 1,2) || '*********' tckn from ogrenciRelations
);
select*from ogrenciRelations_view;

alter table uretim 
add constarint uretimkodu_pk primary key (uretimserino);
alter table ogrenciRelations 
add constarint ono_pk primary key (ono); 

select * from ogrenciRelations; insert into ogrenciRelations (ono, adsoyadi, dogum_yeri, tckn) values (300, 'Lionel Messi' '34', '111111111');

select * from ogrencirelations;

insert into ogrenciRelations (ono, adsoyadi, dogum_yeri, tckn) values (300, 'Lionel Messi', '34', '11111111111');

create sequence oNo_sayac 
MINVALUE 1
MAXVALUE 999999 
start with 1
increment by 100; 
select oNo_sayac.nextval from dual;

drop sequence oNo_sayac;


CREATE SEQUENCE ogrenciNumarasi_sayac
  MINVALUE 0 
  MAXVALUE 999999999999
  START WITH 0
  INCREMENT BY 50;
  select ogrenciNumarasi_sayac.nextval from dual;
  select ogrenciNumarasi_sayac.currval from dual;
  commit;



