DEF NUM_ODD_EGGS EQU 6

MACRO prob
	DEF prob_total += \1
	dw prob_total * $ffff / 100
ENDM

OddEggProbabilities:
; entries correspond to OddEggs (below)
	table_width 2, OddEggProbabilities
DEF prob_total = 0
; BulbasaurEVENT_GOT_TM47_STEEL_WING
	prob 16
	prob 17
; Charmander
	prob 16
	prob 18
; Squirtle
	prob 16
	prob 17
	assert_table_length NUM_ODD_EGGS
	assert prob_total == 100, "OddEggProbabilities do not sum to 100%!"

OddEggs:
	table_width NICKNAMED_MON_STRUCT_LENGTH, OddEggs

	db BULBASAUR
	db NO_ITEM
	db TACKLE, GROWL, CHARM, 0
	dw 02048 ; OT ID
	dt 135 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 0, 0, 0, 0 ; DVs
	db 35, 40, 20, 0 ; PP
	db 20 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 19 ; Max HP
	bigdw 9 ; Atk
	bigdw 9 ; Def
	bigdw 9 ; Spd
	bigdw 11 ; SAtk
	bigdw 11 ; SDef
	db "EGG@@@@@@@@"

	db BULBASAUR
	db NO_ITEM
	db TACKLE, GROWL, CHARM, 0
	dw 00256 ; OT ID
	dt 135 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 15, 10, 10, 10 ; DVs
	db 35, 40, 20, 0 ; PP
	db 20 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 19 ; Max HP
	bigdw 10 ; Atk
	bigdw 10 ; Def
	bigdw 10 ; Spd
	bigdw 12 ; SAtk
	bigdw 12 ; SDef
	db "EGG@@@@@@@@"

	db CHARMANDER
	db NO_ITEM
	db SCRATCH, GROWL, CHARM, 0
	dw 04096 ; OT ID
	dt 135 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 15, 15, 15, 15 ; DVs
	db 35, 40, 20, 0 ; PP
	db 20 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 18 ; Max HP
	bigdw 10 ; Atk
	bigdw 9 ; Def
	bigdw 11 ; Spd
	bigdw 11 ; SAtk
	bigdw 10 ; SDef
	db "EGG@@@@@@@@"

	db CHARMANDER
	db NO_ITEM
	db SCRATCH, GROWL, CHARM, 0
	dw 00768 ; OT ID
	dt 135 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 15, 10, 10, 10 ; DVs
	db 35, 40, 20, 0 ; PP
	db 20 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 18 ; Max HP
	bigdw 10 ; Atk
	bigdw 10 ; Def
	bigdw 12 ; Spd
	bigdw 12 ; SAtk
	bigdw 11 ; SDef
	db "EGG@@@@@@@@"

	db SQUIRTLE
	db NO_ITEM
	db TACKLE, TAIL_WHIP, CHARM, 0
	dw 04096 ; OT ID
	dt 135 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 15, 10, 10, 10 ; DVs
	db 35, 30, 20, 0 ; PP
	db 20 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 19 ; Max HP
	bigdw 9 ; Atk
	bigdw 11 ; Def
	bigdw 9 ; Spd
	bigdw 10 ; SAtk
	bigdw 11 ; SDef
	db "EGG@@@@@@@@"

	db SQUIRTLE
	db NO_ITEM
	db TACKLE, TAIL_WHIP, CHARM, 0
	dw 00768 ; OT ID
	dt 135 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 15, 15, 15, 15 ; DVs
	db 35, 30, 20, 0 ; PP
	db 20 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 19 ; Max HP
	bigdw 10 ; Atk
	bigdw 12 ; Def
	bigdw 10 ; Spd
	bigdw 11 ; SAtk
	bigdw 12 ; SDef
	db "EGG@@@@@@@@"
	assert_table_length NUM_ODD_EGGS
