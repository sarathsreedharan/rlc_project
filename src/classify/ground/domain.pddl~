(define (domain BAXTER)

(:requirements :typing)

(:types 
	location locatable - object
	solid liquid - locatable
	container - solid
)

(:predicates
	(handAt ?loc - location)
	(at ?obj - locatable ?loc - location)
    	(in ?obj - locatable ?c - container)
	(holding ?obj - solid)
	(free ?loc - location)
	(handsfree)
)

(:action MoveAndGrasp
	 :parameters (?c - solid ?from ?to - location)
	 :precondition (and
	 	       (handsfree)
		       (at ?c ?to)
		       (handAt init)
		       )
	 :effect (and
	 	 (increase (total-cost) cost_grasp)
		 (not (handsfree)) 
		 (holding ?c)
		 (free ?to)
		 (not (at ?c ?to))
		 (handAt ?to)
		 (not (handAt ?from))
		 )
)

(:action MoveAndPlace
	 :parameters (?s - solid ?from ?to - location)
	 :precondition (and
		       (holding ?s)
         	       (free ?to)
		       (handAt ?from)
		       (handAt init)
              	       )
	 :effect (and
	 	 (increase (total-cost) cost_place)
		 (handsfree)
		 (not (holding ?s))
         	 (not (free ?to))
		 (at ?s ?to)
		 (handAt ?to)
		 (not (handAt ?from))
		 )
)

(:action Drop
	 :parameters (?s - solid ?c - container ?loc - location)
	 :precondition (and
		       (holding ?s)
		       (at ?c ?loc)
		       (handAt ?loc)
              	       )
	 :effect (and
	 	 (increase (total-cost) cost_drop)
		 (handsfree)
		 (not (holding ?s))
		 (in ?s ?c)
		 )
)

(:action Pour
	 :parameters (?l - liquid ?from ?to - container ?loc - location)
	 :precondition (and
               	       (in ?l ?from)
               	       (holding ?from)
               	       (at ?to ?loc)
               	       (handAt ?loc)
		       )
	 :effect (and
	 	 (increase (total-cost) cost_pour)
		 (in ?l ?to)
		 (not (in ?l ?from))
		 )
)

(:action Return
	 :parameters (?from ?to - location)
	 :precondition (and
               	       (handAt ?from)
		       )
	 :effect (and
	 	 (increase (total-cost) cost_move_to)
		 (handAt ?to)
		 (not (handAt ?from))
		 )
)

)
