/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2016-02-14 18:22:07                          */
/*==============================================================*/


/*==============================================================*/
/* Table: KLIENT                                                */
/*==============================================================*/
create table KLIENT
(
   PESEL                char(11) not null comment 'PESEL jest to unikatowy identyfikator danej osoby.',
   ID_TYPUU             int comment 'ID_TYPUU jest to unikaotwy identyfikator typu umowy.',
   ID_UMOWY             int comment 'ID_UMOWY jest to unikatowy identyfikator umowy.',
   KOD_POCZTOWY         varchar(30) comment 'KOD_POCZTOWY jest to kod pocztowy plac�wki lub osoby.',
   MIEJSCOWOSC          varchar(30) not null comment 'MIEJSCOWOSC jest to miejscowosc, kt�rej znajduje si� plac�wka lub mieszka osoba.',
   ULICA                varchar(30) not null comment 'ULICA jest to ulica, na kt�rej znajduje si� plac�wka lub mieszka osoba.',
   NR_LOKALU            varchar(10) not null comment 'NR_LOKALU jest to numer lokalu, w kt�rym znajduje si� plac�wka lub mieszka osoba.',
   WOJEWODZTWO          varchar(30) not null comment 'WOJEWODZTWO jest to wojew�dztwo, w kt�rym znajduje si� plac�wka lub mieszka osoba.',
   TELEFON              varchar(15) comment 'TELEFON jest to telefon kontaktowy do plac�wki lub osoby.',
   IMIE                 varchar(30) not null comment 'IMIE jest to imi� danej osoby.',
   NAZWISKO             varchar(30) not null comment 'NAZWISKO jest to nazwisko danej osoby.',
   DATA_URODZENIA       date not null comment 'DATA_URODZENIA jest to data urodzenia danej osoby.',
   PLEC                 char(1) not null comment 'PLEC jest to p�e� danej osoby.
            ',
   primary key (PESEL)
);

alter table KLIENT comment 'KLIENT jest to osoba uprawniona do korzystania z klubu z sie';

/*==============================================================*/
/* Table: KLUB                                                  */
/*==============================================================*/
create table KLUB
(
   ID_KLUBU             int not null comment 'ID_KLUBU jest to unikatowy identyfikator klubu.',
   ID_SIECI             int not null comment 'ID_SIECI jest to unikatowy identyfikator sieci klub�w fitness.',
   KOD_POCZTOWY         varchar(30) comment 'KOD_POCZTOWY jest to kod pocztowy plac�wki lub osoby.',
   MIEJSCOWOSC          varchar(30) not null comment 'MIEJSCOWOSC jest to miejscowosc, kt�rej znajduje si� plac�wka lub mieszka osoba.',
   ULICA                varchar(30) not null comment 'ULICA jest to ulica, na kt�rej znajduje si� plac�wka lub mieszka osoba.',
   NR_LOKALU            varchar(10) not null comment 'NR_LOKALU jest to numer lokalu, w kt�rym znajduje si� plac�wka lub mieszka osoba.',
   WOJEWODZTWO          varchar(30) not null comment 'WOJEWODZTWO jest to wojew�dztwo, w kt�rym znajduje si� plac�wka lub mieszka osoba.',
   TELEFON              varchar(15) comment 'TELEFON jest to telefon kontaktowy do plac�wki lub osoby.',
   POWIERZCHNIA         int comment 'POWIERZCHNIA jest to powierzchnia danego klubu wyra�ona w metrach kwadratowych.',
   DATA_OTWARCIA        date,
   primary key (ID_KLUBU)
);

alter table KLUB comment 'KLUB jest to lokal nale��cy do sieci klub�w fitness.';

/*==============================================================*/
/* Table: PRACOWNIK                                             */
/*==============================================================*/
create table PRACOWNIK
(
   ID_STANOWISKA        int not null comment 'ID_STANOWISKA jest to unikatowy identyfikator stanowiska.',
   PESEL                char(11) not null comment 'PESEL jest to unikatowy identyfikator danej osoby.',
   ID_KLUBU             int not null comment 'ID_KLUBU jest to unikatowy identyfikator klubu.',
   KOD_POCZTOWY         varchar(30) comment 'KOD_POCZTOWY jest to kod pocztowy plac�wki lub osoby.',
   MIEJSCOWOSC          varchar(30) not null comment 'MIEJSCOWOSC jest to miejscowosc, kt�rej znajduje si� plac�wka lub mieszka osoba.',
   ULICA                varchar(30) not null comment 'ULICA jest to ulica, na kt�rej znajduje si� plac�wka lub mieszka osoba.',
   NR_LOKALU            varchar(10) not null comment 'NR_LOKALU jest to numer lokalu, w kt�rym znajduje si� plac�wka lub mieszka osoba.',
   WOJEWODZTWO          varchar(30) not null comment 'WOJEWODZTWO jest to wojew�dztwo, w kt�rym znajduje si� plac�wka lub mieszka osoba.',
   TELEFON              varchar(15) comment 'TELEFON jest to telefon kontaktowy do plac�wki lub osoby.',
   IMIE                 varchar(30) not null comment 'IMIE jest to imi� danej osoby.',
   NAZWISKO             varchar(30) not null comment 'NAZWISKO jest to nazwisko danej osoby.',
   DATA_URODZENIA       date not null comment 'DATA_URODZENIA jest to data urodzenia danej osoby.',
   PLEC                 char(1) not null comment 'PLEC jest to p�e� danej osoby.
            ',
   primary key (ID_STANOWISKA, PESEL)
);

alter table PRACOWNIK comment 'PRACOWNIK jest to osoba zatrudniona w danym klubie z sieci k';

/*==============================================================*/
/* Table: SALA                                                  */
/*==============================================================*/
create table SALA
(
   ID_SALI              int not null comment 'ID_SALI jest to unikatowy identyfikator sali.',
   ID_KLUBU             int not null comment 'ID_KLUBU jest to unikatowy identyfikator klubu.',
   NR_SALI              int not null comment 'NR_SALI jest to numer sali (np. na drzwiach) w klubie fitness.',
   primary key (ID_SALI)
);

alter table SALA comment 'SALA jest to pomieszczenie dost�pne do u�ytku w danym klubie';

/*==============================================================*/
/* Table: SIEC                                                  */
/*==============================================================*/
create table SIEC
(
   ID_SIECI             int not null comment 'ID_SIECI jest to unikatowy identyfikator sieci klub�w fitness.',
   NAZWA_SIECI          varchar(30) not null comment 'NAZWA_SIECI jest to nazwa sieci klub�w fitness.',
   primary key (ID_SIECI)
);

alter table SIEC comment 'SIEC jest to sie� klub�w fitness.';

/*==============================================================*/
/* Table: SPRZET                                                */
/*==============================================================*/
create table SPRZET
(
   NR_SERYJNY           varchar(30) not null comment 'NR_SERYJNY jest to unikatowy numer seryjny danego sprz�tu.',
   ID_SALI              int not null comment 'ID_SALI jest to unikatowy identyfikator sali.',
   NAZWAS               varchar(30) not null comment 'NAZWAS jest to nazwa sprz�tu.',
   DATA_ZAKUPU          date not null comment 'DATA_ZAKUPU jest to data zakupu sprz�tu.',
   DATA_KONSERWACJI     date not null comment 'DATA_KONSERWACJI jest to ostatnia data konserwacji sprz�tu.',
   primary key (NR_SERYJNY)
);

alter table SPRZET comment 'SPRZ�T jest to urz�dzenie fitness o znacz�cej warto�ci.';

/*==============================================================*/
/* Table: STANOWISKO                                            */
/*==============================================================*/
create table STANOWISKO
(
   ID_STANOWISKA        int not null comment 'ID_STANOWISKA jest to unikatowy identyfikator stanowiska.',
   NAZWA_STANOWISKA     varchar(30) not null,
   primary key (ID_STANOWISKA)
);

alter table STANOWISKO comment 'STANOWISKO jest to funkcja pracownika w klubie.';

/*==============================================================*/
/* Table: TYP_UMOWY                                             */
/*==============================================================*/
create table TYP_UMOWY
(
   ID_TYPUU             int not null comment 'ID_TYPUU jest to unikaotwy identyfikator typu umowy.',
   TYP_UMOWY            varchar(30) not null comment 'TYP_UMOWY jest to nazwa typu umowy.',
   primary key (ID_TYPUU)
);

alter table TYP_UMOWY comment 'TYP_UMOWY okre�la jakiego rodzaju moze by� umowa.';

/*==============================================================*/
/* Table: TYP_ZAJECIA                                           */
/*==============================================================*/
create table TYP_ZAJECIA
(
   ID_TYPUZ             int not null comment 'UD_TYPUZ jest to unikatowy identyfikator typu zaj�cia.
            ',
   NAZWA_TYPUZ          varchar(30) not null comment 'NAZWA_TYPUZ jest to nazwa typu zaj�cia.',
   primary key (ID_TYPUZ)
);

alter table TYP_ZAJECIA comment 'TYP_ZAJECIA okre�la jakiego rodzaju mog� by� zaj�cia.';

/*==============================================================*/
/* Table: UMOWA                                                 */
/*==============================================================*/
create table UMOWA
(
   ID_TYPUU             int not null comment 'ID_TYPUU jest to unikaotwy identyfikator typu umowy.',
   ID_UMOWY             int not null comment 'ID_UMOWY jest to unikatowy identyfikator umowy.',
   ID_SIECI             int not null comment 'ID_SIECI jest to unikatowy identyfikator sieci klub�w fitness.',
   ID_STANOWISKA        int not null comment 'ID_STANOWISKA jest to unikatowy identyfikator stanowiska.',
   PESEL                char(11) not null comment 'PESEL jest to unikatowy identyfikator danej osoby.',
   DATA_PODPISANIA      date not null comment 'DATA_PODPISANIA jest to data podpisania umowy.',
   DATA_ZAKONCZENIA     date not null comment 'DATA_ZAKONCZENIA jest to data wyga�ni�cia umowy.',
   primary key (ID_TYPUU, ID_UMOWY)
);

alter table UMOWA comment 'UMOWA jest to kontrakt podpisany na okre�lony czas mi�dzy kl';

/*==============================================================*/
/* Table: WEJSCIE_PROBNE                                        */
/*==============================================================*/
create table WEJSCIE_PROBNE
(
   PESEL                char(11) not null comment 'PESEL jest to unikatowy identyfikator danej osoby.',
   ID_SIECI             int not null comment 'ID_SIECI jest to unikatowy identyfikator sieci klub�w fitness.',
   IMIE                 varchar(30) not null comment 'IMIE jest to imi� danej osoby.',
   NAZWISKO             varchar(30) not null comment 'NAZWISKO jest to nazwisko danej osoby.',
   DATA_URODZENIA       date not null comment 'DATA_URODZENIA jest to data urodzenia danej osoby.',
   PLEC                 char(1) not null comment 'PLEC jest to p�e� danej osoby.
            ',
   DATA_WEJSCIA         date not null comment 'DATA_WEJSCIA jest to data wej�cia pr�bnego danej osoby.',
   primary key (PESEL)
);

alter table WEJSCIE_PROBNE comment 'WEJSCIE_PROBNE jest to zestawienie g��wnie danych osobowych ';

/*==============================================================*/
/* Table: ZAJECIE                                               */
/*==============================================================*/
create table ZAJECIE
(
   ID_TYPUZ             int not null comment 'UD_TYPUZ jest to unikatowy identyfikator typu zaj�cia.
            ',
   ID_ZAJECIA           int not null comment 'ID_ZAJECIA jest to unikatowy identyfikator zaj�cia.',
   ID_SALI              int not null comment 'ID_SALI jest to unikatowy identyfikator sali.',
   ID_STANOWISKA        int comment 'ID_STANOWISKA jest to unikatowy identyfikator stanowiska.',
   PESEL                char(11) comment 'PESEL jest to unikatowy identyfikator danej osoby.',
   CZAS_ODBYCIA         datetime not null comment 'CZAS_ODBYCIA jest to czas odbycia zaj�cia.',
   primary key (ID_TYPUZ, ID_ZAJECIA)
);

alter table ZAJECIE comment 'ZAJ�CIE jest to zaj�cie fitness, w kt�rym mog� uczestniczy� ';

alter table KLIENT add constraint FK_PODPIS_KLIENTA foreign key (ID_TYPUU, ID_UMOWY)
      references UMOWA (ID_TYPUU, ID_UMOWY) on delete restrict on update restrict;

alter table KLUB add constraint FK_PRZYNALEZNOSC_KLUBU foreign key (ID_SIECI)
      references SIEC (ID_SIECI) on delete restrict on update restrict;

alter table PRACOWNIK add constraint FK_FUNKCJA foreign key (ID_STANOWISKA)
      references STANOWISKO (ID_STANOWISKA) on delete restrict on update restrict;

alter table PRACOWNIK add constraint FK_ZATRUDNIENIE foreign key (ID_KLUBU)
      references KLUB (ID_KLUBU) on delete restrict on update restrict;

alter table SALA add constraint FK_MIEJSCE_TRENINGOWE foreign key (ID_KLUBU)
      references KLUB (ID_KLUBU) on delete restrict on update restrict;

alter table SPRZET add constraint FK_WYPOSAZENIE foreign key (ID_SALI)
      references SALA (ID_SALI) on delete restrict on update restrict;

alter table UMOWA add constraint FK_PODPIS_PRACOWNIKA foreign key (ID_STANOWISKA, PESEL)
      references PRACOWNIK (ID_STANOWISKA, PESEL) on delete restrict on update restrict;

alter table UMOWA add constraint FK_PRZYNALEZNOSC_KLIENTA foreign key (ID_SIECI)
      references SIEC (ID_SIECI) on delete restrict on update restrict;

alter table UMOWA add constraint FK_TYP_UMOWY foreign key (ID_TYPUU)
      references TYP_UMOWY (ID_TYPUU) on delete restrict on update restrict;

alter table WEJSCIE_PROBNE add constraint FK_JEDNORAZOWE_WEJSCIE foreign key (ID_SIECI)
      references SIEC (ID_SIECI) on delete restrict on update restrict;

alter table ZAJECIE add constraint FK_MIEJSCE_ODBYCIA foreign key (ID_SALI)
      references SALA (ID_SALI) on delete restrict on update restrict;

alter table ZAJECIE add constraint FK_PROWADZACY foreign key (ID_STANOWISKA, PESEL)
      references PRACOWNIK (ID_STANOWISKA, PESEL) on delete restrict on update restrict;

alter table ZAJECIE add constraint FK_TYP_ZAJECIA foreign key (ID_TYPUZ)
      references TYP_ZAJECIA (ID_TYPUZ) on delete restrict on update restrict;

