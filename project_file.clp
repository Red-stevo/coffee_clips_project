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
	

(defrule stem-branches_diseases
    (stem-branches 1)
    =>
	(printout t "Targets the vascular system of coffee plants, leading to wilting and dieback of stem tips and branches. Stems may exhibit brown discoloration, especially near the base.") ;Coffee Wilt Disease
    (printout t "Enter 11 if you observed this characteristics and 0" crlf)
    (printout t "choice : ")
    (bind ?stems-branches (read))
    (assert (stems-branches ?stems-branches))

	(printout t "Affects the branches and stems, leading to cracking and splitting of stem bark, which results in longitudinal openings. Infected stems may also appear water-soaked and wilted.") ;Coffee Bacterial Wilt            
    (printout t "Enter 22 if you observed this characteristics and 0" crlf)
    (printout t "choice : ")
    (bind ?stems-branches (read))
    (assert (stems-branches ?stems-branches))

    (printout t "Coffee gall disease affects the stems and branches, leading to the formation of black knots or galls. These galls can become large and deform the stems.") ;Coffee Gall Disease                       
    (printout t "Enter 33 if you observed this characteristics and 0" crlf)
    (printout t "choice : ")
    (bind ?stems-branches (read))
    (assert (stems-branches  ?stems-branches))

)	

(defrule roots_diseases
	(roots 1)
    =>

    (printout t "Formation of galls or knots on coffee roots. These galls are visible swellings or enlargements on the root system. ") ;Coffee Root-Knot Nematode 
    (printout t "Enter 11 if you observed this characteristics and 0" crlf)
    (printout t "choice : ")
    (bind ?roots(read))
    (assert (roots ?roots))


    (printout t " Coffee roots affected by root rot may show signs of rotting, discoloration, and decay. The roots often turn brown or black, with a soft and mushy texture, resulting in poor water and nutrient . ") ;Root Rot
    (printout t "Enter 22 if you observed this characteristics and 0" crlf)
    (printout t "choice : ")
    (bind ?roots(read))
    (assert (roots ?roots))

    (printout t "Infected coffee roots can exhibit cracking and splitting of the root bark, leading to longitudinal openings. The roots may appear water-soaked and wilted.. ") ;Bacterial Wilt
    (printout t "Enter 33 if you observed this characteristics and 0" crlf)
    (printout t "choice : ")
    (bind ?roots(read))
    (assert (roots ?roots))

)


(defrule flowers_diseases
    (flowers 1)
    =>
	(printout t "Flower bud rot can cause the browning and rotting of coffee flower buds before they fully open. ") ;Flower Bud Rot
    (printout t "Enter 11 if you observed this characteristics and 0" crlf)
    (printout t "choice : ")
    (bind ?flowers(read))
    (assert (flowers ?flowers))


    (printout t "Flower blight can result in the development of brown to black lesions on coffee flowers. These lesions are often associated with a fuzzy, mold-like growth. Infected flowers may not open fully and can wilt prematurely. ") ;Flower Blight
    (printout t "Enter 22 if you observed this characteristics and 0" crlf)
    (printout t "choice : ")
    (bind ?flowers(read))
    (assert (flowers ?flowers))

    (printout t "Petal spotting can result in brown to black lesions on the petals of coffee flowers. These spots may be sunken and lead to wilting or the premature shedding of flower petals. ") ;Petal Spotting 
    (printout t "Enter 33 if you observed this characteristics and 0" crlf)
    (printout t "choice : ")
    (bind ?flowers(read))
    (assert (flowers ?flowers))

)

(defrule berries_diseases
    (berries 1)
    =>
    (printout t "Infected coffee berries develop circular, sunken, green lesions, which turn dark brown to black as the disease progresses. ") ;Coffee Berry Disease
    (printout t "Enter 11 if you observed this characteristics and 0" crlf)
    (printout t "choice : ")
    (bind ?berries(read))
    (assert (berries ?berries))

    (printout t "Causes irregular, dark brown to black lesions on coffee berries. These lesions may be sunken and are often surrounded by a reddish-brown border. Infected berries can have reduced quality and appearance.. ") ;Coffee Berry Blotch               
    (printout t "Enter 22 if you observed this characteristics and 0" crlf)
    (printout t "choice : ")
    (bind ?berries(read))
    (assert (berries ?berries))

    (printout t "Anthracnose affects coffee berries, causing dark, sunken lesions with orange or pinkish centers. These lesions can expand and result in berry deformation and reduced bean quality. ") ;Coffee Bean Anthracnose              
    (printout t "Enter 33 if you observed this characteristics and 0" crlf)
    (printout t "choice : ")
    (bind ?berries(read))
    (assert (berries ?berries))

)
;end of project









