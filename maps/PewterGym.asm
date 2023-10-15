	object_const_def
	const PEWTERGYM_BROCK
	const PEWTERGYM_YOUNGSTER
	const PEWTERGYM_GYM_GUIDE

PewterGym_MapScripts:
	def_scene_scripts

	def_callbacks

PewterGymBrockScript:
	faceplayer
	opentext
	checkflag ENGINE_BOULDERBADGE
	iftrue .FightDone
	writetext BrockIntroText
	waitbutton
	closetext
	winlosstext BrockWinLossText, 0
	loadtrainer BROCK, BROCK1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_BROCK
	setevent EVENT_BEAT_CAMPER_JERRY
	opentext
	writetext ReceivedBoulderBadgeText
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_BOULDERBADGE
.FightDone:
	checkevent EVENT_GOT_TM37_SANDSTORM
	iftrue .GotSandstorm
	writetext BrockBoulderBadgeText
	promptbutton
	verbosegiveitem TM_SANDSTORM
	setevent EVENT_GOT_TM37_SANDSTORM
	writetext BrockExplainTMText
	waitbutton
	closetext
	end
.GotSandstorm
	writetext BrockFightDoneText
	waitbutton
	closetext
	end

TrainerCamperJerry:
	trainer CAMPER, JERRY, EVENT_BEAT_CAMPER_JERRY, CamperJerrySeenText, CamperJerryBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CamperJerryAfterBattleText
	waitbutton
	closetext
	end

PewterGymGuideScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_BROCK
	iftrue .PewterGymGuideWinScript
	writetext PewterGymGuideText
	waitbutton
	closetext
	end

.PewterGymGuideWinScript:
	writetext PewterGymGuideWinText
	waitbutton
	closetext
	end

PewterGymStatue:
	checkflag ENGINE_BOULDERBADGE
	iftrue .Beaten
	jumpstd GymStatue1Script
.Beaten:
	gettrainername STRING_BUFFER_4, BROCK, BROCK1
	jumpstd GymStatue2Script

BrockIntroText:
	text "Aha!"

	para "I was hoping you"
	line "would show."

	para "Your battle in"
	line "MT. MOON gave"
	cont "me goosebumps."

	para "Let's see if you"
	line "can inflict any"

	para "damage against my"
	line "rock-hard #MON!"

	para "Come on!"
	done

BrockWinLossText:
	text "Your #MON's"
	line "powerful attacks"
	cont "overcame my rock-"
	cont "hard defense…"

	para "You're stronger"
	line "than I expected…"

	para "Go ahead--take"
	line "this BADGE."
	done

ReceivedBoulderBadgeText:
	text "<PLAYER> received"
	line "BOULDERBADGE."
	done

BrockBoulderBadgeText:
	text "<PLAY_G>,"
	line "thanks. I enjoyed"

	para "battling you, even"
	line "though I am a bit"
	cont "upset."

	para "That BOULDERBADGE"
	line "will make your"

	para "#MON even more"
	line "powerful."

	para "While I'm at it,"
	line "this move seems"

	para "perfect for a"
	line "trainer like you."
	done
	
BrockExplainTMText:
	text "This is"
	line "SANDSTORM!"

	para "It inflicts damage"
	line "to all but the "
	cont "toughest #MON"

	para "at the end of"
	line "every turn."
	done

BrockFightDoneText:
	text "The world is just"
	line "huge. There are"

	para "still many strong"
	line "trainers like you."

	para "Just wait and see."
	line "I'm going to be-"
	cont "come a lot strong-"
	cont "er too."
	done

CamperJerrySeenText:
	text "BROCK uses rock-"
	line "type #MON."

	para "The rock-type has"
	line "high DEFENSE."

	para "Battles could end"
	line "up going a long"

	para "time. Are you"
	line "ready for this?"
	done

CamperJerryBeatenText:
	text "Dang, I should"
	line "really be using"
	cont "rock-types!"
	done

CamperJerryAfterBattleText:
	text "Hey, you! Trainer"
	line "from JOHTO! BROCK"

	para "is tough. He'll"
	line "punish you if you"

	para "don't take him"
	line "seriously."
	done

PewterGymGuideText:
	text "Yo! CHAMP!"
	line "You rock!"

	para "Are you battling"
	line "the GYM LEADERS of"
	cont "KANTO?"

	para "They're strong and"
	line "dedicated people,"

	para "just like JOHTO's"
	line "GYM LEADERS."
	done

PewterGymGuideWinText:
	text "Yo! CHAMPION!"
	line "That GYM didn't"

	para "give you too"
	line "much trouble."

	para "The way you took"
	line "charge was really"

	para "inspiring. I mean"
	line "that seriously."
	done

PewterGym_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 13, PEWTER_CITY, 2
	warp_event  5, 13, PEWTER_CITY, 2

	def_coord_events

	def_bg_events
	bg_event  2, 11, BGEVENT_READ, PewterGymStatue
	bg_event  7, 11, BGEVENT_READ, PewterGymStatue

	def_object_events
	object_event  5,  1, SPRITE_BROCK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, PewterGymBrockScript, -1
	object_event  2,  5, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerCamperJerry, -1
	object_event  6, 11, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 1, PewterGymGuideScript, -1
