	object_const_def
	const VIOLETNICKNAMESPEECHHOUSE_LASS

VioletNicknameSpeechHouse_MapScripts:
	def_scene_scripts

	def_callbacks

VioletNicknameSpeechHouseLassScript:
	jumptextfaceplayer VioletNicknameSpeechHouseLassText

MoveRelearnerScript:
	faceplayer
	opentext
	special MoveRelearner
	waitbutton
	closetext
	end

VioletNicknameSpeechHouseLassText:
	text "Mom is so smart!"
	line "She knows every"
	cont "#MON move!"

	para "My uncle lives in"
	line "BLACKTHORN CITY,"

	para "and he only knows"
	line "how to forget 'em."
	done

VioletNicknameSpeechHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, VIOLET_CITY, 4
	warp_event  4,  7, VIOLET_CITY, 4

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  4, SPRITE_TEACHER, 	SPRITEMOVEDATA_STANDING_RIGHT, 2, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, MoveRelearnerScript, -1
	object_event  5,  4, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, VioletNicknameSpeechHouseLassScript, -1
