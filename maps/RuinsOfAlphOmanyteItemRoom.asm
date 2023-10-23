	object_const_def
	const RUINSOFALPHOMANYTEITEMROOM_POKE_BALL1
	const RUINSOFALPHOMANYTEITEMROOM_POKE_BALL2

RuinsOfAlphOmanyteItemRoom_MapScripts:
	def_scene_scripts

	def_callbacks

RuinsOfAlphOmanyteItemRoomMysteryberry:
	itemball CLEAR_BELL

RuinsOfAlphOmanyteItemRoomMysticWater:
	itemball MAX_REVIVE

RuinsOfAlphOmanyteItemRoomAncientReplica:
	jumptext RuinsOfAlphOmanyteItemRoomAncientReplicaText

RuinsOfAlphOmanyteItemRoomAncientReplicaText:
	text "It's a replica of"
	line "an ancient #-"
	cont "MON."
	done

RuinsOfAlphOmanyteItemRoom_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  8, RUINS_OF_ALPH_OMANYTE_CHAMBER, 5
	warp_event  4,  8, RUINS_OF_ALPH_OMANYTE_CHAMBER, 5
	warp_event  3,  1, RUINS_OF_ALPH_OMANYTE_WORD_ROOM, 1
	warp_event  4,  1, RUINS_OF_ALPH_OMANYTE_WORD_ROOM, 2

	def_coord_events

	def_bg_events
	bg_event  2,  1, BGEVENT_READ, RuinsOfAlphOmanyteItemRoomAncientReplica
	bg_event  5,  1, BGEVENT_READ, RuinsOfAlphOmanyteItemRoomAncientReplica

	def_object_events
	object_event  2,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RuinsOfAlphOmanyteItemRoomMysteryberry, EVENT_GOT_CLEAR_BELL
	object_event  5,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RuinsOfAlphOmanyteItemRoomMysticWater, EVENT_PICKED_UP_MYSTIC_WATER_FROM_OMANYTE_ITEM_ROOM