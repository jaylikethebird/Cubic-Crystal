	object_const_def
	const SILVERCAVEROOM3_RED
	const SILVERCAVEROOM3_SABRINA

SilverCaveRoom3_MapScripts:
	def_scene_scripts

	def_callbacks

Red:
	special FadeOutMusic
	faceplayer
	opentext
	writetext RedSeenText
	waitbutton
	closetext
	winlosstext RedWinLossText, RedWinLossText
	loadtrainer RED, RED1
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	special FadeOutMusic
	opentext
	writetext RedLeavesText
	waitbutton
	closetext
	special FadeBlackQuickly
	special ReloadSpritesNoPalettes
	disappear SILVERCAVEROOM3_RED
	setevent EVENT_MEWTWO_SPAWNS
	specialphonecall SPECIALCALL_MEWTWO
	pause 15
	special FadeInQuickly
	pause 30
	special HealParty
	refreshscreen
	credits
	end

RedSeenText:
	text "<……>"
	line "<……>"
	done

RedWinLossText:
	text "…"
	done

RedLeavesText:
	text "<……>"
	line "<……>"
	done

SilverSabrinaScript:
	faceplayer
	opentext
	writetext SabrinaIntroText
	yesorno
	iftrue .FightSabrina
	writetext SabrinaBack
	waitbutton
	closetext
	special FadeBlackQuickly
	pause 15
	warp SAFFRON_GYM, 9, 9
	end

.FightSabrina
	writetext SabrinaSilverFight
	waitbutton
	closetext
	winlosstext SabrinaWinLossText, 0
	loadtrainer SABRINA, SABRINA1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_SABRINA
	setevent EVENT_BEAT_MEDIUM_REBECCA
	setevent EVENT_BEAT_MEDIUM_DORIS
	setevent EVENT_BEAT_PSYCHIC_FRANKLIN
	setevent EVENT_BEAT_PSYCHIC_JARED
	opentext
	writetext ReceivedMarshBadgeText
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_MARSHBADGE
	writetext SabrinaMarshBadgeText
	promptbutton
	verbosegiveitem TM_PSYCHIC_M
	setevent EVENT_GOT_TM29_PSYCHIC
	writetext SabrinaPsychicTM
	waitbutton
	closetext
	special FadeBlackQuickly
	pause 15
	warp SAFFRON_GYM, 9, 9
	end

SabrinaIntroText:
	text "Welcome to your"
	line "future."

	para "This is a vision"
	line "of a great battle"
	cont "yet to come."

	para "Your opponent was"
	line "a CHAMPION like"

	para "yourself, but he"
	line "became something"
	cont "even greater…"

	para "A #MON MASTER."

	para "I have no love"
	line "of battle, but"

	para "I must prepare you"
	line "for this showdown."

	para "Are you ready?"
	done

SabrinaWinLossText:
	text "Your power…"

	para "It far exceeds"
	line "what I foresaw…"

	para "Maybe it isn't"
	line "possible to fully"

	para "predict what the"
	line "future holds…"

	para "You've more than"
	line "earned my BADGE."
	done

SabrinaSilverFight:
	text "Let us begin."
	done

SabrinaBack:
	text "Understandable."

	para "The future can be"
	line "overwhelming."

	para "Let us return to"
	line "reality…"
	done

ReceivedMarshBadgeText:
	text "<PLAYER> received"
	line "MARSHBADGE."
	done

SabrinaMarshBadgeText:
	text "It is as it should"
	line "be."

	para "One day, you will"
	line "return here, to"
	
	para "the depths of"
	line "MT.SILVER, and"

	para "face the ultimate"
	line "challenge."

	para "Perhaps this TM"
	line "will assist you."
	done

SabrinaPsychicTM:
	text "For now, we must"
	line "leave this vision."

	para "Just remember:"
	line "Your final test"
	cont "is all too real."

	para "When you're ready,"
	line "#MON MASTER RED"
	cont "will be waiting…"
	done

SilverCaveRoom3_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  9, 33, SILVER_CAVE_ROOM_2, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  9, 8, SPRITE_RED, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Red, EVENT_RED_IN_MT_SILVER
	object_event  10,  6, SPRITE_SABRINA, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, SilverSabrinaScript, EVENT_BEAT_SABRINA
