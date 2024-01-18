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
	iffalse .NoFossil
	getmonname STRING_BUFFER_3, AERODACTYL
	writetext FossilScientistAerodactylText
	promptbutton
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1 ; remove this to immediately receive the fossil
	setevent EVENT_GAVE_SCIENTIST_OLD_AMBER
	takeitem OLD_AMBER
	sjump .GaveScientistFossil

.DomeFossil:
	checkitem DOME_FOSSIL
	iffalse .NoFossil
	getmonname STRING_BUFFER_3, KABUTO
	writetext FossilScientistKabutoText
	promptbutton
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1 ; remove this to immediately receive the fossil
	setevent EVENT_GAVE_SCIENTIST_DOME_FOSSIL
	takeitem DOME_FOSSIL
	sjump .GaveScientistFossil

.HelixFossil:
	checkitem HELIX_FOSSIL
	iffalse .NoFossil
	getmonname STRING_BUFFER_3, OMANYTE
	writetext FossilScientistOmanyteText
	promptbutton
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1 ; remove this to immediately receive the fossil
	setevent EVENT_GAVE_SCIENTIST_HELIX_FOSSIL
	takeitem HELIX_FOSSIL
	sjump .GaveScientistFossil

.NoFossil
	writetext FossilScientistNoFossilText
	waitbutton
	closetext
	end

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
	db "NOPE!@"

FossilScientistIntroText:
	text "Hello hello hello!"

	para "You look like a"
	line "FOSSIL MANIAC!"

	para "I mean no offense!"
	line "See, I'm a FOSSIL"
	cont "MANIAC myself!"

	para "In fact, I found"
	line "a way to revive"
	cont "old fossils!" 

	para "Got any of these"
	line "bad boys for me?"
	done

FossilScientistNoFossilText:
	text "Yay! Hand it over!"

	para "… … …"

	para "…huh? You don't"
	line "actually have that"
	cont "fossil anymore?"

	para "ARGH! NO!"
	line "Don't tease me!"
	done

FossilScientistNoText:
	text "Rats! Oh well."
	line "Bye."
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
	text "Uh, give me a sec!"

	para "Take a walk!"

	para "Enjoy the sights!"

	para "I promise, I'm not"
	line "a FOSSIL THIEF!"

	para "Come right back to"
	line "get your #MON!"
	done

FossilScientistDoneText:
	text "You're back!"
	line "Here's your new"
	cont "#MON!"
	done

FossilScientistOmanyteText:
	text "YES! HELIX FOSSIL!"

	para "… … …"

	para "…sorry, I didn't"
	line "mean to snatch it"
	cont "out of your hand."

	para "Don't worry, I'll"
	line "trade it in for an"
	cont "OMANYTE!"

	para "…uh, I mean I'll"
	line "REVIVE one! Yeah!"

	para "I'm definitely NOT"
	line "stealing this cool"

	para "fossil and giving"
	line "you a rare #MON"
	cont "from DRAGON DEN…"
	done

FossilScientistKabutoText:
	text "YES! DOME FOSSIL!"

	para "… … …"

	para "…sorry, I didn't"
	line "mean to snatch it"
	cont "out of your hand."

	para "Don't worry, I'll"
	line "trade it in for a"
	cont "KABUTO!"

	para "…uh, I mean I'll"
	line "REVIVE one! Yeah!"

	para "I'm definitely NOT"
	line "stealing this neat"

	para "fossil and giving"
	line "you a rare #MON"
	cont "from DRAGON DEN…"
	done

FossilScientistAerodactylText:
	text "YES! OLD AMBER!"

	para "… … …"

	para "…sorry, I didn't"
	line "mean to snatch it"
	cont "out of your hand."

	para "Don't worry, I'll"
	line "trade it in for an"
	cont "AERODACTYL!"

	para "…uh, I mean I'll"
	line "REVIVE one! Yeah!"

	para "I'm definitely NOT"
	line "stealing this rad"

	para "fossil and giving"
	line "you a rare #MON"
	cont "I won in a bet…"
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
	special MoveDeletion
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

