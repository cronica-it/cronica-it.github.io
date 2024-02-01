---
slug: 2024/site-ul-este-public
title: 'Site-ul „Cronica IT&C” este public'
authors: [ilg-ul]
tags: [website]

date: 2024-02-01T07:56:54

---

Mulțumită contribuțiilor susținătorilor inițiali, proiectul „Cronica IT&C” a
adunat suficient conținut, iar funcționalitatea a devenit acceptabilă,
ceea ce a permis ca de la sfârșitul lunii ianuarie 2024, la 3 luni de la
primul preview, site-ul proiectului să poate fi făcut public.

<!-- truncate -->

## Cronologie

Ca primă sursă pentru evenimentele din cronologie a fost pagina
_Istoria Internetului_ făcută de Gheorghe Șerban
și publicată pe site-ul
[rite.org.ro](https://rite.org.ro/istoria-internetului/),
dar continutul a fost in cele mai multe cazuri rescris. Ca recunoaștere,
Gheorghe Șerban a fost păstrat ca prim autor, și articolele au o referință
la pagina inițială.

## Amintiri

De la idea inițială de a face o cronologie, proiectul a fost dezvoltat
și treptat au fost adăugate noi secțiuni.

Pe lângă evenimentele care alcătuiesc cronologia propriu-zisă, s-a conturat idea
arhivării unor articole cu relatări personale ale celor implicați
în diverse evenimente relevante pentru istoria IT&C.

Astfel a apărut secțiunea **Amintiri**,
în care au fost preluate articole publicate
online sau tipărite, ori puse la dispoziție de autori.

## Arhivă

În scopul prezervării pe termen lung a unor documente, a fost creată
secțiunea **Arhivă**, care conține diverse fișiere binare, cum ar fi
documentații în format PDF,
fișiere .zip, etc, posibil relevante pentru istoria IT&C din România.

## Implementare

Site-ul de web este generat static cu [Docusaurus](https://docusaurus.io),
și, ca organizare, folosește o structură de blog, de fapt 3 instanțe distincte
de blog, pentru evenimente, amintiri și blog.

În timp ce în mod obișnuit un blog conține articole despre evenimente recente,
care au nevoie de memorarea și prelucrarea unei singure date,
acest proiect conține articole cu caracter istoric,
care descriu evenimente petrecute în trecut, și articolele au mai multe date,
data când au fost adăugate în blog, data când a avut loc evenimentul și
eventual data când articolul din blog a fost actualizat.

Pentru a putea defini și prelucra toate aceste date, a fost nevoie de o
serie de modificări in proiectul Docusaurus (open source), ceea ce a
adăugat câteva săptămâni la perioada de dezvoltare.

## Grupare după categorii și autori

În mod uzual articolelor de blog le pot fi atașate diverse categorii
(_tags_), și există posibilitatea de a se afișa pagini cu articolele
grupate după categorii.

Ca o extensie la Docusaurus, în acest proiect a fost adăugată și
posibilitatea de a afișa pagini cu articole grupate după autori.

## Algolia search

O altă facilitate considerată utilă a fost un
mecanism de căutare exhaustivă în conținutul articolelor.

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

## Preview

Pentru a da posibilitaatea autorilor de a verifica articolele înainte de
a fi publicate pe site-ul principal, a fost implementat un mecanism
automat care folosește un
branch suplimentar și un site de preview.

În repository-ul cu sursele există 2 branch-uri; conținutul din branch-ul
`preview` este automat publicat la adresa <https://cronica-it.github.io/preview/>,
iar conținutul din branch-ul `master` la adresa <https://cronica-it.github.io/>.

Articolele sunt inițial adâugate în branch-ul `preview`, verificate de autor
în site-ul de preview; când conținutul este gata, branch-ul `preview`
este preluat în branch-ul `master` și automat publicat în site-ul principal.

## Google Group

Pentru a facilita comunicarea între cei interesați să susțină acest proiect,
a fost creat grupul
[cronica-it-ro](https://groups.google.com/u/1/g/cronica-it-ro)
pe Google Groups.

Toate notificările viitoare în legătura cu proiectul vor fi trimise prin
acest grup.

## Feedback

Ca în orice proiect nou, este foarte probabil ca în unele articole să
existe greșeli sau
inexactități, drept care orice ajutor pentru corectarea lor va fi apreciat.
