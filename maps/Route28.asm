	object_const_def
	const SILVER_MOLTRES

Route28_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, MoltresAppear

MoltresAppear:
	checkevent EVENT_FOUGHT_MOLTRES2
	iftrue .NoAppear
	checkevent EVENT_SHOWED_Zapdos_TO_BILLS_GRANDPA
	iftrue .Appear
	sjump .NoAppear

.Appear:
	appear SILVER_MOLTRES
	endcallback

.NoAppear:
	disappear SILVER_MOLTRES
	endcallback

MoltresScript:
	faceplayer
	opentext
	writetext MoltresText
	cry MOLTRES
	pause 15
	closetext
	setevent EVENT_FOUGHT_MOLTRES
	loadvar VAR_BATTLETYPE, BATTLETYPE_FORCEITEM
	loadwildmon MOLTRES, 60
	startbattle
	disappear SILVER_MOLTRES
	reloadmapafterbattle
	end

MoltresText:
	text "TRESSSSS!"
	done

Route28Sign:
	jumptext Route28SignText

Route28HiddenRareCandy:
	hiddenitem RARE_CANDY, EVENT_ROUTE_28_HIDDEN_RARE_CANDY

Route28SignText:
	text "ROUTE 28"
	done

Route28_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7,  3, ROUTE_28_STEEL_WING_HOUSE, 1
	warp_event 33,  5, VICTORY_ROAD_GATE, 7

	def_coord_events

	def_bg_events
	bg_event 31,  5, BGEVENT_READ, Route28Sign
	bg_event 25,  2, BGEVENT_ITEM, Route28HiddenRareCandy

	def_object_events
	object_event 20, 2, SPRITE_MOLTRES, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, MoltresScript, EVENT_MOLTRES
