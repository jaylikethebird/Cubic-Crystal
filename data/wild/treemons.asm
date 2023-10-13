TreeMons:
; entries correspond to TREEMON_SET_* constants
	table_width 2, TreeMons
	dw TreeMonSet_City
	dw TreeMonSet_Canyon
	dw TreeMonSet_Town
	dw TreeMonSet_Route
	dw TreeMonSet_Kanto
	dw TreeMonSet_Lake
	dw TreeMonSet_Forest
	dw TreeMonSet_Rock
	assert_table_length NUM_TREEMON_SETS
	dw TreeMonSet_City ; unused

; Two tables each (common, rare).
; Structure:
;	db  %, species, level

TreeMonSet_City:
; common
	db 50, HOOTHOOT,    10
	db 15, HOOTHOOT,    13
	db 15, HOOTHOOT,    16
	db 10, AIPOM,     10
	db  5, AIPOM,     13
	db  5, AIPOM,     16
	db -1
; rare
	db 50, HOOTHOOT,    13
	db 15, HOOTHOOT,    16
	db 15, HOOTHOOT,    19
	db 10, AIPOM,      13
	db  5, AIPOM,      16
	db  5, AIPOM,      19
	db -1

TreeMonSet_Canyon:
; common
	db 50, SPEAROW,    10
	db 15, SPEAROW,    13
	db 15, SPEAROW,    16
	db 10, HERACROSS,  10
	db  5, HERACROSS,  13
	db  5, HERACROSS,  16
	db -1
; rare
	db 50, SPEAROW,    13
	db 15, SPEAROW,    16
	db 15, SPEAROW,    19
	db 10, HERACROSS,  13
	db  5, HERACROSS,  16
	db  5, HERACROSS,  19
	db -1

TreeMonSet_Town:

TreeMonSet_Route:
; common
	db 50, EXEGGCUTE,  10
	db 15, EXEGGCUTE,  13
	db 15, EXEGGCUTE,  16
	db 10, PINECO,     10
	db  5, PINECO,     13
	db  5, PINECO,     16
	db -1
; rare
	db 50, EXEGGCUTE,  13
	db 15, EXEGGCUTE,  16
	db 15, EXEGGCUTE,  19
	db 10, PINECO,     13
	db  5, PINECO,     16
	db  5, PINECO,     19
	db -1

TreeMonSet_Kanto:
; common
	db 50, FORRETRESS, 50
	db 15, HERACROSS,  50
	db 15, AIPOM,      50
	db 10, PINECO,     50
	db  5, EXEGGCUTE,  50
	db  5, EXEGGCUTE,  50
	db -1
; rare
	db 50, FORRETRESS, 50
	db 15, HERACROSS,  50
	db 15, AIPOM,      50
	db 10, PINECO,     50
	db  5, EXEGGCUTE,  50
	db  5, EXEGGCUTE,  50
	db -1

TreeMonSet_Lake:
TreeMonSet_Forest:

TreeMonSet_Rock:
	db 70, KRABBY,     20
	db 30, SHUCKLE,    20
	db -1
