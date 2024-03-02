---
---

# Cum contribui noi articole?

Cei care cunosc evenimente din istoria industriei de IT&C și doresc
să la împărtășeacă cu alții, o pot face relativ ușor, publicând
articole pe acest site.

## Evenimente vs. articole de blog

Sursa datelor listate în cronologie este în secțiunea **Evenimente**.

Pentru articolele de tip eveniment
este recomandat un **limbaj profesional**, clar și concis, cu repere în timp,
nume de persoane, referințe, și în general informații cu valoare istorică.
Ca un punct de reper, aceste articole trebuie să îndeplinească și
condițiile de publicare pe Wikipedia.

Pe lângă acestea, amintirile personale sunt de asemenea apreciate, ca
**Amintiri**, care nu vor face parte directă din cronologie, dar vor
fi menționate ca referințe în cronologie.

Limbajul articolelor de amintiri este de obicei personal, la persoana întâia
sau în orice format dorește autorul.

## Articole cu fotografii și alte documente atașate

Articolele sunt memorate ca sub-foldere, în care conținutul
este într-un fișier cu numele `index.md`.

Dacă articolul este însoțit de
fotografii și/sau alte fișierele atașate, acestea vor fi memorate
în foldere separate, de exemplu imaginile pot sta
într-un sub-folder `img`. Din motive de optimizare a spațiului,
este recomandat ca imaginile și celelalte fișiere atașate să fie stocate
in proiectul separat
[cronica-it/imagini](https://github.com/cronica-it/imagini).

Deși Docusaurus permite memorarea articolelor simple direct
în fișiere cu terminația `.md`, din motive de consistență, toate
articolele vor fi memorate în sub-foldere.

## Convenția de nume pentru foldere

Convenția de nume pentru evenimente și articolele de blog este în general
un string care începe cu anul si
este urmat de un nume scurt, posibil mai multe cuvinte separate de
linițe, de exemplu:

```txt
2023-cniv
2023-free-unix-for-romania
```

## Preambului articolului

Deși nu există un standard foarte strict, majoritatea blog-urilor
folosesc un preambul ([frontmatter](/docs/frontmatter)) cu diverse
[metadate](/docs/metadate), reprezentate ca proprietăți în YML.

## Sumarul articolului

Din motive de comoditate în navigarea prin paginile cu liste de articole,
fiecare articol trebuie sa înceapă cu o frază care descrie pe scurt
despre ce este vorba in articol, similar cu secțiunea _Abstract_ din
articolele științifice.

Această secțiune este separată de corpul principal al articolului
printr-o linie cu un conținut specific:

```html
<!-- truncate -->
```

## Referințe

Este recomandat ca fiecare articol să conțină referințe la alte pagini de web,
lucrări publicate, articole de legislație, și orice alte documente
externe acestui site.

În cazul URL-urilor, textul este bine să conțină numele site-ului și
numele articolului, de exmplu:

```md
## Referințe

- [retroit.ro - Microcalculatorul L/B 881](https://retroit.ro/l-b-881/)
- [ilgthegeek.wordpress.com - History: Lixco L/B881, the first Romanian commercial microcomputer](https://ilgthegeek.wordpress.com/2010/11/14/history-lixco-lb881/)
- [tehnium-azi.ro - Computer LB881 - publicat in Tehnium](https://www.tehnium-azi.ro/forums/topic/7187-computer-lb881-publicat-in-tehnium/)
```

## Exemplu

Un exemplu de articol scurt, dar cu multe referințe, poate fi:

```md title="1992-free-unix-for-romania/index.md"
---
slug: 1992/free-unix-for-romania
title: 'Marius Hâncu coordonează programul „Free Unix for Romania”'
authors: [ilg-ul]
tags: [organizatii]

event_date: '1992'
event_end_date: '1995'

---

În toamna anului 1992, Marius Hâncu fondează organizația internațională non-profit
**Free Unix for Romania**.

<!-- truncate -->

In septembrie 1994, conducerea organizației este preluată de Ted Lungu.

Ultimul raport cunoscut este din 1995.

## Referințe

- [Prezentare lui Marius Hâncu la ROSE '93](/amintiri/2023/mhancu-mesaj-free-unix-rose93/)
...
```

## Diacritice

Este recomandat ca articolele să fie scrise în limba română, cu diacritice.

În cazul în care textul trimis spre publicare nu are diacritice,
și autorul nu îl poate
corecta, articolul va fi editat înainte de publicare și
cel puțin titlurile și prima frază vor conține diacriticele corecte.

## Transmiterea articolelor

Pentru cei obișnuiți cu GitHub, cea mai simpla soluție de
a contribui articole sau actualizări este cu un **Pull Request**.

Pentru cei care nu au experiență cu GitHub, metodele tradiționale de
transmiterea a textelor prin e-mail, direct sau ca fișiere
atașate, pot fi de asemenea folosite.

## GDPR

Suplimentar, cine dorește să publice articole, trebuie să furnizeze
și cateva informații de identificare, cum ar fi numele complet și,
opțional, adresa de email, adresă de web, fotografie, și să își asume
răspunderea pentru informațiile publicate.

In conformitate cu GDPR, este nevoie și de o declarație că este de
acord ca aceste date să fie utilizate pe site, în condițiile
în care Cronica IT&C se angajează să nu le folosească în alte scopuri;
în plus, acest acord poate fi retras ulterior.
