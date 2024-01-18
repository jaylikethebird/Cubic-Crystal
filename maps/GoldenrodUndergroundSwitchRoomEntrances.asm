; block ids
DEF UNDERGROUND_DOOR_CLOSED1 EQU $2a
DEF UNDERGROUND_DOOR_CLOSED2 EQU $3e
DEF UNDERGROUND_DOOR_CLOSED3 EQU $3f
DEF UNDERGROUND_DOOR_OPEN1   EQU $2d
DEF UNDERGROUND_DOOR_OPEN2   EQU $3d

MACRO ugdoor
	DEF UGDOOR_\1_XCOORD EQU \2
	DEF UGDOOR_\1_YCOORD EQU \3
ENDM

	;      id,  x,  y
	ugdoor  1,  6, 16
	ugdoor  2,  6, 10
	ugdoor  3,  6,  2
	ugdoor  4, 10,  2
	ugdoor  5, 10, 10
	ugdoor  6, 10, 16
	ugdoor  7,  6, 12
	ugdoor  8,  8, 12
	ugdoor  9,  6,  6
	ugdoor 10,  8,  6
	ugdoor 11, 10, 12
	ugdoor 12, 12, 12
	ugdoor 13, 10,  6
	ugdoor 14, 12,  6
	ugdoor 15, 10, 18
	ugdoor 16, 12, 18

MACRO doorstate
	changeblock UGDOOR_\1_YCOORD, UGDOOR_\1_XCOORD, UNDERGROUND_DOOR_\2
ENDM

	object_const_def
	const GOLDENRODUNDERGROUNDSWITCHROOMENTRANCES_PHARMACIST1
	const GOLDENRODUNDERGROUNDSWITCHROOMENTRANCES_PHARMACIST2
	const GOLDENRODUNDERGROUNDSWITCHROOMENTRANCES_ROCKET1
	const GOLDENRODUNDERGROUNDSWITCHROOMENTRANCES_ROCKET2
	const GOLDENRODUNDERGROUNDSWITCHROOMENTRANCES_ROCKET3
	const GOLDENRODUNDERGROUNDSWITCHROOMENTRANCES_ROCKET_GIRL
	const GOLDENRODUNDERGROUNDSWITCHROOMENTRANCES_TEACHER
	const GOLDENRODUNDERGROUNDSWITCHROOMENTRANCES_SUPER_NERD
	const GOLDENRODUNDERGROUNDSWITCHROOMENTRANCES_POKE_BALL1
	const GOLDENRODUNDERGROUNDSWITCHROOMENTRANCES_POKE_BALL2

GoldenrodUndergroundSwitchRoomEntrances_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, GoldenrodUndergroundSwitchRoomEntrancesUpdateDoorPositionsCallback

GoldenrodUndergroundSwitchRoomEntrancesUpdateDoorPositionsCallback:
	checkevent EVENT_SWITCH_4
	iffalse .false4
	doorstate 1, OPEN1
.false4
	checkevent EVENT_SWITCH_5
	iffalse .false5
	doorstate 2, OPEN1
.false5
	checkevent EVENT_SWITCH_6
	iffalse .false6
	doorstate 3, OPEN1
.false6
	checkevent EVENT_SWITCH_7
	iffalse .false7
	doorstate 4, OPEN1
.false7
	checkevent EVENT_SWITCH_8
	iffalse .false8
	doorstate 5, OPEN1
.false8
	checkevent EVENT_SWITCH_9
	iffalse .false9
	doorstate 6, OPEN1
.false9
	checkevent EVENT_SWITCH_10
	iffalse .false10
	doorstate 7, CLOSED1
	doorstate 8, OPEN1
.false10
	checkevent EVENT_SWITCH_11
	iffalse .false11
	doorstate 9, CLOSED1
	doorstate 10, OPEN1
.false11
	checkevent EVENT_SWITCH_12
	iffalse .false12
	doorstate 11, CLOSED1
	doorstate 12, OPEN1
.false12
	checkevent EVENT_SWITCH_13
	iffalse .false13
	doorstate 13, CLOSED1
	doorstate 14, OPEN1
.false13
	checkevent EVENT_SWITCH_14
	iffalse .false14
	doorstate 15, CLOSED1
	doorstate 16, OPEN1
.false14
	endcallback

GoldenrodUndergroundSwitchRoomEntrancesSuperNerdScript:
	jumptextfaceplayer GoldenrodUndergroundSwitchRoomEntrances_SuperNerdText

GoldenrodUndergroundSwitchRoomEntrancesTeacherScript:
	jumptextfaceplayer GoldenrodUndergroundSwitchRoomEntrances_TeacherText

TrainerGruntM11:
	trainer GRUNTM, GRUNTM_11, EVENT_BEAT_ROCKET_GRUNTM_11, GruntM11SeenText, GruntM11BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GruntM11AfterBattleText
	waitbutton
	closetext
	end

TrainerGruntM25:
	trainer GRUNTM, GRUNTM_25, EVENT_BEAT_ROCKET_GRUNTM_25, GruntM25SeenText, GruntM25BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GruntM25AfterBattleText
	waitbutton
	closetext
	end

TrainerBurglarDuncan:
	trainer BURGLAR, DUNCAN, EVENT_BEAT_BURGLAR_DUNCAN, BurglarDuncanSeenText, BurglarDuncanBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BurglarDuncanAfterBattleText
	waitbutton
	closetext
	end

TrainerBurglarEddie:
	trainer BURGLAR, EDDIE, EVENT_BEAT_BURGLAR_EDDIE, BurglarEddieSeenText, BurglarEddieBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BurglarEddieAfterBattleText
	waitbutton
	closetext
	end

TrainerGruntM13:
	trainer GRUNTM, GRUNTM_13, EVENT_BEAT_ROCKET_GRUNTM_13, GruntM13SeenText, GruntM13BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GruntM13AfterBattleText
	waitbutton
	closetext
	end

TrainerGruntF3:
	trainer GRUNTF, GRUNTF_3, EVENT_BEAT_ROCKET_GRUNTF_3, GruntF3SeenText, GruntF3BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GruntF3AfterBattleText
	waitbutton
	closetext
	end

Switch1Script:
	opentext
	writetext SwitchRoomText_Switch1
	promptbutton
	checkevent EVENT_SWITCH_1
	iftrue .On
	writetext SwitchRoomText_OffTurnOn
	yesorno
	iffalse GoldenrodUndergroundSwitchRoomEntrances_DontToggle
	readmem wUndergroundSwitchPositions
	addval 1
	writemem wUndergroundSwitchPositions
	setevent EVENT_SWITCH_1
	sjump GoldenrodUndergroundSwitchRoomEntrances_UpdateDoors

.On:
	writetext SwitchRoomText_OnTurnOff
	yesorno
	iffalse GoldenrodUndergroundSwitchRoomEntrances_DontToggle
	readmem wUndergroundSwitchPositions
	addval -1
	writemem wUndergroundSwitchPositions
	clearevent EVENT_SWITCH_1
	sjump GoldenrodUndergroundSwitchRoomEntrances_UpdateDoors

Switch2Script:
	opentext
	writetext SwitchRoomText_Switch2
	promptbutton
	checkevent EVENT_SWITCH_2
	iftrue .On
	writetext SwitchRoomText_OffTurnOn
	yesorno
	iffalse GoldenrodUndergroundSwitchRoomEntrances_DontToggle
	readmem wUndergroundSwitchPositions
	addval 2
	writemem wUndergroundSwitchPositions
	setevent EVENT_SWITCH_2
	sjump GoldenrodUndergroundSwitchRoomEntrances_UpdateDoors

.On:
	writetext SwitchRoomText_OnTurnOff
	yesorno
	iffalse GoldenrodUndergroundSwitchRoomEntrances_DontToggle
	readmem wUndergroundSwitchPositions
	addval -2
	writemem wUndergroundSwitchPositions
	clearevent EVENT_SWITCH_2
	sjump GoldenrodUndergroundSwitchRoomEntrances_UpdateDoors

Switch3Script:
	opentext
	writetext SwitchRoomText_Switch3
	promptbutton
	checkevent EVENT_SWITCH_3
	iftrue .On
	writetext SwitchRoomText_OffTurnOn
	yesorno
	iffalse GoldenrodUndergroundSwitchRoomEntrances_DontToggle
	readmem wUndergroundSwitchPositions
	addval 3
	writemem wUndergroundSwitchPositions
	setevent EVENT_SWITCH_3
	sjump GoldenrodUndergroundSwitchRoomEntrances_UpdateDoors

.On:
	writetext SwitchRoomText_OnTurnOff
	yesorno
	iffalse GoldenrodUndergroundSwitchRoomEntrances_DontToggle
	readmem wUndergroundSwitchPositions
	addval -3
	writemem wUndergroundSwitchPositions
	clearevent EVENT_SWITCH_3
	sjump GoldenrodUndergroundSwitchRoomEntrances_UpdateDoors

EmergencySwitchScript:
	opentext
	writetext SwitchRoomText_Emergency
	promptbutton
	checkevent EVENT_EMERGENCY_SWITCH
	iftrue .On
	writetext SwitchRoomText_OffTurnOn
	yesorno
	iffalse GoldenrodUndergroundSwitchRoomEntrances_DontToggle
	setval 7
	writemem wUndergroundSwitchPositions
	setevent EVENT_EMERGENCY_SWITCH
	setevent EVENT_SWITCH_1
	setevent EVENT_SWITCH_2
	setevent EVENT_SWITCH_3
	sjump GoldenrodUndergroundSwitchRoomEntrances_UpdateDoors

.On:
	writetext SwitchRoomText_OnTurnOff
	yesorno
	iffalse GoldenrodUndergroundSwitchRoomEntrances_DontToggle
	setval 0
	writemem wUndergroundSwitchPositions
	clearevent EVENT_EMERGENCY_SWITCH
	clearevent EVENT_SWITCH_1
	clearevent EVENT_SWITCH_2
	clearevent EVENT_SWITCH_3
	sjump GoldenrodUndergroundSwitchRoomEntrances_UpdateDoors

GoldenrodUndergroundSwitchRoomEntrances_DontToggle:
	closetext
	end

GoldenrodUndergroundSwitchRoomEntrances_UpdateDoors:
	readmem wUndergroundSwitchPositions
	ifequal 0, .Position0
	ifequal 1, .Position1
	ifequal 2, .Position2
	ifequal 3, .Position3
	ifequal 4, .Position4
	ifequal 5, .Position5
	ifequal 6, .Position6
	ifequal 7, .EmergencyPosition
.Position0:
	playsound SFX_ENTER_DOOR
	scall .Clear4
	scall .Clear5
	scall .Clear6
	scall .Clear7
	scall .Clear8
	scall .Clear9
	scall .Clear10
	scall .Clear11
	scall .Clear12
	scall .Clear13
	scall .Clear14
	reloadmappart
	closetext
	end

.Position1:
	playsound SFX_ENTER_DOOR
	scall .Set4
	scall .Set10
	scall .Set13
	scall .Clear9
	scall .Clear11
	scall .Clear12
	scall .Clear14
	reloadmappart
	closetext
	end

.Position2:
	playsound SFX_ENTER_DOOR
	scall .Set5
	scall .Set11
	scall .Set12
	scall .Clear8
	scall .Clear10
	scall .Clear13
	scall .Clear14
	reloadmappart
	closetext
	end

.Position3:
	playsound SFX_ENTER_DOOR
	scall .Set6
	scall .Set10
	scall .Set13
	scall .Clear7
	scall .Clear11
	scall .Clear12
	scall .Clear14
	reloadmappart
	closetext
	end

.Position4:
	playsound SFX_ENTER_DOOR
	scall .Set7
	scall .Set11
	scall .Set12
	scall .Clear6
	scall .Clear10
	scall .Clear13
	scall .Clear14
	reloadmappart
	closetext
	end

.Position5:
	playsound SFX_ENTER_DOOR
	scall .Set8
	scall .Set10
	scall .Set13
	scall .Clear5
	scall .Clear11
	scall .Clear12
	scall .Clear14
	reloadmappart
	closetext
	end

.Position6:
	playsound SFX_ENTER_DOOR
	scall .Set9
	scall .Set11
	scall .Set12
	scall .Set14
	scall .Clear4
	scall .Clear10
	scall .Clear13
	reloadmappart
	closetext
	end

.EmergencyPosition:
	playsound SFX_ENTER_DOOR
	scall .Clear4
	scall .Clear5
	scall .Set6
	scall .Clear7
	scall .Set8
	scall .Set9
	scall .Clear10
	scall .Set11
	scall .Set12
	scall .Clear13
	scall .Set14
	reloadmappart
	closetext
	setval 6
	writemem wUndergroundSwitchPositions
	end

.Set4:
	doorstate 1, OPEN1
	setevent EVENT_SWITCH_4
	end

.Set5:
	doorstate 2, OPEN1
	setevent EVENT_SWITCH_5
	end

.Set6:
	doorstate 3, OPEN1
	setevent EVENT_SWITCH_6
	end

.Set7:
	doorstate 4, OPEN1
	setevent EVENT_SWITCH_7
	end

.Set8:
	doorstate 5, OPEN1
	setevent EVENT_SWITCH_8
	end

.Set9:
	doorstate 6, OPEN1
	setevent EVENT_SWITCH_9
	end

.Set10:
	doorstate 7, CLOSED1
	doorstate 8, OPEN1
	setevent EVENT_SWITCH_10
	end

.Set11:
	doorstate 9, CLOSED1
	doorstate 10, OPEN1
	setevent EVENT_SWITCH_11
	end

.Set12:
	doorstate 11, CLOSED1
	doorstate 12, OPEN1
	setevent EVENT_SWITCH_12
	end

.Set13:
	doorstate 13, CLOSED1
	doorstate 14, OPEN1
	setevent EVENT_SWITCH_13
	end

.Set14:
	doorstate 15, CLOSED1
	doorstate 16, OPEN1
	setevent EVENT_SWITCH_14
	end

.Clear4:
	doorstate 1, CLOSED2
	clearevent EVENT_SWITCH_4
	end

.Clear5:
	doorstate 2, CLOSED2
	clearevent EVENT_SWITCH_5
	end

.Clear6:
	doorstate 3, CLOSED2
	clearevent EVENT_SWITCH_6
	end

.Clear7:
	doorstate 4, CLOSED2
	clearevent EVENT_SWITCH_7
	end

.Clear8:
	doorstate 5, CLOSED2
	clearevent EVENT_SWITCH_8
	end

.Clear9:
	doorstate 6, CLOSED2
	clearevent EVENT_SWITCH_9
	end

.Clear10:
	doorstate 7, CLOSED3
	doorstate 8, OPEN2
	clearevent EVENT_SWITCH_10
	end

.Clear11:
	doorstate 9, CLOSED3
	doorstate 10, OPEN2
	clearevent EVENT_SWITCH_11
	end

.Clear12:
	doorstate 11, CLOSED3
	doorstate 12, OPEN2
	clearevent EVENT_SWITCH_12
	end

.Clear13:
	doorstate 13, CLOSED3
	doorstate 14, OPEN2
	clearevent EVENT_SWITCH_13
	end

.Clear14:
	doorstate 15, CLOSED3
	doorstate 16, OPEN2
	clearevent EVENT_SWITCH_14
	end

GoldenrodUndergroundSwitchRoomEntrancesSmokeBall:
	itemball NUGGET

GoldenrodUndergroundSwitchRoomEntrancesFullHeal:
	itemball NUGGET

GoldenrodUndergroundSwitchRoomEntrancesHiddenMaxPotion:
	hiddenitem MAX_POTION, EVENT_GOLDENROD_UNDERGROUND_SWITCH_ROOM_ENTRANCES_HIDDEN_MAX_POTION

GoldenrodUndergroundSwitchRoomEntrancesHiddenRevive:
	hiddenitem REVIVE, EVENT_GOLDENROD_UNDERGROUND_SWITCH_ROOM_ENTRANCES_HIDDEN_REVIVE

GoldenrodUndergroundSwitchRoomEntrances_SuperNerdText:
	text "I was challenged"
	line "to a battle down-"
	cont "stairs."

	para "It's rough down"
	line "there. You'd"
	cont "better be careful."
	done

GoldenrodUndergroundSwitchRoomEntrances_TeacherText:
	text "There are some"
	line "shops downstairs…"

	para "But there are"
	line "also trainers."

	para "I'm scared to go"
	line "down there."
	done

GruntM11SeenText:
	text "That red-haired"
	line "brat messed with"
	cont "the shutters!"

	para "Better make sure"
	line "you don't do the"
	cont "same!"
	done

GruntM11BeatenText:
	text "Drat! I forgot"
	line "the button order!"
	done

GruntM11AfterBattleText:
	text "I'm so confused…"
	line "The switch on the"

	para "end is the one to"
	line "press first, but…"
	done

GruntM25SeenText:
	text "That kid looked"
	line "super tough."

	para "But I bet I can"
	line "take you!"
	done

GruntM25BeatenText:
	text "Uwww…"
	line "I blew it."
	done

GruntM25AfterBattleText:
	text "How did that brat"
	line "know that the"

	para "order you press"
	line "the buttons is"
	cont "the secret?"
	done

BurglarDuncanSeenText:
	text "Fork over your"
	line "goodies!"
	done

BurglarDuncanBeatenText:
	text "Mercy!"
	done

BurglarDuncanAfterBattleText:
	text "Steal and sell!"
	line "That's basic in"
	cont "crime, kid!"
	done

BurglarEddieSeenText:
	text "Ugh, the ROCKETS"
	line "are bringing too"

	para "much heat! I just"
	line "wanted to make an"
	cont "easy buck!"
	done

BurglarEddieBeatenText:
	text "Over the top!"
	done

BurglarEddieAfterBattleText:
	text "UNDERGROUND WARE-"
	line "HOUSE?"

	para "What do you want"
	line "to go there for?"

	para "There's nothing"
	line "down there."

	para "Certainly not good"
	line "loot! Go away!"
	done

GruntM13SeenText:
	text "Hey! What happened"
	line "to the guard at"
	cont "the entrance?"
	done

GruntM13BeatenText:
	text "Urk!"
	done

GruntM13AfterBattleText:
	text "Wait, you didn't"
	line "fight the guard?"

	para "It must've been"
	line "that angry red-"

	para "haired kid that"
	line "just rushed past."
	done

SwitchRoomText_Switch1:
	text "It's labeled"
	line "SWITCH 1."
	done

GruntF3SeenText:
	text "Hey! I already"
	line "saw one weird kid"
	
	para "slip past me. No"
	line "way you're gonna"
	cont "do the same!"
	done

GruntF3BeatenText:
	text "WHAT? HOW?"
	done

GruntF3AfterBattleText:
	text "I gotta warn the"
	line "BOSS at the TOWER."

	para "But how am I gonna"
	line "explain that two"

	para "kids made it to"
	line "the WAREHOUSE?"
	done

SwitchRoomText_OffTurnOn:
	text "It's OFF."
	line "Turn it ON?"
	done

SwitchRoomText_OnTurnOff:
	text "It's ON."
	line "Turn it OFF?"
	done

SwitchRoomText_Switch2:
	text "It's labeled"
	line "SWITCH 2."
	done

SwitchRoomText_Switch3:
	text "It's labeled"
	line "SWITCH 3."
	done

SwitchRoomText_Emergency:
	text "It's labeled"
	line "EMERGENCY."
	done

GoldenrodUndergroundSwitchRoomEntrances_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 23,  3, GOLDENROD_UNDERGROUND, 3
	warp_event 22, 10, GOLDENROD_UNDERGROUND_WAREHOUSE, 1
	warp_event 23, 10, GOLDENROD_UNDERGROUND_WAREHOUSE, 2
	warp_event  5, 25, GOLDENROD_UNDERGROUND, 2
	warp_event  4, 29, GOLDENROD_CITY, 14
	warp_event  5, 29, GOLDENROD_CITY, 14
	warp_event 21, 25, GOLDENROD_UNDERGROUND, 1
	warp_event 20, 29, GOLDENROD_CITY, 13
	warp_event 21, 29, GOLDENROD_CITY, 13

	def_coord_events

	def_bg_events
	bg_event 16,  1, BGEVENT_READ, Switch1Script
	bg_event 10,  1, BGEVENT_READ, Switch2Script
	bg_event  2,  1, BGEVENT_READ, Switch3Script
	bg_event 20, 11, BGEVENT_READ, EmergencySwitchScript
	bg_event  8,  9, BGEVENT_ITEM, GoldenrodUndergroundSwitchRoomEntrancesHiddenMaxPotion
	bg_event  1,  8, BGEVENT_ITEM, GoldenrodUndergroundSwitchRoomEntrancesHiddenRevive

	def_object_events
	object_event  9, 12, SPRITE_PHARMACIST, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 2, TrainerBurglarDuncan, EVENT_RADIO_TOWER_ROCKET_TAKEOVER
	object_event  4,  8, SPRITE_PHARMACIST, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 2, TrainerBurglarEddie, EVENT_RADIO_TOWER_ROCKET_TAKEOVER
	object_event 17,  2, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerGruntM13, EVENT_RADIO_TOWER_ROCKET_TAKEOVER
	object_event 11,  2, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerGruntM11, EVENT_RADIO_TOWER_ROCKET_TAKEOVER
	object_event  3,  2, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerGruntM25, EVENT_RADIO_TOWER_ROCKET_TAKEOVER
	object_event 19, 12, SPRITE_ROCKET_GIRL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerGruntF3, EVENT_RADIO_TOWER_ROCKET_TAKEOVER
	object_event  3, 27, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodUndergroundSwitchRoomEntrancesTeacherScript, -1
	object_event 19, 27, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodUndergroundSwitchRoomEntrancesSuperNerdScript, -1
	object_event  1, 12, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, GoldenrodUndergroundSwitchRoomEntrancesSmokeBall, EVENT_GOLDENROD_UNDERGROUND_SWITCH_ROOM_ENTRANCES_SMOKE_BALL
	object_event 14,  9, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, GoldenrodUndergroundSwitchRoomEntrancesFullHeal, EVENT_GOLDENROD_UNDERGROUND_SWITCH_ROOM_ENTRANCES_FULL_HEAL