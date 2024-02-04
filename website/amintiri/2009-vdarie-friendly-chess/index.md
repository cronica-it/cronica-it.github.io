---
slug: 2009/vdarie-friendly-chess
title: 'Viorel Darie - Manualul programului „Friendly Chess”'
authors: [vdarie]
tags: [sah]

date: 2024-02-02T09:01:59

event_date: '2009'

---

Șahul programat a apărut după anul 1950 când au fost create primele calculatoare capabile să gestioneze o aplicație complexă precum este șahul programat. Deja în anii 1970 existau campionate de programe de șah, iar în anii 1980 au apărut campionate de roboți de jucat șah.

<!-- truncate -->

---

## Introducere

La început, jocul calculatoarelor era modest, însă, cu timpul, ca urmare a creșterii performanțelor calculatoarelor, dar și a muncii asidue a unor echipe de programatori renumiți, programele de șah au început să joace la fel de bine ca maeștrii de șah.

După anul 2000, a apărut și minunea, s-a putut crea un program de șah (BLUE DEPTH - rulat pe un supercomputer care făcea miliarde de mutări pe secundă) să bată, în premieră pe Kasparov, campion mondial de șah _en titre_ la acea vreme.

S-a întâmplat însă și fenomenul că, odată cu atingerea performanței maxime a programelor de șah, cea a câștigării unei dispute în fața unui campion mondial de șah, programarea șahului, la fel și dezvoltarea de roboți de jucat șah, să intre într-un con de umbră, astăzi lumea se preocupă din ce în ce mai mult de alte aplicații pe calculator, și mai puțin de jocul de șah pe calculator.

De ce se întâmplă acest lucru? Din cauza că, creatorii de programe de șah au uitat de unde au plecat, au uitat pentru ce a fost inventat șahul. Ei au cautat, mai degrabă, să învingă campionul mondial de șah, uitând că 99% din populație nu poate juca cu acele programe, din cauză ca sunt prea puternice pentru ei.

Întradevăr, șahul fost inventat în India, care apoi a fost perfecționat continuu, de arabi, dar și în Europa, constituind timp de secole cea mai curată preocupare intelectuală.

Pe lângă o petrecere placută a timpului, șahul este o preocupare care dezvoltă intelectul copiilor și al adulților, face ca ei să gândească mai temeinic, să nu acționeze impulsiv la condițiile exterioare, ci să reflecteze temeinic la calea cea mai bună de urmat, să prevadă ce se întâmplă cu o afacere care evoluează după o succesiune de multe evenimente.

:::note

Acest program, după cum spune și numele lui „Friendly Chess” (Program Prietenos de Șah), este destinat, în primul rând, să redea șahul ca o plăcere de joc pentru toți, pentru fiecare copil, sau fiecare adult, care să-și găsească posibilitatea să câștige în fața calculatoarelor performante chiar când de abia învață șah. E mai placut să învingi un calculator care e prieten cu tine, decât să joci cu un program superperformant pe care să nu-l poți învinge niciodată.

:::

## Cum se instaleaza programul de șah

`FriendlyChess.zip`, odată procurat de pe internet sau pe un CD, are nevoie de circa 500Mb de spațiu pe disc, de un calculator cu cel putin 128 Mb de memorie, cu un procesor oarecare, dar cu cât procesorul este mai rapid, cu atât programul gândește mai repede. În fine, e de preferat ca ecranul să fie color, setat pe rezoluția de 1024 x 768, sau altele cu care tabla este pătrată, pixelii să aibă 32 biți culoare. Cam toate calculatoarele care se vând astăzi au aceste caracteristici.

Copiați intr-un director dorit conținutul ZIP-ului, apoi alegeți fișierul `FriendlyChess.exe` și creați un shortcut pe ecran.

## Prezentarea ecranului programului Friendly Chess

Odată lansat, programul Friendly Chess afișează un ecran de joc, cu toate piesele puse în poziția lor inițiala, așteptând doar ca Dvs. să faceți prima mutare. Mutarea Dvs este indicată calculatorului cu ajutorul mouse-ului, făcând „click” în pătratul de unde se mută o piesă, iar apoi „click” în pătratul în care trebuie mutată o piesă.

Dacă mutarea este incorecta, programul emire un „beep” sonor, și trebuie să indicați încă odată mutarea corecta.

Dacă mutarea este corectă, acea mutare este afișată pe ecran. Acum Dvs trebuie să așteptați răspunsul calculatorului, care poate veni imediat, în aceiași secundă, sau după mai multe secunde, sau mai multe minute de așteptare, funcție de timpul ales de gândire. NU DAŢI ALTĂ MUTARE PÂNĂ NU RĂSPUNDE CALCULATORUL.

![1](https://cronica-it.github.io/imagini/2009/vdarie-friendly-chess/poza-1.jpg)

Figura 1. Ecranul principal al programului Friendly Chess.

După cum se vede în acestă figură, pe ecran sunt afișate mai multe zone: zona tablei de șah, zona butoanelor de opțiuni, zona de mutări efectuate, zona de comenzi în timpul jocului, zona de rezumat al gândirii calculatorului, și, jos de tot, zona de piese luate în timpul partidei.

### Zona de opțiuni

![2](https://cronica-it.github.io/imagini/2009/vdarie-friendly-chess/poza-2.jpg)

Figura 2. Opțiunile programului Friendly Chess.

În acestă zonă a ecranului programul Friendly Chess oferă posibilitatea  să alegeți parametrii de joc care vi se potrivesc cel mai bine, ca să reușiți să câștigați în fața calculatorului. Dar să explicam semnificatia acestor „bași ca de acordeon”. Faceți „click” pe unul din aceste butoane pentru a vă alege opțiunile.

- **Nivelul șahist** - este nivelul Dvs de pregătire șahistă. Primele nivele 1, 2, 3 sunt pentru cei care învața să mute și se chinuie să-i ia  calculatorului piesele ca să-i dea mat. Calculatorul este foarte prietenos la aceste nivele, nu vă penalizează pentru orice greșeală, încât vă oferă placerea să găsiți drumul spre mat, când regele advers este înghesuit și nu mai poate muta. Pentru următoarele nivele 4, 5, 6  calculatorul vă solicită să fiți din ce în ce mai atent, și mai pregătit în șah, ca să-l învingeți. În fine, ultimele nivele 8, 9, T sunt pentru jucători versați, care greșesc rar, având deja calificare de jucator de șah. La nivelul 9 calculatorul nu va mai face nicio concesie, se va lupta cu toate cunoștințele programate, ca să vă învingă.
- **Nivelul de timp** – Deși, în șah, cu cât gândești mai mult, cu atât jocul tău este mai bun, totuși, un jucator începător, chiar dacă gândește 3 minute la o mutare, nu va găsi mutări la fel de bune ca un maestru de șah care gândește doar o secundă. Deci, noțiunile „nivelul șahist” și „timpul de gândire” nu sunt unul și același lucru. Acest fapt este valabil chiar și pentru programe de șah, un program slabuț, chiar dacă va gândi o oră la fiecare mutare, tot nu va scoate mutări pe care alte programe ultra performante le vor scoate într-o secundă.

    Nivelele 0, 1, 2, 3 sunt fracțiuni de timp din ce în ce mai mari, insesizabile pentru om, sunt însă diferite intre ele, oferă puteri de gândire sporite calculatorului. Deabia începând cu nivelele 4, 5, 6 veți vedea ca programul începe să gândească. Nu toate mutările sunt gândite de calculator la fel de repede, timpul de calcul al unei mutări depinde și de complexitatea pozitței pe tabla de șah în acel moment.

    Ultimele nivele de timp 9, T durează multe minute, ele sunt prevăzute pentru rezolvarea unor poziții de șah foarte grele.

- **Agresivitate** – este o agresivitate privită în sens pozitiv, adică plăcerea Dvs de a ataca exuberant poziția adversarului, sau, mai degrabă, să vă aparați cât mai bine propria poziție, și să vă aventurați în atac doar când aveți avantaj material.

    Notați totuși, că o agresivitate excesivă vă poate duce la pierderea forțelor cu care atacați, iar o teamă excesivă de a ieși la atac, îndeamnă adversarul să vă atace, și s-ar putea să aveți mari dificultați în apărare. În fine, fiecare poate încerca stilul care i se potrivește cel mai bine.

### Zona cu lista de mutări efectuate

![3](https://cronica-it.github.io/imagini/2009/vdarie-friendly-chess/poza-3.jpg)

Figura 3. Zona din ecran în care sunt afișate ultimele  mutări efectuate

După cum se vede, albul și negrul mută alternativ, mutările sunt afișate pe tablă, dar sunt scrise și în caseta de mutări efectuate. Programul scrie mutările în notația algebrică.

Priviți tabla de șah din Figura 1. Există niște notații pe marginea tablei. Coloanele tablei de șah sunt numerotate cu litere mari de la A la H (de la stânga spre dreapta), iar liniile tablei de șah sunt numeroate cu cifre de la 1 la 8 (de jos în sus).

În exemplul nostru, mutarea a 8-a este alcătuită din mutarea albului „Df3-f5” urmată imediat de mutarea negrului „Pg7-g6”.

„Df3-f5” înseamnă că piesa de tip „D = dama” (regina) a mutat din pătratul „f3” (coloana F, linia 3 – uitați-vă la Figura 1) în pătratul „f5” (coloana F și linia 5). Notația mutărilor folosește două coordonate: coloane și linii, motiv pentru care această notație se numeste notație algebrică.

Mai putem vedea în listă de mutări notații de genul „0–0” – **rocada mică** (regele inversează poziția cu turnul din dreapta, dacă nici regele nici turnul cu care vrem să facem rocada încă nu au mutat, iar regele nu e în șah, și nici nu trece prin câmpuri atacate de piesele advresarului), sau „0-0-0” – **rocada mare** (regele inverseaza poziția cu turnul din stânga). Rostul acestor inversari este de a ascunde regele, piesa cea mai valoroasă, de atacul advers, în timpul jocului de mijloc.

Mai sunt și alte mutări mai complexe în șah:

**En passant** – când pionul alb se află pe linia 5 iar pionul negru vrea să treacă pe lângă el, mutând doi pași, atunci pionul alb are dreptul să ia poinul negru, ca și cum acesta ar muta doar un pas. De exemplu, dacă pionul alb este în pătratul „e5”, iar pionul negru vrea sa mute pionul din „d7” doi pași: „Pd7-d5”, atunci, doar imediat ca răspuns la mutarea pionului negru, pionul alb poate lua pionul negru din „d5” și pune pionul alb în „d6”.

Negrul, în mod analog, aflat pe linia 4, poate lua pionul alb care mută doi pași înainte pe lângă el, de exemplu, este un pion negru în „d4” iar pionul alb vrea să mute doi pași din „c2” în „c4”, atunci pionul negru poate lua pionul alb en-passant din „c4” și pune pionul propriu în „c3”.

**Transformare** -  pionul are regulile de mutare cele mai complicate. Când pionul alb ajunge pe penultima linie, linia 7, el poate muta pe linia 8 transformându-se într-o figură mai valoroasă: D=Damă, T=Turn, N=Nebun sau C=Cal. De obicei transformarea se face în Damă, dar se pot găsi cazuri cand transformarea să se facă în altă piesă, de exemplu în C=cal.

Un exemplu de transformare este mutarea „Pb7-b8D”  adică pionul ajuns pe linia 7 mută pe linia 8 și se transformă, în exemplul nostru în D=damă.

O transformare poate fi și cu luarea de către pionul care transformă a unei piese adverse pe linia 8. De exemplu, dacă pionul din „f7” ia un turn din „g8” și se transformă în regină, atunci acest lucru se scrie „Pf7xg8D”.

Observați că unele mutări se scriu cu „-“ între pătratul de plecare și pătratul de sosire a piesei care mută, pe când alte mutări se scriu cu semnul „x”. Liniuța se scrie când la acea mutare nu se ia nimic (de exemplu Pb2-b4 pionul din b2 mută în b4 fără să ia o piesă), pe când „x” se scrie atunci când în acea mutare ia ceva în pătratul de sosire (exemplu Cc3xd5 – calul din c3 ia o piesă din d5).

În fine, dacă veți vedea mutarile de genul „Nf1-b5+”, acel plus înseamnă că acea mutare dă șah regelui advers.

### Zona de afișare a gândirii calculatorului

![4](https://cronica-it.github.io/imagini/2009/vdarie-friendly-chess/poza-4.jpg)

Figura 4. Gândirea calculatorului care este la mutare

Opțional, calculatorul vă poate oferi secretele gândirii sale, uneori chiar o distracție pentru Dvs, asupra a cât de adânc gândește calculatorul ca să vă ofere mutarea optimă. Stadiul acestei gândiri este afișat într-o zonă  pe ecran. Semnificația acestei zone este următoarea:

- linia întâia arată rezumatul gândirii calculatorului:
  - **nivel** - la ce nivel gândește în acel moment calculatorul (nivelul afișat este numărul de mutări (gândite anticipat de calculator) care este obligatoriu, la acest nivel se adaugă multe alte prelungiri ale gândirii calculatorului, invizibile pe ecran),
  - **număr mutări efectuate** - câte mutări a facut calculatorul până în acel moment pentru a calcula mutarea de răspuns,
  - **valoarea poziției** - este aprecierea poziției în acest moment (valoare cu două zecimale, care dacă este pozitivă înseamnă că albul stă mai bine, iar dacă este negativă înseamnă că negrul stă mai bine); în această valoare, un pion valorează 1.00 puncte, dama valorează 10.00 puncte, plus alte fracțiuni zecimale ca bonusuri pentru niște activități ale pieselor, de exemplu 0.15 când un pion atacă (dar încă n-a luat) un cal advers
  - la a câta mutare gândește calculatorul și câte mutări sunt în total de analizat, de exemplu 14/34
  - care este cea mai lungă variantă din joc pe care a analizat-o calculatorul pentru acea mutare
- **varianta curentă** la care gândește calculatorul în acel moment
- **varianta optimă** deja găsită de calculator până în acel moment, ea poate fi schimbată când mutarea va fi calculată complet

### Zona de desenare a pieselor luate în timpul partidei

![5](https://cronica-it.github.io/imagini/2009/vdarie-friendly-chess/poza-5.jpg)

Figura 5. Zona de afișare a pieselor luate în timpul partidei

Pentru un începător este greu de văzut cât de bine stă în partida pe care o joacă, afișarea pieselor luate ajută la evaluarea avantajelor/dezavatajelor materiale pe care le are pe tabla de șah în momentul respectiv.

### Zona funcțiilor din timpul partidei

În fine, prezentăm și principalele funcții disponibile în programul Friendly Chess, care pot fi folosite în timpul jocului.

![6](https://cronica-it.github.io/imagini/2009/vdarie-friendly-chess/poza-6.jpg)

Figura 6. Principale funcții din timpul partidei de șah ale programului Friendly Chess

- butonul **Partida Nouă** este folosit pentru părăsirea partidei curente și așezarea pieselor pentru o partidă nouă; se întreabă dacă partida curentă se dorește a fi memorată într-un fișier în directorul „PartideSalvate”;
- butonul **Mutare Înapoi** permite să vă  întoarceți cu una sau mai multe mutări înapoi, fie că ați greșit ultima mutare, fie că (dacă nu sunteți în concurs de șah oficial) nu ați făcut mutările cele mai bune și vreți să reveniți la mutările anterioare, să reparați o eroare și să continuați partida;
- butonul **Mutare Înainte** este inversul butonului Mutare Înapoi, dacă vreți să reveniți la poziții deja jucate după ce ați făcut câteva mutări înapoi; nu puteți muta înainte, decât până acolo unde ați jucat ultima mutare în timpul partidei, când ați început să mutați înapoi;
- butonul **Mutare Calculator** înseamnă că programul vă poate sfătui ce să mutați când sunteți Dvs la mutare; puteți repeta acest buton Mutare Calculator, pas cu pas, până se ajunge la un mat, sau la o remiză; este util pentru învățare șah;
- butonul **Propun Remiza** – adică Dvs vedeți că poziția e cam remiză, durează mutări multe, vreți să propuneți remiză; calculatorul vă poate accepta remiza, sau nu, funcție de cum apreciază el situația pe tabla de șah;
- butonul **SETARI** – Este folosit pentru a efectua diferite configurări ale afișării datelor pe ecranul de joc, sau pentru îndeplinirea unor funcții; a se vedea capitolul special pentru SETARI de mai jos
- butonul **Program vs. Program** – înseamnă ca vreți ca Programul să joace și cu albele și cu negrele, adică să joace el cu el însuși, lucru extrem de interesant, mai ales dacă setați timpul de gândire mai mare ca să aveți timp să analizați ce joacă calculatorul. La sfârșit, puteți salva partida prin File – Save Game

## Cum se fac SETARI

Din tabloul funcțiilor de bază din timpul jocului, puteți alege butonul SETARI, care are ca rezultat afișarea unui ecran pentru setări, ca cel de mai jos:

![7](https://cronica-it.github.io/imagini/2009/vdarie-friendly-chess/poza-7.jpg)

Figura 7 – Ecranul de efectuare setări în programul de șah

Pe lângă setările curente disponibile pe ecranul de joc (Nivelul Șahist, Nivelul de Timp, Agresivitate) pe care le-am descris deja, există posibilitatea efectuării și a altor setări, și anume:

- încărcarea pe tabla de șah a unei poziții dorite pentru analiză
- alegerea fundalului ecranului care vă place cel mai mult dintr-un set disponibil
- alegerea unui set de forme de piese care vă place din setul disponibil
- beep-ul să fie setat pe ON/OFF
- afișarea gândirii calculatorului să fie permisă sau inhibată
- afișarea pieselor luate să fie permisă sau inhibată

Setarea unei poziții pe tabla de șah – după ce apasați cu mouse butonul SETARI din ecranul principal, apare un ecran particular pentru SETARI. În acest ecran apar deja active mai multe posibilități de setare. Pentru a seta o anumită poziție pe tabla de șah, alegeți butonul: Setare poziție, după care programul permite să modificați poziția pe tabla de șah:

Aici sunt disponibile 2 butoane suplimentare:

- **Șterge tabla** și butonul (setare pornind de la tabla goală)
- **Poziția inițială** (setare poziție începând cu poziția inițială – util pentru joc cu handicap, de ex Dvs începeți jocul fără un pion)

După cum este scris și pe ecran, mai întâi alegeți un tip de piesă și culoare din caseta cu tipuri de piese, apoi faceți click în toate pătratele de pe tablă unde vreți să așezați acel tip de piesă. După care alegeți alt tip de piesă și repetați procedura de așezare de piese pe tablă. Dacă ați greșit așezarea unei piese pe tablă, atunci alegeți pătratul gol din caseta cu tipuri de piese și faceți click pe tabla de șah unde vreți să ștergeți o piesă.

Nu uitați, înainte de a începe jocul cu poziția setată, apăsați butonul **Setat OK** din caseta de funcții de setare. După apăsarea acestui buton se intră în ecranul principal de joc, unde puteți juca/analiza poziția încărcată.

![8](https://cronica-it.github.io/imagini/2009/vdarie-friendly-chess/poza-8.jpg)

Figura 8 – Procedura de setare a unei poziții pe tabla de șah.

Acestă posibilitate de încărcare poziții este deosebit de utilă pentru exersarea finalurilor de partidă.

**Alegerea fundalului pe ecranul de joc** - În ecranul de setări, foarte simplu, faceti click cu mouse pe un model de fundal din caseta cu modele de fundaluri. Ecranul va fi imediat redesenat cu noul fundal ales.

**Permiterea/Inhibarea sunetelor de BEEP** – Din ecranul de SETARI, alegeți butonul **Sunet ON/OFF**. Funcție foarte utilă când jucați șah cu calculatorul noaptea și nu vreți să treziți pe cei care dorm.

**Alegerea setului de piese** – Din ecranul de SETARI, având caseta cu tipuri de piese, apasați butonul xx și se vor redesena piesele, succesiv, cu toate tipurile disponibile (funcție încă neimplementată acum).

**Cum jucați cu negrele** – Implicit Dvs jucați cu albele. Vă e mai comod așa. Dar, dacă sunteți șahist, trebuie să jucați și cu negrele, și puteți alege negrele astfel:

- din ecranul de joc alegeți butonul **SETARI**
- din ecranul de SETARI alegeți butonul **Jucați cu Negrele**
- este reafișat ecranul de joc, în care calculatorul deja începe să gândească mutarea pentru alb, pe care o va afișa când e gata.
- Dvs veți muta piesele negre

**Permitere/Inhibare afisare gândirii calculatorului** – Procesul de gândire a calculatorului vă este foarte util/distractiv în timpul jocului, chiar puteți să țineți cont de ceea ce vede calculatorul în timpul gândirii mutării sale. Dar sunt cazuri când nu vreți, sau nu aveți voie să vedeți mutarea anticipată de calculator, pentru a pune baza mai mare pe gândirea Dvs proprie. În aceste situații puteți inhiba gândirea calculatorului în două moduri:

- fie alegeți `x` din dreapta casetei de afișare a gândirii
- fie, din ecranul SETARI alegeți butonul **Gândire ON/OFF**

**Permiterea/Inhibarea desenării pieselor luate în timpul partidei** – Se face prin alegerea butonului din ecranul STARI Piese luate ON/Off

## Sfaturi, concluzii

- Vă oferim acest progam nu pentru a vă lega și mai mult de calculator. Vi-l oferim ca o unealtă onestă de a vă exersa intelectul, de a vă crea satisfacția unor victorii în partide șah cu celebrul Dvs rival – calculatorul. De aceea vă sugerăm să nu jucați mai mult de 3 partide la rând într-o zi, pentru a vă fi cât mai folositoare aceste lecții intelectuale, atât mental cât și fizic.
- Încercați  să evoluați, să progresați. Încercați să nu vă grăbiți, să fiți atenți la mutările pe care le faceți.
- Încercați să vă consolidați cunoștințele de strategie în șah, care, de multe ori, au analogii cu strategii din viață. Fără concepte de strategie sănătoase nu veți progresa prea mult.
- Încercați să jucați partide puține, dar de calitate. Dacă sunteți obosiți, mai bine vă duceți la o partidă de fotbal, lăsați șahul pe altă zi.
- Mai bine jucați pe un nivel șahist mai mic, dar să caștigați, decăt să jucați veșnic pe un nivel prea mare, unde să nu câstigați niciodată.

Sperăm că v-am oferit un instrument de un real folos pentru educație intelectuală, dar și pentru o utilă petrecere a timpului liber.

## Finalurile cu piese puține implementate în programul Friendly Chess

Dificultatea în jocul de șah constă în faptul că variantele în arborele de joc proliferează exponențial pe masură ce anticiparea mutării optime crește în adâncime.

În jocul de final, ramificările sunt mai puține, dar totuși arborii generați chiar pentru câteva mutări depășesc capacitatea calculatorului de a le parcurge pe toate.

Ideea de bază a bazei de date în Friendly Chess constă în faptul că, deși ramurile în arborele de joc cresc astronomic ca număr, **numarul pozițiilor pe tabla de șah devine limitat**. De exemplu, în mat cu 4 piese, numărul maxim de poziții este 64 * 64 * 64 * 64, însă nu toate sunt legale.

Există un modul special al lui Friendly Chess (necomercializat, se comercializeaza doar baza de date creata de el, acestă creare dureaza 24 de ore) care tabelează toate maturile cu piese puține, folosind niște analize retrograde, recursive, plecând de la toate maturile în zero mutări, apoi, recursiv, mat-uri în 1 mutare, apoi 2 mutări, etc

Aceste date sunt stocate în fișiere binare care acum au 0,5 Gb (fără a se face comprimări de simetrizare). Sunt posibile comprimări de simetrizare pentru a reduce aceste masive sub 128Mb.

Aceste maturi foarte lungi precalculate când sunt piese puține pe tabla sunt un punct de atractie în jocul de șah  Friendly Chess. Când în timpul jocului Friendly Chess ajunge la 4 sau 3 piese, programul consultă baza de date, vede în câte mutări este mat acea poziție, dacă este mat afișeaza că este mat în nn mutări. Din acel moment, programul joacă optim, căt timp adversarul joacă și el optim.

De exemplu, dacă programul găsește că în poziția cutare este mat în 40 de mutări (40 de mutări!), el afișează acest lucru pe ecran și cere mutarea adversarului. Dacă mutarea adversarului este optimă, la următoarea mutare programul spune că e mat în 39 de mutări. ș.a.m.d.  Dacă adversarul nu mută optim, atunci programul poate spune ca este mai în 27 de mutări.

Cu aceste finaluri cu piese puține se poate face o adevarată carte. Poate se va face în viitor.

Ideea de a tabela maturile cu piese puține, folosind metode de analiză recursivă retrograde, mi-a venit în minte acum mulți ani, am lucrat la ea. Recent am citit că autorii actualului program de șah campion mondial (Rybka) deja au folosit aceiași tehnică, au facut baze de date cu 5 piese de joc, și chiar, pentru anumite seturi interesante, de 6 piese pe tabla de șah!. Pentru 6 piese, au calculat ca-i trebuie 1 TeraByte pe disc! Ceea ce s-ar găsi pentru un supercampion de șah, dar nu se poate comercializa uzual.

Dar am alte idei acum, plecând de la tabele de mat cu 4 piese, să se facă extinderi pentru calcul de mat cu mai multe piese prin metode:

- căutarea simplificării cât mai rapide a pozițiilor pentru a ajunge la 4 piese, sau
- folosirea seturilor cu 4 piese ca template în poziții cu mai multe (puține totuși) piese, prin **ignorarea pieselor** care nu influențeaza prea mult finalul

Să ilustrăm mai jos un mat văzut foarte multe mutări înainte în **lupta turnului contra cal**.
Nu în orice poziție turnul învinge calul. Curios, uneori nici dama nu poate învinge calul, dacă, calul este lipit de propiul rege în mijlocul tablei!

Să încărcăm în program poziția cu un turn alb contra cal negru, poziția cu cel mai lung traseu optim de mat turn contra cal:

![9](https://cronica-it.github.io/imagini/2009/vdarie-friendly-chess/poza-9.jpg)

Incepe jocul, la care muta albul și răspunde:

![10](https://cronica-it.github.io/imagini/2009/vdarie-friendly-chess/poza-10.jpg)

Jocul continuă (automat – calculator / calculator) și se obțin mutările:

![11](https://cronica-it.github.io/imagini/2009/vdarie-friendly-chess/poza-11.jpg)

Lupta turn/cal este de abia la început. După încă 10 mutări avem:

![12](https://cronica-it.github.io/imagini/2009/vdarie-friendly-chess/poza-12.jpg)

Mai facem încă 10 mutări:

![13](https://cronica-it.github.io/imagini/2009/vdarie-friendly-chess/poza-13.jpg)

În fine, calul a fost învins și capturat. Acum începe mat-ul cu turnul:

![14](https://cronica-it.github.io/imagini/2009/vdarie-friendly-chess/poza-14.jpg)

Acum mat-ul este vizibil și pentru un începător:

![15](https://cronica-it.github.io/imagini/2009/vdarie-friendly-chess/poza-15.jpg)

Greu e să dai mat pe lumea asta!

Este în experimente și modulul de extindere mat cu piese puține (5, 6  etc) prin exploatarea unor template-uri tabelate deja cu 3 si 4 piese.

Vă dorim numai succese!

## Friendly Chess – proiecte de viitor

În completarea manualului (provizoriu) pe care l-am făcut pentru descrierea programului Friendly Chess, mai scriu câteva explicații.

### Scopul

Arta programării șahului și-a atins apogeul, și odată cu acesta și interesul mediatic a scăzut, și chiar populația este mai puțin receptivă la aplicațiile de șah pe calculator, datorită altor multe oferte moderne în domeniul preocupărilor cotidiene.

Totuși, șahul e inventat în vechime și nu se va stinge așa de ușor. Asta deoarece este un mijloc ideal de a dezvolta intelectul uman, fie la nivelul copiilor, fie la nivelul adulților.

Problema este doar să ne întoarcem la menirea inițiala a șahului, cea de punere în funcțiune a capacităților de raționare a intelectului uman.

Șahul programat a ajuns în conul de umbră datorită faptului că, programatorii, s-au luptat cu înverșunare să învingă cotele cele mai înalte ale artei, să învingă un campion mondial de șah. Și au reușit acest lucru. Apoi au încercat să comercializeze în masă programele campioane mondial, difuzându-le pe piață. Și au reușit. Doar că, orice copil, orice om obișnuit poate beneficia prea puțin de un program ultraperformant de șah: aceste programme sunt prea tari pentru un începator, sunt descurajant de tari, nu-i poți învinge nicicum. Și atunci omul de rând nu le folosește.

Ideea de bază a programului Frendly Chess este aceea de **a reda oamenilor plăcerea de a juca șah**, chiar la nivelul lor, să ofere oricărui copil, sau adult, șanse reale de a învinge programul de șah, bineînțeles, alegând un nivel adecvat.

Pentru copii lucrurile sunt mai complexe decât par. O aplicație pentru copii este bună atunci când utilizează multe ilustrații, sunete plăcute, adaptare la situație și la caracterul fiecărui copil. Ceea ce presupune eforturi de programare speciale pentru realizarea acestor obiective.

### Facilități generale implementate deja

Așa cum se poate vedea din manualul de față, sunt realizate funcțiile de bază ale unui program de șah, dar mai sunt multe de modificat, de completat, pentru un desing valoros, comercial.

Un capitol de atracție al acestui program sunt **tabelele precalculate de mat-uri în multe mutări, cand sunt putine piese** (3 sau 4, de exemplu cei doi regi, un turn alb și un cal negru). Ideea acestor tabelări de finaluri cu piese puține mi-a venit în minte acum mulți ani, am tot realizat câte ceva cand am avut timp, însă de abia acum le-am folosit într-un program de șah, cu efecte spectaculoase (a se vedea finalul în 40 de mutări din acest material despre finaluri).

M-am străduit cât se poate să dau și o tărie de joc programului Friendly Chess, pentru orice eventualitate, atunci când se organizează meciuri demonstrative cu alte programe de șah. Frendly Chess încă nu este competitiv în concursuri tari de joc (acele programe de șah super tari s-au obținut ca rod al efortului de decenii de muncă îndârjită, a celor mai buni programatori, având toată teoria din domeniu la dispoziție și toate experiențele pe plan mondial).

Dar, pe cât este de greu să faci un program tare  de joc, pe atât de greu este să și diluezi tăria jocului programului, adica să-l faci cât mai adaptat la utilizatorii lui: copii, adulți obisnuiți, ne șahiști. Adică programul să fie și **accesibil**, dar și **didactic**, în același timp.

Frendly Chess are doar niște pregătiri de bază pentru a fi utilizat ca șah pentru copii, restul trebuie dezvoltat de acum înainte.

Dintre pregătirile de bază enumerăm:

- posibilitatea de a alege un fundal dorit al ecranului de joc
- posibilitatea de a alege un anumit set de piese, după preferință
- posibilitatea de analiza pas cu pas anumite pozitii, în special finaluri ; traseul optim spre mat în finaluri este chiar foarte didactic pentru cei care învață șah
- posibilitatea salvării/reluării de partide jucate și vizualizarea pas cu pas (de realizat)
- utilizarea unor deschideri clasice, afișând pe ecran numele acelor deschideri

Aceste pregătiri ar trebui completate/amplificate prin:

- obtinerea unor fundaluri cât mai frumoase și adecvate copiilor
- realizarea unor seturi de piese cât mai variate, de atracție pentru copii
- un set de interacțiuni plăcute pentru copii: sunete, mesaje, mici animații, gadgeturi, etc

Mecanismul de seturi de piese este implementat, dar trebuie realizate seturile de piese.

Aceste seturi de piese, pentru copii, pot avea și un rol educativ. Seturile pot fi inspirate din lumea naturala: seturi de peștisori, păsări, animale, flori, copaci etc.

Iar un copil, când trece cu mouse deasupra unei piese, să se afiseze numele acelei plante sau animal. Deci setul de piese să fie și un album colorat pentru copii. Atunci tabla de șah trebuie să ocupe mai tot ecranul, ca piesele să fie bine vizibile.

Sau altă idee, după ce un copil joacă șah mai mult de 30 minute, când se văd semne de oboseală, atunci programul să-i propună să spună o poveste (adecvată setului de piese), cu pagini ilustrate, mesaje și sunete.
Pentru oamenii maturi, se pot face diverse lucruri atractive în program: diverse gadget-uri, funcție de ocupația cotidiană a jucătorului. Nici aceste gadgeturi nu sunt implementate, dar se pot crea multe, dacă ar există un proiect.

Mai e de lucru...

## Referințe

- [vioreldarie.ro - Friendly Chess (Programul Prietenos de Șah) - Utilizare](http://vioreldarie.ro/Șah/Friendly%20Chess%20-%20Manual%20Utilizare%2022%2004%202010.htm)
