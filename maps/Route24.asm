	object_const_def
	const ROUTE24_COOLTRAINER

Route24_MapScripts:
	def_scene_scripts

	def_callbacks

Route24Script:
	faceplayer
	opentext
	writetext Route24Text
	waitbutton
	closetext
	end

Route24Text:
	text "Are you looking"
	line "for MISTY?"

	para "She took her new"
	line "girlfriend through"
	cont "the NUGGET SIX."

	para "Her dates always"
	line "end up involving"
	cont "#MON battles!"
	done

Route24_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events

	def_bg_events

	def_object_events
	object_event  8,  7, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route24Script, EVENT_BEAT_MISTY
