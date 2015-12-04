(define
	(problem grounded-SP)
	(:domain grounded-BAXTER)
	(:init
		(= (total-cost) 0)
		( AT_MUG_INIT )
		( HANDAT_INIT )
		( HANDSFREE )
		( NOT_EXPLAINED_FULL_OBS_SEQUENCE )
	)
	(:goal
		(and 
		( HANDAT_A )
		( EXPLAINED_FULL_OBS_SEQUENCE )
		)
	)
	(:metric minimize (total-cost))

)
