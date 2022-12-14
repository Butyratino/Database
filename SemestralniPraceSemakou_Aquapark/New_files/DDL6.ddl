-- Generated by Oracle SQL Developer Data Modeler 22.2.0.165.1149
--   at:        2022-11-29 10:25:20 CET
--   site:      Oracle Database 11g
--   type:      Oracle Database 11g



-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE adresa (
    id_adresa     NUMBER NOT NULL,
    mesto         VARCHAR2(150) NOT NULL,
    domovni_cislo NUMBER NOT NULL,
    psc           NUMBER NOT NULL,
    ulice         VARCHAR2(150),
    id_stat       NUMBER NOT NULL
);

ALTER TABLE adresa ADD CONSTRAINT adresa_pk PRIMARY KEY ( id_adresa );

CREATE TABLE aquapark (
    id_aquapark     NUMBER NOT NULL,
    nazev_aquaparku VARCHAR2(80) NOT NULL,
    pracovni_hodiny NUMBER NOT NULL,
    id_adresa       NUMBER NOT NULL
);

CREATE UNIQUE INDEX aquapark__idx ON
    aquapark (
        id_adresa
    ASC );

ALTER TABLE aquapark ADD CONSTRAINT aquapark_pk PRIMARY KEY ( id_aquapark );

CREATE TABLE atrakce (
    id_atrakce  NUMBER NOT NULL,
    popis       VARCHAR2(200) NOT NULL,
    id_aquapark NUMBER NOT NULL,
    id_naklad   NUMBER NOT NULL
);

ALTER TABLE atrakce ADD CONSTRAINT atrakce_pk PRIMARY KEY ( id_atrakce );

CREATE TABLE hotove (
    id_platba NUMBER NOT NULL
);

ALTER TABLE hotove ADD CONSTRAINT hotove_pk PRIMARY KEY ( id_platba );

CREATE TABLE image_table (
    id_blob        NUMBER NOT NULL,
    name           NVARCHAR2(20) NOT NULL,
    image_aquapark BLOB NOT NULL,
    image_atrakce  BLOB NOT NULL
);

ALTER TABLE image_table ADD CONSTRAINT image_table_pk PRIMARY KEY ( id_blob );

CREATE TABLE kartou (
    id_platba NUMBER NOT NULL,
    banka     VARCHAR2(50) NOT NULL
);

ALTER TABLE kartou ADD CONSTRAINT kartou_pk PRIMARY KEY ( id_platba );

CREATE TABLE log (
    id_aquapark NUMBER NOT NULL,
    id_log      NUMBER NOT NULL,
    "Date"      DATE NOT NULL,
    popis       VARCHAR2(50) NOT NULL
);

CREATE UNIQUE INDEX log__idx ON
    log (
        id_aquapark
    ASC );

ALTER TABLE log ADD CONSTRAINT log_pk PRIMARY KEY ( id_log );

CREATE TABLE naklady (
    id_naklad   NUMBER NOT NULL,
    typ_nakladu VARCHAR2(30) NOT NULL,
    castka      NUMBER NOT NULL
);

ALTER TABLE naklady ADD CONSTRAINT naklady_pk PRIMARY KEY ( id_naklad );

CREATE TABLE platba (
    id_platba  NUMBER NOT NULL,
    typ_platby VARCHAR2(30) NOT NULL
);

ALTER TABLE platba ADD CONSTRAINT platba_pk PRIMARY KEY ( id_platba );

CREATE TABLE pracovni_pozice (
    id_pracovni_pozice NUMBER NOT NULL,
    nazev_prac_pozici  VARCHAR2(30) NOT NULL,
    hodinova_mzda      NUMBER NOT NULL
);

ALTER TABLE pracovni_pozice ADD CONSTRAINT pracovni_pozice_pk PRIMARY KEY ( id_pracovni_pozice );

CREATE TABLE stat (
    id_stat NUMBER NOT NULL
);

ALTER TABLE stat ADD CONSTRAINT stat_pk PRIMARY KEY ( id_stat );

CREATE TABLE titul (
    id_titul     NUMBER NOT NULL,
    nazev_titulu VARCHAR2(30) NOT NULL
);

ALTER TABLE titul ADD CONSTRAINT titul_pk PRIMARY KEY ( id_titul );

ALTER TABLE titul ADD CONSTRAINT titul_nazev_titulu_un UNIQUE ( nazev_titulu );

CREATE TABLE titul_zamestnanec (
    id_titul       NUMBER NOT NULL,
    id_zamestnanec NUMBER NOT NULL
);

ALTER TABLE titul_zamestnanec ADD CONSTRAINT titul_zamestnanec_pk PRIMARY KEY ( id_titul,
                                                                                id_zamestnanec );

CREATE TABLE typ_vstupenky (
    id_typ_vstupenky     NUMBER NOT NULL,
    nazev_typu_vstupenky VARCHAR2(30) NOT NULL,
    cena                 NUMBER NOT NULL
);

ALTER TABLE typ_vstupenky ADD CONSTRAINT typ_vstupenky_pk PRIMARY KEY ( id_typ_vstupenky );

CREATE TABLE vekova_kategorie (
    id_vekova_kategorie  NUMBER NOT NULL,
    typ_vekove_kategorii VARCHAR2(50) NOT NULL,
    id_atrakce           NUMBER NOT NULL
);

ALTER TABLE vekova_kategorie ADD CONSTRAINT vekova_kategorie_pk PRIMARY KEY ( id_vekova_kategorie );

CREATE TABLE vstupenka (
    id_vstupenka     NUMBER NOT NULL,
    termin           DATE NOT NULL,
    id_aquapark      NUMBER NOT NULL,
    id_typ_vstupenky NUMBER NOT NULL,
    id_platba        NUMBER NOT NULL
);

ALTER TABLE vstupenka ADD CONSTRAINT vstupenka_pk PRIMARY KEY ( id_vstupenka );

CREATE TABLE zamestnanec (
    id_zamestnanec           NUMBER NOT NULL,
    jmeno                    VARCHAR2(30) NOT NULL,
    prijmeni                 VARCHAR2(30) NOT NULL,
    email                    VARCHAR2(30) NOT NULL,
    heslo                    VARCHAR2(16) NOT NULL,
    id_aquapark              NUMBER NOT NULL,
    id_adresa                NUMBER NOT NULL,
    id_pracovni_pozice       NUMBER NOT NULL,
    id_zamestnanec_podrizeny NUMBER,
    id_naklad                NUMBER NOT NULL
);

CREATE UNIQUE INDEX zamestnanec__idx ON
    zamestnanec (
        id_adresa
    ASC );

ALTER TABLE zamestnanec ADD CONSTRAINT zamestnanec_pk PRIMARY KEY ( id_zamestnanec );

ALTER TABLE adresa
    ADD CONSTRAINT adresa_stat_fk FOREIGN KEY ( id_stat )
        REFERENCES stat ( id_stat );

ALTER TABLE aquapark
    ADD CONSTRAINT aquapark_adresa_fk FOREIGN KEY ( id_adresa )
        REFERENCES adresa ( id_adresa );

ALTER TABLE atrakce
    ADD CONSTRAINT atrakce_aquapark_fk FOREIGN KEY ( id_aquapark )
        REFERENCES aquapark ( id_aquapark );

ALTER TABLE atrakce
    ADD CONSTRAINT atrakce_naklady_fk FOREIGN KEY ( id_naklad )
        REFERENCES naklady ( id_naklad );

ALTER TABLE hotove
    ADD CONSTRAINT hotove_platba_fk FOREIGN KEY ( id_platba )
        REFERENCES platba ( id_platba );

ALTER TABLE kartou
    ADD CONSTRAINT kartou_platba_fk FOREIGN KEY ( id_platba )
        REFERENCES platba ( id_platba );

ALTER TABLE log
    ADD CONSTRAINT log_aquapark_fk FOREIGN KEY ( id_aquapark )
        REFERENCES aquapark ( id_aquapark );

ALTER TABLE titul_zamestnanec
    ADD CONSTRAINT titul_zam_zam_fk FOREIGN KEY ( id_zamestnanec )
        REFERENCES zamestnanec ( id_zamestnanec );

ALTER TABLE titul_zamestnanec
    ADD CONSTRAINT titul_zamestnanec_titul_fk FOREIGN KEY ( id_titul )
        REFERENCES titul ( id_titul );

ALTER TABLE vekova_kategorie
    ADD CONSTRAINT vekova_kategorie_atrakce_fk FOREIGN KEY ( id_atrakce )
        REFERENCES atrakce ( id_atrakce );

ALTER TABLE vstupenka
    ADD CONSTRAINT vstupenka_aquapark_fk FOREIGN KEY ( id_aquapark )
        REFERENCES aquapark ( id_aquapark );

ALTER TABLE vstupenka
    ADD CONSTRAINT vstupenka_platba_fk FOREIGN KEY ( id_platba )
        REFERENCES platba ( id_platba );

ALTER TABLE vstupenka
    ADD CONSTRAINT vstupenka_typ_vstupenky_fk FOREIGN KEY ( id_typ_vstupenky )
        REFERENCES typ_vstupenky ( id_typ_vstupenky );

ALTER TABLE zamestnanec
    ADD CONSTRAINT zamestnanec_adresa_fk FOREIGN KEY ( id_adresa )
        REFERENCES adresa ( id_adresa );

ALTER TABLE zamestnanec
    ADD CONSTRAINT zamestnanec_aquapark_fk FOREIGN KEY ( id_aquapark )
        REFERENCES aquapark ( id_aquapark );

ALTER TABLE zamestnanec
    ADD CONSTRAINT zamestnanec_naklady_fk FOREIGN KEY ( id_naklad )
        REFERENCES naklady ( id_naklad );

ALTER TABLE zamestnanec
    ADD CONSTRAINT zamestnanec_pracovni_pozice_fk FOREIGN KEY ( id_pracovni_pozice )
        REFERENCES pracovni_pozice ( id_pracovni_pozice );

ALTER TABLE zamestnanec
    ADD CONSTRAINT zamestnanec_zamestnanec_fk FOREIGN KEY ( id_zamestnanec_podrizeny )
        REFERENCES zamestnanec ( id_zamestnanec );

CREATE OR REPLACE TRIGGER arc_fkarc_2_kartou BEFORE
    INSERT OR UPDATE OF id_platba ON kartou
    FOR EACH ROW
DECLARE
    d VARCHAR2(30);
BEGIN
    SELECT
        a.typ_platby
    INTO d
    FROM
        platba a
    WHERE
        a.id_platba = :new.id_platba;

    IF ( d IS NULL OR d <> 'Kartou' ) THEN
        raise_application_error(-20223, 'FK KARTOU_PLATBA_FK in Table KARTOU violates Arc constraint on Table PLATBA - discriminator column Typ_platby doesn''t have value ''Kartou'''
        );
    END IF;

EXCEPTION
    WHEN no_data_found THEN
        NULL;
    WHEN OTHERS THEN
        RAISE;
END;
/

CREATE OR REPLACE TRIGGER arc_fkarc_2_hotove BEFORE
    INSERT OR UPDATE OF id_platba ON hotove
    FOR EACH ROW
DECLARE
    d VARCHAR2(30);
BEGIN
    SELECT
        a.typ_platby
    INTO d
    FROM
        platba a
    WHERE
        a.id_platba = :new.id_platba;

    IF ( d IS NULL OR d <> 'Hotove' ) THEN
        raise_application_error(-20223, 'FK HOTOVE_PLATBA_FK in Table HOTOVE violates Arc constraint on Table PLATBA - discriminator column Typ_platby doesn''t have value ''Hotove'''
        );
    END IF;

EXCEPTION
    WHEN no_data_found THEN
        NULL;
    WHEN OTHERS THEN
        RAISE;
END;
/



-- Oracle SQL Developer Data Modeler Summary Report: 
-- 
-- CREATE TABLE                            17
-- CREATE INDEX                             3
-- ALTER TABLE                             36
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           2
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
