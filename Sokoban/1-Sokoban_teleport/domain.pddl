﻿(define (domain sokoban-domain)
  (:requirements :equality)
  (:predicates (has_player ?x)
               (has_box ?x)
               (neighbor ?x ?y)
               (neighbor_space ?x ?y)
               (has_wall ?x)
               (teleport ?t)
   )

               
  (:action move-player
           :parameters (?x ?y)
           :precondition (and (neighbor ?x ?y)
                              (not (has_box ?y))
                              (has_player ?x))
           :effect		 (and (has_player ?y)
                              (not (has_player ?x))))
  (:action push-box
		   :parameters (?x ?y ?z)
		   :precondition (and (has_player ?x)
                          (has_box ?y)
                          (not (has_box ?z))
                          (neighbor ?x ?y)
                          (neighbor ?y ?z)
                          (neighbor_space ?x ?z))
	       :effect (and (has_box ?z)
						(not(has_box ?y))
						(has_player ?y)
						(not(has_player ?x))))
 
  
  (:action teleport
           :parameters(?x ?y ?t)
           :precondition (and (has_player ?x) (not(has_box ?y)) (not(has_wall ?y)) (teleport ?t))
           :effect (and (has_player ?y) (not(has_player ?x)) (not(teleport ?t)) ))
  
)