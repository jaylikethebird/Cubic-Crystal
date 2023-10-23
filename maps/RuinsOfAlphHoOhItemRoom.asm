	object_const_def
	const RUINSOFALPHHOOHITEMROOM_POKE_BALL1
	const RUINSOFALPHHOOHITEMROOM_POKE_BALL2
	
RuinsOfAlphHoOhItemRoom_MapScripts:
	def_scene_scripts

	def_callbacks

RuinsOfAlphHoOhItemRoomGoldBerry:
	itemball SACRED_ASH

RuinsOfAlphHoOhItemRoomMysteryberry:
	itemball SACRED_ASH

RuinsOfAlphHoOhItemRoomAncientReplica:
	jumptext RuinsOfAlphHoOhItemRoomAncientReplicaText

RuinsOfAlphHoOhItemRoomAncientReplicaText:
	text "It's a replica of"
	line "an ancient #-"
	cont "MON."
	done

RuinsOfAlphHoOhItemRoom_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  8, RUINS_OF_ALPH_HO_OH_CHAMBER, 5
	warp_event  4,  8, RUINS_OF_ALPH_HO_OH_CHAMBER, 5
	warp_event  3,  1, RUINS_OF_ALPH_HO_OH_WORD_ROOM, 1
	warp_event  4,  1, RUINS_OF_ALPH_HO_OH_WORD_ROOM, 2

	def_coord_events

	def_bg_events
	bg_event  2,  1, BGEVENT_READ, RuinsOfAlphHoOhItemRoomAncientReplica
	bg_event  5,  1, BGEVENT_READ, RuinsOfAlphHoOhItemRoomAncientReplica

	def_object_events
	object_event  2,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RuinsOfAlphHoOhItemRoomGoldBerry, EVENT_PICKED_UP_GOLD_BERRY_FROM_HO_OH_ITEM_ROOM
	object_event  5,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RuinsOfAlphHoOhItemRoomMysteryberry, EVENT_PICKED_UP_MYSTERYBERRY_FROM_HO_OH_ITEM_ROOM