---
slug: 1989/l412z
title: 'Sintetizorul de frecvență L412Z, sau cum a „îngropat” revoluția din 1989 ultimul proiect Lixco'
authors: [lixpaulian]
tags: [lixco, radio, embedded]

date: 2024-06-03T20:28:00
---

În 1988 **Lixco** a inițiat un proiect ambițios pentru modernizarea tranceiverului A412: un sintetizor de frecvență care să înlocuiască VFO-ul tradițional.

<!-- truncate -->

import Image from '@theme/IdealImage';

## Primele idei

Spre sfârșitul anilor '80, transceiverul **A412** devenise foarte popular printre radioamatorii din România. Cu toate acestea, nu era scutit și de critici. Probabil că cea mai mare problemă cu care se confruntau constructorii transceiverului era stabilitatea **VFO**-ului (Variable Frequency Oscillator). Alegerea elementelor constructive, în special a condensatorilor ce făceau parte din VFO, era extrem de critică și în multe cazuri constructorii tratau acest aspect cu ușurință. Rezultatul: transceiverul era instabil, necesitând o oră sau mai mult de funcționare înainte de a putea fi utilizat în trafic.

Pe de altă parte, din ce în ce mai multe transceivere industriale afișau frecvența digital; venise timpul ca și A412 să facă un salt în noua era tehnologică.

Nu îmi mai amintesc exact cum a început totul... dar știu că prin 1988 discutam cu colegul Gelu Chița despre un circuit electronic de generat semnale electrice cu totul nou, și anume **Direct Digital Synthesis** (DDS). Poate am citit eu pe undeva despre el, sau poate Gelu, care în perioada respectivă era student la Facultatea de Electronică, tocmai aflase teoria DDS-ului, nu mai știu... cert este că Gelu m-a făcut să înțeleg cum funcționează un DDS.

<Image img="https://cronica-it.github.io/imagini/1989/l412z/lix-cu-macheta.jpg" />
Lix cu macheta „demonstrator” a sintetizorului L412Z, decembrie 1988

Bazat pe înformațiile de la Gelu, am conceput o schemă inițială, pe care am și implementat-o pe o machetă. Era clar că la vremea respectivă, cu componentele disponibile atunci, realizarea unui DDS care să genereze frecvențele de până la 50 MHz necesare unui transceiver, nu era posibilă. Dar ideea era să folosim o buclă **PLL** (Phase-locked loop) la care referința să fie generată de DDS, cu frecvența de comparație în jur de 1 MHz. În acest fel, filtrul comparatorului de fază avea o frecvență de tăiere relativ ridicată, cu consecința că timpul de lock al PLL-ului era extrem de scurt, deși pasul final de frecvență era mic, în jur de 10 Hz. Frecvența urma să fie controlată prin programarea corespunzătoare a DDS-ului.

<a href="https://cronica-it.github.io/imagini/1989/l412z/block-diagram.pdf"><Image img="https://cronica-it.github.io/imagini/1989/l412z/block-diagram.pdf" /></a>

## ...și primele rezultate

Macheta „demonstrator” implementa cele mai importante părți ale sintetizorului: acumulatorul de fază, PLL-ul și microprocesorul cu memoriile și interfețele de I/O necesare. Nu avea buton de acord și nici tastatură, programarea frecvenței se făcea din câteva butoane, dintre care două erau pentru up/down. Partea de DDS a funcționat impecabil, exact așa cum a fost proiectată după ideile lui Gelu.

Acumulatorul de fază avea 24 de biți dintre care cei mai semnificativi cinci biți erau folosiți pentru generarea semnalului sinusoidal prin reducere („truncation”). Un PROM bipolar rapid de 256 de biți era folosit pentru transformarea fazei în sinus folosind o tabelă calculată tot de Gelu. Ieșirea PROM-ului (pe 8 biți) era aplicată unui DAC care furniza semnalul (aproape) sinusoidal, urmând ca un filtru trece-jos să rezolve artefactele rămase în urma DAC-ului. Folosind un tact de 4 MHz, frecvența maximă teoretică ce putea fi generată de DDS era de 2 MHz, pasul fiind de aproximativ un sfert de Herz.

## Proiectul ia formă

Folosind programul de desenat cablaje **T-Race** conceput in-house (despre asta, în alt articol), am proiectat prima revizie a sintetizorului. Cablajul a fost proiectat în tehnologie cu două straturi cu găuri metalizate și a fost realizat la **Fabrica de Echipamente pentru Automatizări** (FEA) cu ajutorul lui Florin Popescu, fost coleg de facultate cu Ion Rusovici (YO3JF).

Prima versiune (și de fapt, și ultima după cum se va vedea) a avut câteva erori, care au fost remediate prin „maltratarea” cablajului, vizibile și în fotografiile anexate. Pe acest prototip a fost dezvoltat firmware-ul, Ion având aici cea mai mare contribuție. Gelu a contribuit și el cu o mică bibliotecă aritmetică. Îmi amintesc cu mare plăcere de zilele (și nu de puține ori, nopțile) de vară din 1989 petrecute împreună cu Ion perfecționând funcționalitatea sistemului. Ion avea o productivitate deosebită și orice idee ne venea, el o implementa imediat.

Combinația dintre un microprocesor și un sintetizor agil ne-a dat posibilitatea să implementăm o serie de facilități care altfel nu ar fi fost posibile, și care făceau un transceiver A412 competitiv cu transceiverele industriale din anii '80:

- Lucrul split frequency, ba chiar split-band (emisia și recepția pe frecvențe/benzi diferite)
- Soft RIT (Receive Incremental Tuning), folosind butonul principal de acord
- Două VFO-uri independente, fiecare cu RIT-ul lui
- Acord prin setarea directă a frecvenței folosind claviatura („direct frequency entry”)
- Pâna la 99 de memorii (canale fixe) ușor de programat și rechemat
- Recepție continuă în toată gama de unde scurte (1,5 - 30 MHz)
- „Undo” pentru schimbările de frecvență accidentale
- Blocarea frecvenței de lucru, butonul de acord devenind inactiv

Circuitul a fost montat într-un transceiver A412 care aparținea lui Ștefan („Bord”) Bordeanu (YO3DP). Lucram contra-cronometru, deoarece vroiam să prezentăm sintetizorul la Simpozionul Radioamatorilor din anul 1989.

<a href="https://cronica-it.github.io/imagini/1989/l412z/board-top.jpg"><Image img="https://cronica-it.github.io/imagini/1989/l412z/board-top-small.jpg" /></a>
Prototipul sintetizorului L412Z, ce a fost montat în transceiverul lui Bord

Dezvoltarea de software în anii '80 nu era simplă, și faptul că programul era scris în limbaj de asamblare nu făcea treaba mai ușoară. Nu existau debuggere, sau cel puțin nu erau la îndemâna noastră. Nu aveam suficient RAM în sistem (doar 1 KByte!) pentru a putea încărca programul ca să-l rulăm acolo, așa că fiecare modificare, versiune nouă sau bug fix se solda cu o nouă generare de fișier binar, care era apoi „ars” într-un **UV-EPROM** folosind un programator de EPROM-uri. Aveam câteva EPROM-uri pe care le ciclam între scriere și ștergere, aceasta din urmă făcându-se în camera de baie la Ion cu ajutorul unei lămpi de UV improvizată dintr-un bec de iluminat stradal spart. În final, tot programul a încăput într-un EPROM de 4 KBytes.

## Probleme, probleme...

În procesul de dezvoltare am întâmpinat diverse probleme, unele mai mari, altele mai mici. De exemplu, cum să scriem 24 de biți în mod atomic, pentru a programa frecvența generată de DDS, fără sa apară salturi necontrolate? Valoarea frecvenței dorite trebuia scrisă intr-un registru „latch” de 24 de biți, dar problema era, cum să-i scriem pe toți 24 într-o singură operație, cu un micropocesor de numai 8 biți? Norocul este că micropocesorul folosit, un **Zilog Z80A**, cuprindea în spațiul de I/O 65535 adrese, adică 16 biți; restul de 8 biți au fost furnizați de către bus-ul de date (vezi schema electrică în documentele anexate).

Astfel, latch-urile erau scrise prin combinația semnalelor **IORQ** și **WR** ale microprocesorului. Din punct de vedere software, programarea unei anumite frecvențe însemna scrierea unei valori X la o adresa Y (veți găsi mai multe detalii consultând listing-ul programului sursă în documentele anexate).

O altă dificultate, de data asta mai mult de natură mecanică, a fost realizarea butonului de acord. Evident, aici era nevoie de un encoder incremental, dar la vremea respectivă era practic imposibil de procurat în Romania, mai ales la nivel de amator. Faptul că trebuia să furnizeze un număr respectabil de impulsuri pe rotație (cel putin 100) complica și mai mult situația.

Cu experiența câștigată în cursul dezvoltării programului T-Race, în particular a driver-ului pentru fotoplotter-ul de la FEA, ne-am gândit să „inventăm” noi un encoder. Ca urmare, Ion a scris un program care să controleze fotoplotter-ul în așa fel încât să genereze pe film un disc de aproximativ 5 cm diametru care să conțină 360 de linii dispuse circular.

Discul a fost montat pe un ax într-o cutie metalică împreuna cu două LED-uri și două fototranzistoare în infraroșu. Semnalele de la cele două fototranzistoare erau citite de către microprocesor printr-un **PPI 8255**. Pe de altă parte unul dintre semnale era folosit și pentru a genera un interrupt nemascabil în Z80, astfel putând fi determinate prin software viteza și sensul de rotație ale butonului. Encoderul incremental rezultat genera 360 impulsuri pe rotație.

<a href="https://cronica-it.github.io/imagini/1989/l412z/encoder-1.jpg">
<img
  src="https://cronica-it.github.io/imagini/1989/l412z/encoder-1-small.jpg"
  alt="Encoder"
  style={{width: 400}}
/></a>
Encoderul incremental realizat în regim propriu

De asemeni, Ion a implementat un mecanism dinamic ce modifica numărul de kiloherzi pe turație în funcție de viteza de rotație a butonului (detalii în listing-ul programului sursă în documentele anexate). În final, senzația de buton de acord era extrem de plăcută și cu nimic diferită de cea a unui buton clasic.

În octombrie 1989, transceiverul lui Bord, ce încorpora prototipul sintetizorului, și-a făcut debutul cu brio intr-un concurs de anvergură, Ion participând cu el la **WW DX** SSB în banda de 40 m.

<Image img="https://cronica-it.github.io/imagini/1989/l412z/ion-wwdx-1989.jpg" />
Ion lucrând în concursul WWDX SSB cu transceiverul A412 cu sintetizor și microcalculatorul L/B881, octombrie 1989.

Cu un amplificator linear adăugat după transceiver și folosind o antenă dipol între două blocuri de 9 etaje, Ion a realizat 112.931 de puncte din 759 de QSO-uri.

<Image img="https://cronica-it.github.io/imagini/1989/l412z/YO3JF_CQWW_1989_SSB_certificate.png" />


## Lansarea

Noul sintetizor a fost prezentat cu multă fanfară la Simpozionul radioamatorilor de la Slănic-Moldova, care, dacă îmi amintesc bine, a avut loc prin august 1989. Am făcut o prezentare oficială a sistemului, după care am „dezvăluit” transceiverul lui Bord. Cu această ocazie, cei de față au putut opera transceiverul și și-au făcut o primă impresie despre modul de funcționare. Se poate spune că a fost un mare succes, judecând după numărul cererilor de informații pe care le-am primit atunci.

În **Lixco News**, ediția din octombrie 1989 (ce avea să fie și ultima) a fost anunțat noul produs odată cu primele informații despre cum va putea fi obținut. Citat din Lixco News: „Către sfârșitul anului 1989, va fi disponibilă documentația completă a sistemului, a modificărilor transceiverului A412 și eventual și setul de  cablaje imprimate; cei interesați sunt invitați să ia legătura cu noi.” (vezi secțiunea **Referințe**).

## Revizia B

După lansarea la simpozion, în toamna lui 1989 mi-am propus să reproiectez cablajul imprimat al sintetizorului, care avea deja un nume: placa **L412Z**. În componența transceiverului A412 intrau câteva plăci denumite A412A până la A412G. Sintetizorul fiind ultima placă adăugată transceiverului, a primit litera „Z”; iar litera „A” a fost înlocuită cu „L” ca urmare a simplificarii sistemului de clasificare a produselor Lixco, sistem introdus în 1987.

Pe lângă cele câteva erori ale cablajului precum și modificările aduse în procesul de testare, atât hardware cât și software, mi-a devenit clar că fără trecerea la tehnologia de cablaj în patru straturi, nu vom putea scăpa de artefactele generate de sistem pe lângă semnalul util. Era pentru prima oară când proiectam un circuit electronic mixt (analog/digital) pe același cablaj imprimat. Partea digitală, așa cum era ea proiectată cu componentele existente în anii aceea consuma mult curent, și ca urmare alimentarea era extrem de zgomotoasă. Circuitele de masă, chiar dacă separate între ele (analog/digital), erau prea subțiri pentru a asigura izolarea suficientă a **VCO**-urilor (Voltage Controlled Oscillator). Testele făcute pe prototip cu circuite de masă suplimentare din tablă sau plăci de circuit imprimat au fost încurajatoare.

## ...care totuși n-a fost să fie

Fabricarea unui cablaj imprimat în patru straturi era o mică aventură în România anilor '80, dar eram convins că vom găsi o soluție. Din câte îmi amintesc, doar la **Fabrica de Calculatoare Electronice** (FCE) se produceau astfel de cablaje. Dar... nu a fost să fie, înainte de a ajunge la faza de fabricație a venit revoluția din decembrie 1989 peste noi. Așa cum s-a văzut ulterior, aceasta a determinat profunde schimbări sociale și economice în România.

Inițial am crezut că firma Lixco va putea în sfârșit să devină o entitate oficială, dar am fost naiv. Pe moment nu am realizat cât de vulnerabilă și fragilă era economia română, odată cu deschiderea țării către vest. În scurt timp, piața din România a fost inundată de produse de import, fie că era vorba de calculatoare, transceivere de radioamatori, sau mașini de spălat (și multe, multe altele...).

Dar am fost în mare parte ferit de consecințele imploziei economiei socialiste, pentru că în vara anului 1990 am avut inspirația (și posibilitatea) să emigrez în Austria. Din păcate pentru L412Z însă, proiectul a fost irevocabil „înghețat”, singura urmă a existenței sale fiind transceiverul lui Bord, un unicat.

<a href="https://cronica-it.github.io/imagini/1989/l412z/transceiverul-lui-bord.jpg"><Image img="https://cronica-it.github.io/imagini/1989/l412z/transceiverul-lui-bord-small.jpg" /></a>
Transceiverul lui Bord cu prototipul sintetizorului, așa cum arăta în decembrie 2003

Multe din documentele proiectului s-au pierdut de-a lungul timpului, dar cu toate acestea am reușit să recuperez o parte dintre ele și împreună cu Liviu Ionescu (ilg) să le publicăm după 35 de ani aici (cu mulțumiri lui Ion Rusovici, Cezar Vener și Victor Simion pentru materialele furnizate). De notat că atât schema electrică, cât si listing-ul programului sursă nu reprezintă ultimile versiuni ale sintetizorului, care din păcate nu au mai putut fi găsite. Totuși, documentele respective nu sunt departe de versiunea finală, adică de cea care a funcționat în transceiverul lui Bord (vezi secțiunea **Referințe**).

Pot spune că proiectul L412Z a fost o intreprindere temerară, având în vedere că teoria DDS-ului era relativ nouă la vremea respectivă. Și sunt convins că ar fi fost un mare succes comercial, dacă proiectul și-ar fi urmat cursul normal, așa cum a fost cu transceiverul A412 și cu microcalculatorul L/B881. Eram pe punctul să găsim soluții pentru fabricarea în serie a encoderului incremental, precum și a altor elemente esențiale construcției sintetizorului. În general componentele folosite se puteau procura relativ ușor de pe „piața gri/neagră” din România. Dar soarta a decis altfel...

În afară de prototip, a rămas însă satisfacția că am participat, împreună cu colegii de la Lixco, la un proiect „leading edge” extrem de interesant. Pentru mine personal a fost un moment din viața profesională pe care nu-l voi uita niciodată și de care îmi voi aminti mereu cu plăcere.

Cei interesați pot afla mai multe detalii despre [cum funcționează un DDS](https://en.wikipedia.org/wiki/Direct_digital_synthesis). Astăzi, există chip-uri care implementează un DDS complet, ce pot genera frecvențe de până la câteva sute de MHz.

Dedic acest articol foștilor membrii Lixco, Bord și Gelu, care s-au dus dintre noi prea devreme.

## Imagini

import { imagesLinks } from './images-links.tsx'
import { ImagesTable } from '@site/src/components/ImagesTable';

<ImagesTable images={imagesLinks}/>

## Referințe

import { PdfLink } from '@site/src/components/PdfLink';

- Lixco: _**Schema L412Z**_ (scan) <PdfLink href="https://github.com/cronica-it/arhiva/releases/download/1989/lixco-l412z-schema.pdf"/>
- Lixco: _**Surse L412Z**_ (scan) <PdfLink href="https://github.com/cronica-it/arhiva/releases/download/1989/lixco-l412z-source.pdf"/>
- Lixco: _**Lixco News**_ (ultima ediție, scan) <PdfLink href="https://github.com/cronica-it/arhiva/releases/download/1989/lixco-news-last-edition.pdf"/>
- [wiki - Direct digital synthesis](https://en.wikipedia.org/wiki/Direct_digital_synthesis)
