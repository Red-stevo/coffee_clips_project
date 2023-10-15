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
	 
(defrule leaves_diseases
	(leaves 1)
	=>
	(printout t "Manifests as small, round, rusty or orange-colored spots on the upper surface of leaves, and corresponding raised, rust-colored on the underside.") ;coffee leaf rust
	(printout t "Enter 11 if you observed this characteristics and 0" crlf)
	(printout t "choice : ")
	(bind ?leaves (read))
	(assert (leaves ?leaves))

    (printout t "Causes water-soaked lesions on coffee leaves.") ;Coffee Bacterial Blight
    (printout t "Enter 22 if you observed this characteristics and 0" crlf)
    (printout t "choice : ")
    (bind ?leaves (read))
    (assert (leaves ?leaves))

    (printout t "Brown-eye spot causes small, circular, brown lesions with white to gray centers on coffee leaves. As the disease progresses, these spots may merge into larger, irregular lesions.") ;Brown-Eye Spot
    (printout t "Enter 33 if you observed this characteristics and 0" crlf)
    (printout t "choice : ")
    (bind ?leaves (read))
    (assert (leaves ?leaves))
	
)
	



	




