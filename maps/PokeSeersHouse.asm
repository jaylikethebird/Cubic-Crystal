	object_const_def
	const POKESEERSHOUSE_GRANNY

PokeSeersHouse_MapScripts:
	def_scene_scripts

	def_callbacks

SeerScript:
 faceplayer
    opentext
    checkevent EVENT_GOT_TM31_MUD_SLAP
    iftrue .mudcheckevent
    checkevent EVENT_OLIVINE_LIGHTHOUSE_5F_TM_SWAGGER
    iftrue .swagcheckevent
    checkevent EVENT_GOT_TM50_NIGHTMARE
    iftrue .windcheckevent
    sjump .none

.mudcheckevent:
    checkevent EVENT_OLIVINE_LIGHTHOUSE_5F_TM_SWAGGER
    iftrue .both_mud_swag
    checkevent EVENT_GOT_TM50_NIGHTMARE
    iftrue .mud_wind
    sjump .onlymud

.swagcheckevent:
    checkevent EVENT_GOT_TM31_MUD_SLAP
    iftrue .both_mud_swag
    checkevent EVENT_GOT_TM50_NIGHTMARE
    iftrue .wind_swag
    sjump .onlyswag

.windcheckevent:
    checkevent EVENT_GOT_TM31_MUD_SLAP
    iftrue .both_mud_swag
    checkevent EVENT_OLIVINE_LIGHTHOUSE_5F_TM_SWAGGER
    iftrue .wind_swag
    sjump .onlywind

.both_mud_swag:
    checkevent 	EVENT_GOT_TM50_NIGHTMARE
    iftrue .all
	pokemart MARTTYPE_STANDARD, MART_CIANWOODTMMUDSWAG
    sjump .exit

.mud_wind:
    pokemart MARTTYPE_STANDARD, MART_CIANWOODTMMUDWIND
    sjump .exit

.onlymud:
    pokemart MARTTYPE_STANDARD, MART_CIANWOODTMMUD
    sjump .exit

.onlyswag:
    pokemart MARTTYPE_STANDARD, MART_CIANWOODTMSWAG
    sjump .exit

.wind_swag:
    pokemart MARTTYPE_STANDARD, MART_CIANWOODTMSWAGWIND
    sjump .exit

.onlywind:
    pokemart MARTTYPE_STANDARD, MART_CIANWOODTMWIND
    sjump .exit

.none:
    pokemart MARTTYPE_STANDARD, MART_CIANWOODTMNONE
    sjump .exit

.all
    pokemart MARTTYPE_STANDARD, MART_CIANWOODTMALL
    sjump .exit
.exit:
    closetext
    end

PokeSeersHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, CIANWOOD_CITY, 7
	warp_event  3,  7, CIANWOOD_CITY, 7

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, SeerScript, -1
