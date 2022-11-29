CREATE SEQUENCE S_ADRESY
START WITH 1
INCREMENT BY 1;

CREATE OR REPLACE TRIGGER T_ADRESY_ID
BEFORE INSERT
ON ADRESY
REFERENCING NEW AS NEW
FOR EACH ROW
BEGIN
  if(:new.ID_ADRESA is null) then
  SELECT S_ADRESY.nextval
  INTO :new.ID_ADRESA
  FROM dual;
  end if;
END;
/

ALTER TRIGGER "T_ADRESY_ID" ENABLE;



CREATE SEQUENCE S_AQUAPARKY
START WITH 1
INCREMENT BY 1;

CREATE OR REPLACE TRIGGER T_AQUAPARKY_ID
BEFORE INSERT
ON AQUAPARKY
REFERENCING NEW AS NEW
FOR EACH ROW
BEGIN
  if(:new.ID_AQUAPARK is null) then
  SELECT S_AQUAPARKY.nextval
  INTO :new.ID_AQUAPARK
  FROM dual;
  end if;
END;
/

ALTER TRIGGER "T_AQUAPARKY_ID" ENABLE;



CREATE SEQUENCE S_ATRAKCE
START WITH 1
INCREMENT BY 1;

CREATE OR REPLACE TRIGGER T_ATRAKCE_ID
BEFORE INSERT
ON ATRAKCE
REFERENCING NEW AS NEW
FOR EACH ROW
BEGIN
  if(:new.ID_ATRAKCE is null) then
  SELECT S_ATRAKCE.nextval
  INTO :new.ID_ATRAKCE
  FROM dual;
  end if;
END;
/

ALTER TRIGGER "T_ATRAKCE_ID" ENABLE;


CREATE SEQUENCE S_HOTOVE
START WITH 1
INCREMENT BY 1;

CREATE OR REPLACE TRIGGER T_HOTOVE_ID
BEFORE INSERT
ON HOTOVE
REFERENCING NEW AS NEW
FOR EACH ROW
BEGIN
  if(:new.ID_PLATBA is null) then
  SELECT S_HOTOVE.nextval
  INTO :new.ID_PLATBA
  FROM dual;
  end if;
END;
/

ALTER TRIGGER "T_HOTOVE_ID" ENABLE;


CREATE SEQUENCE S_KARTOU
START WITH 1
INCREMENT BY 1;

CREATE OR REPLACE TRIGGER T_KARTOU_ID
BEFORE INSERT
ON KARTOU
REFERENCING NEW AS NEW
FOR EACH ROW
BEGIN
  if(:new.ID_PLATBA is null) then
  SELECT S_KARTOU.nextval
  INTO :new.ID_PLATBA
  FROM dual;
  end if;
END;
/

ALTER TRIGGER "T_KARTOU_ID" ENABLE;




CREATE SEQUENCE S_NAKLADY
START WITH 1
INCREMENT BY 1;

CREATE OR REPLACE TRIGGER T_NAKLADY_ID
BEFORE INSERT
ON NAKLADY
REFERENCING NEW AS NEW
FOR EACH ROW
BEGIN
  if(:new.ID_NAKLAD is null) then
  SELECT S_NAKLADY.nextval
  INTO :new.ID_NAKLAD
  FROM dual;
  end if;
END;
/

ALTER TRIGGER "T_NAKLADY_ID" ENABLE;


CREATE SEQUENCE S_PLATBY
START WITH 1
INCREMENT BY 1;

CREATE OR REPLACE TRIGGER T_PLATBY_ID
BEFORE INSERT
ON PLATBY
REFERENCING NEW AS NEW
FOR EACH ROW
BEGIN
  if(:new.ID_PLATBA is null) then
  SELECT S_PLATBY.nextval
  INTO :new.ID_PLATBA
  FROM dual;
  end if;
END;
/

ALTER TRIGGER "T_PRACOVNI_POZICE_ID" ENABLE;


CREATE SEQUENCE S_PRACOVNI_POZICE
START WITH 1
INCREMENT BY 1;

CREATE OR REPLACE TRIGGER T_PRACOVNI_POZICE_ID
BEFORE INSERT
ON PRACOVNI_POZICE
REFERENCING NEW AS NEW
FOR EACH ROW
BEGIN
  if(:new.ID_PRACOVNI_POZICE is null) then
  SELECT S_PRACOVNI_POZICE.nextval
  INTO :new.ID_PRACOVNI_POZICE
  FROM dual;
  end if;
END;
/

ALTER TRIGGER "T_PRACOVNI_POZICE_ID" ENABLE;


CREATE SEQUENCE S_STAT
START WITH 1
INCREMENT BY 1;

CREATE OR REPLACE TRIGGER T_STAT_ID
BEFORE INSERT
ON STATY
REFERENCING NEW AS NEW
FOR EACH ROW
BEGIN
  if(:new.ID_STAT is null) then
  SELECT S_STAT.nextval
  INTO :new.ID_STAT
  FROM dual;
  end if;
END;
/

ALTER TRIGGER "T_STAT_ID" ENABLE;


CREATE SEQUENCE S_TITUL
START WITH 1
INCREMENT BY 1;

CREATE OR REPLACE TRIGGER T_TITUL_ID
BEFORE INSERT
ON TITULY
REFERENCING NEW AS NEW
FOR EACH ROW
BEGIN
  if(:new.ID_TITUL is null) then
  SELECT S_TITUL.nextval
  INTO :new.ID_TITUL
  FROM dual;
  end if;
END;
/

ALTER TRIGGER "T_TITUL_ID" ENABLE;


CREATE SEQUENCE S_TITULY_ZAMESTNANCU
START WITH 1
INCREMENT BY 1;

CREATE OR REPLACE TRIGGER T_TITULY_ZAMESTNANCU_ID
BEFORE INSERT
ON TITULY_ZAMESTNANCU
REFERENCING NEW AS NEW
FOR EACH ROW
BEGIN
  if(:new.ID_TITUL is null) then
  SELECT S_TITULY_ZAMESTNANCU.nextval
  INTO :new.ID_TITUL
  FROM dual;
  end if;
END;
/

ALTER TRIGGER "T_TITULY_ZAMESTNANCU_ID" ENABLE;



CREATE SEQUENCE S_TYPY_VSTUPENEK
START WITH 1
INCREMENT BY 1;

CREATE OR REPLACE TRIGGER T_TYPY_VSTUPENEK_ID
BEFORE INSERT
ON TYPY_VSTUPENEK
REFERENCING NEW AS NEW
FOR EACH ROW
BEGIN
  if(:new.ID_TYP_VSTUPENKY is null) then
  SELECT S_TYPY_VSTUPENEK.nextval
  INTO :new.ID_TYP_VSTUPENKY
  FROM dual;
  end if;
END;
/

ALTER TRIGGER "T_TYPY_VSTUPENEK_ID" ENABLE;


CREATE SEQUENCE S_VEKOVE_KATEGORIE
START WITH 1
INCREMENT BY 1;

CREATE OR REPLACE TRIGGER T_VEKOVE_KATEGORIE_ID
BEFORE INSERT
ON VEKOVE_KATEGORIE
REFERENCING NEW AS NEW
FOR EACH ROW
BEGIN
  if(:new.ID_VEKOVA_KATEGORIE is null) then
  SELECT S_VEKOVE_KATEGORIE.nextval
  INTO :new.ID_VEKOVA_KATEGORIE
  FROM dual;
  end if;
END;
/

ALTER TRIGGER "T_VEKOVE_KATEGORIE_ID" ENABLE;


CREATE SEQUENCE S_VSTUPENKY
START WITH 1
INCREMENT BY 1;

CREATE OR REPLACE TRIGGER T_VSTUPENKY_ID
BEFORE INSERT
ON VSTUPENKY
REFERENCING NEW AS NEW
FOR EACH ROW
BEGIN
  if(:new.ID_VSTUPENKA is null) then
  SELECT S_VSTUPENKY.nextval
  INTO :new.ID_VSTUPENKA
  FROM dual;
  end if;
END;
/

ALTER TRIGGER "T_VSTUPENKY_ID" ENABLE;


CREATE SEQUENCE S_ZAMESTNANCI
START WITH 1
INCREMENT BY 1;

CREATE OR REPLACE TRIGGER T_ZAMESTNANCI_ID
BEFORE INSERT
ON ZAMESTNANCI
REFERENCING NEW AS NEW
FOR EACH ROW
BEGIN
  if(:new.ID_ZAMESTNANEC is null) then
  SELECT S_ZAMESTNANCI.nextval
  INTO :new.ID_ZAMESTNANEC
  FROM dual;
  end if;
END;
/

ALTER TRIGGER "T_ZAMESTNANCI_ID" ENABLE;


/*INSERT INTO ADRESY (PSC, MESTO, ULICE, DOMOVN?_??SLO, ID_STAT)
VALUES
  (18814744, "Saumur", "Aenean massa", 123, 1);
  ("9279 Sed Road","Upper Hutt","ornare, elit"),
  ("296-163 Est St.","Belford Roxo","ac mattis"),
  ("P.O. Box 597, 2258 Pharetra. Avenue","Lambayeque","quis massa."),
  ("P.O. Box 813, 7118 Maecenas St.","Ollag?e","adipiscing lobortis");*/
  
  
  /* SQL DOTAZY 
  
A1: „seznam atrakce, ktere patri do aquaparku  ve meste Brno“, HK: D1 */  
select aq.id_aquapark, atr.id_atrakce, atr.popis
from aquaparky aq
join atrakce atr
on aq.id_aquapark = atr.id_aquapark
join adresy a
on a.id_adresa = aq.id_adresa
where a.mesto = 'Brno';

/* A2: „seznam zamestnancu, cije jmeno neni Milan“, HK: D2 */
select z.jmeno, z.prijmeni, aq.nazev_aquaparku
from zamestnanci z
join aquaparky aq
on aq.id_aquapark = z.id_aquapark
where z.jmeno != 'Milan';


/* A3: „seznam zamestnancu, ktere maji hodinovou mzdu vetsi, nez 150kc“, HK: D3 */
select z.jmeno, z.prijmeni, p.hodinova_mzda
from zamestnanci z
join pracovni_pozice p
on p.id_pracovni_pozice = z.id_pracovni_pozice
where hodinova_mzda > 150;

/* A4: „“, HK: D4 */


/* A5: „seznam zamestnancu, ktere bydli ve statu“, HK: D5 */
select z.id_zamestnanec, a.mesto, a.psc
from zamestnanci z
join adresy a
using(id_adresa);



/* A6: „seznam zamestnancu s titulem Mgr.“, HK: D6 */
select z.jmeno, z.prijmeni, tit.nazev_titulu
from zamestnanci z
join tituly_zamestnancu t
on t.id_zamestnanec = z.id_zamestnanec
join tituly tit
on (tit.id_titul = t.id_titul)
where tit.nazev_titulu = 'Mgr.';

/* A7: „seznam adres a nazvu aquaparku“, HK: D7 */
select mesto, ulice, nazev_aquaparku 
from adresy 
natural join aquaparky;


/* A8: „seznam plateb kartou a zaplacenych vstupenek“, HK: D8 */
select k.id_platba, k.banka, vstupenky.termin, vstupenky.id_vstupenka
from kartou k
cross join vstupenky;




/* A9: seznam vsech adres a zamestnancu ubytovanych 
na adrese vcetne adres bez zamestnancu, HK: D9*/
select mesto, ulice, jmeno, prijmeni 
from adresy a left outer join zamestnanci z 
on a.id_adresa = z.id_adresa;

/*A10 seznam vsech pracovnich pozici a zamestnancu vcetne 
pracovnich pozici neobsazenych zadnym zamestnancem, HK: D10*/
select jmeno, prijmeni, hodinova_mzda, nazev_prac_pozici 
from zamestnanci z right outer join pracovni_pozice p 
on (z.id_pracovni_pozice = p.id_pracovni_pozice);

/*A11 seznam vsech moznych adres a vsech zamestnancu, HK: D11*/
select mesto, psc, ulice, jmeno, prijmeni 
from adresy a full outer join zamestnanci z 
on (a.id_adresa = z.id_adresa);

/* A12: „seznam zamestnancu s hodinovou mzdou vetsi, 
nez prumerna“, HK: D12 */
select jmeno, prijmeni, hodinova_mzda
from zamestnanci z
join pracovni_pozice pp
on pp.id_pracovni_pozice = z.id_pracovni_pozice
where (hodinova_mzda > (select AVG(hodinova_mzda) from pracovni_pozice));

/*A13:  seznam aquaparku kteri maji detske vstupenky, HK: D13 */
select nazev_aquaparku, pracovni_hodiny, nazev_typu_vstupenky, cena 
from (select * from aquaparky natural join vstupenky 
natural join typy_vstupenek where nazev_typu_vstupenky = 'Detska');

/*A14 seznam aquaparku a minimalni oteviraci doby pro nej, HK: D14*/
select nazev_aquaparku, (select min(pracovni_hodiny) 
from aquaparky) "Min doba" 
from aquaparky;

/*A15 seznam zamestnancu v pardubicich, HK: D15*/
select jmeno, prijmeni, id_adresa 
from zamestnanci z 
where exists(select id_adresa from adresy a 
where mesto = 'Pardubice' and z.id_adresa = a.id_adresa);

select nazev_aquaparku, pracovni_hodiny, id_adresa 
from aquaparky aq
where not exists(select id_adresa from adresy a 
where mesto = 'Brno' and aq.id_adresa = a.id_adresa);

/*A16 seznam pracovnich pozici, ktere maji hodinovou mzdu mensi nez 200 nebo vetsi nez 400, HK: D16*/
select nazev_prac_pozici, hodinova_mzda 
from pracovni_pozice 
where hodinova_mzda < 200
union select nazev_prac_pozici, hodinova_mzda 
from pracovni_pozice 
where hodinova_mzda > 400;

--a17 seznam aquaparku ktere maji pracovni hodiny do 21 minus ty ktere maji pracovni hodiny vetsi nez do 19
select nazev_aquaparku, pracovni_hodiny 
from aquaparky 
where pracovni_hodiny <= 21
minus
select nazev_aquaparku, pracovni_hodiny 
from aquaparky where pracovni_hodiny > 19;

/*A18 seznam pracovnich pozici, ktere maji hodinovou mzdu mezi 100 a 400, HK: D18*/
select nazev_prac_pozici, hodinova_mzda 
from pracovni_pozice
where hodinova_mzda > 100
intersect
select nazev_prac_pozici, hodinova_mzda 
from pracovni_pozice 
where hodinova_mzda < 400;
  
/*A19 seznam pracovniku, mest a ulici, HK: D19*/
select lpad(jmeno, 10, ' ') || ', ' || mesto "Pracovnik", ulice 
from zamestnanci z join adresy a 
on z.id_adresa = a.id_adresa;

/*A20 prumer hodinove mzdy pracovnich pozici zaokruhleny na 2 desitinna cisla, HK: D20*/
select round(avg(hodinova_mzda), 2) "prumer" 
from pracovni_pozice;

/*A21 seznam vstupenek platnych do 18.12.2021, HK: D21*/
select termin 
from vstupenky 
where termin < to_date('2021/12/18', 'yyyy/mm/dd');

/*A22 celkova suma nakladu, HK: D21*/
select sum(castka) 
from naklady;

/*A22 minimalni, maximalni, stredni a suma vsech hodin. m. a jejich pocet, HK: D22*/
select min(hodinova_mzda),max(hodinova_mzda),
avg(hodinova_mzda),sum(hodinova_mzda),count(hodinova_mzda)
from pracovni_pozice;

/*A22 minimalni, maximalni, stredni a suma vsech hodin. m. a jejich pocet, HK: D22*/
select min(hodinova_mzda),max(hodinova_mzda),
avg(hodinova_mzda),sum(hodinova_mzda),count(hodinova_mzda)
from pracovni_pozice;

/*A23: „aquaparky, ktere maj? v?ce nez jednu atrakci“, HK: D23*/
select COUNT (id_atrakce),id_aquapark
from atrakce 
GROUP by id_aquapark HAVING COUNT (id_aquapark)> 1;
                                       
/*A24: „atrakci, ktere jsou v jednem aquaparku“, HK: D24*/
select aq.nazev_aquaparku, id_atrakce, popis
from aquaparky aq
left join atrakce atr
on aq.id_aquapark = atr.id_aquapark
where aq.id_aquapark = 2;


select aq.nazev_aquaparku, id_atrakce, popis
from aquaparky aq
join atrakce atr
on aq.id_aquapark = atr.id_aquapark
where aq.id_aquapark in (2);

select nazev_aquaparku, id_atrakce, popis
from aquaparky 
join (select aquaparky.id_aquapark from aquaparky 
minus select aquaparky.id_aquapark from aquaparky
where aquaparky.id_aquapark!= 2) a
on aquaparky.id_aquapark = a.id_aquapark
join atrakce atr
on aquaparky.id_aquapark = atr.id_aquapark;

/*A25: „aquaparky, ktere maj? v?ce nez jednu atrakci“, HK: D25*/
select COUNT (id_atrakce), id_aquapark
from atrakce
where id_aquapark IS NOT NULL group by id_aquapark
HAVING COUNT (id_atrakce)>1 ORDER BY COUNT (id_atrakce) DESC;

/*A26: „zamestnanci priraszene ke aquaparkum“, HK: D26*/
create or replace view zamestnanci_aquaparky as select jmeno, prijmeni, nazev_aquaparku, pracovni_hodiny from zamestnanci z join aquaparky a on(z.id_aquapark = a.id_aquapark);

/*A27: „zamestnanci, cije jmeno se zacina na M“, HK: D27*/
select jmeno, nazev_aquaparku
from zamestnanci_aquaparky where jmeno like'M%';

/*A27: „zamestnanci z pohledu, cije jmeno se zacina na D“, HK: D27*/
select prijmeni from v_zamestnanec where prijmeni like'D%';
            
/*A28: „vlozi do tabulky aquaparky hodnoty z tabulek adressy a zamestnanci“, HK: D28*/
insert into pracovni_pozice(nazev_prac_pozici,hodinova_mzda)
select 'Starsi ' || lower(nazev_prac_pozici) ,hodinova_mzda * 2 from pracovni_pozice where nazev_prac_pozici = 'Uklizec';

/*A29: „vypise aquaparky, kde se nazev rovna se nazvu mesta“, HK: D29*/
update aquaparky set nazev_aquaparku = 'StoneOcean'
where nazev_aquaparku = (select nazev_aquaparku from aquaparky where id_aquapark = '1');

/*A30: „smaze zamestnance, cije id = 3“, HK: D30*/
delete zamestnanci where jmeno = (select jmeno from zamestnanci where id_zamestnanec = '3');



