	object_const_def
	const ROUTE28STEELWINGHOUSE_CELEBRITY
	const ROUTE28STEELWINGHOUSE_FEAROW

Route28SteelWingHouse_MapScripts:
	def_scene_scripts
	scene_script Route28SteelWingHouseNoopScene ; unusable

	def_callbacks

Route28SteelWingHouseNoopScene:
	end

Celebrity:
	faceplayer
	opentext
	checkevent EVENT_GOT_SACRED_ASH2
	iftrue .AlreadyGotItem
	writetext CelebrityText1
	promptbutton
	verbosegiveitem SMOKE_BALL
	iffalse .Done
	setevent EVENT_GOT_SACRED_ASH2
.Done:
	closetext
	end
.AlreadyGotItem:
	writetext CelebrityText2
	waitbutton
	closetext
	end

CelebritysFearow:
	opentext
	writetext CelebritysFearowText
	cry CROBAT
	waitbutton
	closetext
	end

CelebrityHouseBookshelf:
	jumpstd MagazineBookshelfScript

CelebrityText1:
	text "Ah, CHAMPION!"
	line "Welcome to my"
	cont "humble home."

	para "After I joined"
	line "the ELITE FOUR,"

	para "I moved here to"
	line "hone my skills"
	cont "in solitude."

	para "But company is"
	line "always welcome."

	para "Here! A gift!" 
	line "It will help you"

	para "escape powerful"
	line "#MON like a"
	cont "ninja!"
	done

CelebrityText2:
	text "To be honest, I"
	line "miss FUCHSIA CITY."

	para "But it's important"
	line "that my daughter"

	para "gain respect for"
	line "her talent instead"
	cont "of her legacy."

	para "She fights well in"
	line "the shadows, but I"

	para "hope she doesn't"
	line "always live in"
	cont "mine…"
	done

CelebritysFearowText:
	text "CROBA! CROBA!"
	done

Route28SteelWingHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, ROUTE_28, 1
	warp_event  3,  7, ROUTE_28, 1

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, CelebrityHouseBookshelf
	bg_event  1,  1, BGEVENT_READ, CelebrityHouseBookshelf

	def_object_events
	object_event  2,  3, SPRITE_KOGA, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Celebrity, -1
	object_event  6,  5, SPRITE_ZUBAT, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CelebritysFearow, -1
