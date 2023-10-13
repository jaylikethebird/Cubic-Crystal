	object_const_def
	const CELADONDEPTSTORE3F_CLERK
	const CELADONDEPTSTORE3F_YOUNGSTER
	const CELADONDEPTSTORE3F_GAMEBOY_KID1
	const CELADONDEPTSTORE3F_GAMEBOY_KID2
	const CELADONDEPTSTORE3F_SUPER_NERD

CeladonDeptStore3F_MapScripts:
	def_scene_scripts

	def_callbacks

CeladonDeptStore3FClerkScript:
	faceplayer
    opentext
    checkevent EVENT_MOUNT_MORTAR_2F_INSIDE_TM_ROCK_SLIDE
    iftrue .rockslidecheckevent
    checkevent EVENT_ROUTE_27_TM_SOLARBEAM
    iftrue .solarbeamcheckevent
    checkevent EVENT_VICTORY_ROAD_TM_EARTHQUAKE
    iftrue .earthquakecheckevent
    sjump .none

.rockslidecheckevent:
    checkevent EVENT_ROUTE_27_TM_SOLARBEAM
    iftrue .both_rockslide_solarbeam
    checkevent EVENT_VICTORY_ROAD_TM_EARTHQUAKE
    iftrue .rockslide_earthquake
    sjump .onlyrockslide

.solarbeamcheckevent:
    checkevent EVENT_MOUNT_MORTAR_2F_INSIDE_TM_ROCK_SLIDE
    iftrue .both_rockslide_solarbeam
    checkevent EVENT_VICTORY_ROAD_TM_EARTHQUAKE
    iftrue .earthquake_solarbeam
    sjump .onlysolarbeam

.earthquakecheckevent:
    checkevent EVENT_MOUNT_MORTAR_2F_INSIDE_TM_ROCK_SLIDE
    iftrue .both_rockslide_solarbeam
    checkevent EVENT_ROUTE_27_TM_SOLARBEAM
    iftrue .earthquake_solarbeam
    sjump .onlyearthquake

.both_rockslide_solarbeam:
    checkevent 	EVENT_VICTORY_ROAD_TM_EARTHQUAKE
    iftrue .all
	pokemart MARTTYPE_STANDARD, Mart_Celadon3FRockSolar
    sjump .exit

.rockslide_earthquake:
    pokemart MARTTYPE_STANDARD, Mart_Celadon3FRockQuake
    sjump .exit

.onlyrockslide:
    pokemart MARTTYPE_STANDARD, Mart_Celadon3FRock
    sjump .exit

.onlysolarbeam:
    pokemart MARTTYPE_STANDARD, Mart_Celadon3FSolar
    sjump .exit

.earthquake_solarbeam:
    pokemart MARTTYPE_STANDARD, Mart_Celadon3FSolarQuake
    sjump .exit

.onlyearthquake:
    pokemart MARTTYPE_STANDARD, Mart_Celadon3FQuake
    sjump .exit

.none:
    pokemart MARTTYPE_STANDARD, Mart_Celadon3Fnone
    sjump .exit

.all
    pokemart MARTTYPE_STANDARD, Mart_Celadon3Fall
    sjump .exit
.exit:
    closetext
    end

CeladonDeptStore3FYoungsterScript:
	jumptextfaceplayer CeladonDeptStore3FYoungsterText

CeladonDeptStore3FGameboyKid1Script:
	faceplayer
	opentext
	writetext CeladonDeptStore3FGameboyKid1Text
	waitbutton
	closetext
	turnobject CELADONDEPTSTORE3F_GAMEBOY_KID1, DOWN
	end

CeladonDeptStore3FGameboyKid2Script:
	faceplayer
	opentext
	writetext CeladonDeptStore3FGameboyKid2Text
	waitbutton
	closetext
	turnobject CELADONDEPTSTORE3F_GAMEBOY_KID2, DOWN
	end

CeladonDeptStore3FSuperNerdScript:
	jumptextfaceplayer CeladonDeptStore3FSuperNerdText

CeladonDeptStore3FElevatorButton:
	jumpstd ElevatorButtonScript

CeladonDeptStore3FDirectory:
	jumptext CeladonDeptStore3FDirectoryText

CeladonDeptStore3FYoungsterText:
	text "I can't decide"
	line "which #MON I"

	para "should use this TM"
	line "on…"
	done

CeladonDeptStore3FGameboyKid1Text:
	text "Uh-oh! I traded my"
	line "#MON without"

	para "removing the UP-"
	line "GRADE from it."
	done

CeladonDeptStore3FGameboyKid2Text:
	text "Yeah! I'm finally"
	line "getting a PORYGON!"

	para "I'm no good at the"
	line "slots, so I could"

	para "never get enough"
	line "coins…"

	para "…Huh?"

	para "The traded PORYGON"
	line "turned into a dif-"
	cont "ferent #MON!"
	done

CeladonDeptStore3FSuperNerdText:
	text "The TM SHOP sells"
	line "some rare moves."
	done

CeladonDeptStore3FDirectoryText:
	text "3F: TM SHOP"

	para "Make Your #MON"
	line "Stronger!"
	done

CeladonDeptStore3F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 12,  0, CELADON_DEPT_STORE_2F, 1
	warp_event 15,  0, CELADON_DEPT_STORE_4F, 2
	warp_event  2,  0, CELADON_DEPT_STORE_ELEVATOR, 1

	def_coord_events

	def_bg_events
	bg_event 14,  0, BGEVENT_READ, CeladonDeptStore3FDirectory
	bg_event  3,  0, BGEVENT_READ, CeladonDeptStore3FElevatorButton

	def_object_events
	object_event  7,  1, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CeladonDeptStore3FClerkScript, -1
	object_event  6,  4, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CeladonDeptStore3FYoungsterScript, -1
	object_event  9,  1, SPRITE_GAMEBOY_KID, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CeladonDeptStore3FGameboyKid1Script, -1
	object_event 10,  1, SPRITE_GAMEBOY_KID, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CeladonDeptStore3FGameboyKid2Script, -1
	object_event 13,  4, SPRITE_SUPER_NERD, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CeladonDeptStore3FSuperNerdScript, -1
