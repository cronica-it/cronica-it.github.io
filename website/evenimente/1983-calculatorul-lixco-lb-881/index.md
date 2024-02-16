---
slug: 1983/calculatorul-lixco-lb-881
title: 'Lixco finalizează microcalculatorul „L/B 881”'
authors: [lixpaulian]
tags: [calculatoare, lixco, i8080]

date: 2023-11-02T16:45

event_date: '1983'

---

import { imagesLinks } from './images-links.tsx'
import { ImagesTable } from '@site/src/components/ImagesTable';

În anul 1983, **Lixco** finalizează **L/B 881**, primul microcalculator de
concepție și realizare privată din România.

<!-- truncate -->

L/B 881 a fost un single-board computer, construit în jurul unui
microprocesor Intel 8080. În primele versiuni
stoca fișiere pe casetofoane audio și rula o versiune proprietară
de software, dar ulterior a fost extins cu
unități de floppy disk de 8", și a rulat sistemul CP/M-80.

A fost comercializat sub forma de kit sau complet funcțional în special
în comunitatea de radioamatori, dar nu numai.

![L/B881](https://cronica-it.github.io/imagini/1983/calculatorul-lixco-lb-881/lb881.jpg)

## Istoric

La baza lui L/B 881 a stat un microcalculator modular, **L/B 880**, proiectat și realizat de către Lix Paulian în 1980. In esență, L/B 880 se baza pe un kit de dezvoltare Intel, **SDK-80**, pe care Ștefan Bordeanu îl avea la locul de muncă (Institutul de Telecomunicații din Palatul Telefoanelor). Primul firmware cu care a fost pornit microcalculatorul a fost o copie a programului monitor original Intel, **MCS-80**. L/B 880 a fost apoi extins cu module suplimentare (memorie dinamica, interrupt controller, timere, interfață de caseta, ș.a.) și a servit ca banc de probă pentru L/B 881, atât în ce privește hardware-ul, cât și software-ul.

La realizarea diverselor programe de sistem (monitor, editor, asamblor) au contribuit Gelu Chița și Liviu Ionescu.

Pentru a reduce riscul de erori la proiectarea schemei electrice, Lixco a apelat la Gigi Alexandrescu, un tânar pasionat de tehnica digitală, pentru a construi o machetă operațională a viitorului calculator. Gigi avea un talent deosebit să transpună o schemă electrică complexă în realitate, folosind sârmă de wrapping și o placă de circuit imprimat. Acest gen de machetă era denumită „arici”, pentru că majoritatea componentele  „pluteau” în aer, legate între ele cu sârme de wrapping.

După verificarea în practică a sistemului, Lix Paulian și Ion Rusovici au proiectat cablajul imprimat. Aceasta s-a făcut manual, folosind folie de plastic specială marcată în inch și apoi digitizată la **FEA**. Primul set de cablaje a fost realizat tot la FEA. Este remarcabil faptul că tehnolologia de cablaj imprimat utilizată folosea doar două straturi (dar cu găuri metalizate)!

## Hardware

Microcalculatorul L/B 881 se baza pe un microprocesor Intel 8080A rulând la 1,375 MHz, o frecvență aleasă în așa fel încât din același cristal să poată fi obținute și semnalele necesare pentru un video-display alfanumeric cu rezoluția de 64x26 caractere (cu posibilități grafice reduse). Avea până la 16 KBytes de ROM (UV-EPROM de 1, 2 sau 4 KBytes) și până la 48 KBytes de RAM dinamic (16, 32 sau 48 KBytes).

Microcalculatorul avea trei conectori laterali cu câte 52 pini, realizați din cablaj imprimat, cu următoarele funcții:

- KA: bus-urile de date si adrese ale sistemului, precum și semnalele de control
- KB: porturile seriale, de casetă, video out și timere (unul era folosit pentru sunet)
- KC: două porturi paralele de câte 8 biți, pe unul din ele era cuplată tastatura matrix

Microcalculatorul avea un sistem primitiv de protecție împotriva furtului de software, care se baza pe un cod de 8 biți (denumit **HID**, hardware ID) programat înainte de livrare în cablajul imprimat prin eliminarea selectivă a celor 8 treceri metalizate. Sistemul de operare din ROM era cuplat cu HID-ul, și nu putea rula decât pe placa pentru care era programat. La rândul său, ROM-ul conținea un al doilea cod (**SID**, software ID) cu care puteau fi protejate aplicațiile distribuite pe casetă.

## Software

Pentru a putea funcționa, microcalculatorul L/B 881 avea nevoie de un program monitor care să ofere funcțiile de bază: driveri de ecran, claviatură, sunet, plus o colecție de funcții accesibile de către programele aplicație, practic un fel de BIOS. Lixco oferea două alternative, **881/Mon** (3 KBytes) și **881/Sys** (8 KBytes). Ambele variante erau compatibile între ele, diferența era că 881/Sys includea în plus un editor și un asamblor pentru 8080. Ulterior, în 1987 Liviu Ionescu a dezvoltat **OS\8**, un sistem de operare care permitea între altele încărcarea mai multor programe în RAM folosind un mecanism de relocare a codului la încărcarea din casetă. OS\8 era scris în cea mai mare parte în limbajul „C” și ocupa aproape tot spațiul de 16 KBytes alocat pentru ROM (folosind patru chip-uri 2732).

Pentru varianta cu interfață de casetă, Lixco a distribuit o serie de programe, ex.: scule de dezvoltare (editor, asamblor, debugger), programe specifice pentru radioamatori, utilitare, limbaje (basic, forth), jocuri și altele. Majoritatea au fost scrise de către membrii Lixco (Gelu Chița, Liviu Ionescu, Lix Paulian, Ion Rusovici), dar și de către colaboratori externi (Ovidiu Băloiu, Cătălin „Kat” Bratu, Viorel Darie, Nichita Șandru și alții).

## CP/M-80

În anul 1985 microcalculatorul L/B 881 a fost extins cu o interfață de floppy disk de 8" și actualizat cu softul necesar pentru a rula **CP/M-80** de la **Digital Research**. Interfața hardware a fost dezvolată de Lix Paulian, iar adaptarea software (inclusiv BIOS-ul, ulterior integrat in OS\8) a fost realizată de Liviu Ionescu. A fost folosit un controlor Intel 8271 montat pe o plăcuță suplimentară cuplată la conectorul KA.

Prin această extensie, toate aplicațiile standard CP/M puteau fi acum rulate pe microcalculatorul L/B 881: interpretor Basic, compilatoare de C, Pascal și Fortran, WordStar, dBase, SuperCalc, etc.

Tot în 1985, microcalculatorul a fost preluat și introdus în producție la ITCI-CCAB sub numele de **CE 119**. Se estimează că au fost produse aproximativ 1000 de exemplare (Lixco + CCAB).

## Imagini

Imagini postate de Valentin pe forumul [Tehnium Azi](https://www.tehnium-azi.ro/forums/topic/7187-computer-lb881-publicat-in-tehnium/page/5/
):

<ImagesTable images={imagesLinks}/>

## Referințe

- [retroit.ro - Microcalculatorul L/B 881](https://retroit.ro/l-b-881/)
- [ilgthegeek.wordpress.com - History: Lixco L/B881, the first Romanian commercial microcomputer](https://ilgthegeek.wordpress.com/2010/11/14/history-lixco-lb881/)
- [tehnium-azi.ro - Computer LB881 - publicat in Tehnium](https://www.tehnium-azi.ro/forums/topic/7187-computer-lb881-publicat-in-tehnium/) (arhivat [local](https://cronica-it.github.io/arhiva/#1985))
- [Interviul lui Lix din qsl.ro](/amintiri/2010/lix-interviu-qsl-ro/)
