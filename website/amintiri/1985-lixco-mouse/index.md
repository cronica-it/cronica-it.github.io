---
slug: 1985/lixco-mouse
title: 'Lixco - Mouse-ul cu un Z80... scurtat la polizor!'
authors: [lixpaulian]
tags: [lixco]

date: 2024-02-18T20:28:00

event_date: '1985'

---

import Image from '@theme/IdealImage';

În anul 1985, pentru a putea lucra cu programul de desenat cablaje imprimate,
a fost nevoie de un mouse.

<!-- truncate -->

Deși a fost inventat prin anii '60 și a fost folosit pentru prima dată într-un produs comercial
de serie mare în 1983 în calculatorul **Apple Lisa**, în acei ani mouse-ul nu era încă un dispozitiv
foarte răspândit. În 1984 Microsoft a început să comercializeze un mouse propriu, dar în comerțul de stat din România în mod clar nu era de găsit.

Când s-a pus problema realizării programului de desenat cablaje imprimate, una dintre primele
cerințe a fost să găsim un mouse care să poată fi cuplat la calculatorul L883 Turbo.

Lucrul nu a fost chiar simplu, dar printr-o întâmplare a ajuns prin firmă un mouse fabricat de **DEC**,
dar care avea o interfață proprietară și nu putea fi cuplat direct la L883.

![dec-mouse](https://cronica-it.github.io/imagini/1985/lixco-mouse/dec-round-mouse.jpg)

Mouse-ul avea un sistem optic, cu două rotițe cu sectoare (pentru mișcarea pe verticală și orizontală) având fiecare câte două LED-uri și două fototranzistoare pentru viteză și sens. Semnalele de la fototranzistoare erau direct scoase în afară prin cablul de conexie, prelucrarea lor făcându-se în stația DEC. De dorit era o interfață standard, una din cele mai simple fiind cea de la Microsoft (interfață serială la 1200 Baud cu 7 biti de date și un bit de stop).

Cum microcontrolerele nu fuseseră încă inventate, singura variantă la dispoziție a fost un circuit simplu cu un Z80, un EPROM, un cristal și alte câteva piese mărunte. La memoria RAM s-a renunțat, aceasta urmând să fie compensată prin software: s-au folosit toate registrele lui Z80 (inclusiv bank-ul alternat), iar subrutinele au fost eliminate din lipsa stivei. În loc de call-uri s-a recurs la numeroase copy/paste a porțiunilor de cod (astăzi s-ar numi „inline”). Programul a fost scris în assembler și nu a depășit 512 KBytes.

Era o singură _mică_ problemă: deși cutia de plastic a mouse-ului era destul de mare, totuși nu era suficient de lată încât să încapă un chip DIL-40 în care era încapsulat un Z80 pe vremea aceea. La o analiză atentă, și cu un pic de inventivitate atât în hardware, cât și în software, a rezultat că se poate renunța la 10 pini ai microprocesorului, mai concret patru dintr-un capăt și șase din celălalt:

![z80-reduced](https://cronica-it.github.io/imagini/1985/lixco-mouse/z80-reduced.png)

Pinii nefolosiți, precum și materialul plastic aferent au fost **piliți cu grijă... cu ajutorul unui polizor!**

O reconstituire din amintiri a schemei este prezentată mai jos:

<a href="https://cronica-it.github.io/imagini/1985/lixco-mouse/z80-mouse-sch.pdf"><Image img="https://cronica-it.github.io/imagini/1985/lixco-mouse/z80-mouse-sch.pdf" /></a>

Nu se foloseau întreruperile, din acest motiv timing-ul în program era deterministic. Implementarea unui UART prin software în asemenea condiții a fost relativ simplă (prin metoda „bit-banging”). Programul era în esență o buclă infinită care testa starea celor patru fototranzistori și a butoanelor mouse-ului pentru a determina viteza și sensul mișcărilor, cu testări la intervale de lungimea unui bit a diverselor registre care țineau starea UART-ului (o „state machine”).

Constructiv, EPROM-ul a fost montat „piggy-back” peste microprocesorul Z80 prin lipire, iar legăturile inter-componente s-au realizat cu fire de wrapping. Deși programul era mult mai scurt, s-a folosit totuși un EPROM de 2 KBytes pentru că acesta nu necesita decât o singură tensiune de alimentare.

L883 avea o interfață serială RS-232 ce folosea un conector tip DB-25. Folosind o „licență poetică” doi pini (11 și 25) care nu erau asignați în standard au fost folosiți de Lixco pentru a livra +5V și -5V către mouse. În retrospectivă nu a fost o idee bună, deși cazuri de „catastrofe” ca urmare a acestei decizii nu au fost înregistrate.

În final merită amintit că folosind acest mouse cu prototipul L883 construit pe o placă „Augat” și cu un program de CAD dezvoltat tot de Lixco („T-Race”), a fost proiectată placa de circuit imprimat a calculatorului L883 însuși! Dar despre toate astea, poate într-un alt articol...

## Referințe

import { PdfLink } from '@site/src/components/PdfLink';

- [Firma Lixco](/evenimente/1967/firma-lixco)
- Lixco: _**Lixco Mouse Controller v2.1 - Surse**_ (scan) <PdfLink href="https://github.com/cronica-it/arhiva/releases/download/1989/lixco-mouse-controller-source-v2.1.pdf"/>
