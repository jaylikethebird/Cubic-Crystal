	object_const_def
	const FIGHTINGDOJO_BLACK_BELT
	const FIGHTINGDOJO_POKE_BALL
	const FIGHTINGDOJO_POKE_BALL2

FightingDojo_MapScripts:
	def_scene_scripts

	def_callbacks

FightingDojoBlackBelt:
	jumptextfaceplayer FightingDojoBlackBeltText
	end

BrockScript:
	faceplayer
	opentext
	writetext DojoBrockIntroText
	yesorno
	iftrue .FightBrock
	writetext DojoLeaderNoText 
	waitbutton
	closetext
	end

.BrockFightDone
	writetext DojoLeaderAfterText
	waitbutton
	closetext
	end

.FightBrock
	writetext DojoLeaderYesText
	waitbutton
	winlosstext DojoBrockWinLossText, 0
	loadtrainer BUGSY, BUGSY1
	startbattle
	reloadmapafterbattle
	opentext
	writetext DojoLeaderAfterText
	waitbutton
	closetext
	end

FightingDojoSign1:
	jumptext FightingDojoSign1Text

FightingDojoSign2:
	jumptext FightingDojoSign2Text

FightingDojoFocusBand:
	itemball FOCUS_BAND

FightingDojoScopeLens:
	itemball SCOPE_LENS

FightingDojoBlackBeltText:
	text "Ah, CHAMPION!"

	para "Nostalgia drew me"
	line "back to where I"
	cont "began my training."

	para "Years ago, I was"
	line "the SAFFRON GYM"
	cont "LEADER."

	para "My successor lost"
	line "a decisive battle"

	para "against SABRINA,"
	line "and the rest is"
	cont "history…"

	para "Perhaps I'll train"
	line "other GYM LEADERS"

	para "to reach their"
	line "potential here."

	para "Return when you've"
	line "gained every BADGE"
	cont "in KANTO!"

	para "Hoo hah!"
	done

DojoLeaderAfterText
	text "Great battle,"
	done "CHAMPION!"

DojoLeaderYesText
	text "Let's go!"

DojoLeaderNoText
	text "No? Okay, next"
	line "time!"
	done

DojoBrockIntroText
	text "Hello!"

	para "You won't believe"
	line "how hard all of my"
	cont "#MON are now!"

	para "Let's battle!"
	done

DojoBrockWinLossText
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

DojoErikaIntroText
	text "…oh, hello."

	para "I know, I seem"
	line "unfocused. But you"
	cont "inspire me to try!"

	para "Let's battle!"
	done

DojoErikaWinLossText
	text "Oh well…"
	done

DojoSabrinaIntroText
	text "Greetings."

	para "Shall we?"
	done

DojoSabrinaWinLossText
	text "So it goes."
	done

DojoJanineIntroText
	text "<PLAYER>!"

	para "No tricks, no"
	line "disguises, let's"
	cont "just battle!"
	done

DojoJanineWinLossText
	text "ARGH!"
	done

DojoBlaineIntroText
	text "Hello again!"

	para "I must admit, I"
	line "prefer this dojo"
	cont "to that cave."

	para "How about a scrap?"
	done

DojoBlaineWinLossText
	text "Burned!"
	done

DojoBlueIntroText
	text "Hey! You!"

	para "I usually train"
	line "solo, but I gotta"

	para "kick it up a notch"
	line "if I'm gonna put"
	cont "you in your place."

	para "Battle me!"
	done

DojoBlueWinLossText
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
	object_event  4,  4, SPRITE_BRUNO, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, FightingDojoBlackBelt, -1
	object_event  3,  1, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, FightingDojoFocusBand, EVENT_PICKED_UP_FOCUS_BAND
	object_event  6,  1, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, FightingDojoScopeLens, EVENT_PICKED_UP_SCOPE_LENS
