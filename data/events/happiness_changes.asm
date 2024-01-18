HappinessChanges:
; entries correspond to HAPPINESS_* constants
	table_width 3, HappinessChanges
	; change if happiness < 100, change if happiness < 200, change otherwise
	db  +10,  +4,  +2 ; Gained a level
	db  +10,  +5,  +3 ; Vitamin
	db  +1,  +1,  +0 ; X Item
	db  +20,  +10,  +5 ; Battled a Gym Leader
	db  +5,  +5,  +0 ; Learned a move
	db  -10,  -5,  -1 ; Lost to an enemy
	db  -10,  -10, -20 ; Fainted due to poison
	db  -5,  -5, -10 ; Lost to a much stronger enemy
	db  +20,  +20,  +20 ; Haircut (older brother) 1
	db  +20, +20, +20 ; Haircut (older brother) 2
	db  +20,  +20,  +20 ; Haircut (older brother) 3
	db  +10,  +10,  +10 ; Haircut (younger brother) 1
	db  +10,  +10,  +10 ; Haircut (younger brother) 2
	db +10, +10,  +10 ; Haircut (younger brother) 3
	db  -5,  -5, -10 ; Used Heal Powder or Energypowder (bitter)
	db -10, -10, -15 ; Used Energy Root (bitter)
	db -15, -15, -20 ; Used Revival Herb (bitter)
	db  +50,  +50,  +50 ; Grooming
	db +20,  +8,  +4 ; Gained a level in the place where it was caught
	assert_table_length NUM_HAPPINESS_CHANGES
