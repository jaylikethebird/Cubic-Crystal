; Pokémon swarms in grass

SwarmGrassWildMons:

; Dunsparce swarm
	map_id DARK_CAVE_VIOLET_ENTRANCE
	db 4 percent, 4 percent, 4 percent ; encounter rates: morn/day/nite
	; morn
	db 3, GEODUDE
	db 3, DUNSPARCE
	db 3, ZUBAT
	db 2, SLUGMA
	db 2, DUNSPARCE
	db 4, DUNSPARCE
	db 4, DUNSPARCE
	; day
	db 3, GEODUDE
	db 3, DUNSPARCE
	db 3, ZUBAT
	db 2, SLUGMA
	db 2, DUNSPARCE
	db 4, DUNSPARCE
	db 4, DUNSPARCE
	; nite
	db 3, GEODUDE
	db 3, DUNSPARCE
	db 3, SLUGMA
	db 2, SLUGMA
	db 2, DUNSPARCE
	db 4, DUNSPARCE
	db 4, DUNSPARCE

; Yanma swarm
	map_id ROUTE_35
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 15, ABRA
	db 17, YANMA
	db 18, GROWLITHE
	db 15, NIDORAN_F
	db 15, NIDORAN_M
	db 16, DODUO
	db 17, YANMA
	; day
	db 15, ABRA
	db 17, YANMA
	db 18, GROWLITHE
	db 15, NIDORAN_F
	db 15, NIDORAN_M
	db 16, DODUO
	db 17, YANMA
	; nite
	db 15, DROWZEE
	db 17, YANMA
	db 18, HOUNDOUR
	db 16, GASTLY
	db 16, GASTLY
	db 16, HOUNDOUR
	db 17, YANMA

	db -1 ; end
