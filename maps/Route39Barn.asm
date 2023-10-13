	object_const_def
	const ROUTE39BARN_WHITNEY
	const ROUTE39BARN_MOOMOO

Route39Barn_MapScripts:
	def_scene_scripts

	def_callbacks

Route39BarnWhitneyScript:
	faceplayer
	opentext
	checkevent EVENT_HEALED_MOOMOO
	iftrue .FeedingMooMoo
	writetext Route39BarnWhitneyMoomooIsSickText
	waitbutton
	closetext
	turnobject ROUTE39BARN_WHITNEY, UP
	end

.FeedingMooMoo:
	faceplayer
	writetext Route39BarnWhitneyWereFeedingMoomooText
	waitbutton
	closetext
	turnobject ROUTE39BARN_WHITNEY, UP
	end

MoomooScript:
	opentext
	checkevent EVENT_HEALED_MOOMOO
	iftrue .HappyCow
	writetext MoomooWeakMooText
	setval MILTANK
	special PlaySlowCry
	promptbutton
	writetext Route39BarnItsCryIsWeakText
	checkevent EVENT_TALKED_TO_FARMER_ABOUT_MOOMOO
	iftrue .GiveBerry
	waitbutton
	closetext
	end

.GiveBerry:
	promptbutton
	writetext Route39BarnAskGiveBerryText
	yesorno
	iffalse .Refused
	checkitem BERRY
	iffalse .NoBerriesInBag
	takeitem BERRY
	readmem wMooMooBerries
	addval 1
	writemem wMooMooBerries
	ifequal 1, .ThreeBerries
	ifequal 2, .FiveBerries
	ifequal 3, .SevenBerries
	writetext Route39BarnGaveBerryText
	waitbutton
	closetext
	end

.ThreeBerries:
	writetext Route39BarnGaveBerryText
	promptbutton
	writetext Route39BarnLittleHealthierText
	waitbutton
	closetext
	end

.FiveBerries:
	writetext Route39BarnGaveBerryText
	promptbutton
	writetext Route39BarnQuiteHealthyText
	waitbutton
	closetext
	end

.SevenBerries:
	playmusic MUSIC_HEAL
	writetext Route39BarnGaveBerryText
	pause 60
	promptbutton
	special RestartMapMusic
	writetext Route39BarnTotallyHealthyText
	waitbutton
	closetext
	setevent EVENT_HEALED_MOOMOO
	disappear ECRUTEAKCITY_GRAMPS3
	end

.NoBerriesInBag:
	writetext Route39BarnNoBerriesText
	waitbutton
	closetext
	end

.Refused:
	writetext Route39BarnRefusedBerryText
	waitbutton
	closetext
	end

.HappyCow:
	writetext MoomooHappyMooText
	cry MILTANK
	waitbutton
	closetext
	end

Route39BarnWhitneyMoomooIsSickText:
	text "Oh! <PLAYER>!"

	para "I ran back home"
	line "as soon as I"

	para "heard MOOMOO was"
	line "feeling sick."
	
	para "It makes me want"
	line "to cry, but I have"
	
	para "to stay strong"
	line "for her…"

	para "I'm all out of"
	line "BERRIES, but if"
	cont "you have some,"
	cont "please help!"
	done

Route39BarnWhitneyWereFeedingMoomooText:
	text "Thank you so"
	line "much, <PLAYER>!"

	para "GOLDENROD CITY is"
	line "fun, but it's nice"
	cont "to come home now"
	cont "and again."
	done

MoomooWeakMooText:
	text "MILTANK: …Moo…"
	done

Route39BarnItsCryIsWeakText:
	text "Its cry is weak…"
	done

MoomooHappyMooText:
	text "MILTANK: Mooo!"
	done

Route39BarnAskGiveBerryText:
	text "Give a BERRY to"
	line "MILTANK?"
	done

Route39BarnGaveBerryText:
	text "<PLAYER> gave a"
	line "BERRY to MILTANK."
	done

Route39BarnLittleHealthierText:
	text "MILTANK became a"
	line "little healthier!"
	done

Route39BarnQuiteHealthyText:
	text "MILTANK became"
	line "quite healthy!"
	done

Route39BarnTotallyHealthyText:
	text "MILTANK became"
	line "totally healthy!"
	done

Route39BarnNoBerriesText:
	text "<PLAYER> has no"
	line "BERRIES…"
	done

Route39BarnRefusedBerryText:
	text "<PLAYER> wouldn't"
	line "give a BERRY."

	para "MILTANK looks sad."
	done

Route39Barn_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, ROUTE_39, 1
	warp_event  4,  7, ROUTE_39, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  4, SPRITE_WHITNEY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route39BarnWhitneyScript, -1
	object_event  3,  3, SPRITE_TAUROS, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, MoomooScript, -1
