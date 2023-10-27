#! /usr/bin/sbcl --script

;;;; conv common-lisp
;;;; lcron -- chronology data management
;;;; Copyright (c) 2018--2023 Alexandru Dan Corlan MD PhD

;;;; You may use and redistribute this program under the M.I.T licence

;;;; This program displays chronological tables of various
;;;; resolutions for paralel places in various formats (currently
;;;; only text, but in the future TeX, postscript with graphics perhaps)

;;;; HISTORY
;;;; created -- 2018
;;;; adapted for generating json for the crono-it project -- 2023
;;;; first published -- oct 27 2023

;;;; DEPENDENCIES
;;;; sbcl (apt install sbcl) works probably with any version, tested on V1.1.4

;;;; INSTALLATION
;;;; make this executable and execute

;;;; The time object

(defstruct tm ;; I can write fortran in any language :)
  "A time interval, from years/month/day to toyears/tomonth/today"
   form  ;; jug (julian/gregorian calendar, with possibly negative year for BC), kya, mya, mya (years ago)
   years ;; nr of years since 1 AD, or negative, perhaps to -9999
   month ;; may be 0 if unspecified
   day   ;; may be 0 if unspecified without hms yet
   toyears ;; 0 if unspecified
   tomonth ;; 0 if unspecified
   today   ;; 0 if unspecified
   )

;;;   constructors

(defun time-int (date-from date-to) 
  (make-tm :form 'jug 
	   :years (tm-years date-from)
	   :month (tm-month date-from)
	   :day (tm-day date-from)
	   :toyears (tm-years date-to)
	   :tomonth (tm-month date-to)
	   :today (tm-day date-to))
  )

(defun year (y) (make-tm :form 'jug :years y :month 0 :day 0 :toyears 0 :tomonth 0 :today 0))
(defun month (y m) (make-tm :form 'jug :years y :month m :day 0 :toyears 0 :tomonth 0 :today 0))
(defun date (y m d) (make-tm :form 'jug :years y :month m :day d :toyears 0 :tomonth 0 :today 0))

(defun year-int (y0 y1) (make-tm :form 'jug :years y0 :month 0 :day 0 :toyears y1 :tomonth 0 :today 0))
(defun month-int (y0 m0 y1 m1) (make-tm :form 'jug :years y0 :month m0 :day 0 :toyears y1 :tomonth m1 :today 0))
(defun date-int (y0 m0 d0 y1 m1 d1) (make-tm :form 'jug :years y0 :month m0 :day d0 :toyears y1 :tomonth m1 :today d1))

(defun kya (y) (make-tm  :form 'kya :years y :month 0 :day 0 :toyears 0 :tomonth 0 :today 0))
(defun mya (y) (make-tm  :form 'mya :years y :month 0 :day 0 :toyears 0 :tomonth 0 :today 0))
(defun bya (y) (make-tm  :form 'bya :years y :month 0 :day 0 :toyears 0 :tomonth 0 :today 0))

(defun kya-int (y0 y1) (make-tm  :form 'kya :years y0 :month 0 :day 0 :toyears y1 :tomonth 0 :today 0))
(defun mya-int (y0 y1) (make-tm  :form 'mya :years y0 :month 0 :day 0 :toyears y1 :tomonth 0 :today 0))
(defun bya-int (y0 y1) (make-tm  :form 'bya :years y0 :month 0 :day 0 :toyears y1 :tomonth 0 :today 0))

;;;   truly universal time is a float, in years

(defun utime-of (ti)
  "Compute some kind of universal time as a float, that can be negative, from
   the initial value of the time-interval ti (which is a tm)."
  (when (eq (tm-form ti) 'jug)
    (return-from utime-of (+ (tm-years ti) 
	       (if (eql (tm-month ti) 0) 0 (/ (1- (tm-month ti)) 12.0))
	       (if (eql (tm-day ti) 0) 0 (/ (1- (tm-day ti)) 365.25)) )))
  (when (eq (tm-form ti) 'kya) (return-from utime-of (- 2018 (* 1000.0 (tm-years ti)))))
  (when (eq (tm-form ti) 'mya) (return-from utime-of (- 2018 (* 1000000.0 (tm-years ti)))))
  (when (eq (tm-form ti) 'bya) (return-from utime-of (- 2018 (* 1000000000.0 (tm-years ti)))))
  0.0 )

(defun utime-end-of (ti)
  "Compute some kind of universal time as a float, that can be negative, from
   the end value of the time-interval ti (which is a tm)."
  (when (eq (tm-form ti) 'jug)
    (return-from utime-end-of (+ (tm-toyears ti) 
	       (if (eql (tm-tomonth ti) 0) 0 (/ (1- (tm-tomonth ti)) 12.0))
	       (if (eql (tm-today ti) 0) 0 (/ (1- (tm-today ti)) 365.25)) )))
  (when (eq (tm-form ti) 'kya) (return-from utime-end-of (- 2018 (* 1000.0 (tm-toyears ti)))))
  (when (eq (tm-form ti) 'mya) (return-from utime-end-of (- 2018 (* 1000000.0 (tm-toyears ti)))))
  (when (eq (tm-form ti) 'bya) (return-from utime-end-of (- 2018 (* 1000000000.0 (tm-toyears ti)))))
  0.0 )

(defun duration (ti)
  (- (utime-end-of ti) (utime-of ti)))

(defun int-to-date (idate)
  (cond
   ((and (<= idate 9999) (> idate 0)) ;; AD year
    (year idate))
   ((and (>= idate -9999) (< idate 0)) ;; BC year
    (year idate))
   ((and (>= idate 9999) (<= idate 999999)) ;; AD year and AD month
    (month (truncate idate 100) (mod idate 100)))
   ((and (>= idate 999999) (<= idate 99999999)) ;; AD year and AD month
    (date (truncate idate 10000) (truncate (mod idate 10000) 100) (mod idate 100)))
   (t 'int-time-error)
   ))

;;;; Locations

(defstruct (location :named)
  long ;; longitude(s) optional, a point on earth or a polygon
  lat ;; latitudes, as above
  name ;; a symbol
  title ;; a descriptive text for the location
)

(defstruct (locrel :named)
  name ;; name of a location, for example romania
  isin ;; larger location that includes the first, for example europe
)

(defparameter max-n-locs 100)
(defvar nlocs 0)
(defvar locs (make-array (list max-n-locs) :element-type 'location))

(defparameter max-n-locrel 1000)
(defvar nlocrels 0)
(defvar locrels (make-array (list max-n-locrel) :element-type 'locrel))

(defun loc (name &key long lat title in)
  (setf (elt locs nlocs) (make-location :name name :long long :lat lat :title title))
  (incf nlocs 1)
  (when in
    (setf (elt locrels nlocrels) (make-locrel :name name :isin in))
    (incf nlocrels))
  nil
  )

(defun init-some-locs ()
  (setf nlocs 0 nlocrels 0)
  (loc 'Bucureşti :in 'România)
  (loc 'Corlidava :in 'Bucureşti)
  (loc 'România :in 'Europa)
  (loc 'Franţa :in 'Europa)
)

(defun split-token-list (l &key (by '_))
  (when (null l) (return-from split-token-list nil))
  (dotimes (i (length l))
    (when (eq (elt l i) by) (return-from split-token-list
					 (cons (subseq l 0 i) (split-token-list (nthcdr (1+ i) l) :by by)))))
  (cons l nil)
  )

(defun stl-to-loc-calls (l)
  (mapcar #'(lambda (x) 
	      (cond 
	       ((eql (length x) 0) nil)
	       ((eql (length x) 1) (list 'loc (list 'quote (car x))))
	       ((eql (length x) 2) (list 'loc (list 'quote (car x)) :in (list 'quote (cadr x))))
	       (t 'error-in-locations))
	      )
	  l))

(defmacro locations (&rest x)
  (cons 'progn (stl-to-loc-calls (split-token-list x))))


(defun print-locs () 
  (princ (format nil "~d locaţii~%" nlocs))
  (dotimes (i nlocs) (print (location-name (elt locs i))))
)

;;;; Historical events and periods

(defstruct event
   name
   at ;; when did it take place
   loc ;; where did it take place
   endloc ;; some destination (for example, for a trip), also a place
   title ;; description string
   spec ;; detailed specification of the event, a list
   pic ;; url of a descriptive picture (not yet)
   kind
)


(defparameter max-n-events 99000) ; works to 3,000,000 on my 4Gb memory machine, but takes some 8s to fill and report
(defvar nevents 0)
(defvar events (make-array (list max-n-events)))

(defun event (title date place &key kind name spec dest)
  (setf (elt events nevents) 
	(make-event :at (if (integerp date) (int-to-date date) date)
		    :name name 
		    :loc place 
		    :endloc dest
		    :title title 
		    :kind kind 
		    :spec spec
		    :pic nil))
  (incf nevents)
  )

;; specific event wrappers

(defun interval (person start-date start-place &optional end-date end-place &key kind spec)
  (if end-date
      (event (format nil "~A" person) (time-int start-date end-date) start-place 
	     :kind kind :dest end-place :spec spec)
    (event (format nil "~A" person) start-date start-place 
	   :kind kind :spec spec)
    )
  )

(defun birth (person birth-date birth-place &key kind)
  (interval person birth-date birth-place 
		     :kind (cons 'birth kind) 
		     :spec '(list 'birth person)))

(defun death (person death-date death-place &key kind)
  (interval person death-date death-place 
		     :kind (cons 'death kind) 
		     :spec '(list 'death person)))

(defun life (person birth-date birth-place &optional death-date death-place &key kind)
  (interval person birth-date birth-place death-date death-place 
		     :kind (cons 'birth (cons 'death kind)) 
		     :spec (list 'birth 'death person)))

(defun occupation (person start-date office end-date job-description &key kind)
  (interval person start-date office end-date office 
		     :kind (cons 'office kind))
		     :spec (list 'office job-description person))



(defun print-events () 
  (princ (format nil "~d evenimente~%" nevents))
  (dotimes (i nevents) 
    (princ (format nil "~A ~A ~A~%" i 
		   (tm-years (event-at (elt events i))) 
		   (event-title (elt events i)))))
)

; {
;   "eventDate": "1992-10-15",
;   "eventSummary": "Primul serviciu privat de internet eMail prin UUCP",
;   "reportedBy: "Liviu Ionescu <ilg@livius.net <mailto:ilg@livius.net>>",
;   "creationDate": "2023-10-26",
;   "modifiedDate": "2023-10-26",
;   "updatedBy": "Liviu Ionescu <ilg@livius.net>"
; }
;


(defun json-events (&optional (os *standard-output*)) 
  (dotimes (i nevents) 
    (let ((ev (elt events i)))
      (format os "{  \"eventDate\": \"~A-~A-~A\",~%" 
	      (tm-years (event-at ev))
	      (tm-month (event-at ev))
	      (tm-day (event-at ev))
	      )
      (format os "   \"eventSummary\": \"~A\",~%"
	      (event-title (elt events i))
	      )
      ;; the following are underdeveloped, just for demo
      (format os "   \"reportedBy\": \"dancorl\",~%")
      (format os "   \"creationDate\": \"2023-10-26\",~%")
      (format os "   \"modifiedDate\": \"2023-10-26\",~%")
      (format os "   \"updatedBy\": \"dancorl\"~%")
      (format os "}~%~%")))
)

(defstruct chronogram
  "Chronogram object. Timesegs contains the slots along the timeline, it is a vector
   of tm objects of nsegs size. Events is a matrix of nsegs by nplaces with the
   titles of events in it."
  title
  places
  time-range
  nsegs
  nplaces
  timesegs
  events
)

(defun chrono (title       ; a string, title of the chronography
	       places      ; list of location names
	       time-range  ; a time interval that will be covered by the respective chronographic chart
	       resolution) ; resolution will be in years, number of time slots in the chronography
  "Build a chronography with the TITLE, only for the PLACES and the TIME-RANGE (which must be a tm object)
   with time slots of RESOLUTION duration (in years)."
  (let ((ntimeslots (ceiling (/ (duration time-range) resolution))))
    (let ((ch (make-chronogram :title title :places places :time-range time-range 
			       :nplaces (length places) :nsegs ntimeslots
			       :timesegs (make-array (list ntimeslots))
			       :events (make-array (list (length places) ntimeslots) :initial-element nil))))
      (dotimes (i ntimeslots) 
	(setf (elt (chronogram-timesegs ch) i) (+ (utime-of time-range) (* resolution i))))
      (dotimes (i nevents) 
	(let ((nthloc (- (length places) (length (member (event-loc (elt events i)) places))))
	      (nthseg (floor (/ (- (utime-of (event-at (elt events i))) (utime-of time-range)) resolution)))
	      )
;	  (princ (format nil (event-title (elt events i))))
;	  (print nthloc)
;	  (print (floor (/ (- (utime-of (event-at (elt events i))) (utime-of time-range)) resolution)))
	  (if (and (< nthloc (length places)) (>= nthseg 0) (< nthseg (chronogram-nsegs ch)))
	      (setf (aref (chronogram-events ch) nthloc nthseg)
		    (cons (event-title (elt events i)) (aref (chronogram-events ch) nthloc nthseg)))
	  )
	)
	)
      ch
      ))
  )

(defun print-chrono (ch &key (os *standard-output*))
  "Print a chronography on a stream as ascii text."
  (format os "*************************~%~A~%*************************~%~%" (chronogram-title ch))
  (format os "~10A " "Anul")
  (dotimes (i (chronogram-nplaces ch)) (format os "~12A " (elt (chronogram-places ch) i)))
  (format os "~%")
  (dotimes (y (chronogram-nsegs ch)) ; for each time segment, print a line (or more if needed)
    (let ((maxl 0)) ;; number of lines to print for this time segment
      (format os "~10A " (elt (chronogram-timesegs ch) y))
      (dotimes (i (chronogram-nplaces ch)) 
	(let ((ev (aref (chronogram-events ch) i y)))
	  (format os "~12A " (if (consp ev) (car ev) " -   -   -  "))
	  (when (> (length ev) maxl) (setf maxl (length ev)))
	  )
	)
      (format os "~%")
      (dotimes (j (- maxl 1))
	(format os "~10A " " ")
	(dotimes (i (chronogram-nplaces ch)) 
	  (let ((ev (aref (chronogram-events ch) i y)))
	    (format os "~12A " (if (> (length ev) (1+ j)) (elt ev (1+ j)) " "))
	    )
	  )
	(format os "~%")
	)
      )
    )
  
  )


(defun many-events (n)
  (dotimes (i n)
;    (print (list (format nil "anul nou ~A" (+ 2000 i)) (year (+ 2000 i)) 'SUA))
    (event (format nil "anul nou ~A" (+ -1000000 i)) (year (+ -1000000 i)) 'SUA))
)

;(init-some-locs)
;(print-locs)
;(init-some-events)
;(print-events)

(format *standard-output* "~%~%")

; (many-events 2999000) ; test for endurance

;(princ "Done")

;(defvar *ch* (chrono "test chrono" '(spatiu România Europa SUA) (year-int 1960 1971) 1))

(defun init-it-events () 
  (event "primul laser" (year 1960  ) 'SUA :kind '(TECHNO))
  (event "quicksort (Hoare)" (year 1960  ) 'Europa :kind '(TECHNO))
  (event "emisiune prin satelit" (year 1962 ) 'spatiu :kind '(TECHNO))
  (event "prin joc comp: Spacewar!" (year 1962 ) 'SUA :kind '(TECHNO))
  (event "LED-uri rosii" (year 1962 ) 'SUA :kind '(TECHNO))
  (event "primul satelit geostationar" (year 1963 ) 'spatiu :kind '(TECHNO))
  (event "touchpad, grafica comp" (year 1963 ) 'SUA :kind '(TECHNO))
  (event "primul VHS" (year 1964 ) 'SUA :kind '(TECHNO))
  (event "caseta audio" (year 1964 ) 'SUA :kind '(TECHNO))
  (event "primul minicalc PDP/8" (year 1964 ) 'SUA :kind '(TECHNO))
  (event "limbajul BASIC" (year 1964 ) 'SUA :kind '(TECHNO))
  (event "primul supercomp CDC6600" (month 1964 9 ) 'SUA :kind '(TECHNO))
  (event "primul ATM" (year 1967 ) 'Europa :kind '(TECHNO))
  (event "primul maus" (year 1968 ) 'SUA :kind '(TECHNO))
  (event "Arpanet, primul Internet" (year 1969 ) 'SUA :kind '(TECHNO))
  (event "primul CCD" (year 1969 ) 'SUA :kind '(TECHNO))

    (event "68000" (year 1979) 'motorola)
    (event "68010" (year 1982) 'motorola)
    (event "68020" (year 1984) 'motorola)
    (event "68030" (year 1987) 'motorola)
    (event "68040" (year 1991) 'motorola)
    (event "68060" (year 1994) 'motorola)
    (event "88000" (year 1988) 'motorola)

    (event "Sun-1/68K" (year 1981) 'sun)
    (event "fondare" (year 1982) 'sun)
    (event "Sun-3/68K" (year 1985) 'sun)
    (event "sparc" (year 1987) 'sun)
    (event "sp.stat-1" (year 1989) 'sun)
    (event "ult.sparc" (year 1995) 'sun)
    (event "ultra 45" (year 2006) 'sun)
    (event "Enterprise" (year 2007) 'sun)
    (event "2Oracle" (year 2010) 'sun)

    (event "IRIS1000" (year 1985) 'sgi)
    (event "Pro/MIPS" (year 1986) 'sgi)
    (event "End.MIPS" (year 2007) 'sgi)
    (event "Prism/Itan" (year 2005) 'sgi)
    (event "faliment" (year 2006) 'sgi)
    (event "450/x86" (year 2007) 'sgi)
    

    (event "801/PWR" (year 1974) 'ibm)
    (event "POWER1" (year 1990) 'ibm)
    (event "POWER2" (year 1993) 'ibm)
    (event "AS/Cobra" (year 1995) 'ibm)
    (event "AS/RS64" (year 1997) 'ibm)
    (event "POWER3" (year 1998) 'ibm)
    (event "POWER4" (year 2001) 'ibm)
    (event "POWER5" (year 2004) 'ibm)
    (event "POWER6v2" (year 2007) 'ibm)
    (event "PowerPC" (year 1992) 'ibm)
    (event "End.PPC" (year 2005) 'ibm)

    (event "ApoDN100/68K" (year 1981) 'hp)
    (event "Apo->hp" (year 1989) 'hp)
    (event "HP9200/68K" (year 1985) 'hp)
    (event "HP9400/68K" (year 1990) 'hp)
    (event "HP9425e/68K" (year 1991) 'hp)
    (event "PA-RISC" (year 1986) 'hp)
    (event "Itanium" (year 2001) 'hp)
    (event "End.P-R" (year 2005) 'hp)

    (event "symb3600" (year 1983) 'lisp)
    (event "MIT.LM" (year 1973) 'lisp)
    (event "LM-2" (year 1980) 'lisp)
    (event "End.LM" (year 1987) 'lisp)

    (event "8080" (year 1974) 'intel)
    (event "8086" (year 1978) 'intel)
    (event "286"  (year 1982) 'intel)
    (event "i960"  (year 1984) 'intel)
    (event "486"  (year 1989) 'intel)
    (event "386"  (year 1985) 'intel)
    (event "Pentium" (year 1993) 'intel)
    (event "PPro" (year 1995) 'intel)
    (event "P2,P3" (year 1997) 'intel)
    (event "P4" (year 2000) 'intel)
    (event "Opteron" (year 2003) 'altii)
    (event "Core2" (year 2008) 'intel)

    (event "ZX-81" (year 1981) 'altii)
    (event "Spectrum" (year 1982) 'altii)
    (event "QL/68k" (year 1984) 'altii)

    (event "MIPS" (year 1986) 'altii)
    (event "6502" (year 1975) 'altii)
    (event "Z80" (year 1976) 'altii)
    (event "Alpha" (year 1992) 'altii)
    (event "AtariST/68k" (year 1985) 'altii)
    (event "Ami1000" (year 1985) 'altii)
    (event "STAFF/68k" (year 1986) 'altii)
    (event "Ami500" (year 1987) 'altii)
    (event "Ami3000" (year 1990) 'altii)
    (event "Ami4000" (year 1992) 'altii)
    (event "End.AtariST" (year 1993) 'altii)
    (event "End.Ami" (year 1996) 'altii)


    (event "BBC/6502" (year 1982) 'arm)
    (event "ARM2" (year 1985) 'arm)
    (event "Archimedes" (year 1987) 'arm)
    (event "ARM3" (year 1990) 'arm)
    (event "ARM6" (year 1992) 'arm)
    (event "RiscPC/610" (year 1996) 'arm)

    (event "Apple1" (year 1976) 'apple)
    (event "Apple2" (year 1977) 'apple)
    (event "Apple3" (year 1980) 'apple)
    (event "Mac68k" (year 1984) 'apple)
    (event "J->NeXT" (year 1985) 'apple)
    (event "PBook/68k" (year 1991) 'apple)
    (event "PB500/68K" (year 1994) 'apple)
    (event "PB5300/PPC" (year 1995) 'apple)
    (event "J->Apple" (year 1996) 'apple)
    (event "PB-G3/PPC" (year 1998) 'apple)
    (event "MPro/x86" (year 2006) 'apple)

)

(init-it-events)

(defvar *ch* (chrono "test chrono" '(motorola apple sun ibm hp sgi intel arm lisp altii) (year-int 1974 2010) 1))

; (print-chrono *ch*) -- to get an ascii chronological table of the processor events

(json-events)

