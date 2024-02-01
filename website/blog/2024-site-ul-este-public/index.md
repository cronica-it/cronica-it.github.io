---
slug: 2024/site-ul-este-public
title: 'Site-ul „Cronica IT&C” este public'
authors: [ilg-ul]
tags: [website]

date: 2024-02-01T07:56:54

---

La sfârșitul lunii ianuarie 2024, la 3 luni de la primul preview,
site-ul proiectului „Cronica IT&C” este public.

<!-- truncate -->

## Conținut extins

De la idea inițială de a face o cronologie, proiectul a fost dezvoltat
și treptat au fost adăugate noi secțiuni.

Pe lângă evenimentele care alcătuiesc cronologia propriu-zisă, s-a conturat idea
arhivării unor articole cu relatări personale ale celor implicați
în diverse evenimente relevante pentru istoria IT&C.
Astfel a apărut secțiunea **Amintiri**,
în care au fost preluate articole publicate
online sau tipărite, ori puse la dispoziție de autori.

În scopul prezervării pe termen lung a unor documente, a fost creată
secțiunea **Arhiva**, ce conține diverse fișiere binare, cum ar fi
documentații în format PDF,
fișiere .zip, etc, posibil relevante pentru istoria IT&C din România.

## Implementare

Site-ul de web este generat static cu [Docusaurus](https://docusaurus.io),
și ca organizare folosește o structură de blog, de fapt 3 instanțe separate
de blog, pentru evenimente, amintiri și blog.

În mod obișnuit un blog conține articole despre evenimente recente, și
pentru a putea publica în condiții mai bune articole cu caracter istoric,
care descriu evenimente petrecute în trecut, a fost nevoie de o serie de modificări
in proiectul Docusaurus (open source), ceea ce a prelungit cu câteva
săptămâni perioada de dezvoltare.

## Grupare după categorii și autori

În mod uzual articolelor de blog le pot fi atașate diverse categorii
(_tags_), și există posibilitatea de a se afișa pagini cu articolele
grupate după categorii.

În plus, ca o extensie la Docusaurus, a fost adăugată și posibilitatea de a
afișa pagini cu articole grupate după autori.

## Algolia search

O altă facilitate considerată utilă a fost un
mecanism de căutare exhaustivă în conținutul site-ului.

Soluția adoptată a fost Algolia Search, pentru care Docusaurus oferă
suport direct.

În configurația curentă conținutul este indexat automat de Algolia
în fiecare săptămână; de aceea pentru articolele adăugate/modificate
recent va exista o mică întârziere până când
indexul va fi actualizat, dar în mod normal nu mai mult de o săptămână.

## GitHub

Proiectul este găzduit de GitHub, atât
[sursele](https://github.com/cronica-it) cât și site-ul final, a
cărui adresă (`cronica-it.github.io`) este subdomeniu al domeniului
`github.io`.

În felul acesta sperăm că site-ul va avea șanse mai bune de a rămâne
activ pe termen lung, spre deosebire de domeniilor personalizate, care
sunt automat dezactivate dacă administratorii nu mai achită costurile
anuale.

## Google Group

Pentru a facilita comunicarea între cei interesați să susțină acest proiect,
a fost creat grupul
[cronica-it-ro](https://groups.google.com/u/1/g/cronica-it-ro)
pe Google.

Toate notificările viitoare în legătura cu proiectul vor fi trimise prin
acest grup.

## Feedback

În perioada următoare urmează ca existența acestui proiect să fie
facută publică, prin postări pe social media sau email.

Este foarte probabil ca în unele articole să existe greșeli sau
inexactități, drept care orice ajutor pentru corectarea lor va fi apreciat.
