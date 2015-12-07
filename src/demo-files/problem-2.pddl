(define (problem sp) (:domain BAXTER)

(:objects
	water - liquid
	icecube - solid
	cup mug - container
	init plate a b - location
)

(:init
	(at icecube a)
	(at cup b)
	(free plate)
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
	(in icecube mug)
	(in water mug)	
	)
)

(:metric minimize (total-cost))

)
