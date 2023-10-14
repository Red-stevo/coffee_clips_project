;Global variable to store the tempate for a coffee plant
(deftemplate coffee-plant
	(slot leaves (type NUMBER))
	(slot stems-branches (type NUMBER))
	(slot berries (type NUMBER))
	(slot roots (type NUMBER))
	(slot flowers (type STRING))
	)

;The First menu displayed to the user.
(defrule menu1
	=>
	(printout t "Enter 1 for Yes or 2 for No to tell which part of your plant is affected." crlf)
	(printout t "	Are Leaves Affected? 1 or 2" crlf)
	(printout t "choice : ")
	(bind ?leaves (read))
	(assert (leaves ?leaves))
	(printout t " " crlf)
		
	(printout t "   Are Stems and Branches Affected? 1 or 2" crlf)
    (printout t "choice : ")
    (bind ?stems-branches (read))
    (assert (stems-branches ?stems-branches))
    (printout t " " crlf)

    (printout t "   Are Berries Affected? 1 or 2" crlf)
    (printout t "choice : ")
    (bind ?berries (read))
    (assert (berries ?berries))
    (printout t " " crlf)

	(printout t "   Are flowers Affected? 1 or 2" crlf)
    (printout t "choice : ")
    (bind ?flowers (read))
    (assert (flowers ?flowers))
    (printout t " " crlf)

	(printout t "   Are Roots Affected? 1 or 2" crlf)
    (printout t "choice : ")
    (bind ?roots (read))
    (assert (roots ?roots))
    (printout t " " crlf)
	)
	 
