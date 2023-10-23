	object_const_def
	const MOVEDELETERSHOUSE_SUPER_NERD
	const MOVEDELETERSHOUSE_FOSSIL

MoveDeletersHouse_MapScripts:
	def_scene_scripts

	def_callbacks

FossilScientist:
	faceplayer
	opentext
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1 ; remove the next two lines to immediately receive the fossil
	iftrue .GaveScientistFossil
	checkevent EVENT_GAVE_SCIENTIST_OLD_AMBER
	iftrue .GiveAerodactyl
	checkevent EVENT_GAVE_SCIENTIST_DOME_FOSSIL
	iftrue .GiveKabuto
	checkevent EVENT_GAVE_SCIENTIST_HELIX_FOSSIL
	iftrue .GiveOmanyte
	writetext FossilScientistIntroText
	waitbutton
	loadmenu .MoveMenuHeader
	verticalmenu
	closewindow
	ifequal REVIVE_OLD_AMBER, .OldAmber
	ifequal REVIVE_DOME_FOSSIL, .DomeFossil
	ifequal REVIVE_HELIX_FOSSIL, .HelixFossil
	sjump .No

.OldAmber
	checkitem OLD_AMBER
	iffalse .No
	getmonname STRING_BUFFER_3, AERODACTYL
	writetext FossilScientistAerodactylText
	promptbutton
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1 ; remove this to immediately receive the fossil
	setevent EVENT_GAVE_SCIENTIST_OLD_AMBER
	takeitem OLD_AMBER
	writetext FossilScientistGiveText
	waitbutton
	sjump .GaveScientistFossil

.DomeFossil:
	checkitem DOME_FOSSIL
	iffalse .No
	getmonname STRING_BUFFER_3, KABUTO
	writetext FossilScientistKabutoText
	promptbutton
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1 ; remove this to immediately receive the fossil
	setevent EVENT_GAVE_SCIENTIST_DOME_FOSSIL
	takeitem DOME_FOSSIL
	opentext
	writetext FossilScientistGiveText
	waitbutton
	sjump .GaveScientistFossil

.HelixFossil:
	checkitem HELIX_FOSSIL
	iffalse .No
	getmonname STRING_BUFFER_3, OMANYTE
	writetext FossilScientistOmanyteText
	promptbutton
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1 ; remove this to immediately receive the fossil
	setevent EVENT_GAVE_SCIENTIST_HELIX_FOSSIL
	takeitem HELIX_FOSSIL
	writetext FossilScientistGiveText
	waitbutton
	sjump .GaveScientistFossil

.No
	writetext FossilScientistNoText
	waitbutton
	closetext
	end

.GaveScientistFossil:
	writetext FossilScientistTimeText
	waitbutton
	closetext
	; special FadeBlackQuickly ; uncomment the next five lines to immediately receive the fossil
	; special ReloadSpritesNoPalettes
	; playsound SFX_WARP_TO
	; waitsfx
	; pause 35
	end ; replace this with "sjump FossilScientist" to immediately receive the fossil

.GiveAerodactyl:
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .NoRoom
	clearevent EVENT_GAVE_SCIENTIST_OLD_AMBER
	writetext FossilScientistDoneText
	promptbutton
	getmonname STRING_BUFFER_3, AERODACTYL
	writetext FossilScientistReceiveText
	playsound SFX_CAUGHT_MON
	waitsfx
	waitbutton
	givepoke AERODACTYL, 30
	closetext
	end

.GiveKabuto:
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .NoRoom
	clearevent EVENT_GAVE_SCIENTIST_DOME_FOSSIL
	writetext FossilScientistDoneText
	promptbutton
	getmonname STRING_BUFFER_3, KABUTO
	writetext FossilScientistReceiveText
	playsound SFX_CAUGHT_MON
	waitsfx
	waitbutton 
	givepoke KABUTO, 30
	closetext
	end

.GiveOmanyte:
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .NoRoom
	clearevent EVENT_GAVE_SCIENTIST_HELIX_FOSSIL
	writetext FossilScientistDoneText
	promptbutton
	getmonname STRING_BUFFER_3, OMANYTE
	writetext FossilScientistReceiveText
	playsound SFX_CAUGHT_MON
	waitsfx
	waitbutton
	givepoke OMANYTE, 30
	closetext
	end

.NoRoom:
	writetext FossilScientistPartyFullText
	waitbutton
	closetext
	end

.MoveMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 2, 15, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	db 4 ; items
	db "OLD AMBER@"
	db "DOME FOSSIL@"
	db "HELIX FOSSIL@"
	db "CANCEL@"

FossilScientistIntroText:
	text "Oh, what's that?"

	para "You look like a"
	line "FOSSIL MANIAC."

	para "I mean no offense!"
	line "See, I'm a FOSSIL"
	cont "MANIAC myself!"

	para "In fact, I found"
	line "a way to revive"
	cont "old fossils!" 

	para "Want to give it"
	line "a try?"
	done

FossilScientistNoText:
	text "No? Too bad!"
	done

FossilScientistPartyFullText:
	text "I'm a FOSSIL"
	line "MANIAC, not a"
	cont "POCKET MANIAC!"

	para "You need to make"
	line "room to fit your"
	cont "new friend!"
	done

FossilScientistTimeText:
	text "Give me a sec!"

	para "Take a walk!"

	para "Enjoy the sights!"

	para "I promise, I'm not"
	line "a FOSSIL THIEF!"
	done

FossilScientistDoneText:
	text "You're back!"
	line "Here's your new"
	cont "#MON!"
	done

FossilScientistOmanyteText:
	text "Oh! HELIX FOSSIL!"

	para "Want me to revive"
	line "it into OMANYTE"
	cont "for you?"

	para "This definitely is"
	line "NOT a ploy to take"

	para "your fossil and"
	line "just replace it"
	cont "with a #MON!"
	done

FossilScientistKabutoText:
	text "Oh! DOME FOSSIL!"

	para "Want me to revive"
	line "it into KABUTO"
	cont "for you?"

	para "This definitely is"
	line "NOT a ploy to take"

	para "your fossil and"
	line "just replace it"
	cont "with a #MON!"
	done

FossilScientistAerodactylText:
	text "Oh! OLD AMBER!"

	para "Want me to revive"
	line "it into AERODACTYL"
	cont "for you?"

	para "This definitely is"
	line "NOT a ploy to take"

	para "your fossil and"
	line "just replace it"
	cont "with a #MON!"
	done

FossilScientistGiveText:
	text "Yay! Hand it over!"

	para "<PLAYER> handed"
	line "over the fossil."
	done

FossilScientistReceiveText:
	text "<PLAYER> received"
	line "@"
	text_ram wStringBuffer3
	text "!"
	done

MoveDeleter:
	faceplayer
	opentext
	special MoveRelearner
	waitbutton
	closetext
	end

MoveDeletersHouseBookshelf:
	jumpstd DifficultBookshelfScript

MoveDeletersHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, BLACKTHORN_CITY, 6
	warp_event  3,  7, BLACKTHORN_CITY, 6

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, MoveDeletersHouseBookshelf
	bg_event  1,  1, BGEVENT_READ, MoveDeletersHouseBookshelf

	def_object_events
	object_event  5,  3, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MoveDeleter, -1
	object_event  2,  3, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FossilScientist, -1

