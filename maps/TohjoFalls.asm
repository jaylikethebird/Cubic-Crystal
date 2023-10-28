	object_const_def
	const TOHJOFALLS_MEWTWO
	const TOHJOFALLS_POKE_BALL

TohjoFalls_MapScripts:
	def_scene_scripts

	def_callbacks
		callback MAPCALLBACK_OBJECTS, MewtwoAppearTohjo

MewtwoAppearTohjo:
	checkevent EVENT_FOUGHT_MEWTWO
	iftrue .NoAppear
	checkevent EVENT_MEWTWO_SPAWNS
	iftrue .Appear
	sjump .NoAppear

.Appear:
	appear TOHJOFALLS_MEWTWO
	endcallback

.NoAppear:
	disappear TOHJOFALLS_MEWTWO
	endcallback

TohjoFallsMewtwo:
	faceplayer
	opentext
	writetext MewtwoText
	cry MEWTWO
	pause 15
	closetext
	setevent EVENT_FOUGHT_MEWTWO
	loadvar VAR_BATTLETYPE, BATTLETYPE_FORCEITEM
	loadwildmon MEWTWO, 75
	startbattle
	disappear TOHJOFALLS_MEWTWO
	reloadmapafterbattle
	end

MewtwoText:
	text "MEW!"
	done

TohjoFallsMoonStone:
	itemball MOON_STONE

TohjoFalls_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 13, 15, ROUTE_27, 2
	warp_event 25, 15, ROUTE_27, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event 23, 1, SPRITE_JYNX, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, TohjoFallsMewtwo, EVENT_MEWTWO_SPAWNS
	object_event  2,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, TohjoFallsMoonStone, EVENT_TOHJO_FALLS_MOON_STONE
