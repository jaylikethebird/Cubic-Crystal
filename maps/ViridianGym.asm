	object_const_def
	const VIRIDIANGYM_BLUE
	const VIRIDIANGYM_GYM_GUIDE

ViridianGym_MapScripts:
	def_scene_scripts

	def_callbacks

ViridianGymBlueScript:
	faceplayer
	opentext
	readvar VAR_BADGES
	ifequal 15, .ViridianBlueFight
	ifequal 16, .GotHiddenPower
	writetext BlueNotEnoughBadges
	waitbutton
	closetext
	end

.ViridianBlueFight:
	checkflag ENGINE_EARTHBADGE
	iftrue .FightDone
	writetext LeaderBlueBeforeText
	waitbutton
	closetext
	winlosstext LeaderBlueWinText, 0
	loadtrainer BLUE, BLUE1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_BLUE
	opentext
	writetext Text_ReceivedEarthBadge
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_EARTHBADGE
.FightDone:
	checkevent EVENT_GOT_BLUE_TM
	iftrue .GotHiddenPower
	writetext LeaderBlueAfterText
	promptbutton
	verbosegiveitem TM_HIDDEN_POWER
	setevent EVENT_GOT_BLUE_TM
	writetext LeaderBlueHiddenPowerText
	waitbutton
.GotHiddenPower
	writetext LeaderBlueEpilogueText
	waitbutton
	closetext
	end

ViridianGymGuideScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_BLUE
	iftrue .ViridianGymGuideWinScript
	writetext ViridianGymGuideText
	waitbutton
	closetext
	end

.ViridianGymGuideWinScript:
	writetext ViridianGymGuideWinText
	waitbutton
	closetext
	end

ViridianGymStatue:
	checkflag ENGINE_EARTHBADGE
	iftrue .Beaten
	jumpstd GymStatue1Script

.Beaten:
	gettrainername STRING_BUFFER_4, BLUE, BLUE1
	jumpstd GymStatue2Script

BlueNotEnoughBadges:
	text "Seriously?"
	
	para "You don't even"
	line "have every BADGE"
	cont "from KANTO?"

	para "Then you're not"
	line "worth my time."

	para "Smell ya later!"
	done

LeaderBlueBeforeText:
	text "Yo! Finally"
	line "got here, huh?"

	para "I wasn't in the"
	line "mood at CINNABAR,"

	para "but now I'm ready"
	line "to battle you."

	para "…"

	para "You're telling me"
	line "you're the new"
	cont "CHAMP? Whatever."

	para "Did you know I"
	line "was the youngest"

	para "CHAMPION in the"
	line "history of the"
	cont "#MON LEAGUE?"

	para "RED might've taken"
	line "my title, but I"
	cont "got there first!"

	para "The only reason"
	line "you made it to"

	para "CHAMPION is that"
	line "I got bored with"
	cont "the LEAGUE."

	para "LANCE? Pfft."

	para "I'll give you a"
	line "REAL battle!"
	done

LeaderBlueWinText:
	text "What?"

	para "How the heck did I"
	line "lose to you?"

	para "…"

	para "Tch, all right…"
	line "Here, take this--"
	cont "it's EARTHBADGE."
	done

Text_ReceivedEarthBadge:
	text "<PLAYER> received"
	line "EARTHBADGE."
	done

LeaderBlueAfterText:
	text "…"

	para "You could actually"
	line "do it."

	para "You could beat"
	line "that so-called"
	cont "#MON MASTER."

	para "Oh man, wouldn't"
	line "that be rich?"

	para "Some JOHTO kid"
	line "does to RED what"
	cont "he did to me."

	para "Well don't let me"
	line "stop you. In fact,"
	cont "take this!"
	done

LeaderBlueHiddenPowerText:
	text "That's my TM for"
	line "HIDDEN POWER."

	para "Its type depends"
	line "on your #MON's"
	cont "inner strength."

	para "It makes for a"
	line "killer surprise."

	para "…"
	done

LeaderBlueEpilogueText:
	text "Listen, you."

	para "You'd better not"
	line "lose until I beat"
	cont "you. Got it?"

	para "Smell ya later!"
	done

ViridianGymGuideText:
	text "Yo, CHAMP!"

	para "How's it going?"
	line "Looks like you're"
	cont "on a roll."

	para "The GYM LEADER is"
	line "a former CHAMPION"
	cont "himself!"

	para "He's no pushover."

	para "Give it everything"
	line "you've got!"
	done

ViridianGymGuideWinText:
	text "Man, you are truly"
	line "tough…"

	para "That was a heck of"
	line "an inspirational"

	para "battle. It brought"
	line "tears to my eyes."
	done

ViridianGym_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 17, VIRIDIAN_CITY, 1
	warp_event  5, 17, VIRIDIAN_CITY, 1

	def_coord_events

	def_bg_events
	bg_event  3, 13, BGEVENT_READ, ViridianGymStatue
	bg_event  6, 13, BGEVENT_READ, ViridianGymStatue

	def_object_events
	object_event  5,  3, SPRITE_BLUE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ViridianGymBlueScript, EVENT_VIRIDIAN_GYM_BLUE
	object_event  7, 13, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ViridianGymGuideScript, EVENT_VIRIDIAN_GYM_BLUE
