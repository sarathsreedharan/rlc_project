(define (problem sp) (:domain BAXTER)

(:objects
	water - liquid
	icecube - solid
	cup mug - container
	init a b c d e f g - location
)

(:init
	(handsfree)
	(handAt init)
	(at mug init)
	(in water cup)
)


(:goal
	(and
	(handAt a)
	)
)

)
