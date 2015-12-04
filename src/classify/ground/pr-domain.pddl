(define
	(domain grounded-BAXTER)
	(:requirements :strips :action-costs)
	(:predicates
		( HOLDING_MUG )
		( FREE_INIT )
		( IN_MUG_MUG )
		( HANDAT_A )
		( HANDAT_B )
		( HANDAT_C )
		( HANDAT_D )
		( HANDAT_E )
		( HANDAT_F )
		( HANDAT_G )
		( HANDAT_INIT )
		( HANDSFREE )
		( AT_MUG_INIT )
		( EXPLAINED_FULL_OBS_SEQUENCE )
		( NOT_EXPLAINED_FULL_OBS_SEQUENCE )
	) 
	(:functions (total-cost))
	(:action MOVEANDPLACE_MUG_G_INIT
		:parameters ()
		:precondition
		(and
			( HANDAT_INIT )
			( HANDAT_G )
			( FREE_INIT )
			( HOLDING_MUG )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HANDSFREE )
			( AT_MUG_INIT )
			(not ( HOLDING_MUG ))
			(not ( FREE_INIT ))
			(not ( HANDAT_G ))
		)
	)
	(:action MOVEANDPLACE_MUG_F_INIT
		:parameters ()
		:precondition
		(and
			( HANDAT_INIT )
			( HANDAT_F )
			( FREE_INIT )
			( HOLDING_MUG )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HANDSFREE )
			( AT_MUG_INIT )
			(not ( HOLDING_MUG ))
			(not ( FREE_INIT ))
			(not ( HANDAT_F ))
		)
	)
	(:action MOVEANDPLACE_MUG_E_INIT
		:parameters ()
		:precondition
		(and
			( HANDAT_INIT )
			( HANDAT_E )
			( FREE_INIT )
			( HOLDING_MUG )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HANDSFREE )
			( AT_MUG_INIT )
			(not ( HOLDING_MUG ))
			(not ( FREE_INIT ))
			(not ( HANDAT_E ))
		)
	)
	(:action MOVEANDPLACE_MUG_D_INIT
		:parameters ()
		:precondition
		(and
			( HANDAT_INIT )
			( HANDAT_D )
			( FREE_INIT )
			( HOLDING_MUG )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HANDSFREE )
			( AT_MUG_INIT )
			(not ( HOLDING_MUG ))
			(not ( FREE_INIT ))
			(not ( HANDAT_D ))
		)
	)
	(:action MOVEANDPLACE_MUG_C_INIT
		:parameters ()
		:precondition
		(and
			( HANDAT_INIT )
			( HANDAT_C )
			( FREE_INIT )
			( HOLDING_MUG )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HANDSFREE )
			( AT_MUG_INIT )
			(not ( HOLDING_MUG ))
			(not ( FREE_INIT ))
			(not ( HANDAT_C ))
		)
	)
	(:action MOVEANDPLACE_MUG_B_INIT
		:parameters ()
		:precondition
		(and
			( HANDAT_INIT )
			( HANDAT_B )
			( FREE_INIT )
			( HOLDING_MUG )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HANDSFREE )
			( AT_MUG_INIT )
			(not ( HOLDING_MUG ))
			(not ( FREE_INIT ))
			(not ( HANDAT_B ))
		)
	)
	(:action MOVEANDPLACE_MUG_A_INIT
		:parameters ()
		:precondition
		(and
			( HANDAT_INIT )
			( HANDAT_A )
			( FREE_INIT )
			( HOLDING_MUG )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HANDSFREE )
			( AT_MUG_INIT )
			(not ( HOLDING_MUG ))
			(not ( FREE_INIT ))
			(not ( HANDAT_A ))
		)
	)
	(:action RETURN_G_F
		:parameters ()
		:precondition
		(and
			( HANDAT_G )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HANDAT_F )
			(not ( HANDAT_G ))
		)
	)
	(:action RETURN_G_E
		:parameters ()
		:precondition
		(and
			( HANDAT_G )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HANDAT_E )
			(not ( HANDAT_G ))
		)
	)
	(:action RETURN_G_D
		:parameters ()
		:precondition
		(and
			( HANDAT_G )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HANDAT_D )
			(not ( HANDAT_G ))
		)
	)
	(:action RETURN_G_C
		:parameters ()
		:precondition
		(and
			( HANDAT_G )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HANDAT_C )
			(not ( HANDAT_G ))
		)
	)
	(:action RETURN_G_B
		:parameters ()
		:precondition
		(and
			( HANDAT_G )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HANDAT_B )
			(not ( HANDAT_G ))
		)
	)
	(:action RETURN_G_A
		:parameters ()
		:precondition
		(and
			( HANDAT_G )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HANDAT_A )
			(not ( HANDAT_G ))
		)
	)
	(:action RETURN_G_INIT
		:parameters ()
		:precondition
		(and
			( HANDAT_G )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HANDAT_INIT )
			(not ( HANDAT_G ))
		)
	)
	(:action RETURN_F_G
		:parameters ()
		:precondition
		(and
			( HANDAT_F )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HANDAT_G )
			(not ( HANDAT_F ))
		)
	)
	(:action RETURN_F_E
		:parameters ()
		:precondition
		(and
			( HANDAT_F )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HANDAT_E )
			(not ( HANDAT_F ))
		)
	)
	(:action RETURN_F_D
		:parameters ()
		:precondition
		(and
			( HANDAT_F )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HANDAT_D )
			(not ( HANDAT_F ))
		)
	)
	(:action RETURN_F_C
		:parameters ()
		:precondition
		(and
			( HANDAT_F )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HANDAT_C )
			(not ( HANDAT_F ))
		)
	)
	(:action RETURN_F_B
		:parameters ()
		:precondition
		(and
			( HANDAT_F )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HANDAT_B )
			(not ( HANDAT_F ))
		)
	)
	(:action RETURN_F_A
		:parameters ()
		:precondition
		(and
			( HANDAT_F )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HANDAT_A )
			(not ( HANDAT_F ))
		)
	)
	(:action RETURN_F_INIT
		:parameters ()
		:precondition
		(and
			( HANDAT_F )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HANDAT_INIT )
			(not ( HANDAT_F ))
		)
	)
	(:action RETURN_E_G
		:parameters ()
		:precondition
		(and
			( HANDAT_E )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HANDAT_G )
			(not ( HANDAT_E ))
		)
	)
	(:action RETURN_E_F
		:parameters ()
		:precondition
		(and
			( HANDAT_E )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HANDAT_F )
			(not ( HANDAT_E ))
		)
	)
	(:action RETURN_E_D
		:parameters ()
		:precondition
		(and
			( HANDAT_E )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HANDAT_D )
			(not ( HANDAT_E ))
		)
	)
	(:action RETURN_E_C
		:parameters ()
		:precondition
		(and
			( HANDAT_E )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HANDAT_C )
			(not ( HANDAT_E ))
		)
	)
	(:action RETURN_E_B
		:parameters ()
		:precondition
		(and
			( HANDAT_E )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HANDAT_B )
			(not ( HANDAT_E ))
		)
	)
	(:action RETURN_E_A
		:parameters ()
		:precondition
		(and
			( HANDAT_E )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HANDAT_A )
			(not ( HANDAT_E ))
		)
	)
	(:action RETURN_E_INIT
		:parameters ()
		:precondition
		(and
			( HANDAT_E )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HANDAT_INIT )
			(not ( HANDAT_E ))
		)
	)
	(:action RETURN_D_G
		:parameters ()
		:precondition
		(and
			( HANDAT_D )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HANDAT_G )
			(not ( HANDAT_D ))
		)
	)
	(:action RETURN_D_F
		:parameters ()
		:precondition
		(and
			( HANDAT_D )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HANDAT_F )
			(not ( HANDAT_D ))
		)
	)
	(:action RETURN_D_E
		:parameters ()
		:precondition
		(and
			( HANDAT_D )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HANDAT_E )
			(not ( HANDAT_D ))
		)
	)
	(:action RETURN_D_C
		:parameters ()
		:precondition
		(and
			( HANDAT_D )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HANDAT_C )
			(not ( HANDAT_D ))
		)
	)
	(:action RETURN_D_B
		:parameters ()
		:precondition
		(and
			( HANDAT_D )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HANDAT_B )
			(not ( HANDAT_D ))
		)
	)
	(:action RETURN_D_A
		:parameters ()
		:precondition
		(and
			( HANDAT_D )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HANDAT_A )
			(not ( HANDAT_D ))
		)
	)
	(:action RETURN_D_INIT
		:parameters ()
		:precondition
		(and
			( HANDAT_D )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HANDAT_INIT )
			(not ( HANDAT_D ))
		)
	)
	(:action RETURN_C_G
		:parameters ()
		:precondition
		(and
			( HANDAT_C )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HANDAT_G )
			(not ( HANDAT_C ))
		)
	)
	(:action RETURN_C_F
		:parameters ()
		:precondition
		(and
			( HANDAT_C )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HANDAT_F )
			(not ( HANDAT_C ))
		)
	)
	(:action RETURN_C_E
		:parameters ()
		:precondition
		(and
			( HANDAT_C )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HANDAT_E )
			(not ( HANDAT_C ))
		)
	)
	(:action RETURN_C_D
		:parameters ()
		:precondition
		(and
			( HANDAT_C )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HANDAT_D )
			(not ( HANDAT_C ))
		)
	)
	(:action RETURN_C_B
		:parameters ()
		:precondition
		(and
			( HANDAT_C )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HANDAT_B )
			(not ( HANDAT_C ))
		)
	)
	(:action RETURN_C_A
		:parameters ()
		:precondition
		(and
			( HANDAT_C )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HANDAT_A )
			(not ( HANDAT_C ))
		)
	)
	(:action RETURN_C_INIT
		:parameters ()
		:precondition
		(and
			( HANDAT_C )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HANDAT_INIT )
			(not ( HANDAT_C ))
		)
	)
	(:action RETURN_B_G
		:parameters ()
		:precondition
		(and
			( HANDAT_B )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HANDAT_G )
			(not ( HANDAT_B ))
		)
	)
	(:action RETURN_B_F
		:parameters ()
		:precondition
		(and
			( HANDAT_B )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HANDAT_F )
			(not ( HANDAT_B ))
		)
	)
	(:action RETURN_B_E
		:parameters ()
		:precondition
		(and
			( HANDAT_B )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HANDAT_E )
			(not ( HANDAT_B ))
		)
	)
	(:action RETURN_B_D
		:parameters ()
		:precondition
		(and
			( HANDAT_B )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HANDAT_D )
			(not ( HANDAT_B ))
		)
	)
	(:action RETURN_B_C
		:parameters ()
		:precondition
		(and
			( HANDAT_B )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HANDAT_C )
			(not ( HANDAT_B ))
		)
	)
	(:action RETURN_B_A
		:parameters ()
		:precondition
		(and
			( HANDAT_B )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HANDAT_A )
			(not ( HANDAT_B ))
		)
	)
	(:action RETURN_B_INIT
		:parameters ()
		:precondition
		(and
			( HANDAT_B )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HANDAT_INIT )
			(not ( HANDAT_B ))
		)
	)
	(:action RETURN_A_G
		:parameters ()
		:precondition
		(and
			( HANDAT_A )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HANDAT_G )
			(not ( HANDAT_A ))
		)
	)
	(:action RETURN_A_F
		:parameters ()
		:precondition
		(and
			( HANDAT_A )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HANDAT_F )
			(not ( HANDAT_A ))
		)
	)
	(:action RETURN_A_E
		:parameters ()
		:precondition
		(and
			( HANDAT_A )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HANDAT_E )
			(not ( HANDAT_A ))
		)
	)
	(:action RETURN_A_D
		:parameters ()
		:precondition
		(and
			( HANDAT_A )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HANDAT_D )
			(not ( HANDAT_A ))
		)
	)
	(:action RETURN_A_C
		:parameters ()
		:precondition
		(and
			( HANDAT_A )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HANDAT_C )
			(not ( HANDAT_A ))
		)
	)
	(:action RETURN_A_B
		:parameters ()
		:precondition
		(and
			( HANDAT_A )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HANDAT_B )
			(not ( HANDAT_A ))
		)
	)
	(:action RETURN_A_INIT
		:parameters ()
		:precondition
		(and
			( HANDAT_A )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HANDAT_INIT )
			(not ( HANDAT_A ))
		)
	)
	(:action RETURN_INIT_G
		:parameters ()
		:precondition
		(and
			( HANDAT_INIT )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HANDAT_G )
			(not ( HANDAT_INIT ))
		)
	)
	(:action RETURN_INIT_F
		:parameters ()
		:precondition
		(and
			( HANDAT_INIT )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HANDAT_F )
			(not ( HANDAT_INIT ))
		)
	)
	(:action RETURN_INIT_E
		:parameters ()
		:precondition
		(and
			( HANDAT_INIT )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HANDAT_E )
			(not ( HANDAT_INIT ))
		)
	)
	(:action RETURN_INIT_D
		:parameters ()
		:precondition
		(and
			( HANDAT_INIT )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HANDAT_D )
			(not ( HANDAT_INIT ))
		)
	)
	(:action RETURN_INIT_C
		:parameters ()
		:precondition
		(and
			( HANDAT_INIT )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HANDAT_C )
			(not ( HANDAT_INIT ))
		)
	)
	(:action RETURN_INIT_B
		:parameters ()
		:precondition
		(and
			( HANDAT_INIT )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HANDAT_B )
			(not ( HANDAT_INIT ))
		)
	)
	(:action RETURN_INIT_A
		:parameters ()
		:precondition
		(and
			( HANDAT_INIT )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HANDAT_A )
			(not ( HANDAT_INIT ))
		)
	)
	(:action DROP_MUG_MUG_INIT
		:parameters ()
		:precondition
		(and
			( HANDAT_INIT )
			( AT_MUG_INIT )
			( HOLDING_MUG )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HANDSFREE )
			( IN_MUG_MUG )
			(not ( HOLDING_MUG ))
		)
	)
	(:action MOVEANDPLACE_MUG_INIT_INIT
		:parameters ()
		:precondition
		(and
			( HANDAT_INIT )
			( FREE_INIT )
			( HOLDING_MUG )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HANDSFREE )
			( AT_MUG_INIT )
			(not ( HOLDING_MUG ))
			(not ( FREE_INIT ))
		)
	)
	(:action MOVEANDGRASP_MUG_G_INIT
		:parameters ()
		:precondition
		(and
			( HANDAT_INIT )
			( AT_MUG_INIT )
			( HANDSFREE )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HOLDING_MUG )
			( FREE_INIT )
			(not ( HANDSFREE ))
			(not ( AT_MUG_INIT ))
			(not ( HANDAT_G ))
		)
	)
	(:action MOVEANDGRASP_MUG_F_INIT
		:parameters ()
		:precondition
		(and
			( HANDAT_INIT )
			( AT_MUG_INIT )
			( HANDSFREE )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HOLDING_MUG )
			( FREE_INIT )
			(not ( HANDSFREE ))
			(not ( AT_MUG_INIT ))
			(not ( HANDAT_F ))
		)
	)
	(:action MOVEANDGRASP_MUG_E_INIT
		:parameters ()
		:precondition
		(and
			( HANDAT_INIT )
			( AT_MUG_INIT )
			( HANDSFREE )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HOLDING_MUG )
			( FREE_INIT )
			(not ( HANDSFREE ))
			(not ( AT_MUG_INIT ))
			(not ( HANDAT_E ))
		)
	)
	(:action MOVEANDGRASP_MUG_D_INIT
		:parameters ()
		:precondition
		(and
			( HANDAT_INIT )
			( AT_MUG_INIT )
			( HANDSFREE )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HOLDING_MUG )
			( FREE_INIT )
			(not ( HANDSFREE ))
			(not ( AT_MUG_INIT ))
			(not ( HANDAT_D ))
		)
	)
	(:action MOVEANDGRASP_MUG_C_INIT
		:parameters ()
		:precondition
		(and
			( HANDAT_INIT )
			( AT_MUG_INIT )
			( HANDSFREE )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HOLDING_MUG )
			( FREE_INIT )
			(not ( HANDSFREE ))
			(not ( AT_MUG_INIT ))
			(not ( HANDAT_C ))
		)
	)
	(:action MOVEANDGRASP_MUG_B_INIT
		:parameters ()
		:precondition
		(and
			( HANDAT_INIT )
			( AT_MUG_INIT )
			( HANDSFREE )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HOLDING_MUG )
			( FREE_INIT )
			(not ( HANDSFREE ))
			(not ( AT_MUG_INIT ))
			(not ( HANDAT_B ))
		)
	)
	(:action MOVEANDGRASP_MUG_A_INIT
		:parameters ()
		:precondition
		(and
			( HANDAT_INIT )
			( AT_MUG_INIT )
			( HANDSFREE )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HOLDING_MUG )
			( FREE_INIT )
			(not ( HANDSFREE ))
			(not ( AT_MUG_INIT ))
			(not ( HANDAT_A ))
		)
	)
	(:action MOVEANDGRASP_MUG_INIT_INIT
		:parameters ()
		:precondition
		(and
			( HANDAT_INIT )
			( AT_MUG_INIT )
			( HANDSFREE )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HOLDING_MUG )
			( FREE_INIT )
			(not ( HANDSFREE ))
			(not ( AT_MUG_INIT ))
		)
	)

)
