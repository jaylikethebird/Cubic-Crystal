	object_const_def
	const RUINSOFALPHHOOHWORDROOM_WILL

RuinsOfAlphHoOhWordRoom_MapScripts:
	def_scene_scripts

	def_callbacks

WillAlphScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_GS_BALL_FROM_POKECOM_CENTER
	iftrue .WillDone
	writetext WillWelcomeAlph
	waitbutton
	verbosegiveitem GS_BALL
	setevent EVENT_GOT_GS_BALL_FROM_POKECOM_CENTER
.WillDone
	writetext WillDoneAlph
	waitbutton
	closetext
	end

WillWelcomeAlph:
	text "At long last."

	para "<PLAYER>, I'm sure"
	line "you're familiar"

	para "with the power of"
	line "psychic foresight."

	para "JOHTO and KANTO"
	line "each has a seer in"
	cont "MORTY and SABRINA."

	para "I, too, have the"
	line "ability to see"

	para "beyond, but my"
	line "visions are not of"
	cont "the future."

	para "I can vividly see"
	line "events from the"

	para "past, from ancient"
	line "times to just last"
	cont "week."

	para "It's what draws me"
	line "to ruins such as"

	para "these, and what"
	line "compels me to give"
	cont "you this!"
	done

WillDoneAlph:
	text "Trouble brews in"
	line "ILEX FOREST, west"
	cont "of AZALEA TOWN."

	para "This artifact was"
	line "used in eras past"

	para "to call upon and"
	line "tame the Guardian"
	cont "of the Forest."

	para "Bring it to an"
	line "APRICORN expert"

	para "to make use of it"
	line "in modern times."

	para "I can't see the"
	line "future, but I have"

	para "faith in you,"
	line "CHAMPION!"
	done

RuinsOfAlphHoOhWordRoom_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  9,  9, RUINS_OF_ALPH_HO_OH_ITEM_ROOM, 3
	warp_event 10,  9, RUINS_OF_ALPH_HO_OH_ITEM_ROOM, 4
	warp_event 17, 21, RUINS_OF_ALPH_INNER_CHAMBER, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event 9, 8, SPRITE_WILL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, WillAlphScript, EVENT_GAVE_GS_BALL_TO_KURT
