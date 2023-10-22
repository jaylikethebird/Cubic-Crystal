	object_const_def
	const FIGHTINGDOJO_BRUNO
	const FIGHTINGDOJO_BROCK
	const FIGHTINGDOJO_MISTY
	const FIGHTINGDOJO_SURGE
	const FIGHTINGDOJO_ERIKA
	const FIGHTINGDOJO_SABRINA
	const FIGHTINGDOJO_JANINE
	const FIGHTINGDOJO_BLAINE
	const FIGHTINGDOJO_BLUE

FightingDojo_MapScripts:
	def_scene_scripts

	def_callbacks

FightingDojoBruno:
    faceplayer
	opentext
    writetext FightingDojoBrunoSilver
    waitbutton
    closetext
    end

DojoBrockScript:
	faceplayer
	opentext
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse .DojoBrockContinue
	writetext DojoLeaderAfterText  
	waitbutton
	closetext
	end

.DojoBrockContinue
	writetext DojoBrockIntroText
	yesorno
	iftrue .FightBrock
	writetext DojoLeaderNoText
	waitbutton
	closetext
	end

.FightBrock
	writetext DojoLeaderYesText
	waitbutton
	winlosstext DojoBrockWinLossText, 0
	loadtrainer CLAIR, CLAIR1
	startbattle
	reloadmapafterbattle
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	end

DojoMistyScript:
	faceplayer
	opentext
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	iffalse .DojoMistyContinue
	writetext DojoLeaderAfterText  
	waitbutton
	closetext
	end

.DojoMistyContinue
	writetext DojoMistyIntroText
	yesorno
	iftrue .FightMisty
	writetext DojoLeaderNoText
	waitbutton
	closetext
	end

.FightMisty
	writetext DojoLeaderYesText
	waitbutton
	winlosstext DojoMistyWinLossText, 0
	loadtrainer CLAIR, CLAIR1
	startbattle
	reloadmapafterbattle
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	end

DojoSurgeScript:
	faceplayer
	opentext
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_3
	iffalse .DojoSurgeContinue
	writetext DojoLeaderAfterText  
	waitbutton
	closetext
	end

.DojoSurgeContinue
	writetext DojoSurgeIntroText
	yesorno
	iftrue .FightSurge
	writetext DojoLeaderNoText
	waitbutton
	closetext
	end

.FightSurge
	writetext DojoLeaderYesText
	waitbutton
	winlosstext DojoSurgeWinLossText, 0
	loadtrainer CLAIR, CLAIR1
	startbattle
	reloadmapafterbattle
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_3
	end
	
DojoErikaScript:
	faceplayer
	opentext
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_4
	iffalse .DojoErikaContinue
	writetext DojoLeaderAfterText  
	waitbutton
	closetext
	end

.DojoErikaContinue
	writetext DojoErikaIntroText
	yesorno
	iftrue .FightErika
	writetext DojoLeaderNoText
	waitbutton
	closetext
	end

.FightErika
	writetext DojoLeaderYesText
	waitbutton
	winlosstext DojoErikaWinLossText, 0
	loadtrainer CLAIR, CLAIR1
	startbattle
	reloadmapafterbattle
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_4
	end

DojoSabrinaScript:
	faceplayer
	opentext
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_5
	iffalse .DojoSabrinaContinue
	writetext DojoLeaderAfterText  
	waitbutton
	closetext
	end

.DojoSabrinaContinue
	writetext DojoSabrinaIntroText
	yesorno
	iftrue .FightSabrina
	writetext DojoLeaderNoText
	waitbutton
	closetext
	end

.FightSabrina
	writetext DojoLeaderYesText
	waitbutton
	winlosstext DojoSabrinaWinLossText, 0
	loadtrainer CLAIR, CLAIR1
	startbattle
	reloadmapafterbattle
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_5
	end

DojoJanineScript:
	faceplayer
	opentext
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_6
	iffalse .DojoJanineContinue
	writetext DojoLeaderAfterText  
	waitbutton
	closetext
	end

.DojoJanineContinue
	writetext DojoJanineIntroText
	yesorno
	iftrue .FightJanine
	writetext DojoLeaderNoText
	waitbutton
	closetext
	end

.FightJanine
	writetext DojoLeaderYesText
	waitbutton
	winlosstext DojoJanineWinLossText, 0
	loadtrainer CLAIR, CLAIR1
	startbattle
	reloadmapafterbattle
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_6
	end

DojoBlaineScript:
	faceplayer
	opentext
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_7
	iffalse .DojoBlaineContinue
	writetext DojoLeaderAfterText  
	waitbutton
	closetext
	end

.DojoBlaineContinue
	writetext DojoBlaineIntroText
	yesorno
	iftrue .FightBlaine
	writetext DojoLeaderNoText
	waitbutton
	closetext
	end

.FightBlaine
	writetext DojoLeaderYesText
	waitbutton
	winlosstext DojoBlaineWinLossText, 0
	loadtrainer CLAIR, CLAIR1
	startbattle
	reloadmapafterbattle
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_7
	end

DojoBlueScript:
	faceplayer
	opentext
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_8
	iffalse .DojoBlueContinue
	writetext DojoLeaderAfterText  
	waitbutton
	closetext
	end

.DojoBlueContinue
	writetext DojoBlueIntroText
	yesorno
	iftrue .FightBlue
	writetext DojoLeaderNoText
	waitbutton
	closetext
	end

.FightBlue
	writetext DojoLeaderYesText
	waitbutton
	winlosstext DojoBlueWinLossText, 0
	loadtrainer CLAIR, CLAIR1
	startbattle
	reloadmapafterbattle
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_8
	end

FightingDojoSign1:
	jumptext FightingDojoSign1Text

FightingDojoSign2:
	jumptext FightingDojoSign2Text

FightingDojoBrunoSilver:
	text "Ah, CHAMPION!"

	para "Now that you've"
	line "bested the LEADERS"
	
	para "of KANTO, they've"
	line "come here to train"
	cont "with me."
	
	para "It would honor me"
	line "to observe your"
	
	para "#MON spar with"
	line "KANTO's best!"

	para "Hoo hah!"
	done
	
DojoLeaderAfterText:
	text "Great seeing you,"
	line "CHAMPION!"
	done

DojoLeaderYesText:
	text "Let's go!"
	done

DojoLeaderNoText:
	text "No? Okay, next"
	line "time!"
	done

DojoBrockIntroText:
	text "Hello!"

	para "You won't believe"
	line "how hard all of my"
	cont "#MON are now!"

	para "Let's battle!"
	done

DojoBrockWinLossText:
	text "Still too soft!"
	done

DojoMistyIntroText:
	text "Hey, pest!"

	para "Ha, just kidding,"
	line "you're okay by me."

	para "Let's battle!"
	done

DojoMistyWinLossText:
	text "Washed out!"
	done

DojoSurgeIntroText:
	text "Howdy, squirt!"

	para "I'm already plenty"
	line "tough, but my team"
	cont "is catching up!"

	para "Let's battle!"
	done

DojoSurgeWinLossText:
	text "Shocking!"
	done

DojoErikaIntroText:
	text "…oh, hello."

	para "I know, I seem"
	line "unfocused. But you"
	cont "inspire me to try!"

	para "Let's battle!"
	done

DojoErikaWinLossText:
	text "Oh well…"
	done

DojoSabrinaIntroText:
	text "Greetings."

	para "Shall we?"
	done

DojoSabrinaWinLossText:
	text "So it goes."
	done

DojoJanineIntroText:
	text "<PLAYER>!"

	para "No tricks, no"
	line "disguises, let's"
	cont "just battle!"
	done

DojoJanineWinLossText:
	text "ARGH!"
	done

DojoBlaineIntroText:
	text "Hello again!"

	para "I must admit, I"
	line "prefer this dojo"
	cont "to that cave."

	para "How about a scrap?"
	done

DojoBlaineWinLossText:
	text "Burned!"
	done

DojoBlueIntroText:
	text "Hey! You!"

	para "I usually train"
	line "solo, but I gotta"

	para "kick it up a notch"
	line "if I'm gonna put"
	cont "you in your place."

	para "Battle me!"
	done

DojoBlueWinLossText:
	text "Come ON! Again!?"
	done

FightingDojoSign1Text:
	text "What goes around"
	line "comes around!"
	done

FightingDojoSign2Text:
	text "Enemies on every"
	line "side!"
	done

FightingDojo_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 11, SAFFRON_CITY, 1
	warp_event  5, 11, SAFFRON_CITY, 1

	def_coord_events

	def_bg_events
	bg_event  4,  0, BGEVENT_READ, FightingDojoSign1
	bg_event  5,  0, BGEVENT_READ, FightingDojoSign2

	def_object_events
	object_event  4,  10, SPRITE_BRUNO, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, FightingDojoBruno, -1
	object_event  1,  6, SPRITE_BROCK, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, DojoBrockScript, -1
	object_event  0,  4, SPRITE_MISTY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, DojoMistyScript, -1
	object_event  5,  5, SPRITE_SURGE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, DojoSurgeScript, -1
	object_event  1,  4, SPRITE_ERIKA, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, DojoErikaScript, -1
	object_event  9,  1, SPRITE_SABRINA, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, DojoSabrinaScript, -1
	object_event  8,  10, SPRITE_JANINE, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, DojoJanineScript, -1
	object_event  8,  5, SPRITE_BLAINE, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, DojoBlaineScript, -1
	object_event  4,  2, SPRITE_BLUE, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, DojoBlueScript, -1