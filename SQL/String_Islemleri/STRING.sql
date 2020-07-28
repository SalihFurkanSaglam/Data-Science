
----ASCII VE CHAR FONKSIYONLARI----
SELECT ASCII ('A') --64
-- A KARAKTERININ ASCII KARSILIGI

--CHAR'DA ASCII'NIN TERS FONKSIYONUDUR
SELECT CHAR (65) --A
-- 65 ASCII DEGERININ CHAR KARSILIGI

SELECT ASCII(CHAR(65)) --65

SELECT CHAR(ASCII('A')) --A

----SUBSTRING FONKSIYONU----
SELECT SUBSTRING('RECEP AYDOGDU', 3, 5)
--3. KARAKTERDEN ITIBAREN 5 KARAKTER ALIR.

----CHAR INDEX FONKSIYONU----
SELECT CHARINDEX('A', 'RECEP AYDOGDU', 1)

----CONCAT, CONCAT_WS----
SELECT CONCAT('RECEP','AYDOGDU')

SELECT CONCAT_WS('**','A','B','C')

SELECT 
USERNAME_+' '+PASSWORD_ AS NORMAL,
CONCAT(USERNAME_,' ',PASSWORD_) AS CONCAT_,
CONCAT_WS(' ',USERNAME_,PASSWORD_) AS CONCAT_WS_
FROM USER_


----FORMAT FONKSIYONU----
SELECT FORMAT(GETDATE(),'D','tr')
SELECT FORMAT(GETDATE(),'D','EN-US')
SELECT FORMAT(GETDATE(),'d','TR')
SELECT FORMAT(GETDATE(),'d','EN-US')


----LEFT, RIGHT, LEN FONKSIYONLARI----
SELECT LEFT('RECEP AYDOGDU', 5)
--SOLDAN 5 KARAKTER ALIR.

SELECT RIGHT('RECEP AYDOGDU',7)
--SAGDAN 7 KARAKTER ALIR.

SELECT LEFT('RECEP AYDOGDU',CHARINDEX(' ','RECEP AYDOGDU')),
	RIGHT('RECEP AYDOGDU',LEN('RECEP AYDOGDU')-CHARINDEX(' ','RECEP AYDOGDU'))


-- USER_ TABLOSUNDA DENEYELIM
SELECT LEFT(NAMESURNAME,CHARINDEX(' ',NAMESURNAME)) AS NAME,
	RIGHT(NAMESURNAME,LEN(NAMESURNAME)-CHARINDEX(' ',NAMESURNAME)) AS SURNAME
FROM USER_


----TRIM, LTRIM, RTRIM FONKSIYONLARI----
SELECT TRIM(' RECEP AYDOGDU ')
--BASINDAKI VE SONUNDAKI BOSLUGU TEMIZLER

SELECT LTRIM(' RECEP AYDOGDU ')
--SOLUNDAKI BOSLUGU TEMIZLER

SELECT RTRIM(' RECEP AYDOGDU ')
--SAGINDAKI BOSLUGU TEMIZLER

SELECT LTRIM(RTRIM(' RECEP AYDOGDU '))
-- SOL VE SAGDAKI BOSLUGU TEMIZLER


----LOWER, UPPER, REVERSE, REPLICATE FONKSIYONLARI----

SELECT LOWER('RECEP')
-- KUCUK HARFE CEVIRIR

SELECT UPPER('recep')
-- BUYUK HARFE CEVIRIR

SELECT REVERSE('RECEP AYDOGDU')
-- TERS YAZDIRIR.


----REPLACE FONKSIYONU----

SELECT REPLACE('DEGISECEK AYDO�DU','DEGISECEK','DEGISTI')