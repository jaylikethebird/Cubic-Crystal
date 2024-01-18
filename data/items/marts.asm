Marts:
; entries correspond to MART_* constants (see constants/mart_constants.asm)
	table_width 2, Marts
	dw MartCherrygrove
	dw MartCherrygroveDex
	dw MartViolet
	dw MartAzalea
	dw MartCianwood
	dw MartCianwoodTMnone
	dw MartCianwoodTMmud
	dw MartCianwoodTMwind
	dw MartCianwoodTMswag
	dw MartCianwoodTMswagwind
	dw MartCianwoodTMmudswag
	dw MartCianwoodTMmudwind
	dw MartCianwoodTMall
	dw MartCianwoodStone
	dw MartGoldenrod2F1
	dw MartGoldenrod2F2
	dw MartGoldenrod3F
	dw MartGoldenrod4F
	dw MartGoldenrod5Fnone
	dw MartGoldenrod5Fdig
	dw MartGoldenrod5Fheadbutt
	dw MartGoldenrod5Frocksmash
	dw MartGoldenrod5Fheadbuttdig
	dw MartGoldenrod5Fheadbuttrocksmash
	dw MartGoldenrod5Frocksmashdig
	dw MartGoldenrod5Fall
	dw MartOlivine
	dw MartEcruteak
	dw MartMahogany1
	dw MartMahoganynone
	dw MartMahoganysludgebomb
	dw MartMahoganyrollout
	dw MartMahoganyleechlife
	dw MartMahoganyrolloutsludgebomb
	dw MartMahoganyrolloutleechlife
	dw MartMahoganyleechlifesludgebomb
	dw MartMahoganyall
	dw MartBlackthorn
	dw MartViridian
	dw MartPewter
	dw MartCerulean
	dw MartLavender
	dw MartVermilion
	dw MartCeladon2F1
	dw MartCeladon2F2
	dw MartCeladon3Fnone
	dw MartCeladon3FRock
	dw MartCeladon3FSolar
	dw MartCeladon3FQuake
	dw MartCeladon3FRockSolar
	dw MartCeladon3FSolarQuake
	dw MartCeladon3FRockQuake
	dw MartCeladon3Fall
	dw MartCeladon4F
	dw MartCeladon5F1
	dw MartCeladon5F2
	dw MartFuchsia
	dw MartSaffron
	dw MartMtMoon
	dw MartIndigoPlateau
	dw MartIndigoTM1
	dw MartIndigoTM2
	dw MartUnderground
	dw MartCurse
	assert_table_length NUM_MARTS

MartCherrygrove:
	db 4 ; # items
	db POTION
	db ANTIDOTE
	db PARLYZ_HEAL
	db AWAKENING
	db -1 ; end

MartCherrygroveDex:
	db 5 ; # items
	db POKE_BALL
	db POTION
	db ANTIDOTE
	db PARLYZ_HEAL
	db AWAKENING
	db -1 ; end

MartViolet:
	db 9 ; # items
	db POKE_BALL
	db POTION
	db ANTIDOTE
	db PARLYZ_HEAL
	db AWAKENING
	db X_DEFEND
	db X_ATTACK
	db X_SPEED
	db FLOWER_MAIL
	db -1 ; end

MartAzalea:
	db 7 ; # items
	db CHARCOAL
	db POKE_BALL
	db POTION
	db SUPER_POTION
	db ANTIDOTE
	db PARLYZ_HEAL
	db FLOWER_MAIL
	db -1 ; end

MartCianwood:
	db 7 ; # items
	db BERRY_JUICE
	db PSNCUREBERRY
	db PRZCUREBERRY
	db MINT_BERRY
	db ICE_BERRY
    db BURNT_BERRY
	db BITTER_BERRY
	db -1 ; end

MartCianwoodTMnone:
	db 3 ; # items
	db TM_ROAR
	db TM_SWIFT
	db TM_DEFENSE_CURL
	db -1 ; end

MartCianwoodTMmud:
	db 4 ; # items
	db TM_ROAR
	db TM_SWIFT
	db TM_DEFENSE_CURL
	db TM_MUD_SLAP
	db -1 ; end

MartCianwoodTMwind:
	db 4 ; # items
	db TM_ROAR
	db TM_SWIFT
	db TM_DEFENSE_CURL
	db TM_NIGHTMARE
	db -1 ; end

MartCianwoodTMswag:
	db 4 ; # items
	db TM_ROAR
	db TM_SWIFT
	db TM_DEFENSE_CURL
	db TM_SWAGGER
	db -1 ; end

MartCianwoodTMswagwind:
	db 5 ; # items
	db TM_ROAR
	db TM_SWIFT
	db TM_DEFENSE_CURL
	db TM_SWAGGER
	db TM_NIGHTMARE
	db -1 ; end

MartCianwoodTMmudswag:
	db 5 ; # items
	db TM_ROAR
	db TM_SWIFT
	db TM_DEFENSE_CURL
	db TM_MUD_SLAP
	db TM_SWAGGER
	db -1 ; end

MartCianwoodTMmudwind:
	db 5 ; # items
	db TM_ROAR
	db TM_SWIFT
	db TM_DEFENSE_CURL
	db TM_MUD_SLAP
	db TM_NIGHTMARE
	db -1 ; end

MartCianwoodTMall:
	db 6 ; # items
	db TM_ROAR
	db TM_SWIFT
	db TM_DEFENSE_CURL
	db TM_MUD_SLAP
	db TM_SWAGGER
	db TM_NIGHTMARE
	db -1 ; end

MartCianwoodStone:
	db 6 ; # items
	db FIRE_STONE
	db WATER_STONE
	db THUNDERSTONE
	db LEAF_STONE
	db SUN_STONE
    db MOON_STONE
	db -1 ; end

MartGoldenrod2F1:
	db 7 ; # items
	db POTION
	db SUPER_POTION
	db ANTIDOTE
	db PARLYZ_HEAL
	db AWAKENING
	db BURN_HEAL
	db ICE_HEAL
	db -1 ; end

MartGoldenrod2F2:
	db 6 ; # items
	db POKE_BALL
	db GREAT_BALL
	db REVIVE
	db FULL_HEAL
	db POKE_DOLL
	db FLOWER_MAIL
	db -1 ; end

MartGoldenrod3F:
	db 7 ; # items
	db X_SPEED
	db X_SPECIAL
	db X_DEFEND
	db X_ATTACK
	db DIRE_HIT
	db GUARD_SPEC
	db X_ACCURACY
	db -1 ; end

MartGoldenrod4F:
	db 5 ; # items
	db PROTEIN
	db IRON
	db CARBOS
	db CALCIUM
	db HP_UP
	db -1 ; end

MartGoldenrod5F:
	db 3 ; # items
	db TM_THUNDERPUNCH
	db TM_FIRE_PUNCH
	db TM_ICE_PUNCH
	db -1 ; end

MartGoldenrod5Fnone:
	db 3 ; # items
	db TM_THUNDERPUNCH
	db TM_FIRE_PUNCH
	db TM_ICE_PUNCH
	db -1 ; end

MartGoldenrod5Fdig:
	db 4 ; # items
	db TM_THUNDERPUNCH
	db TM_FIRE_PUNCH
	db TM_ICE_PUNCH
	db TM_DIG
	db -1 ; end

MartGoldenrod5Fheadbutt:
	db 4 ; # items
	db TM_THUNDERPUNCH
	db TM_FIRE_PUNCH
	db TM_ICE_PUNCH
	db TM_HEADBUTT
	db -1 ; end

MartGoldenrod5Frocksmash:
	db 4 ; # items
	db TM_THUNDERPUNCH
	db TM_FIRE_PUNCH
	db TM_ICE_PUNCH
	db TM_ROCK_SMASH
	db -1 ; end

MartGoldenrod5Fheadbuttdig:
	db 5 ; # items
	db TM_THUNDERPUNCH
	db TM_FIRE_PUNCH
	db TM_ICE_PUNCH
	db TM_HEADBUTT
	db TM_DIG
	db -1 ; end

MartGoldenrod5Fheadbuttrocksmash:
	db 5 ; # items
	db TM_THUNDERPUNCH
	db TM_FIRE_PUNCH
	db TM_ICE_PUNCH
	db TM_HEADBUTT
	db TM_ROCK_SMASH
	db -1 ; end

MartGoldenrod5Frocksmashdig:
	db 5 ; # items
	db TM_THUNDERPUNCH
	db TM_FIRE_PUNCH
	db TM_ICE_PUNCH
	db TM_ROCK_SMASH
	db TM_DIG
	db -1 ; end

MartGoldenrod5Fall:
	db 6 ; # items
	db TM_THUNDERPUNCH
	db TM_FIRE_PUNCH
	db TM_ICE_PUNCH
	db TM_HEADBUTT
	db TM_ROCK_SMASH
	db TM_DIG
	db -1 ; end

MartOlivine:
	db 8 ; # items
	db GREAT_BALL
	db SUPER_POTION
	db HYPER_POTION
	db ANTIDOTE
	db PARLYZ_HEAL
	db AWAKENING
	db ICE_HEAL
	db SURF_MAIL
	db -1 ; end

MartEcruteak:
	db 10 ; # items
	db POKE_BALL
	db GREAT_BALL
	db POTION
	db SUPER_POTION
	db ANTIDOTE
	db PARLYZ_HEAL
	db AWAKENING
	db BURN_HEAL
	db ICE_HEAL
	db REVIVE
	db -1 ; end

MartMahogany1:
	db 4 ; # items
	db TINYMUSHROOM
	db SLOWPOKETAIL
	db POKE_BALL
	db POTION
	db -1 ; end

MartMahogany2:
	db 8 ; # items
	db RAGECANDYBAR
	db GREAT_BALL
	db SUPER_POTION
	db HYPER_POTION
	db ANTIDOTE
	db PARLYZ_HEAL
	db REVIVE
	db FLOWER_MAIL
	db -1 ; end

MartMahoganynone:
	db 3 ; # items
	db TM_ENDURE
	db TM_MEGA_PUNCH
	db TM_THIEF
	db -1 ; end

MartMahoganysludgebomb:
	db 4 ; # items
	db TM_ENDURE
	db TM_MEGA_PUNCH
	db TM_THIEF
	db TM_SLUDGE_BOMB
	db -1 ; end

MartMahoganyrollout:
	db 4 ; # items
	db TM_ENDURE
	db TM_MEGA_PUNCH
	db TM_THIEF
	db TM_ROLLOUT
	db -1 ; end

MartMahoganyleechlife:
	db 4 ; # items
	db TM_ENDURE
	db TM_MEGA_PUNCH
	db TM_THIEF
	db TM_LEECH_LIFE
	db -1 ; end

MartMahoganyrolloutsludgebomb:
	db 5 ; # items
	db TM_ENDURE
	db TM_MEGA_PUNCH
	db TM_THIEF
	db TM_ROLLOUT
	db TM_SLUDGE_BOMB
	db -1 ; end

MartMahoganyrolloutleechlife:
	db 5 ; # items
	db TM_ENDURE
	db TM_MEGA_PUNCH
	db TM_THIEF
	db TM_ROLLOUT
	db TM_LEECH_LIFE
	db -1 ; end

MartMahoganyleechlifesludgebomb:
	db 5 ; # items
	db TM_ENDURE
	db TM_MEGA_PUNCH
	db TM_THIEF
	db TM_LEECH_LIFE
	db TM_SLUDGE_BOMB
	db -1 ; end

MartMahoganyall:
	db 6 ; # items
	db TM_ENDURE
	db TM_MEGA_PUNCH
	db TM_THIEF
	db TM_ROLLOUT
	db TM_LEECH_LIFE
	db TM_SLUDGE_BOMB
	db -1 ; end

MartBlackthorn:
	db 6 ; # items
	db MAX_POTION
	db FULL_HEAL
	db REVIVE
	db ELIXER
	db X_DEFEND
	db X_ATTACK
	db -1 ; end

MartViridian:
	db 9 ; # items
	db ULTRA_BALL
	db HYPER_POTION
	db FULL_HEAL
	db REVIVE
	db ANTIDOTE
	db PARLYZ_HEAL
	db AWAKENING
	db BURN_HEAL
	db FLOWER_MAIL
	db -1 ; end

MartPewter:
	db 6 ; # items
	db GREAT_BALL
	db SUPER_POTION
	db ANTIDOTE
	db PARLYZ_HEAL
	db AWAKENING
	db BURN_HEAL
	db -1 ; end

MartCerulean:
	db 8 ; # items
	db GREAT_BALL
	db ULTRA_BALL
	db SUPER_POTION
	db FULL_HEAL
	db X_DEFEND
	db X_ATTACK
	db DIRE_HIT
	db SURF_MAIL
	db -1 ; end

MartLavender:
	db 7 ; # items
	db GREAT_BALL
	db POTION
	db SUPER_POTION
	db ANTIDOTE
	db PARLYZ_HEAL
	db AWAKENING
	db BURN_HEAL
	db -1 ; end

MartVermilion:
	db 8 ; # items
	db ULTRA_BALL
	db SUPER_POTION
	db HYPER_POTION
	db REVIVE
	db PARLYZ_HEAL
	db AWAKENING
	db BURN_HEAL
	db LITEBLUEMAIL
	db -1 ; end

MartCeladon2F1:
	db 5 ; # items
	db POTION
	db SUPER_POTION
	db HYPER_POTION
	db MAX_POTION
	db REVIVE
	db -1 ; end

MartCeladon2F2:
	db 9 ; # items
	db POKE_BALL
	db GREAT_BALL
	db ULTRA_BALL
	db FULL_HEAL
	db ANTIDOTE
	db BURN_HEAL
	db ICE_HEAL
	db AWAKENING
	db PARLYZ_HEAL
	db -1 ; end

MartCeladon3Fnone:
	db 4 ; # items
	db TM_PROTECT
	db TM_REST
	db TM_SLEEP_TALK
	db -1 ; end

MartCeladon3FRock:
	db 5 ; # items
	db TM_PROTECT
	db TM_REST
	db TM_SLEEP_TALK
	db TM_ROCK_SLIDE
	db -1 ; end

MartCeladon3FSolar:
	db 5 ; # items
	db TM_PROTECT
	db TM_REST
	db TM_SLEEP_TALK
	db TM_SOLARBEAM
	db -1 ; end

MartCeladon3FQuake:
	db 5 ; # items
	db TM_PROTECT
	db TM_REST
	db TM_SLEEP_TALK
	db TM_EARTHQUAKE
	db -1 ; end

MartCeladon3FRockSolar:
	db 6 ; # items
	db TM_PROTECT
	db TM_REST
	db TM_SLEEP_TALK
	db TM_ROCK_SLIDE
	db TM_SOLARBEAM
	db -1 ; end

MartCeladon3FSolarQuake:
	db 6 ; # items
	db TM_PROTECT
	db TM_REST
	db TM_SLEEP_TALK
	db TM_SOLARBEAM
	db TM_EARTHQUAKE
	db -1 ; end

MartCeladon3FRockQuake:
	db 6 ; # items
	db TM_PROTECT
	db TM_REST
	db TM_SLEEP_TALK
	db TM_ROCK_SLIDE
	db TM_EARTHQUAKE
	db -1 ; end

MartCeladon3Fall:
	db 7 ; # items
	db TM_PROTECT
	db TM_REST
	db TM_SLEEP_TALK
	db TM_ROCK_SLIDE
	db TM_SOLARBEAM
	db TM_EARTHQUAKE
	db -1 ; end

MartCeladon4F:
	db 3 ; # items
	db POKE_DOLL
	db LOVELY_MAIL
	db SURF_MAIL
	db -1 ; end

MartCeladon5F1:
	db 5 ; # items
	db HP_UP
	db PROTEIN
	db IRON
	db CARBOS
	db CALCIUM
	db -1 ; end

MartCeladon5F2:
	db 7 ; # items
	db X_ACCURACY
	db GUARD_SPEC
	db DIRE_HIT
	db X_ATTACK
	db X_DEFEND
	db X_SPEED
	db X_SPECIAL
	db -1 ; end

MartFuchsia:
	db 6 ; # items
	db GREAT_BALL
	db ULTRA_BALL
	db SUPER_POTION
	db HYPER_POTION
	db FULL_HEAL
	db FLOWER_MAIL
	db -1 ; end

MartSaffron:
	db 8 ; # items
	db GREAT_BALL
	db ULTRA_BALL
	db HYPER_POTION
	db MAX_POTION
	db FULL_HEAL
	db X_ATTACK
	db X_DEFEND
	db FLOWER_MAIL
	db -1 ; end

MartMtMoon:
	db 5 ; # items
	db POKE_DOLL
	db FRESH_WATER
	db SODA_POP
	db LEMONADE
	db PORTRAITMAIL
	db -1 ; end

MartIndigoPlateau:
	db 7 ; # items
	db ULTRA_BALL
	db HYPER_POTION
	db MAX_POTION
	db FULL_HEAL
	db FULL_RESTORE
	db REVIVE
	db ELIXER
	db -1 ; end

MartIndigoTM1:
	db 8 ; # items
	db TM_STEEL_WING
	db TM_FURY_CUTTER
	db TM_ATTRACT
	db TM_ICY_WIND
	db TM_IRON_TAIL
	db TM_DYNAMICPUNCH
	db TM_SHADOW_BALL
	db TM_DRAGONBREATH
	db -1 ; end

MartIndigoTM2:
	db 16 ; # items
	db TM_STEEL_WING
	db TM_FURY_CUTTER
	db TM_ATTRACT
	db TM_ICY_WIND
	db TM_IRON_TAIL
	db TM_DYNAMICPUNCH
	db TM_SHADOW_BALL
	db TM_DRAGONBREATH
	db TM_SANDSTORM
	db TM_RAIN_DANCE
	db TM_ZAP_CANNON
	db TM_GIGA_DRAIN
	db TM_TOXIC
	db TM_PSYCHIC_M
	db TM_SUNNY_DAY
	db TM_HIDDEN_POWER
	db -1 ; end

MartUnderground:
	db 4 ; # items
	db ENERGYPOWDER
	db ENERGY_ROOT
	db HEAL_POWDER
	db REVIVAL_HERB
	db -1 ; end

MartCurse:
	db 5 ; # items
	db ENERGY_ROOT
	db HEAL_POWDER
	db REVIVAL_HERB
	db TM_CURSE
	db TM_DREAM_EATER
	db -1 ; end

DefaultMart:
	db 2 ; # items
	db POKE_BALL
	db POTION
	db -1 ; end
