---
slug: 2010/vdarie-friendly-chess
title: 'Manualul lui Viorel Darie pentru programul „Friendly Chess”'
authors: [vdarie]
tags: [sah]

date: 2024-02-02T09:01:59

event_date: '2010'

---

Şahul programat a apărut după anul 1950 când au fost create primele calculatoare capabile să gestioneze o aplicaţie complexă precum este şahul programat. Deja în anii 1970 existau campionate de programe de şah, iar în anii 1980 au apărut campionate de roboţi de jucat şah.

<!-- truncate -->

---

## Introducere

La început, jocul calculatoarelor era modest, însă, cu timpul, ca urmare a creşterii performanţelor calculatoarelor, dar şi a muncii asidue a unor echipe de programatori renumiţi, programele de şah au început să joace la fel de bine ca maeştrii de şah.

După anul 2000, a apărut şi minunea, s-a putut crea un program de şah (BLUE DEPTH - rulat pe un supercomputer care făcea miliarde de mutări pe secundă) să bată, în premieră pe Kasparov, campion mondial de şah en titre la acea vreme.

S-a întâmplat însă şi fenomenul că, odată cu atingerea performanţei maxime a programelor de şah, cea a câştigării unei dispute în faţa unui campion mondial de şah, programarea şahului, la fel şi dezvoltarea de roboţi de jucat şah, să intre într-un con de umbră, astăzi lumea se preocupă din ce în ce mai mult de alte aplicaţii pe calculator, şi mai puţin de jocul de şah pe calculator.

De ce se întâmplă acest lucru? Din cauza că, creatorii de programe de şah au uitat de unde au plecat, au uitat pentru ce a fost inventat şahul. Ei au cautat, mai degrabă, să învingă campionul mondial de şah, uitând că 99% din populaţie nu poate juca cu acele programe, din cauză ca sunt prea puternice pentru ei.

Întradevăr, şahul fost inventat în India, care apoi a fost perfecţionat continuu, de arabi, dar şi în Europa, constituind timp de secole cea mai curată preocupare intelectuală.

Pe lângă o petrecere placută a timpului, şahul este o preocupare care dezvoltă intelectul copiilor şi al adulţilor, face ca ei să gândească mai temeinic, să nu acţioneze impulsiv la condiţiile exterioare, ci să reflecteze temeinic la calea cea mai bună de urmat, să prevadă ce se întâmplă cu o afacere care evoluează după o succesiune de multe evenimente.

:::note

Acest program, după cum spune şi numele lui „Friendly Chess” (Program Prietenos de Şah), este destinat, în primul rând, să redea şahul ca o plăcere de joc pentru toţi, pentru fiecare copil, sau fiecare adult, care să-şi găsească posibilitatea să caştige în faţa calculatoarelor performante chiar când de abia învaţă şah. E mai placut să învingi un calculator care e prieten cu tine, decât să joci cu un program superpeformant pe care să nu-l poţi învinge niciodată.

:::

## Cum se instaleaza programul de şah

`Friendly Chess.zip`, odată procurat de pe internet sau pe un CD, are nevoie de circa 500Mb de spaţiu pe disc, de un calculator cu cel putin 128 Mb de memorie, cu un procesor oarecare, dar cu cât procesorul este mai rapid, cu atât programul gândeste mai repede. În fine, e de preferat ca ecranul sa fie color, setat pe rezolutia de 1024 x 768, sau altele cu care tabla este pătrată, pixelii să aibă 32 biţi culoare. Cam toate calculatoarele care se vând astazi au aceste caracteristici.

Copiati intr-un director dorit continutul ZIP-ului, apoi alegeti fisierul `Friendly Chess.exe` şi creaţi un shortcut pe ecran.

## Prezentarea ecranului programului Friendly Chess

Odată lansat, programul Friendly Chess afişează un ecran de joc, cu toate piesele puse în poziţia lor iniţiala, aşteptând doar ca Dvs. să faceţi prima mutare. Mutarea Dvs este indicată calculatorului cu ajutorul mouse-ului, făcând „click” în pătratul de unde se mută o piesa, iar apoi „click” în pătratul în care trebuie mutată o piesă.

Dacă mutarea este incorecta, programul emire un „beep” sonor, şi trebuie să indicaţi încă odată mutarea corecta.

Dacă mutarea este corectă, acea mutare este afişată pe ecran. Acum Dvs trebuie să aşteptaţi răspunsul calculatorului, care poate veni imediat, în aceiaşi secundă, sau după mai multe secunde, sau mai multe minute de aşteptare, funcţie de timpul ales de gândire. NU DAŢI ALTĂ MUTARE PÂNĂ NU RĂSPUNDE CALCULATORUL.

![1](https://cronica-it.github.io/imagini/2010/vdarie-friendly-chess/poza-1.jpg)

Figura 1. Ecranul principal al programului Friendly Chess.

După cum se vede în acestă figură, pe ecran sunt afişate mai multe zone: zona tablei de şah, zona butoanelor de opţiuni, zona de mutări efectuate, zona de comenzi în timpul jocului, zona de rezumat al gîndirii calculatorului, şi, jos de tot, zona de piese luate în timpul partidei.

### Zona de opţiuni

![2](https://cronica-it.github.io/imagini/2010/vdarie-friendly-chess/poza-2.jpg)

Figura 2. Opţiunile programului Friendly Chess.

În acestă zonă a ecranului programul Friendly Chess oferă posibilitatea  să alegeţi parametrii de joc care vi se potrivesc cel mai bine, ca să reuşiţi să câştigaţi în faţa calculatorului. Dar să explicam semnificatia acestor „başi ca de acordeon”. Faceţi „click” pe unul din aceste butoane pentru a vă alege opţiunile.

- **Nivelul şahist** - este nivelul Dvs de pregătire şahistă. Primele nivele 1,2,3 sunt pentru cei care învaţa să mute şi se chinuie să-i ia  calculatorului piesele ca sa-i dea mat. Calculatorul este foarte prietenos la aceste nivele, nu vă penalizează pentru orice greşeală, încât vă oferă placerea să găsiţi drumul spre mat, când regele advers este înghesuit şi nu mai poate muta. Pentru următoarele nivele 4,5,6  calculatorul va solicită să fiţi din ce în ce mai atent, şi mai pregatit în şah, ca să-l învingeţi. În fine, ultimele nivele 8,9,T sunt pentru jucători versaţi, care gresesc rar, având deja calificare de jucator de şah. La nivelul 9 calculatorul nu vă mai face nicio concesie, se va lupta cu toate cunoştinţele programate, ca să vă învingă.
- **Nivelul de timp** – Deşi, în şah, cu cât gândeşti mai mult, cu atât jocul tău este mai bun, totuşi, un jucator începător, chiar dacă gândeşte 3 minute la o mutare, nu va găsi mutări la fel de bune ca un maestru de şah care gândeşte doar o secundă. Deci, noţiunile „nivelul şahist” şi „timpul de gândire” nu sunt unul şi acelaşi lucru. Acest fapt este valabil chiar şi pentru programe de şah, un program slabuţ, chiar dacă va gândi o ora la fiecare mutare, tot nu va scoate mutări pe care alte programe ultra performante le vor scoate într-o secundă.

    Nivelele 0, 1, 2, 3 sunt fracţiuni de timp din ce în ce mai mari, insesizabile pentru om, sunt însă diferite intre ele, oferă puteri de gândire sporite calculatorului. Deabia începând cu nivelele 4, 5, 6 veţi vedea ca programul începe sa gândească. Nu toate mutările sunt gândite de calculator la fel de repede, timpul de calcul al unei mutări depinde şi de complexitatea pozitţei pe tabla de şah în acel moment.

    Ultimele nivele de timp 9, T durează multe minute, ele sunt prevăzute pentru rezolvarea unor poziţii de şah foarte grele.

- **Agresivitate** – este o agresivitate privită in sens pozitiv, adică plăcerea Dvs de a ataca exuberant poziţia adversarului, sau, mai degrabă, să vă aparaţi cât mai bine propria poziţie, şi să vă aventuraţi în atac doar când aveţi avantaj material.

    Notaţi totuşi, că o agresivitate excesivă vă poate duce la pierderea forţelor cu care atacaţi, iar o teamă excesivă de a ieşi la atac, îndeamnă adversarul să vă atace, şi s-ar putea să aveţi mari dificultaţi în apărare. În fine, fiecare poate încerca stilul care i se potriveşte cel mai bine.

### Zona cu lista de mutări efectuate

![3](https://cronica-it.github.io/imagini/2010/vdarie-friendly-chess/poza-3.jpg)

Figura 3. Zona din ecran în care sunt afişate ultimele  mutări efectuate

După cum se vede, albul şi negrul mută alternativ, mutările sunt afişate pe tablă, dar sunt scrise şi în caseta de mutări efectuate. Programul scrie mutările în notaţia algebrică.

Priviţi tabla de şah din Figura 1. Există nişte notaţii pe marginea tablei. Coloanele tablei de şah sunt numerotate cu litere mari de la A la H (de la stânga spre dreapta), iar liniile tablei de şah sunt numeroate cu cifre de la 1 la 8 (de jos în sus).

În exemplul nostru, mutarea a 8-a este alcătuită din mutarea albului „Df3-f5” urmată imediat de mutarea negrului „Pg7-g6”.

„Df3-f5” înseamnă că piesa de tip „D = dama” (regina) a mutat din pătratul „f3” (coloana F, linia 3 – uitaţi-vă la Figura 1) în pătratul „f5” (coloana F şi linia 5). Notaţia mutărilor foloseşte două coordonate: coloane şi linii, motiv pentru care această notaţie se numeste notaţie algebrică.

Mai putem vedea în listă de mutări notaţii de genul „0–0” – **rocada mică** (regele inversează poziţia cu turnul din dreapta, dacă nici regele nici turnul cu care vrem să facem rocada încă nu au mutat, iar regele nu e în şah, şi nici nu trece prin câmpuri atacate de piesele advresarului), sau „0-0-0” – **rocada mare** (regele inverseaza poziţia cu turnul din stânga). Rostul acestor inversari este de a ascunde regele, piesa cea mai valoroasă, de atacul advers, în timpul jocului de mijloc.

Mai sunt şi alte mutări mai complexe în şah:

**En passant** – când pionul alb se află pe linia 5 iar pionul negru vrea sa treacă pe lângă el, mutând doi paşi, atunci pionul alb are dreptul sa ia poinul negru, ca şi cum acesta ar muta doar un pas. De exemplu, dacă pionul alb este în pătratul „e5”, iar pionul negru vrea sa mute pionul din „d7” doi paşi: „Pd7-d5”, atunci, doar imediat ca răspuns la mutarea pionului negru, poinul alb poate lua poinul negru din „d5” şi pune pionul alb în „d6”.

Negrul, în mod analog, aflat pe linia 4, poate lua pionul alb care muta doi paşi înainte pe lângă el, de exemplu, este un pion negru în „d4” iar pionul alb vrea să mute doi paşi din „c2” în „c4”, atunci pionul negru poate lua pionul alb en-passant din „c4” şi pune pionul propriu în „c3”.

**Transformare** -  pionul are regulile de mutare cele mai complicate. Când pionul alb ajunge pe penultima linie, linia 7, el poate muta pe linia 8 transformându-se într-o figură mai valoroasă: D=Damă, T=Turn, N= Nebun sau C=Cal. De obicei transformarea se face în Damă, dar se pot găsi cazuri cand transformarea sa se facă în altă piesă, de exemplu în C=cal.

Un exemplu de transformare este mutarea „Pb7-b8D”  adică pionul ajuns pe linia 7 mută pe linia 8 şi se transformă, în exemplul nostru în D=damă.

O transformare poate fi şi cu luarea de către pionul care transformă a unei piese adverse pe linia 8. De exemplu, dacă pionul din „f7” ia un turn din „g8”si se transformă în regină, atunci acest lucru se scrie „Pf7xg8D”.

Observaţi că unele mutări se scriu cu „-“ între pătratul de plecare şi pătratul de sosire a piesei care mută, pe când alte mutări se scriu cu semnul „x”. Liniuţa se scrie când la acea mutare nu se ia nimic (de exemplu Pb2-b4 pionul din b2 mută în b4 fără să ia o piesa, pe cand „x” se scrie atunci acea mutare ia ceva în pătratul se sosire (exemplu Cc3xd5 – calul din c3 ia o piesa din d5).

În fine, dacă veţi vedea mutarile de genul „Nf1-b5+”, acel plus înseamnă că acea mutare dă şah regelui advers.

### Zona de afişare a gândirii calculatorului

![4](https://cronica-it.github.io/imagini/2010/vdarie-friendly-chess/poza-4.jpg)

Figura 4. Gândirea calculatorului care este la mutare

Opţional, calculatorul vă poate oferi secretele gândirii sale, uneori chiar o distracţie pentru Dvs, asupra a cât de adânc gândeşte calculatorul ca să vă ofere mutarea optimă. Stadiul acestei gândiri este afisat într-o zonă  pe ecran. Semnificaţia acestei zone este urmatoarea:

- linia întâia arată rezumatul gândirii calculatorului:
  - **nivel** - la ce nivel gandeşte în acel moment calculatorul (nivelul afişat este numarul de mutări (gândite anticipat de calculator) care este obligatoriu, la acest nivel se adaugă multe alte prelungiri ale gândirii calculatorului, invizibile pe ecran),
  - **număr mutări efectuate** - câte mutări a facut calculatorul până în acel moment pentru a calcula mutarea de răspuns,
  - **valoarea poziţiei** - este aprecierea poziţiei în acest moment (valoare cu două zecimale, care dacă este pozitivă înseamnă că albul stă mai bine, iar dacă este negativă înseamnă că negrul stă mai bine); în această valoare, un pion valorează 1.00 puncte, dama valorează 10.00 puncte, plus alte fracţiuni zecimale ca bonusuri pentru nişte activităţi ale pieselor, de exemplu 0.15 când un pion atacă (dar încă n-a luat) un cal advers
  - la a câta mutare gândeşte calculatorul şi câte mutări sunt in total de analizat, de exemplu 14/34
  - care este cea mai lungă variantă din joc pe care a analizat-o calculatorul pentru acea mutare
- **varianta curentă** la care gandeşte calculatorul în acel moment
- **varianta optimă** deja gasită de calculator până în acel moment, ea poate fi schimbată când mutarea va fi calculată complet

### Zona de desenare a pieselor luate în timpul partidei

![5](https://cronica-it.github.io/imagini/2010/vdarie-friendly-chess/poza-5.jpg)

Figura 5. Zona de afişare a pieselor luate în timpul partidei

Pentru un începator este greu de văzut cât de bine stă în partida pe care o joacă, afişarea pieselor luate ajută la evaluarea avantajelor/dezavatajelor materiale pe care le are pe tabla de şah în momentul respectiv.

### Zona funcţiilor din timpul partidei

În fine, prezentăm şi principalele funcţii disponibile în programul Friendly Chess, care pot fi folosite în timpul jocului.

![6](https://cronica-it.github.io/imagini/2010/vdarie-friendly-chess/poza-6.jpg)

Figura 6. Principale funcţii din timpul partidei de şah ale programului Friendly Chess

- butonul **Partida Nouă** este folosit pentru părăsirea partidei curente şi aşezarea pieselor pentru o partidă nouă; se întreabă dacă partida curentă se doreşte a fi memorată într-un fişier în directorul „PartideSalvate”;
- butonul **Mutare Înapoi** permite să vă  întoarceţi cu una sau mai multe mutări înapoi, fie că aţi greşit ultima mutare, fie că (dacă nu sunteţi în concurs de şah oficial) nu aţi făcut numări cele mai bune şi vreţi să reveniţi la mutările anterioare, să reparaţi o eroare şi să continuaţi partida;
- butonul **Mutare Înainte** este inversul butonului Mutare Înapoi, dacă vreţi să reveniţi la poziţii deja jucate după ce aţi făcut câteva mutări înapoi; nu puteţi muta înainte, decât până acolo unde aţi jucat ultima mutare în timpul partidei, când aţi început să mutaţi înapoi;
- butonul **Mutare Calculator** înseamnă că programul vă poate sfătui ce să mutaţi când sunteţi Dvs la mutare; puteţi repeta acest buton Mutare Calculator, pas cu pas, până se ajunge la un mat, sau la o remiză; este util pentru învaţare şah;
- butonul **Propun Remiza** – adică Dvs vedeţi că poziţia e cam remiză, durează mutări multe, vreţi să propuneţi remiză; calculatorul vă poate accepta remiza, sau nu, funcţie de cum apreciază el situaţia pe tabla de şah;
- butonul **SETARI** – Este folosit pentru a efectua diferite configurări ale afisării datelor pe ecranul de joc, sau pentru îndeplinirea unor funcţii; a se vedea capitolul special pentru SETARI de mai jos
- butonul **Program vs. Program** – înseamnă ca vreţi ca Programul să joace şi cu albele şi cu negrele, adică să joace el cu el însuşi, lucru extrem de interesant, mai ales dacă setaţi timpul de gândire mai mare ca să aveţi timp să analizaţi ce joacă calculatorul. La sfârşit, puteţi salva partida prin File – Save Game

## Cum se fac SETARI

Din tabloul funcţiilor de bază din timpul jocului, puteţi alege butonul SETARI, care are ca rezultat afişarea unui ecran pentru setări, ca cel de mai jos:

![7](https://cronica-it.github.io/imagini/2010/vdarie-friendly-chess/poza-7.jpg)

Figura 7 – Ecranul de efectuare setări în programul de şah

Pe lângă setările curente disponibile pe ecranul de joc (Nivelul Şahist, Nivelul de Timp, Agresivitate) pe care le-am descris deja, există posibilitatea efectuării şi a altor setări, şi anume:

- încărcarea pe tabla de şah a unei poziţii dorite pentru analiză
- alegerea fundalului ecranului care vă place cel mai mult dintr-un set disponibil
- alegerea unui set de forme de piese care vă place din setul disponibil
- beep-ul să fie setat pe ON/OFF
- afişarea gândirii calculatorului sa fie permisă sau inhibată
- afişarea pieselor luate sa fie permisă sau inhibată

Setarea unei poziţii pe tabla de şah – după ce apasaţi cu mouse butonul SETARI din ecranul principal, apare un ecran particular pentru SETARI. În acest ecran apar deja active mai multe posibilitaţi de setare. Pentru a seta o anumită poziţie pe tabla de şah, alegeţi butonul: Setare poziţie, după care programul permite sa modificati poziţia pe tabla de şah:

Aici sunt disponibile 2 butoane suplimentare:

- **Şterge tabla** şi butonul (setare pornind de la tabla goală)
- **Poziţia iniţială** (setare poziţie începând cu poziţia iniţială – util pentru joc cu handicap, de ex Dvs începeţi jocul fara un pion)

După cum este scris şi pe ecran, mai întâi alegeţi un tip de piesa şi culoare din caseta cu tipuri de piese, apoi faceţi click în toate pătratele de pe tablă unde vreţi să aşezaţi acel tip de piesă. După care alegeţi alt tip de piesă şi repetaţi procedura de aşezare de piese pe tablă. Dacă aţi greşit aşezarea unei piese pe tablă, atunci alegeţi pătratul gol din caseta cu tipuri de piese şi faceţi click pe tabla de şah unde vreţi să ştergeţi o piesă.

Nu uitaţi, inainte de a începe jocul cu poziţia setată, apăsaţi butonul Setat OK din caseta de funcţii de setare. După apăsarea acestui buton se intră în ecranul principal de joc, unde puteţi juca/analiza poziţia încărcată.

![8](https://cronica-it.github.io/imagini/2010/vdarie-friendly-chess/poza-8.jpg)

Figura 8 – Procedura de setare a unei poziţii pe tabla de şah.

Acestă posibilitate de încărcare poziţii este deosebit de utilă pentru exersarea finalurilor de partidă.

Alegerea fundalului pe ecranul de joc: În ecranul de setări, foarte simplu, faceti click cu mouse pe un model de fundal din caseta cu modele de fundaluri. Ecranul va fi imediat redesenat cu noul fundal ales.

Permiterea/Inhibarea sunetelor de BEEP – Din ecranul de SETARI, alegeţi butonul **Sunet ON/OFF**. Funcţie foarte utilă când jucaţi şah cu calculatorul noaptea şi nu vreţi să treziţi pe cei care dorm.

Alegerea setului de piese – Din ecranul de SETARI, având caseta cu tipuri de piese, apasaţi butonul xx şi se vor redesena piesele, succesiv, cu toate tipurile disponibile (funcţie încă neimplementată acum).

Cum jucaţi cu negrele – Implicit Dvs jucaţi cu albele. Vă e mai comod aşa. Dar, dacă sunteţi şahist, trebuie să jucaţi şi cu negrele, şi puteţi alege negrele astfel:

- din ecranul de joc alegeţi butonul **SETARI**
- din ecranul de SETARI alegeţi butonul **Jucaţi cu Negrele**
- este reafişat ecranul de joc, în care calculatorul deja începe să gândească mutarea pentru alb, pe care o va afişa când e gata.
- Dvs veţi muta piesele negre

Permitere/Inhibare afisare gândirii calculatorului – Procesul de gândire a calculatorului vă este foarte util/distractiv în timpul jocului, chiar puteţi să ţineţi cont de ceea ce vede calculatorul în timpul gândirii mutării sale. Dar sunt cazuri când nu vreţi, sau nu aveţi voie să vedeţi mutarea anticipată de calculator, pentru a pune baza mai mare pe gândirea Dvs proprie. În aceste situaţii puteţi inhiba gândirea calculatorului în două moduri:

- fie alegeţi `x` din dreapta casetei de afişare a gândirii
- fie, din ecranul SETARI alegeţi butonul **Gândire ON/OFF**

Permiterea/Inhibarea desenării pieselor luate în timpul partidei – Se face prin alegerea butonului din ecranul STARI Piese luate ON/Off

## Sfaturi, concluzii

- Vă oferim acest progam nu pentru a vă lega şi mai mult de calculator. Vă oferim ca o unealtă onestă de a vă exersa intelectul, de a vă crea satisfacţia unor victorii în partide şah cu celebrul Dvs rival – calculatorul. De aceea vă sugerăm să nu jucaţi mai mult de 3 partide la rând într-o zi, pentru a vă fi cât mai folositoare aceste lecţii intelectuale, atât mental cât şi fizic.
- Încercaţi  să evoluaţi, să progresaţi. Încercaţi să nu vă grăbiţi, să fiţi atenţi la mutările pe care le faceţi.
- Încercaţi să vă consolidaţi cunoştinţele de strategie în şah, care, de multe ori, au analogii cu strategii din viaţă. Fără concepte de strategie sănătoase nu veţi progresa prea mult.
- Încercaţi să jucaţi partide puţine, dar de calitate. Dacă sunteţi obosiţi, mai bine vă duceţi la o partidă de fotbal, lăsaţi şahul pe altă zi.
- Mai bine jucaţi pe un nivel şahist mai mic, dar să caştigaţi, decăt să jucaţi veşnic pe un nivel prea mare, unde să nu câstigaţi niciodată.

Sperăm că v-am oferit un instrument de un real folos pentru educaţie intelectuală, dar şi pentru o utilă petrecere a timpului liber.

## Finalurile cu piese puţine implementate în programul Friendly Chess

Dificultatea în jocul de şah constă în faptul că variantele în arborele de joc proliferează exponenţial pe masură ce anticiparea mutării optime creşte în adâncime.

În jocul de final, ramificările sunt mai puţine, dar totuși arborii generaţi chiar pentru câteva mutări depăşesc capacitatea calculatorului de a le parcurge pe toate.

Ideea de bază a bazei de date în Friendly Chess constă în faptul că, deşi ramurile în arborele de joc cresc astronomic ca număr, **numarul poziţiilor pe tabla de şah devine limitat**. De exemplu, în mat cu 4 piese, numărul maxim de poziţii este 64 * 64 * 64 * 64, însă nu toate sunt legale.

Există un modul special al lui Friendly Chess (necomercializat, se comercializeaza doar baza de date creata de el, acestă creere dureaza 24 de ore) care tabelează toate maturile cu piese puţine, folosind nişte analize retrograde, recursive, plecând de la toate maturile în zero mutări, apoi, recursiv, mat-uri în 1 mutare, apoi 2 mutări, etc

Aceste date sunt stocate în fişiere binare care acum au 0,5 Gb (fără a se face comprimări de simetrizare). Sunt posibile comprimări de simetrizare pentru a reduce aceste masive sub 128Mb.

Aceste maturi foarte lungi precalculate când sunt piese puţine pe tabla sunt un punct de atractie în jocul de şah  Friendly Chess. Când în timpul jocului Friendly Chess ajunge la 4 sau 3 piese, programul consultă baza de date, vede în câte mutări este mat acea poziţie, dacă este mat afişeaza că este mat în nn mutări. Din acel moment, programul joacă optim, căt timp adversarul joacă şi el optim.

De exemplu, dacă programul găseşte că în poziţia cutare este mat în 40 de mutări (40 de mutări!), el afişează acest lucru pe ecran şi cere mutarea adversarului. Dacă mutarea adversarului este optimă, la următoarea mutare programul spune că e mat în 39 de mutări. ş.a.m.d.  Dacă adversarul nu mută optim, atunci programul poate spune ca este mai în 27 de mutări.

Cu aceste finaluri cu piese puţine se poate face o adevarată carte. Poate se va face în viitor.

Ideea de a tabela maturile cu piese puţine, folosind metode de analiză recursivă retrograde, mi-a venit în minte acum mulţi ani, am lucrat la ea. Recent am citit că autorii actualului program de şah campion mondial (Rybka) deja au folosit aceiaşi tehnică, au facut baze de date cu 5 piese de joc, şi chiar, pentru anumite seturi interesante, de 6 piese pe tabla de şah!. Pentru 6 piese, au calculat ca-i trebuie 1 TeraByte pe disc! Ceea ce s-ar găsi pentru un supercampion de şah, dar nu se poate comercializa uzual.

Dar am alte idei acum, plecând de la tabele de mat cu 4 piese, să se facă extinderi pentru calcul de mat cu mai multe piese prin metode:

- căutarea simplificării cât mai rapide a poziţiilor pentru a ajunge la 4 piese, sau
- folosirea seturilor cu 4 piese ca template în poziţii cu mai multe (puţine totuşi) piese, prin **ignorarea pieselor** care nu influenţeaza prea mult finalul

Să ilustrăm mai jos un mat văzut foarte multe mutări înainte în **lupta turnului contra cal**.
Nu în orice poziţie turnul învinge calul. Curios, uneori nici dama nu poate învinge calul, dacă calul este lipit de propiul rege în mijlocul tablei!

Să încărcăm în program poziţia cu un turn alb contra cal negru, poziţia cu cel mai lung traseu optim de mat turn contra cal:

![9](https://cronica-it.github.io/imagini/2010/vdarie-friendly-chess/poza-9.jpg)

Incepe jocul, la care muta albul şi răspunde:

![10](https://cronica-it.github.io/imagini/2010/vdarie-friendly-chess/poza-10.jpg)

Jocul continuă (automat – calculator / calculator) și se obţin mutările:

![11](https://cronica-it.github.io/imagini/2010/vdarie-friendly-chess/poza-11.jpg)

Lupta turn/cal este de abia la început. După încă 10 mutări avem:

![12](https://cronica-it.github.io/imagini/2010/vdarie-friendly-chess/poza-12.jpg)

Mai facem încă 10 mutări:

![13](https://cronica-it.github.io/imagini/2010/vdarie-friendly-chess/poza-13.jpg)

În fine, calul a fost învins şi capturat. Acum începe mat-ul cu turnul:

![14](https://cronica-it.github.io/imagini/2010/vdarie-friendly-chess/poza-14.jpg)

Acum mat-ul este vizibil şi pentru un începător:

![15](https://cronica-it.github.io/imagini/2010/vdarie-friendly-chess/poza-15.jpg)

Greu e să dai mat pe lumea asta!

Este în experimente şi modulul de extindere mat cu piese puţine (5, 6  etc) prin exploatarea unor template-uri tabelate deja cu 3 si 4 piese.

Vă dorim numai succese!

## Friendly Chess – proiecte de viitor

În completarea manualului (provizoriu) pe care l-am făcut pentru descrierea programului Friendly Chess, mai scriu câteva explicaţii.

### Scopul

Arta programării şahului şi-a atins apogeul, şi odată cu acesta şi interesul mediatic a scazut, şi chiar populaţia este mai puţin receptivă la aplicaţiile de şah pe calculator, datorită altor multe oferte moderne în domeniul preocupărilor cotidiene.

Totuşi, şahul e inventat în vechime şi nu se va stinge aşa de uşor. Asta deoarece este un mijloc ideal de a dezvolta intelectul uman, fie la nivelul copiilor, fie la nivelul adulţilor.

Problema este doar să ne întoarcem la menirea iniţiala a şahului, cea de punere în funcţiune a capacităţilor de raţionare a intelectului uman.

Şahul programat a ajuns în conul de umbră datorită faptului că, programatorii, s-au luptat cu înverşunare să învingă cotele cele mai înalte ale artei, să învingă un campion mondial de şah. Şi au reuşit acest lucru. Apoi au încercat să comercializeze în masă programele campioane mondial, difuzându-le pe piaţă. Şi au reuşit. Doar că, orice copil, orice om obişnuit poate beneficia prea puţin de un program ultraperformant de şah: aceste programme sunt prea tari pentru un începator, sunt descurajant de tari, nu-i poţi învinge nicicum. Şi atunci omul de rând nu le foloseşte.

Ideea de bază a programului Frendly Chess este aceea de **a reda oamenilor plăcerea de a juca şah**, chiar la nivelul lor, să ofere oricărui copil, sau adult, şanse reale de a învinge programul de şah, bineinţeles, alegând un nivel adecvat.

Pentru copii lucrurile sunt mai complexe decât par. O aplicaţie pentru copii este bună atunci când utilizează multe ilustraţii, sunete plăcute, adaptare la situaţie şi la caracterul fiecărui copil. Ceea ce presupune eforturi de programare speciale pentru realizarea acestor obiective.

### Facilităţi generale implementate deja

Aşa cum se poate vedea din manualul de faţă, sunt realizate funcţiile de bază ale unui program de şah, dar mai sunt multe de modificat, de completat, pentru un desing valoros, comercial.

Un capitol de atracţie al acestui program sunt **tabelele precalculate de mat-uri în multe mutări, cand sunt putine piese** (3 sau 4, de exemplu cei doi regi, un turn alb şi un cal negru). Ideea acestor tabelări de finaluri cu piese puţine mi-a venit în minte acum mulţi ani, am tot realizat câte ceva cand am avut timp, însă de abia acum le-am folosit într-un program de şah, cu efecte spectaculoase (a se vedea finalul în 40 de mutări din acest material despre finaluri).

M-am străduit cât se poate să dau şi o tarie de joc programului Friendly Chess, pentru orice eventualitate, atunci când se organizează meciuri demonstrative cu alte programe de şah. Frendly Chess încă nu este competitiv în concursuri tari de joc (acele programe de şah super tari s-au obţinut ca rod al efortului de decenii de muncă îndârjită, a celor mai buni programatori, având toată teoria din domeniu la dispoziţie şi toate experienţele pe plan mondial).

Dar, pe cât este de greu să faci un program tare  de joc, pe atât de greu este să şi diluezi tăria jocului programului, adica să-l faci cât mai adaptat la utilizatorii lui: copii, adulţi obisnuiţi, ne şahişti. Adică programul sa fie şi **accesibil**, dar şi **didactic**, în acelaşi timp.

Frendly Chess are doar nişte pregătiri de bază pentru a fi utilizat ca şah pentru copii, restul trebuie dezvoltat de acum înainte.

Dintre pregătirile de bază enumerăm:

- posibilitatea de a alege un fundal dorit al ecranului de joc
- posibilitatea de a alege un anumit set de piese, după preferinţă
- posibilitatea de analiza pas cu pas anumite pozitii, în special finaluri ; traseul optim spre mat în finaluri este chiar foarte didactic pentru cei care învaţă şah
- posibilitatea salvării/reluării de partide jucate şi vizualizarea pas cu pas (de realizat)
- utilizarea unor deschideri clasice, afişând pe ecran numele acelor deschideri

Aceste pregătiri ar trebui completate/amplificate prin:

- obtinerea unor fundaluri cât mai frumoase şi adecvate copiilor
- realizarea unor seturi de piese cât mai variate, de atracţie pentru copii
- un set de interacţiuni plăcute pentru copii: sunete, mesaje, mici animaţii, gadgeturi, etc

Mecanismul de seturi de piese este implementat, dar trebuie realizate seturile de piese.

Aceste seturi de piesa, pentru copii, pot avea şi un rol educativ. Seturile pot fi inspirate din lumea naturala: seturi de peştisori, păsări, animale, flori, copaci etc.

Iar un copil, când trece cu mouse deasupra unei piese, să se afiseze numele acelei plante sau animal. Deci setul de piese sa fie şi un album colorat pentru copii. Atunci tabla de şah trebuie să ocupe mai tot ecranul, ca piesele sa fie bine vizibile.

Sau altă idee, după ce un copil joacă şah mai mult de 30 minute, când se văd semne de oboseală, atunci programul să-i propună să spună o poveste (adecvată setului de piese), cu pagini ilustrate, mesaje şi sunete.
Pentru oamenii maturi, se pot face diverse lucruri atractive în program: diverse gadget-uri, funcţie de ocupaţia cotidiană a jucătorului. Nici aceste gadgeturi nu sunt implementate, dar se pot crea multe, dacă ar există un proiect.

Mai e de lucru...

## Referințe

- [vioreldarie.ro - Friendly Chess (Programul Prietenos de Şah) - Utilizare](http://vioreldarie.ro/Șah/Friendly%20Chess%20-%20Manual%20Utilizare%2022%2004%202010.htm)
