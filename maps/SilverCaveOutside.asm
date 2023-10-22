	object_const_def
	const SILVER_CLAIR

SilverCaveOutside_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, SilverCaveOutsideFlypointCallback

SilverCaveOutsideFlypointCallback:
	setflag ENGINE_FLYPOINT_SILVER_CAVE
	endcallback

SilverClair:
	faceplayer
	opentext
	writetext SilverClairText
	waitbutton
	closetext
	playsound SFX_WARP_TO
	applymovement SILVER_CLAIR, ClairTeleport
	disappear SILVER_CLAIR
	setevent EVENT_CLAIR_SILVER
	end

ClairTeleport:
	teleport_from
	step_end

SilverClairText:
	text "<PLAYER>."
	
	para "I've been waiting"
	line "for you."

	para "I'm not proud to"
	line "admit, I was happy"

	para "to learn you beat"
	line "LANCE for my own,"
	cont "selfish reasons."

	para "It took the sting"
	line "out of my defeat,"

	para "knowing it was to"
	line "a future CHAMPION."
	
	para "But I want to be"
	line "better than that."

	para "My pride has only"
	line "gotten in my way."

	para "So I hiked here,"
	line "to MT.SILVER,"

	para "knowing you would"
	line "show up one day."

	para "Not to battle you,"
	line "but to apologize"

	para "for my behavior"
	line "in BLACKTHORN,"

	para "and to invite you"
	line "to train with me"
	cont "in DRAGON'S DEN."

	para "Every LEADER in"
	line "JOHTO has been"

	para "inspired by you to"
	line "reach their full"

	para "potential, and we"
	line "would love to show"

	para "you how far we've"
	line "come."

	para "You'll always be"
	line "welcome among us,"
	cont "CHAMPION <PLAYER>!"
	done

MtSilverPokecenterSign:
	jumpstd PokecenterSignScript

MtSilverSign:
	jumptext MtSilverSignText

SilverCaveOutsideHiddenFullRestore:
	hiddenitem FULL_RESTORE, EVENT_SILVER_CAVE_OUTSIDE_HIDDEN_FULL_RESTORE

MtSilverSignText:
	text "MT.SILVER"
	done

SilverCaveOutside_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 23, 19, SILVER_CAVE_POKECENTER_1F, 1
	warp_event 18, 11, SILVER_CAVE_ROOM_1, 1

	def_coord_events

	def_bg_events
	bg_event 24, 19, BGEVENT_READ, MtSilverPokecenterSign
	bg_event 17, 13, BGEVENT_READ, MtSilverSign
	bg_event  9, 25, BGEVENT_ITEM, SilverCaveOutsideHiddenFullRestore

	def_object_events
	object_event  18,  12, SPRITE_CLAIR, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SilverClair, EVENT_CLAIR_SILVER
