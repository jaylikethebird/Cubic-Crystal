	db CHARMELEON ; 005

	db  58,  64,  58,  80,  80,  65
	;   hp  atk  def  spd  sat  sdf

	db FIRE, FIRE ; type
	db 45 ; catch rate
	db 142 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/charmeleon/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_MONSTER, EGG_DRAGON ; egg groups

	; tm/hm learnset
	tmhm DYNAMICPUNCH, HEADBUTT, CURSE, TOXIC, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, ROCK_SLIDE, PROTECT, ENDURE, FRUSTRATION, IRON_TAIL, DRAGONBREATH, RETURN, DIG, MUD_SLAP, SWORDS_DANCE, MEGA_PUNCH, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, FIRE_BLAST, SWIFT, DEFENSE_CURL, REST, ATTRACT, FIRE_PUNCH, FURY_CUTTER, CUT, STRENGTH, FLAMETHROWER
	; end
