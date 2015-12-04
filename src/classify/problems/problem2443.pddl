(define (problem sp) (:domain BAXTER)

(:objects
	water - liquid
	icecube - solid
	cup mug - container
	init a b c d e f g h i j k l m n o p q r s t u v w x y z - location
)

(:init
	(at cup e)
	(at icecube a)
	(free b)
	(free c)
	(free d)
	(free f)
	(free g)

	(handsfree)
	(handAt init)
	(at mug init)
	(in water cup)
	(=(cost_move_to) 1.0)
	(=(cost_grasp) 1.0)
	(=(cost_place) 1.0)
	(=(cost_drop) 1.0)
	(=(cost_pour) 1.0)
)


(:goal
	(and
	(at cup g)
	(at icecube c)
	)
)

(:metric minimize (total-cost))

)
