	object_const_def
	const CELADONMANSIONROOFHOUSE_PHARMACIST

CeladonMansionRoofHouse_MapScripts:
	def_scene_scripts

	def_callbacks

CeladonMansionRoofHousePharmacistScript:
	faceplayer
	opentext
	checkevent EVENT_HEARD_SCARY_STORY
	iftrue .MartTime
	checkevent EVENT_GOT_TM03_CURSE
	iftrue .GotCurse
	writetext CeladonMansionRoofHousePharmacistNoCurse
	waitbutton
    closetext
    end

.MartTime
	pokemart MARTTYPE_STANDARD, MART_CURSE
	closetext
	end

.GotCurse:
	writetext CeladonMansionRoofHousePharmacistGotCurse
	waitbutton
	checkevent EVENT_GOT_TM42_DREAM_EATER
	iftrue .GotDreamEater
	writetext CeladonMansionRoofHousePharmacistNoDream
	waitbutton
	closetext
	end

.GotDreamEater
	writetext CeladonMansionRoofHousePharmacistStoryText
	setevent EVENT_HEARD_SCARY_STORY
	waitbutton
	closetext
	end

CeladonMansionRoofHousePharmacistNoCurse:
	text "Let me recount a"
	line "terrifying tale…"
	
	para "Then again, you've"
	line "yet to encounter a"

	para "cursed TM, so I"
	line "doubt you could"
	cont "handle it."

	para "I hear a dark and"
	line "chilling cave in"

	para "JOHTO has such a"
	line "haunted move…"
	done

CeladonMansionRoofHousePharmacistGotCurse:
	text "Let me recount a"
	line "terrifying tale…"	

	para "I see you've felt"
	line "the CURSE of ICE"
	cont "PATH. Gooood…"
	done 

CeladonMansionRoofHousePharmacistNoDream:
	text "But you still have"
	line "yet to know the"

	para "terror of a stolen"
	line "dream! They say"

	para "a sleep-addled man"
	line "in VIRIDIAN fell"

	para "victim to such a"
	line "fate before…"
	done 

CeladonMansionRoofHousePharmacistStoryText:
	text "Ah, and you know"
	line "the nightmare of"
	cont "DREAM EATER. Yes!"

	para "You are ready!"
	
	para "Once upon a time,"
	line "there was a little"

	para "boy who was given"
	line "a new BICYCLE…"

	para "He wanted to try"
	line "it right away…"

	para "He was having so"
	line "much fun that he"

	para "didn't notice the"
	line "sun had set…"

	para "While riding home"
	line "in the pitch-black"

	para "night, the bike"
	line "suddenly slowed!"

	para "The pedals became"
	line "heavy!"

	para "When he stopped"
	line "pedaling, the bike"

	para "began slipping"
	line "backwards!"

	para "It was as if the"
	line "bike were cursed"

	para "and trying to drag"
	line "him into oblivion!"

	para "…"

	para "…"

	para "SHRIEEEEK!"

	para "The boy had been"
	line "riding uphill on"
	cont "CYCLING ROAD!"

	para "…"
	line "Ba-dum ba-dum!"

	para "For listening so"	
	line "patiently, I will"

	para "ensure you never"
	line "forget the fright"
	cont "of those TMs…"

	para "For a price!"

	para "Come back and I'll"
	line "sell fresh TMs!"
	done

CeladonMansionRoofHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, CELADON_MANSION_ROOF, 3
	warp_event  3,  7, CELADON_MANSION_ROOF, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  2, SPRITE_PHARMACIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 2, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CeladonMansionRoofHousePharmacistScript, -1