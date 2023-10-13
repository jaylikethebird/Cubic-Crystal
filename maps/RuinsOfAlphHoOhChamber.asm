	object_const_def
	const RUINSOFALPH_MORTY

RuinsOfAlphHoOhChamber_MapScripts:
	def_scene_scripts
	scene_script RuinsOfAlphHoOhChamberCheckWallScene, SCENE_RUINSOFALPHHOOHCHAMBER_CHECK_WALL
	scene_script RuinsOfAlphHoOhChamberNoopScene,      SCENE_RUINSOFALPHHOOHCHAMBER_NOOP

	def_callbacks
	callback MAPCALLBACK_TILES, RuinsOfAlphHoOhChamberHiddenDoorsCallback

RuinsOfAlphHoOhChamberCheckWallScene:
	special HoOhChamber
	checkevent EVENT_WALL_OPENED_IN_HO_OH_CHAMBER
	iftrue .OpenWall
	end

.OpenWall:
	sdefer RuinsOfAlphHoOhChamberWallOpenScript
	end

RuinsOfAlphHoOhChamberNoopScene:
	end

RuinsOfAlphHoOhChamberHiddenDoorsCallback:
	checkevent EVENT_WALL_OPENED_IN_HO_OH_CHAMBER
	iftrue .WallOpen
	changeblock 4, 0, $2e ; closed wall
.WallOpen:
	checkevent EVENT_SOLVED_HO_OH_PUZZLE
	iffalse .FloorClosed
	endcallback

.FloorClosed:
	changeblock 2, 2, $01 ; left floor
	changeblock 4, 2, $02 ; right floor
	endcallback

RuinsOfAlphHoOhChamberWallOpenScript:
	pause 30
	earthquake 30
	showemote EMOTE_SHOCK, PLAYER, 20
	pause 30
	playsound SFX_STRENGTH
	changeblock 4, 0, $30 ; open wall
	reloadmappart
	earthquake 50
	setscene SCENE_RUINSOFALPHHOOHCHAMBER_NOOP
	closetext
	end

RuinsOfAlphHoOhChamberPuzzle:
	refreshscreen
	setval UNOWNPUZZLE_HO_OH
	special UnownPuzzle
	closetext
	iftrue .PuzzleComplete
	end

.PuzzleComplete:
	setevent EVENT_RUINS_OF_ALPH_INNER_CHAMBER_TOURISTS
	setevent EVENT_SOLVED_HO_OH_PUZZLE
	setflag ENGINE_UNLOCKED_UNOWNS_X_TO_Z
	setmapscene RUINS_OF_ALPH_INNER_CHAMBER, SCENE_RUINSOFALPHINNERCHAMBER_STRANGE_PRESENCE
	earthquake 30
	showemote EMOTE_SHOCK, PLAYER, 15
	changeblock 2, 2, $18 ; left hole
	changeblock 4, 2, $19 ; right hole
	reloadmappart
	playsound SFX_STRENGTH
	earthquake 80
	applymovement PLAYER, RuinsOfAlphHoOhChamberSkyfallTopMovement
	playsound SFX_KINESIS
	waitsfx
	pause 20
	warpcheck
	end

RuinsOfAlphHoOhChamberAncientReplica:
	jumptext RuinsOfAlphHoOhChamberAncientReplicaText

RuinsOfAlphHoOhChamberDescriptionSign:
	jumptext RuinsOfAlphHoOhChamberDescriptionText

RuinsOfAlphHoOhChamberWallPatternLeft:
	opentext
	writetext RuinsOfAlphHoOhChamberWallPatternLeftText
	setval UNOWNWORDS_HO_OH
	special DisplayUnownWords
	closetext
	end

RuinsOfAlphHoOhChamberWallPatternRight:
	checkevent EVENT_WALL_OPENED_IN_HO_OH_CHAMBER
	iftrue .WallOpen
	opentext
	writetext RuinsOfAlphHoOhChamberWallPatternRightText
	setval UNOWNWORDS_HO_OH
	special DisplayUnownWords
	closetext
	end

.WallOpen:
	opentext
	writetext RuinsOfAlphHoOhChamberWallHoleText
	waitbutton
	closetext
	end

AlphMortyScript:
	faceplayer
	opentext
	checkitem CLEAR_BELL
	iftrue .ClearBell
	checkevent EVENT_FOUGHT_EUSINE
	iftrue .EusineText
	writetext FirstText
	waitbutton
	closetext
	end

.ClearBell:
	writetext ClearBellText
	waitbutton
	closetext
	special FadeBlackQuickly
	special ReloadSpritesNoPalettes
	disappear RUINSOFALPH_MORTY
	pause 15
	special FadeInQuickly
	setevent EVENT_MORTY_RETURNS
	end

.EusineText:
	writetext EusineText
	waitbutton
	closetext
	end

RuinsOfAlphHoOhChamberSkyfallTopMovement:
	skyfall_top
	step_end


RuinsOfAlphHoOhChamberWallPatternLeftText:
	text "Patterns appeared"
	line "on the walls…"
	done

RuinsOfAlphHoOhChamberUnownText: ; unreferenced
	text "It's UNOWN text!"
	done

RuinsOfAlphHoOhChamberWallPatternRightText:
	text "Patterns appeared"
	line "on the walls…"
	done

RuinsOfAlphHoOhChamberWallHoleText:
	text "There's a big hole"
	line "in the wall!"
	done

RuinsOfAlphHoOhChamberAncientReplicaText:
	text "It's a replica of"
	line "an ancient #-"
	cont "MON."
	done

RuinsOfAlphHoOhChamberDescriptionText:
	text "A #MON that"
	line "flew gracefully on"

	para "rainbow-colored"
	line "wings."
	done

ClearBellText:
	text "Oh…oh my…"

	para "<PLAYER>, where"
	line "did you find that"
	cont "CLEAR BELL?"

	para "That…"

	para "That's it."

	para "You awakened the"
	line "three beasts, and"

	para "you've found the"
	line "BELL that soothes"
	
	para "the raging fires"
	line "of HO-OH."

	para "I didn't want to"
	line "admit it, but now"
	cont "it's undeniable."

	para "The figure in my"
	line "vision of a strong"

	para "trainer gaining"
	line "the acceptance of"
	cont "a living legend…"

	para "It was never going"
	line "to be me."
	
	para "<PLAYER>, that's"
	line "YOUR destiny."

	para "…"

	para "If you choose to"
	line "accept it, come to"

	para "the ECRUTEAK GYM"
	line "and face me."
	done

EusineText:
	text "<PLAYER>!"

	para "I see you're a"
	line "fellow scholar of"
	cont "the RUINS OF ALPH."

	para "I've been poring"
	line "over this chamber"
	cont "for clues."

	para "I just know it's"
	line "connected to the"

	para "rainbow-winged"
	line "#MON that I've"
	cont "long dreamed of."

	para "I had a vision"
	line "of an ancient"

	para "water #MON with"
	line "a spiral shell."

	para "Maybe in another"
	line "chamber?"
	done

FirstText:
	text "<PLAYER>!"

	para "I see you're a"
	line "fellow scholar of"
	cont "the RUINS OF ALPH."

	para "I've been poring"
	line "over this chamber"
	cont "for clues."

	para "I just know it's"
	line "connected to the"

	para "rainbow-winged"
	line "#MON that I've"
	cont "long dreamed of."

	para "But what could it"
	line "all mean?"
	done

RuinsOfAlphHoOhChamber_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  9, RUINS_OF_ALPH_OUTSIDE, 1
	warp_event  4,  9, RUINS_OF_ALPH_OUTSIDE, 1
	warp_event  3,  3, RUINS_OF_ALPH_INNER_CHAMBER, 2
	warp_event  4,  3, RUINS_OF_ALPH_INNER_CHAMBER, 3
	warp_event  4,  0, RUINS_OF_ALPH_HO_OH_ITEM_ROOM, 1

	def_coord_events

	def_bg_events
	bg_event  2,  3, BGEVENT_READ, RuinsOfAlphHoOhChamberAncientReplica
	bg_event  5,  3, BGEVENT_READ, RuinsOfAlphHoOhChamberAncientReplica
	bg_event  3,  2, BGEVENT_UP, RuinsOfAlphHoOhChamberPuzzle
	bg_event  4,  2, BGEVENT_UP, RuinsOfAlphHoOhChamberDescriptionSign
	bg_event  3,  0, BGEVENT_UP, RuinsOfAlphHoOhChamberWallPatternLeft
	bg_event  4,  0, BGEVENT_UP, RuinsOfAlphHoOhChamberWallPatternRight

	def_object_events

	object_event  3,  1, SPRITE_MORTY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, AlphMortyScript, -1

