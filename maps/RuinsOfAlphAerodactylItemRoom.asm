	object_const_def
	const RUINSOFALPHAERODACTYLITEMROOM_POKE_BALL1
	const RUINSOFALPHAERODACTYLITEMROOM_POKE_BALL2

RuinsOfAlphAerodactylItemRoom_MapScripts:
	def_scene_scripts

	def_callbacks

RuinsOfAlphAerodactylItemRoomGoldBerry:
	itemball HELIX_FOSSIL

RuinsOfAlphAerodactylItemRoomMoonStone:
	itemball REVIVE

RuinsOfAlphAerodactylItemRoomAncientReplica:
	jumptext RuinsOfAlphAerodactylItemRoomAncientReplicaText

RuinsOfAlphAerodactylItemRoomAncientReplicaText:
	text "It's a replica of"
	line "an ancient #-"
	cont "MON."
	done

RuinsOfAlphAerodactylItemRoom_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  8, RUINS_OF_ALPH_AERODACTYL_CHAMBER, 1
	warp_event  4,  8, RUINS_OF_ALPH_AERODACTYL_CHAMBER, 2
	warp_event  3,  1, RUINS_OF_ALPH_AERODACTYL_WORD_ROOM, 1
	warp_event  4,  1, RUINS_OF_ALPH_AERODACTYL_WORD_ROOM, 2

	def_coord_events

	def_bg_events
	bg_event  2,  1, BGEVENT_READ, RuinsOfAlphAerodactylItemRoomAncientReplica
	bg_event  5,  1, BGEVENT_READ, RuinsOfAlphAerodactylItemRoomAncientReplica

	def_object_events
	object_event  2,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RuinsOfAlphAerodactylItemRoomGoldBerry, EVENT_PICKED_UP_GOLD_BERRY_FROM_AERODACTYL_ITEM_ROOM
	object_event  5,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RuinsOfAlphAerodactylItemRoomMoonStone, EVENT_PICKED_UP_MOON_STONE_FROM_AERODACTYL_ITEM_ROOM