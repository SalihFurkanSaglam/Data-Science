select * from CUSTOMER
where CITY='Rize' and DISTRICT='F�nd�kl�' -- Rize ve F�nd�kl� olanlar� getirir.
-----------------------------------------------------
select*from CUSTOMER
where CITY='Rize' and DISTRICT<>'F�nd�kl�' -- F�nd�kl� d���nda ama Rize olanlar� getirir.
-----------------------------------------------------
select*from CUSTOMER
where AGE>77 --Ya�� 77'den b�y�k olanlar� getirir.
-----------------------------------------------------
select*from CUSTOMER
where CUSTOMERNAME like 'Recep%' --�smi recep ile ba�layanlar
------------------------------------------------------
select*from CUSTOMER
where CUSTOMERNAME like '%ece%' --�sminin i�inde ece kelimesi ge�enler
----------------------------------------------------------------------
select*from CUSTOMER
where AGE between 20 and 24 --ya�� 20 ile 24 aras�ndakiler gelir
----------------------------------------------------------------------
select*from CUSTOMER
where CITY ='�sparta' and DISTRICT not in ('uluborlu','yalva�','gelendost') and GENDER='K' 
-- �sparta'da uluborlu,yalva�,gelendost il�eleri d���nda oturan kad�nlar.
-----------------------------------------------------------------------------
delete from CUSTOMER where ID=1 --ID'si 1 olan customer'i sil.
select*from CUSTOMER
-----------------------------------------------------------------------
delete from CUSTOMER where CUSTOMERNAME like 'Serhat%' --�smi serhat ile ba�layan customer'lari sil.
select*from CUSTOMER
---------------------------------------------------------------
update CUSTOMER set GENDER='Erkek'
where GENDER='E'

update CUSTOMER set GENDER='Kad�n'
where GENDER='K'

select*from CUSTOMER
-----------------------------------------
insert into CUSTOMER (CUSTOMERNAME,CITY,DISTRICT,BIRTHDATE,GENDER,AGE)
values ('Serdar �AKIR','�stanbul','Bayrampa�a','1999-12-11','Erkek','20')
select*from CUSTOMER
---------------------------------------------
select*from CUSTOMER
where CUSTOMERNAME like '[a-d]%' --a veya b veya c veya d harfi ile baslayanlari getirir.
-------------------------------------