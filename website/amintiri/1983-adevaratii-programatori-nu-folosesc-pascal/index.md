---
slug: 1983/adevaratii-programatori-nu-folosesc-PASCAL
title: 'Ed Post - Adevărații programatori nu folosesc PASCAL'
authors: [tstanescu]
tags: [articol, programtori]

date: 2024-10-31T19:51:00

event_date: '1983-07'

---


Înainte de apariția rețelelor sociale - arareori vreun discurs public sau scrisoare deschisă avea un parcurs cu distribuire masivă - fenomen numit astăzi „propagare virală”. Publicațiile tehnice - sectoriale - arareori aveau cititori alții decât cei abonați (și de cele mai multe ori nici aceia toți). Well ... iată una dintre primele scrisori deschise din domeniul IT - devenită virală, mult înainte ca să apară acest termen.

<!-- truncate -->

---

## Adevărații programatori nu folosesc Pascal

> O scrisoare trimisă către editorul revistei Datamation, volumul 29 numărul 7, iulie 1983.
Fotocopia uzată și mototolită am pierdut-o demult, dar cred că aceast articol a fost scris (și are drepturi de autor) de către Ed Post, Tektronix, Wilsonville, Oregon, SUA. [Greg Lindahl]

În vremurile bune și demult apuse - „Epoca de aur” a computerelor – era ușor să fie separați bărbații de băieți (uneori numiți „Bărbații adevărați” și „Mâncătorii de Quiche Lorraine” în literatură). În această perioadă, Bărbații Adevărați au fost cei care au înțeles programarea computerelor, iar Mâncătorii de Quiche Lorraine au fost cei care nu au înțeles. Un adevărat programator de computer spunea lucruri precum `DO 10 I=1,10` și `ABEND` (de fapt, vorbeau cu majuscule, înțelegi), iar restul lumii spunea lucruri precum _„calculatoarele sunt prea complicate pentru mine”_ și _„Nu mă pot raporta la computere – sunt atât de impersonale”_. (O lucrare anterioară [1] subliniază că bărbații adevărați nu se „relaționează” cu nimic și nu se tem să fie impersonali.)

Dar, ca de obicei, vremurile se schimbă. Ne confruntăm astăzi cu o lume în care bunicuțele pot introduce computere în cuptoarele cu microunde, copiii de 12 ani pot scoate din apă bărbații adevărați jucând Asteroizii și Pac-Man și oricine își poate cumpăra și chiar înțelege propriul lor Calculator Personal. Adevăratul Programator este o specie pe cale de dispariție, de a fi înlocuit cu liceeni cu cunoștințe de TRASH-80.

Există o nevoie clară de a sublinia diferențele dintre liceeni juniori jucători tipici de Pac-Man și un programator real. Dacă această diferență este clarificată, aceasta le va oferi acestor copii ceva la care să aspire: un model de urmat, o figură tată. De asemenea, va ajuta la explicarea angajatorilor Adevăraților Programatorilor de ce ar fi o greșeală să fie înlocuiți Adevărații Programatori din personalul lor cu jucători Pac-Man de 12 ani (cu o economie considerabilă de salariu).

## Limbaje

Cel mai simplu mod de a distinge un Adevărat Programator din mulțime este prin limbajul de programare pe care îl folosește. Adevărații Programatori folosesc FORTRAN (and later on C/C++). Mâncătorii de Quiche Lorraine folosesc PASCAL. Nicklaus Wirth, profesorul universitar care a inventat și proiectat limbajul PASCAL, a ținut o conferință odată la care a fost întrebat: _„Cum îți pronunți numele?”_. El a răspuns: _„Poți fie să-mi spui pe nume, pronunțând „Veert”, fie să-mi spui după valoare, „Valoare” („Worth'”)_. Se poate spune imediat din acest comentariu că Nicklaus Wirth este un devorator de Quiche Lorraine. Singurul mecanism de transmitere a parametrilor aprobat de Adevărații Programatori este apelul după valoare-return (call-by-value-return), așa cum este implementat în compilatoarele IBM/370 FORTRAN de nivel G și H. Adevărații Programatori nu au nevoie de toate aceste concepte abstracte pentru a-și îndeplini treaba -- sunt perfect mulțumiți de un teletype, un compilator FORTRAN IV și o ... BERE!

- Adevărații Programatori fac procesarea listelor în FORTRAN.
- Adevărații Programatori fac manipularea șirurilor în FORTRAN.
- Adevărații Programatori fac contabilitate (dacă chiar o fac sau deloc) în FORTRAN.
- Adevărații Programatori realizează programe de inteligență artificială în FORTRAN.

Dacă nu o poți face un lucru în FORTRAN, fă-l în limbaj de asamblare. Dacă nu o poți să-l face în limbaj de asamblare, nu merită să-l faci.

## Programare structurată

Academicienii și profesorii de informatică au intrat în „programarea structurată” în ultimii ani (n.r. adică de prin anul 1974). Ei susțin că programele sunt mai ușor de înțeles dacă programatorul folosește niște artefacte constructive și tehnici speciale ale limbajului. Nu toți sunt de acord cu exact ce artefacte constructive anume, desigur, și exemplul pe care îl folosesc pentru a-și arăta punctul de vedere particular se potrivește invariabil pe o singură pagină a unui jurnal obscur „de specialitate” -- dar în mod clar, nu este suficient un exemplu pentru a convinge pe cineva. Când am ieșit de la școală, am crezut că sunt cel mai bun programator din lume. Aș putea să scriu un program imbatabil, să folosesc cinci limbaje diferite de computer și să creez programe de 1000 de linii care FUNCȚIONEAZĂ (serios!). Apoi am ieșit în Lumea Reală. Prima mea sarcină în lumea reală a fost să citesc și să înțeleg un program FORTRAN de 200.000 de linii, apoi să-l accelerez cu un factor de doi. Orice programator real vă va spune că toată codificarea structurată din lume nu vă va ajuta să rezolvați o astfel de problemă – este nevoie de talent real. Câteva observații rapide despre programatorii reali și programarea structurată:

- Adevăraților Programatori nu le este frică să folosească `GOTO`.
- Adevărații Programatori pot scrie bucle `DO` lungi de cinci pagini fără a le încurca sau confunda.
- Adevăraților Programatori le plac instrucțiunile aritmetice `IF` - fac codul mai interesant.
- Adevărații Programatori scriu cod cu auto-modificare, mai ales dacă pot economisi 20 de nanosecunde în mijlocul unei bucle strânse.
- Adevărații Programatori nu au nevoie de comentarii - codul este evident.
- Deoarece FORTRAN nu are instrucțiuni structurate precum `IF, REPEAT ... UNTIL` sau `CASE`, Adevărații Programatori nu trebuie să-și facă griji că nu le folosesc. În plus, ele pot fi simulate atunci când este necesar folosind `GOTO`-uri atribuite.

Structurile de date au primit, de asemenea, mult interes în presă în ultima vreme. Tipurile de date abstracte, structurile, pointerii, listele și șirurile de caractere au devenit populare în anumite cercuri. Wirth (menționatul Mâncător de Quiche Lorraine) a scris de fapt o carte întreagă [2] susținând că ai putea scrie un program bazat pe structuri de date, în loc să faci un program cu program (adică „vițăvercea”). După cum știu toți Adevărații Programatori, singura structură de date utilă este MATRICEA („Array”). Șiruri, liste, structuri, mulțimile (seturi) - toate acestea sunt cazuri speciale de matrice și pot fi tratate în acest fel la fel de ușor, fără a vă da peste cap limbajul de programare cu tot felul de complicații. Cel mai rău lucru despre tipurile de date elegante este că trebuie să le declarați, iar limbajele de programare reale, după cum știm cu toții, au tastare implicită bazată pe prima literă a numelui variabilei (șase caractere).

## Sisteme de operare

Ce fel de sistem de operare este folosit de un programator real? CP/M? Ferească Dumnezeu! CP/M, la urma urmei, este practic un sistem de operare de jucărie. Chiar și bunicuțele și elevii de școală pot înțelege și utiliza CP/M.

Unix este mult mai complicat, desigur, hackerul tipic Unix nu își poate aminti niciodată cum se numește comanda `PRINT` în această săptămână, dar când ajunge la asta, Unix este un fel de joc video glorificat. Oamenii nu lucrează serios pe sistemele Unix: trimit glume în întreaga lume pe UUCP-net și scriu jocuri de aventură și lucrări de cercetare.

Nu, Adevăratul Programator folosește OS/370. Un programator bun poate găsi și înțelege descrierea erorii IJK305I pe care tocmai a primit-o - în manualul său JCL. Un programator grozav poate scrie JCL fără a pune mâna deloc pe manual. Un programator cu adevărat remarcabil poate găsi erori îngropate într-un dump de 6 megaocteți fără a utiliza un calculator hexadecimal. (De fapt, am văzut asta făcut.)

OS/370 este un sistem de operare cu adevărat remarcabil. Este posibil să distrugeți zile de lucru cu un singur spațiu deplasat, astfel încât vigilența personalului de programare este încurajată. Cel mai bun mod de a aborda sistemul este printr-o apăsare. Unii oameni susțin că există un sistem Time Sharing care rulează pe OS/370, dar după un studiu atent am ajuns la concluzia că s-au înșelat.

## Instrumente de programare

Ce fel de instrumente folosește un Adevărat Programator? În teorie, un Adevărat Programator și-ar putea rula programele introducându-le în panoul frontal al computerului. În vremurile demult apuse când computerele aveau panouri frontale, acest lucru se făcea ocazional. Adevăratul Programator obișnuit cunoștea întregul încărcător de bootstrap după memorie în hex și îl activa ori de câte ori era distrus de programul său. (Pe atunci, memoria era memorie - conținutul nu disparea când se oprea alimentarea cu energie electroică. Astăzi, memoria fie uită lucrurile când nu vrei, fie își amintește lucruri mult după ce ar fi trebuit demult uitate.) Legenda spune Seymore Cray, inventatorul supercomputerului Cray I și al majorității computerelor Control Data, a activat de fapt primul sistem de operare pentru CDC7600 pe panoul frontal din memorie atunci când a fost pornit pentru prima dată. Seymore, inutil să spun, este un Adevărat Programator!

Unul dintre Adevărații mei Programatori reali preferați a fost un programator de sisteme pentru Texas Instruments. Într-o zi, a primit un apel la distanță de la un utilizator al cărui sistem se prăbușise în timpul salvării unor lucrări importante. Jim a reușit să repare daunele prin telefon, făcând utilizatorul să comute în instrucțiunile I/O pe disc de pe panoul frontal, reparând tabelele de sistem în hexadecimal, citind conținutul registrului înapoi prin telefon. Morala acestei povești: în timp ce un programator real include de obicei un terminal și o imprimantă în trusa lui de instrumente, el se poate descurca doar cu panoul frontal și un telefon cu disc în caz de urgență.

În unele companii, editarea textului nu mai constă în zece ingineri care stau la coadă pentru a folosi un terminal Centronics. De fapt, clădirea în care lucrez nu conține nici un terminal. Adevăratul Programator în această situație trebuie să-și facă treaba cu un program „editor de text”. Majoritatea sistemelor furnizează mai multe editoare de text din care să aleagă, iar Adevăratul Programator trebuie să fie atent să aleagă unul care să reflecte stilul său personal. Mulți oameni cred că cele mai bune editoare de text din lume au fost scrise la Centrul de Cercetare Xerox Palo Alto pentru a fi utilizate pe computerele lor Alto și Dorado [3] folosind FERESTRE („Windows”). Din păcate, niciun Adevărat Programator nu ar folosi vreodată un computer al cărui sistem de operare se numește SmallTalk și, cu siguranță, nu ar vorbi cu computerul cu un mouse.

Unele dintre conceptele din aceste editoare Xerox au fost încorporate în editoarele care rulează pe sisteme de operare numite mai rezonabil - EMACS și VI. Problema cu aceste editoare este că Adevărații Programatori consideră că „ceea ce vezi este ceea ce obții” (WYSISWG) este un concept la fel de prost în editoarele de texte ca și în femei. Nu, Adevăratul Programator vrea un editor de text „ai cerut, l-ai prins” -- complicat, criptic, puternic, neiertător, periculos. TECO, mai exact.

S-a observat că o secvență de comandă TECO seamănă mai mult cu zgomotul paraziților de pe liniile de comunicații (în buclă de curent) decât cu textul care poate fi citit [4]. Unul dintre cele mai distractive jocuri de jucat cu TECO este să vă introduceți numele ca linie de comandă și să încercați să ghiciți ce face. Aproape orice posibilă eroare de tastare în timp ce vorbiți cu TECO vă va distruge, probabil, programul sau chiar mai rău - introduceți erori subtile și misterioase într-o subrutină care funcționa odată.

Din acest motiv, programatorii reali sunt reticenți în a edita efectiv un program care este aproape de funcționare. Ei consideră că este mult mai ușor să corecteze codul obiect binar direct, folosind un program minunat numit SUPERZAP (sau echivalentul acestuia pe mașinile non-IBM). Acest lucru funcționează atât de bine încât multe programe de lucru pe sistemele IBM nu au nicio legătură cu codul FORTRAN original. În multe cazuri, codul sursă original nu mai este disponibil. Când vine timpul să repari un astfel de program, niciun manager nu s-ar gândi să trimită ceva mai puțin decât un Adevărat Programator pentru a face treaba -- niciun programator structurat mâncător de Quiche Lorraine nu ar ști măcar de unde să înceapă. Aceasta se numește „securitatea locului de muncă”.

Unele instrumente de programare NU sunt utilizate de către Programatorii Adevărați:

- Preprocesoare FORTRAN precum MORTRAN și RATFOR. Cuisinarts-ul de programare - grozav pentru a face Quiche Lorraine. Vezi comentariile de mai sus despre programarea structurată.
- Depanare în limbaj sursă. Programatorii reali pot citi vidajele de memorie
- Compilatoare cu verificarea limitelor matricilor. Ele înăbușă creativitatea, distrug majoritatea utilizărilor interesante pentru EQUIVALENCE și fac imposibilă modificarea codului sistemului de operare folosind indici cu valori negative. Cel mai rău dintre toate, verificarea limitelor este ineficientă.
- Sisteme de întreținere a codului sursă. Un programator real își păstrează codul blocat într-un fișier text sau pe cartele perforate, deoarece implică faptul că proprietarul său nu poate lăsa programele sale importante nepăzite [5].

## Adevăratul Programator la muncă

Unde lucrează un Adevărat Programator tipic? Ce fel de programe merită eforturile unui individ atât de talentat? Puteți fi sigur că niciun Adevărat Programator nu va fi prins nici mort scriind programe de contabilitate / gestiune în COBOL sau sortând liste de corespondență pentru revista People. Un Adevărat Programator vrea sarcini de o importanță zguduitoare (la propriu!).

- Adevărații Programatori lucrează pentru Laboratorul Național Los Alamos, scriind simulări de bombe atomice pentru a rula pe supercalculatoarele Cray I.
- Adevărații Programatori lucrează pentru Agenția Națională de Securitate, decodând transmisiile rusești.
- În mare parte, datorită eforturilor a mii de Adevărați Programatori care lucrează pentru NASA, băieții noștri au ajuns pe Lună și înapoi înaintea Rusiei.
- Calculatoarele din Naveta Spațială au fost programate de Adevărați Programatori.
- Adevărații Programatori lucrează pentru Boeing la proiectarea sistemelor de operare pentru rachete de croazieră și unii chiar pentru navetele spațiale.

Unii dintre cei mai grozavi Adevărați Programatori dintre toți lucrează la Jet Propulsion Laboratory din California. Mulți dintre ei cunosc pe de rost întregul sistem de operare al sondelor spațiale Pioneer și Voyager. Cu o combinație de programe mari FORTRAN de la sol și programe în limbaj de asamblare bazate pe sonde spațiale mici, ei sunt capabili să facă fapte incredibile de navigare și improvizație - țintind ferestre cu o lățime de zece kilometri pe planeta Saturn după șase ani în spațiu, reparând sau ocolind platforme cu senzori, radiouri și baterii avariate. Se presupune că un Adevărat Programator a reușit să introducă un program de potrivire a formelor în câteva sute de octeți de memorie neutilizată într-o sondă spațială Voyager care a căutat, localizat și fotografiat o lună nouă a lui Jupiter.

Planul pentru sonda spațială Galileo era să folosească o traiectorie de asistență gravitațională pe lângă Marte în drum spre Jupiter. Această traiectorie trece la 80 +/- 3 kilometri de suprafața lui Marte. Nimeni nu va avea încredere într-un program PASCAL (sau un programator PASCAL) pentru navigarea la aceste toleranțe stânse.

După cum vă puteți da seama, mulți dintre Adevărații Programatori ai lumii lucrează pentru guvernul SUA, în principal pentru Departamentul de Apărare. Acesta este așa cum ar trebui să fie. Recent, însă, un nor negru s-a format pe orizontul Adevăraților Programatori. Se pare că unii mâncători de Quiche Lorraine foarte bine plasați la Departamentul de Apărare au decis că toate programele de Apărare ar trebui să fie scrise într-un limbaj unificat numit „ADA” ((C), DoD). Pentru o vreme, s-a părut că ADA era destinat să devină un limbaj care a fost împotriva tuturor preceptelor de programare reală -- un limbaj cu structură, un limbaj cu tipuri de date, protipizare puternică și punct și virgulă. Pe scurt, un limbaj conceput pentru a paraliza creativitatea unui Adevărat Programator tipic. Din fericire, limbajul adoptat de DoD a avut destule caracteristici interesante pentru a-l face accesibil - este incredibil de complex, include metode de a se încurca cu sistemul de operare și de a rearanja memoria, iar lui Edsger Dijkstra nu îi place [6]. (Dijkstra, după cum sunt sigur că știți, a fost autorul cărții _„GOTOs Considered Harmful”_ – o lucrare de referință în metodologia de programare, aplaudată deopotrivă de programatorii PASCAL cât și de devoratorii de Quiche Lorraine.) În plus, Adevăratul Programator hotărât poate scrie programe FORTRAN în orice limbaj.

Adevăratul Programator ar putea să-și compromită principiile și să lucreze la ceva puțin mai banal decât distrugerea vieții așa cum o știm noi. Cu condiția să fie destui bani în el. Există mai mulți Adevărați Programatori care construiesc jocuri video la Atari, de exemplu. (Dar NU să le joace -- un programator real știe cum să bată mașina de fiecare dată: nicio provocare în asta.) Toți cei care lucrează la LucasFilm sunt un Adevărați Programatori. (Ar fi o nebunie să refuzi banii a cincizeci de milioane de fani Star Trek.) Proporția de Adevărați Programatori în grafica computerizată este oarecum mai mică decât media, mai ales pentru că nimeni nu a găsit încă o utilizare pentru grafica computerizată - alta decât aspectul ludic. Pe de altă parte, toată grafica pe computer este realizată în FORTRAN, deci există un număr destul de mare de oameni care fac grafică doar pentru a evita să fie nevoie să scrie programe COBOL.

## Adevatul Programator la joacă

În general, Adevăratul Programator se joacă în același mod în care lucrează -- cu computerele. Este constant uimit că angajatorul său chiar îl plătește să facă oricum ceea ce ar face pentru distracție (deși are grijă să nu-și exprime această părere cu voce tare). Ocazional, Adevăratul Programator iese din birou pentru o gură de aer proaspăt și o bere sau două. Câteva sfaturi despre recunoașterea programatorilor adevărați departe de sala de calculatoare:

- La o petrecere, Adevărații Programatori sunt cei din colț care vorbesc despre securitatea sistemului de operare și despre cum să o ocoliți.
- La un meci de fotbal, Adevăratul Programator este cel care compară jocurile cu simulările sale imprimate pe hârtie de 11 pe 14 țoli.
- La plajă, Adevăratul Programator este cel care desenează organigrame în nisip.
- La o înmormântare, Adevăratul Programator este cel care spune _„Săracul George. Și aproape că a dat gata subrutina de sortare înainte de înmormântare”_.
- Într-un magazin alimentar, Programatorul Adevărat este cel care insistă să treacă el însuși cutiile pe lângă scanerul de casă cu laser, pentru că nu a putut niciodată să aibă încredere în operatorii de introducere a datelor pentru a face bine de prima dată.

În ce fel de mediu funcționează cel mai bine Adevăratul Programator? Aceasta este o întrebare importantă pentru managerii de Adevărați Programatori. Având în vedere suma de bani care costă întreprinderea să păstrezi unul în personal, cel mai bine este să-l pui (sau ea) într-un mediu în care să-și facă treaba.

## Habitatul natural al Adevăratului Programator

Adevăratul Programator obișnuit locuiește în fața unui terminal de computer. În jurul acestui terminal sunt:

- Listingurile tuturor programelor la care Adevăratul Programator a lucrat vreodată, îngrămădite în ordine cronologică pe fiecare suprafață plană a biroului.
- Aproximativ jumătate de duzină de cești de cafea rece umplute parțial. Ocazional, vor fi mucuri de țigară plutind în cafea. În unele cazuri, ceștile vor conține suc de portocale stors de mână.
- Dacă nu este unul foarte bun, vor exista copii ale manualului OS JCL și ale Principiilor de funcționare deschise la câteva pagini deosebit de interesante.
- Lipit de perete este un calendar Snoopy Dog pe hârtie de imprimantă cu impact realizat cu caractere speciale pentru anul 1969 (Woodstock year).
- Răspândite pe podea sunt mai multe învelișuri pentru batoane de brânză umplute cu unt de arahide - de tipul care sunt făcute înainte de învechire la brutărie, astfel încât să nu se poată înrăutăți în timp ce așteaptă în automat.
- Ascunzându-se în sertarul din stânga sus al biroului, se află un depozit de biscuiți Oreo pentru ocazii speciale.
- Sub Oreos se află un șablon de diagramă, lăsat acolo de ocupantul anterior al biroului. (Programatorii adevărați scriu programe, nu documentație. Lăsați asta pe seama oamenilor de întreținere.)

Adevăratul Programator este capabil să lucreze 30, 40, chiar 50 de ore fără întreruperi, sub presiune intensă. De fapt, el preferă așa. Timpul de răspuns prost al mașinii nu îl deranjează pe programatorul real -- îi oferă șansa de a adormi puțin între compilările programelor. Dacă nu există suficientă presiune asupra programului și asupra Adevăratului Programator, el tinde să facă lucrurile mai provocatoare lucrând la o parte mică, dar interesantă a problemei în primele nouă săptămâni, apoi terminând restul în ultima săptămână, în două sau trei maratoane de câte 50 de ore. Acest lucru nu numai că îl impresionează ca dracu' pe managerul său, care era disperat să realizeze vreodată proiectul la timp, dar creează o scuză convenabilă pentru a nu face documentația. În general:

- Niciun Adevărat Programator nu funcționează între 9 și 5. (Cu excepția cazului în care sunt cele de noapte.)
- Adevărații Programatori nu poartă cravate.
- Adevărații Programatori nu poartă pantofi cu toc înalt.
- Adevărații Programatori ajung la serviciu la timp pentru prânz.
- Un Adevărat Programator ar putea să știe sau nu numele soției sale. Cunoaște totuși întreaga tabelă de coduri ASCII (sau EBCDIC).
- Adevărații Programatori nu știu să gătească. Magazinele alimentare nu sunt deschise la ora trei dimineața. Adevărații Programatori adevărați supraviețuiesc cu Mars, Twinkies și cafea.

## Viitorul

Dar viitorul? Este o problemă de îngrijorare pentru Adevărații Programatori că ultima generație de programatori de computere nu sunt crescuți cu aceeași perspectivă asupra vieții ca veteranii lor. Mulți dintre ei nu au văzut niciodată un computer cu panou frontal. Cu greu cineva care absolvă școala în zilele noastre poate face aritmetică hexazecimală fără un calculator. Absolvenții de facultate din ziua de azi sunt protejați de realitățile programării de către depanatori la nivel de sursă, editoare de text care numără parantezele și sisteme de operare „utilizabile”. Cel mai rău dintre toate, unii dintre acești presupuși „informaticieni” reușesc să obțină diplome fără să învețe vreodată FORTRAN! Suntem destinați să devenim o industrie de hackeri Unix și programatori PASCAL?

Din experiența mea, pot spune doar că viitorul este luminos pentru Adevărații Programatori de pretutindeni. Nici OS/370, nici FORTRAN nu dau semne de dispariție, în ciuda tuturor eforturilor programatorilor PASCAL din întreaga lume. Și trucuri mai subtile, cum ar fi adăugarea de artefacte structurale de codare structurată la FORTRAN, au eșuat. Oh, sigur, unii vânzători de computere au apărut cu compilatoare FORTRAN 77, dar fiecare dintre ei are o modalitate de a se converti înapoi într-un compilator FORTRAN 66 prin adăugarea unui card opțional - pentru a compila bucle DO așa cum a vrut Dumnezeu ca acestea să fie.

Chiar și Unix s-ar putea să nu fie la fel de rău pentru Adevărații Programatori ca odinioară. Cea mai recentă versiune a sistemului de operare Unix are potențialul unui sistem de operare demn de orice Adevărat Programator -- două interfețe de utilizator diferite și subtil incompatibile, un driver de teletype arcan și complicat, memorie virtuală. Dacă ignorați faptul că este „structurat”, chiar și programarea „C” poate fi apreciată de către Adevăratul Programator: la urma urmei, nu există nicio verificare a tipului, numele variabilelor au șapte (zece? opt?) caractere și bonusul adăugat de tipul de date Pointer este introdus -- ca și cum ați avea cele mai bune părți din FORTRAN și limbajul de asamblare într-un singur loc. (Ca să nu mai vorbim de unele dintre utilizările mai creative pentru `#define`).

Nu, viitorul nu este chiar atât de rău. De ce, în ultimii câțiva ani, presa de „popularizare tehnico-științifică” a comentat chiar noua generație strălucitoare de tocilari și hackeri ([7] și [8]) care părăsesc locuri precum Stanford și MIT pentru lumea reală. Din toate dovezile, spiritul Adevăratei Programări trăiește în acești tineri bărbați și femei. Atâta timp cât există obiective prost definite, erori bizare și programe nerealiste, vor exista Adevărați Programatori care vor să intre și să rezolve problema, lăsând documentarea pentru mai târziu. Trăiască FORTRAN!

---

Aș dori să mulțumesc lui Jan E., Dave S., Rich G., Rich E. pentru ajutorul acordat în caracterizarea Adevăratului Programator, Heather B. pentru ilustrație, Kathy E. pentru că a suportat-o și atd!avsdS: marca pentru inspirația inițială. [Ed Post]

Tradus și puțin adaptat - pe ici pe colo, prin „părțile esențiale” [Theodor Stănescu]

## Referințe

- [Ed Post - ryerson.ca/~elf](https://www.ee.ryerson.ca/~elf/hack/realmen.html)
- [Greg Lindahl - pbm.com/~lindahl](http://www.pbm.com/~lindahl/real.programmers.html)
- [1] Feirstein, B., „Bărbații adevărați nu mănâncă Quiche Lorrain”, New York, Pocket Books, 1982.
- [2] Wirth, N., „Algoritmi + Structuri de date = Programe”, Prentice Hall, 1976.
- [3] Ilson, R., „Recent Research in Text Processing”, IEEE Trans. Prof. Comun., voi. PC-23, nr. 4, 4 decembrie 1980.
- [4] Finseth, C., „Theory and Practice of Text Editors - or - a Cookbook for an EMACS”, teză de licență, MIT/LCS/TM-165, Massachusetts Institute of Technology, mai 1980.
- [5] Weinberg, G., „The Psychology of Computer Programming”, New York, Van Nostrand Reinhold, 1971, p. 110.
- [6] Dijkstra, E., „On the GREEN language submitted to the DoD”, notificări Sigplan, vol. 3, nr. 10, oct 1978.
- [7] Rose, Frank, „Joy of Hacking”, Science 82, Vol. 3, nr. 9, noiembrie 82, p. 58-66.
- [8] „The Hacker Papers”, Psychology Today, august 1980.
