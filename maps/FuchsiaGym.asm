	object_const_def
	const FUCHSIAGYM_JANINE
	const FUCHSIAGYM_FUCHSIA_GYM_1
	const FUCHSIAGYM_FUCHSIA_GYM_2
	const FUCHSIAGYM_FUCHSIA_GYM_3
	const FUCHSIAGYM_FUCHSIA_GYM_4
	const FUCHSIAGYM_GYM_GUIDE
	const FUCHSIAGYM_JANINEREAL

FuchsiaGym_MapScripts:
	def_scene_scripts

	def_callbacks

FuchsiaGymFakeJanineScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_TM06_TOXIC
	iftrue .FightOver
	checkevent EVENT_TALKED_GYM_GUIDE_FUCHSIA
	iffalse .Champ
	writetext FuchsiaPokecenter1FJanineImpersonatorText
	waitbutton
	closetext
	applymovement FUCHSIAGYM_GYM_GUIDE, Movement_NinjaSpin
	opentext
	writetext FuchsiaPokecenter1FJanineImpersonator2Text
	waitbutton
	closetext
	applymovement FUCHSIAGYM_GYM_GUIDE, Movement_NinjaSpin
	opentext
	writetext FuchsiaPokecenter1FJanineImpersonator3Text
	waitbutton
	closetext
	special FadeBlackQuickly
	special ReloadSpritesNoPalettes
	pause 15
	disappear FUCHSIAGYM_GYM_GUIDE
	appear FUCHSIAGYM_JANINEREAL
	special FadeInQuickly
	end
.FightOver
	writetext FuchsiaPokecenter1FJanineImpersonator4Text
	waitbutton
	closetext
	special FadeBlackQuickly
	special ReloadSpritesNoPalettes
	pause 15
	disappear FUCHSIAGYM_GYM_GUIDE
	appear FUCHSIAGYM_JANINEREAL
	special FadeInQuickly
	end
.Champ
	writetext FakeGuide
	waitbutton
	closetext
	end

FuchsiaGymJanineScript:
	checkflag ENGINE_SOULBADGE
	iftrue .FightDone
	faceplayer
	opentext
	writetext JanineText_DisappointYou
	waitbutton
	closetext
	winlosstext JanineText_ToughOne, 0
	loadtrainer JANINE, JANINE1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_JANINE
	setevent EVENT_BEAT_LASS_ALICE
	setevent EVENT_BEAT_LASS_LINDA
	setevent EVENT_BEAT_PICNICKER_CINDY
	setevent EVENT_BEAT_CAMPER_BARRY
	variablesprite SPRITE_FUCHSIA_GYM_1, SPRITE_LASS
	variablesprite SPRITE_FUCHSIA_GYM_2, SPRITE_LASS
	variablesprite SPRITE_FUCHSIA_GYM_3, SPRITE_LASS
	variablesprite SPRITE_FUCHSIA_GYM_4, SPRITE_YOUNGSTER
	special LoadUsedSpritesGFX
	opentext
	writetext Text_ReceivedSoulBadge
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_SOULBADGE
	sjump .AfterBattle
.FightDone:
	faceplayer
	opentext
.AfterBattle:
	checkevent EVENT_GOT_TM06_TOXIC
	iftrue .AfterTM
	writetext JanineText_ToxicSpeech
	promptbutton
	verbosegiveitem TM_TOXIC
	iffalse .AfterTM
	setevent EVENT_GOT_TM06_TOXIC
.AfterTM:
	writetext JanineText_ApplyMyself
	waitbutton
	closetext
	end

LassAliceScript:
	checkevent EVENT_BEAT_LASS_ALICE
	iftrue .AliceUnmasked
	applymovement FUCHSIAGYM_FUCHSIA_GYM_1, Movement_NinjaSpin
	faceplayer
	variablesprite SPRITE_FUCHSIA_GYM_1, SPRITE_LASS
	special LoadUsedSpritesGFX
.AliceUnmasked:
	faceplayer
	opentext
	checkevent EVENT_BEAT_LASS_ALICE
	iftrue .AliceAfterScript
	writetext LassAliceBeforeText
	waitbutton
	closetext
	winlosstext LassAliceBeatenText, 0
	loadtrainer LASS, ALICE
	startbattle
	iftrue .AliceBecomesJanine
	reloadmapafterbattle
	setevent EVENT_BEAT_LASS_ALICE
	end

.AliceBecomesJanine:
	variablesprite SPRITE_FUCHSIA_GYM_1, SPRITE_JANINE
	reloadmapafterbattle
	end

.AliceAfterScript:
	writetext LassAliceAfterText
	waitbutton
	closetext
	end

LassLindaScript:
	checkevent EVENT_BEAT_LASS_LINDA
	iftrue .LindaUnmasked
	applymovement FUCHSIAGYM_FUCHSIA_GYM_2, Movement_NinjaSpin
	faceplayer
	variablesprite SPRITE_FUCHSIA_GYM_2, SPRITE_LASS
	special LoadUsedSpritesGFX
.LindaUnmasked:
	faceplayer
	opentext
	checkevent EVENT_BEAT_LASS_LINDA
	iftrue .LindaAfterScript
	writetext LassLindaBeforeText
	waitbutton
	closetext
	winlosstext LassLindaBeatenText, 0
	loadtrainer LASS, LINDA
	startbattle
	iftrue .LindaBecomesJanine
	reloadmapafterbattle
	setevent EVENT_BEAT_LASS_LINDA
	end

.LindaBecomesJanine:
	variablesprite SPRITE_FUCHSIA_GYM_2, SPRITE_JANINE
	reloadmapafterbattle
	end

.LindaAfterScript:
	writetext LassLindaAfterText
	waitbutton
	closetext
	end

PicnickerCindyScript:
	checkevent EVENT_BEAT_PICNICKER_CINDY
	iftrue .CindyUnmasked
	applymovement FUCHSIAGYM_FUCHSIA_GYM_3, Movement_NinjaSpin
	faceplayer
	variablesprite SPRITE_FUCHSIA_GYM_3, SPRITE_LASS
	special LoadUsedSpritesGFX
.CindyUnmasked:
	faceplayer
	opentext
	checkevent EVENT_BEAT_PICNICKER_CINDY
	iftrue .CindyAfterScript
	writetext PicnickerCindyBeforeText
	waitbutton
	closetext
	winlosstext PicnickerCindyBeatenText, 0
	loadtrainer PICNICKER, CINDY
	startbattle
	iftrue .CindyBecomesJanine
	reloadmapafterbattle
	setevent EVENT_BEAT_PICNICKER_CINDY
	end

.CindyBecomesJanine:
	variablesprite SPRITE_FUCHSIA_GYM_3, SPRITE_JANINE
	reloadmapafterbattle
	end

.CindyAfterScript:
	writetext PicnickerCindyAfterText
	waitbutton
	closetext
	end

CamperBarryScript:
	checkevent EVENT_BEAT_CAMPER_BARRY
	iftrue .BarryUnmasked
	applymovement FUCHSIAGYM_FUCHSIA_GYM_4, Movement_NinjaSpin
	faceplayer
	variablesprite SPRITE_FUCHSIA_GYM_4, SPRITE_YOUNGSTER
	special LoadUsedSpritesGFX
.BarryUnmasked:
	faceplayer
	opentext
	checkevent EVENT_BEAT_CAMPER_BARRY
	iftrue .BarryAfterScript
	writetext CamperBarryBeforeText
	waitbutton
	closetext
	winlosstext CamperBarryBeatenText, 0
	loadtrainer CAMPER, BARRY
	startbattle
	iftrue .BarryBecomesJanine
	reloadmapafterbattle
	setevent EVENT_BEAT_CAMPER_BARRY
	end

.BarryBecomesJanine:
	variablesprite SPRITE_FUCHSIA_GYM_4, SPRITE_JANINE
	reloadmapafterbattle
	end

.BarryAfterScript:
	writetext CamperBarryAfterText
	waitbutton
	closetext
	end

FuchsiaGymGuideScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_JANINE
	iftrue .FuchsiaGymGuideWinScript
	writetext FindJanineText
	setevent EVENT_TALKED_GYM_GUIDE_FUCHSIA
	waitbutton
	closetext
	end
.FuchsiaGymGuideWinScript:
	writetext FuchsiaGymGuideWinText
	waitbutton
	closetext
	end

FuchsiaGymStatue:
	checkflag ENGINE_SOULBADGE
	iftrue .Beaten
	jumpstd GymStatue1Script
.Beaten:
	gettrainername STRING_BUFFER_4, JANINE, JANINE1
	jumpstd GymStatue2Script

Movement_NinjaSpin:
	turn_head DOWN
	turn_head LEFT
	turn_head UP
	turn_head RIGHT
	turn_head DOWN
	turn_head LEFT
	turn_head UP
	turn_head RIGHT
	turn_head DOWN
	turn_head LEFT
	turn_head UP
	turn_head RIGHT
	turn_head DOWN
	step_end

FuchsiaPokecenter1FJanineImpersonatorText:
	text "Mwahahahaha!"

	para "That's right!"
	line "The real JANINE is"
	cont "none other than…"
	done

FuchsiaPokecenter1FJanineImpersonator2Text:
	text "Erm, hang on."

	para "Ahem, the REAL"
	line "JANINE is none"
	cont "other than…"
	done

FuchsiaPokecenter1FJanineImpersonator3Text:
	text "Darn it!"

	para "Gimme a sec,"
	line "I've been too"

	para "busy training my"
	line "#MON to test"
	cont "this disguise…"
	done

FuchsiaPokecenter1FJanineImpersonator4Text:
	text "Congrats, CHAMP…"

	para "…just kidding, it's"
	line "still me!"
	done

FakeGuide:
	text "Hey there!"

	para "You must be on"
	line "the hunt for the"

	para "incredible ninja"
	line "prodigy, JANINE!"

	para "She's somewhere in"
	line "this room, but"
	cont "watch out!"

	para "Her students are"
	line "disguised to fool"
	cont "trainers like you."
	done

JanineText_DisappointYou:
	text "MWAHAHAHAHA!"

	para "That's right!"

	para "It is I!"
	line "The deadly and"
	cont "beautiful JANINE!"

	para "My father, the"
	line "great KOGA, gave"

	para "FUCHSIA's GYM to"
	line "me when he left"
	cont "for the ELITE 4."

	para "It's finally time"
	line "to show the world"
	cont "what I can do!"

	para "Prepare to be"
	line "amazed!"
	done

JanineText_ToughOne:
	text "ARGH! WHAT?"

	para "You beat Father?"

	para "Rats, no wonder I"
	line "lost…"

	para "Here's SOULBADGE."
	line "Take it."
	done

Text_ReceivedSoulBadge:
	text "<PLAYER> received"
	line "SOULBADGE."
	done

JanineText_ToxicSpeech:
	text "I guess I have a"
	line "lot to learn."

	para "But let none say"
	line "the daughter of"

	para "KOGA lacks honor."
	line "Or panache. Or"
	cont "humility."

	para "Please take this"
	line "ancient TM, the"
	
	para "forbidden ninja"
	line "technique: TOXIC!"
	done

JanineText_ApplyMyself:
	text "Just you watch!"
	line "I'll show every"

	para "doubter that I"
	line "earned this GYM"

	para "when I surpass"
	line "you and Father"

	para "to become a"
	line "#MON CHAMPION!"
	done

LassAliceBeforeText:
	text "Fufufu!"

	para "I'm JANINE, the"
	line "GYM LEADER!"

	para "No, I'm not!"
	line "Gotcha, sucker!"
	done

LassAliceBeatenText:
	text "I had you fooled…"
	done

LassAliceAfterText:
	text "How will you dis-"
	line "tinguish our real"
	cont "LEADER?"
	done

LassLindaBeforeText:
	text "Fooled you!"
	line "Hahaha!"
	done

LassLindaBeatenText:
	text "Ooh… I lost…"
	line "You're not weak…"
	done

LassLindaAfterText:
	text "Well? Wasn't my"
	line "disguise perfect?"
	done

PicnickerCindyBeforeText:
	text "I'm JANINE!"

	para "How did you know I"
	line "was real?"

	para "Let's battle!"
	done

PicnickerCindyBeatenText:
	text "Darn it!"
	line "I wanted to win!"
	done

PicnickerCindyAfterText:
	text "You must be"
	line "getting tired."
	done

CamperBarryBeforeText:
	text "Wahahaha!"

	para "You betcha!"
	line "I'm JANINE!"
	done

CamperBarryBeatenText:
	text "My disguise was"
	line "right on! Dang!"
	done

CamperBarryAfterText:
	text "Hey, you. Was my"
	line "disguise cute or"
	cont "what, huh?"
	done

FindJanineText:
	text "Yo, CHAMP!"

	para "Uh, I mean, I'm"
	line "for sure JANINE!"

	para "…"

	para "Darn, I'll never"
	line "be a ninja."

	para "I can't even get"
	line "this disguise off."

	para "CHAMP! Go find"
	line "the real JANINE!"
	done

FuchsiaGymGuideWinText:
	text "That was a great"
	line "battle!"

	para "Now if only I"
	line "could find the"

	para "zipper for this"
	line "disguise…"
	done

FuchsiaGym_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 17, FUCHSIA_CITY, 3
	warp_event  5, 17, FUCHSIA_CITY, 3

	def_coord_events

	def_bg_events
	bg_event  3, 15, BGEVENT_READ, FuchsiaGymStatue
	bg_event  6, 15, BGEVENT_READ, FuchsiaGymStatue

	def_object_events
	object_event  4, 2, SPRITE_JANINE, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, FuchsiaGymGuideScript, -1
	object_event  0,  12, SPRITE_FUCHSIA_GYM_1, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, LassAliceScript, -1
	object_event  3, 6, SPRITE_FUCHSIA_GYM_2, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, LassLindaScript, -1
	object_event  8,  4, SPRITE_FUCHSIA_GYM_3, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, PicnickerCindyScript, -1
	object_event  6,  13, SPRITE_FUCHSIA_GYM_4, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CamperBarryScript, -1
	object_event  7, 15, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, FuchsiaGymFakeJanineScript, -1
	object_event  7, 15, SPRITE_JANINE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, FuchsiaGymJanineScript, -1
