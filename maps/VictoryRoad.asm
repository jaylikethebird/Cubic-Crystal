	object_const_def
	const VICTORYROAD_FALKNER
	const VICTORYROAD_BUGSY
	const VICTORYROAD_WHITNEY
	const VICTORYROAD_PRYCE
	const VICTORYROAD_JASMINE
	const VICTORYROAD_MORTY
	const VICTORYROAD_RIVAL
	const VICTORYROAD_POKE_BALL1
	const VICTORYROAD_POKE_BALL2
	const VICTORYROAD_POKE_BALL3
	const VICTORYROAD_POKE_BALL4
	const VICTORYROAD_POKE_BALL5

VictoryRoad_MapScripts:
	def_scene_scripts
	scene_script VictoryRoadNoop1Scene, SCENE_VICTORYROAD_RIVAL_BATTLE
	scene_script VictoryRoadNoop2Scene, SCENE_VICTORYROAD_NOOP

	def_callbacks

VictoryRoadNoop1Scene:
	end

VictoryRoadNoop2Scene:
	end

FalknerScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_FALKNER_VR
	iftrue .FalknerFightDone
	checkevent EVENT_GOT_HM02_FLY
	iftrue .FalknerFly
	writetext FalknerIntro
	waitbutton
	closetext
	end

.FalknerFly
	writetext FalknerFly
	yesorno
	iftrue .FightFalknerFly
	writetext FalknerNoFly
	waitbutton
	closetext
	end

.FightFalknerFly
	writetext FalknerPreFightFly
	waitbutton
	winlosstext FalknerWinLossFly, 0
	loadtrainer FALKNER, FALKNER3
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_FALKNER_VR
	opentext
	writetext FalknerPostFightFly
	waitbutton
	closetext
	end

.FalknerFightDone
	writetext FalknerPostFightFly
	waitbutton
	closetext
	end

BugsyScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_BUGSY_VR
	iftrue .BugsyFightDone
	writetext BugsyIntro
	yesorno
	iftrue .FightBugsy
	writetext BugsyNo
	waitbutton
	closetext
	end

.BugsyFightDone
	writetext BugsyPostFight
	waitbutton
	closetext
	end

.FightBugsy
	writetext BugsyPreFight
	waitbutton
	winlosstext BugsyWinLoss, 0
	loadtrainer BUGSY, BUGSY2
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_BUGSY_VR
	opentext
	writetext BugsyPostFight
	waitbutton
	closetext
	end

WhitneyScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_WHITNEY_VR
	iftrue .WhitneyFightDone
	checkevent EVENT_HEALED_MOOMOO
	iftrue .WhitneyMooMoo
	writetext WhitneyIntro
	waitbutton
	closetext
	end

.WhitneyMooMoo
	writetext WhitneyMooMoo
	yesorno
	iftrue .FightWhitneyMooMoo
	writetext WhitneyNoMooMoo
	waitbutton
	closetext
	end

.WhitneyFightDone
	writetext WhitneyPostFightMooMoo
	waitbutton
	closetext
	end

.FightWhitneyMooMoo
	writetext WhitneyPreFightMooMoo
	waitbutton
	winlosstext WhitneyWinLossMooMoo, 0
	loadtrainer WHITNEY, WHITNEY2
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_WHITNEY_VR
	opentext
	writetext WhitneyPostFightMooMoo
	waitbutton
	closetext
	end

PryceScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_PRYCE_VR
	iftrue .PryceFightDone
	writetext PryceIntro
	yesorno
	iftrue .FightPryce
	writetext PryceNo
	waitbutton
	closetext
	end

.PryceFightDone
	writetext PrycePostFight
	waitbutton
	closetext
	end

.FightPryce
	writetext PrycePreFight
	waitbutton
	winlosstext PryceWinLoss, 0
	loadtrainer PRYCE, PRYCE2
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_PRYCE_VR
	opentext
	writetext PrycePostFight
	waitbutton
	closetext
	end

JasmineScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_JASMINE_VR
	iftrue .JasmineFightDone
	writetext JasmineIntro
	yesorno
	iftrue .FightJasmine
	writetext JasmineNo
	waitbutton
	closetext
	end

.JasmineFightDone
	writetext JasminePostFight
	waitbutton
	closetext
	end

.FightJasmine
	writetext JasminePreFight
	waitbutton
	winlosstext JasmineWinLoss, 0
	loadtrainer JASMINE, JASMINE2
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_JASMINE_VR
	opentext
	writetext JasminePostFight
	waitbutton
	closetext
	end

MortyScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_MORTY_VR
	iftrue .MortyFightDone
	writetext MortyIntro
	yesorno
	iftrue .FightMorty
	writetext MortyNo
	waitbutton
	closetext
	end

.MortyFightDone
	writetext MortyPostFight
	waitbutton
	closetext
	end

.FightMorty
	writetext MortyPreFight
	waitbutton
	winlosstext MortyWinLoss, 0
	loadtrainer MORTY, MORTY2
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_MORTY_VR
	opentext
	writetext MortyPostFight
	waitbutton
	closetext
	end

VictoryRoadRivalLeft:
	moveobject VICTORYROAD_RIVAL, 18, 11
	turnobject PLAYER, DOWN
	showemote EMOTE_SHOCK, PLAYER, 15
	special FadeOutMusic
	pause 15
	appear VICTORYROAD_RIVAL
	applymovement VICTORYROAD_RIVAL, VictoryRoadRivalBattleApproachMovement1
	scall VictoryRoadRivalNext
	applymovement VICTORYROAD_RIVAL, VictoryRoadRivalBattleExitMovement1
	disappear VICTORYROAD_RIVAL
	setscene SCENE_VICTORYROAD_NOOP
	playmapmusic
	end

VictoryRoadRivalRight:
	turnobject PLAYER, DOWN
	showemote EMOTE_SHOCK, PLAYER, 15
	special FadeOutMusic
	pause 15
	appear VICTORYROAD_RIVAL
	applymovement VICTORYROAD_RIVAL, VictoryRoadRivalBattleApproachMovement2
	scall VictoryRoadRivalNext
	applymovement VICTORYROAD_RIVAL, VictoryRoadRivalBattleExitMovement2
	disappear VICTORYROAD_RIVAL
	setscene SCENE_VICTORYROAD_NOOP
	playmapmusic
	end

VictoryRoadRivalNext:
	turnobject PLAYER, DOWN
	playmusic MUSIC_RIVAL_ENCOUNTER
	opentext
	writetext VictoryRoadRivalBeforeText
	waitbutton
	closetext
	setevent EVENT_RIVAL_VICTORY_ROAD
	checkevent EVENT_GOT_TOTODILE_FROM_ELM
	iftrue .GotTotodile
	checkevent EVENT_GOT_CHIKORITA_FROM_ELM
	iftrue .GotChikorita
	winlosstext VictoryRoadRivalDefeatText, VictoryRoadRivalVictoryText
	setlasttalked VICTORYROAD_RIVAL
	loadtrainer RIVAL1, RIVAL1_5_TOTODILE
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	sjump .AfterBattle

.GotTotodile:
	winlosstext VictoryRoadRivalDefeatText, VictoryRoadRivalVictoryText
	setlasttalked VICTORYROAD_RIVAL
	loadtrainer RIVAL1, RIVAL1_5_CHIKORITA
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	sjump .AfterBattle

.GotChikorita:
	winlosstext VictoryRoadRivalDefeatText, VictoryRoadRivalVictoryText
	setlasttalked VICTORYROAD_RIVAL
	loadtrainer RIVAL1, RIVAL1_5_CYNDAQUIL
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	sjump .AfterBattle

.AfterBattle:
	playmusic MUSIC_RIVAL_AFTER
	opentext
	writetext VictoryRoadRivalAfterText
	waitbutton
	closetext
	end

VictoryRoadTMEarthquake:
	itemball TM_EARTHQUAKE

VictoryRoadMaxRevive:
	itemball MAX_REVIVE

VictoryRoadFullRestore:
	itemball FULL_RESTORE

VictoryRoadFullHeal:
	itemball FULL_HEAL

VictoryRoadHPUp:
	itemball HP_UP

VictoryRoadHiddenMaxPotion:
	hiddenitem MAX_POTION, EVENT_VICTORY_ROAD_HIDDEN_MAX_POTION

VictoryRoadHiddenFullHeal:
	hiddenitem FULL_HEAL, EVENT_VICTORY_ROAD_HIDDEN_FULL_HEAL

VictoryRoadRivalBattleApproachMovement1:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step UP
	step UP
	step_end

VictoryRoadRivalBattleApproachMovement2:
	step UP
	step UP
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step UP
	step UP
	step_end

VictoryRoadRivalBattleExitMovement1:
	step DOWN
	step DOWN
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step_end

VictoryRoadRivalBattleExitMovement2:
	step DOWN
	step DOWN
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step DOWN
	step DOWN
	step_end

FalknerFly:
	text "Hey, <PLAYER>!"
	
	para "How's my FLY HM"
	line "treating you?"

	para "A little bird told"
	line "me you're headed"

	para "to the #MON"
	line "LEAGUE, so I"

	para "figured you could"
	line "use some practice."

	para "Interested?"
	done

FalknerIntro:
	text "Hey, <PLAYER>!"
	
	para "I guess you've been"
	line "walking around"

	para "JOHTO. Why not"
	line "fight the team I'm"

	para "working on down"
	line "past VIOLET to get"
	cont "my FLY HM?"

	para "I'm prepping them"
	line "to battle trainers"

	para "with three BADGES,"
	line "so it should be a"
	cont "breeze…"
	done

FalknerNoFly:
	text "No? You're just"
	line "gonna soar to"
	cont "victory?"

	para "Good luck, then!"
	line "And come on back"

	para "if you change your"
	line "mind."
	done

FalknerPreFightFly:
	text "Yes! Let me show"
	line "you the team I"

	para "raised to battle"
	line "trainers with all"
	cont "eight BADGES!"
	done

FalknerPostFightFly:
	text "I hate losing,"
	line "but if you beat"

	para "the ELITE FOUR, I"
	line "can live with it."

	para "Good luck!"
	done

FalknerWinLossFly:
	text "Darn!"
	done

BugsyIntro:
	text "Oh hey!"
	line "There you are!"

	para "I'm taking a break"
	line "from hunting bugs"
	cont "to help you out!"

	para "After you came"
	line "to the rescue in"
	
	para "SLOWPOKE WELL,"
	line "I've owed you one!"

	para "Wanna train for"
	line "the ELITE FOUR"
	cont "with me?"
	
	para "This team is way"
	line "stronger than the"

	para "one I used back in"
	line "AZALEA TOWN!"
	done

BugsyNo:
	text "Oh! Okay then."
	line "Sorry to bug you."
	done

BugsyPreFight:
	text "Great!"
	
	para "I love showing off"
	line "how strong a bug"
	cont "can be!"
	done

BugsyPostFight:
	text "I only started"
	line "#MON battling"

	para "to learn more"
	line "about bugs."

	para "Win or lose, each"
	line "match is a great"
	
	para "opportunity to"
	line "study and grow."

	para "Good luck!"
	done

BugsyWinLoss:
	text "Squashed!"
	done

WhitneyIntro:
	text "<PLAYER>…"
	line "The others said"
	cont "you'd be here…"

	para "Sorry, I'm a bit"
	line "distracted."

	para "…sniff…"

	para "I'm so worried"
	line "about MOOMOO!"

	para "She's a MILTANK"
	line "that's been in my"

	para "family since I was"
	line "little. She's sick!"

	para "I should be there"
	line "to help out. Can"

	para "you swing by the"
	line "farm out past"
	cont "ECRUTEAK to help?"
	done

WhitneyMooMoo:
	text "<PLAYER>!"
	line "Thanks so much"

	para "for helping heal"
	line "MOOMOO!"

	para "This cave is way"
	line "gross, but my"

	para "GYM LEADER friends"
	line "swear by it."

	para "We all wanna help"
	line "you prep for the"

	para "ELITE FOUR, so go"
	line "win so I can go"
	cont "home!"
	done

WhitneyNoMooMoo:
	text "Too scared, huh?"
	line "I understand."

	para "My MILTANK is so"
	line "tough they made"

	para "me a GYM LEADER,"
	line "after all!"
	done

WhitneyPreFightMooMoo:
	text "Try not to cry!" 
	done

WhitneyPostFightMooMoo:
	text "Hold it together,"
	line "WHITNEY…hold it"
	cont "together…"
	
	para "Okay, I'm good."
	
	para "You better make"
	line "the ELITE FOUR"
	
	para "sob themselves"
	line "silly, <PLAYER>!"

	para "Good luck!"
	done

WhitneyWinLossMooMoo:
	text "…sniff…"
	done

PryceIntro:
	text "Why, if it isn't"
	line "young <PLAYER>!"

	para "As I'm sure you've"
	line "seen, my fellow"

	para "GYM LEADERS and I"
	line "have been moved"
	cont "to help you."

	para "I've been MAHOGANY"
	line "TOWN's guardian for"

	para "more years than I'd"
	line "like to say, and"

	para "I can think of few"
	line "trainers that have"

	para "done more for my"
	line "home than you."

	para "Allow me to thank"
	line "you with a battle!"
	done

PryceNo:
	text "I see."

	para "If you feel that"
	line "you are ready, I"
	cont "believe in you."
	done

PrycePreFight:
	text "Excellent."

	para "Be warned, this"
	line "time I won't be"
	cont "holding back!"
	done

PrycePostFight:
	text "It's a wonderful"
	line "thing to see such"

	para "talent from one"
	line "so youthful."

	para "Good luck!"
	done

PryceWinLoss:
	text "Brrr!"
	done

JasmineIntro:
	text "Oh! Hello there,"
	line "<PLAYER>."

	para "I… I mean, WE all"
	line "have come here to"

	para "VICTORY ROAD as a"
	line "thank you…"

	para "…I mean, most of"
	line "us, at least."

	para "CHUCK is training"
	line "in MOUNT MORTAR,"

	para "and CLAIR got mad"
	line "when I… I mean,"

	para "when we suggested"
	line "the idea."

	para "From all of us,"
	line "including AMPHY…"

	para "…would you like"
	line "to battle me?"
	done

JasmineNo:
	text "…okay."
	line "Well, good luck…"
	done

JasminePreFight:
	text "Okay… Here we go,"
	line "then…"
	done

JasminePostFight:
	text "…Um…"
	line "Good job, again."

	para "I hope you're as"
	line "successful against"
	cont "the ELITE FOUR."

	para "…good luck!"
	done

JasmineWinLoss:
	text "…wow…"
	done

MortyIntro:
	text "<PLAYER>."

	para "The trainer chosen"
	line "to meet legends."

	para "I don't need my"
	line "second sight to"
	
	para "know your fate as"
	line "#MON CHAMPION."

	para "If you wish to"
	line "learn it yourself,"

	para "perhaps I can"
	line "serve as a means"
	cont "of training?" 
	done

MortyNo:
	text "Confident in your"
	line "destiny, I see."

	para "Good! Now prove to"
	line "the ELITE FOUR"
	
	para "what you've proven"
	line "to me!"
	done

MortyPreFight:
	text "I'm honored to put"
	line "you to the test."
	cont "Come, now!"
	done

MortyPostFight:
	text "When you first"
	line "met KAREN and me"

	para "in BURNED TOWER,"
	line "not even I could"

	para "have guessed that"
	line "your star would"
	cont "shine so brightly."

	para "Give her my best"
	line "in there."

	para "Good luck!"
	done

MortyWinLoss:
	text "Predictable."
	done

VictoryRoadRivalBeforeText:
	text "I was right all"
	line "along, wasn't I?"

	para "You're weak, but"
	line "others have helped"

	para "you pick up the"
	line "slack."

	para "That professor in"
	line "NEW BARK TOWN just"

	para "gave you a #MON"
	line "for free."

	para "The dragon master"
	line "and I held your"

	para "hand to take down"
	line "TEAM ROCKET."

	para "And now all these"
	line "GYM LEADERS came"

	para "running to help"
	line "train you for your"
	
	para "big standoff with"
	line "the ELITE FOUR."

	para "I had to fight for"
	line "what's mine."

	para "Alone!"

	para "Nobody ever helped"
	line "me. Even my father"

	para "cared more about"
	line "TEAM ROCKET than"
	cont "his own son."

	para "Well, I'll show"
	line "him. And you!"

	para "Prepare to lose!"
	done

VictoryRoadRivalDefeatText:
	text "…I couldn't win…"

	para "I gave it every-"
	line "thing I had…"
	done

VictoryRoadRivalAfterText:
	text "Is it that easy?"

	para "Treating #MON"
	line "like…friends?"

	para "I've never had any"
	line "friends."

	para "I don't even know"
	line "where to start."

	para "But I'll figure it"
	line "out. I know it."

	para "And when I do, my"
	line "friends will rip"
	cont "yours to shreds."

	para "Don't slow down."
	line "Don't give up."

	para "Because I'm coming"
	line "for you, <PLAYER>!"
	done

VictoryRoadRivalVictoryText:
	text "…Humph!"

	para "When it comes down"
	line "to it, nothing can"
	cont "beat power."

	para "I don't need any-"
	line "thing else."
	done

VictoryRoad_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  9, 67, VICTORY_ROAD_GATE, 5
	warp_event  1, 49, VICTORY_ROAD, 3
	warp_event  1, 35, VICTORY_ROAD, 2
	warp_event 13, 31, VICTORY_ROAD, 5
	warp_event 13, 17, VICTORY_ROAD, 4
	warp_event 17, 33, VICTORY_ROAD, 7
	warp_event 17, 19, VICTORY_ROAD, 6
	warp_event  0, 11, VICTORY_ROAD, 9
	warp_event  0, 27, VICTORY_ROAD, 8
	warp_event 13,  5, ROUTE_23, 3

	def_coord_events
	coord_event 12,  8, SCENE_VICTORYROAD_RIVAL_BATTLE, VictoryRoadRivalLeft
	coord_event 13,  8, SCENE_VICTORYROAD_RIVAL_BATTLE, VictoryRoadRivalRight

	def_bg_events
	bg_event  3, 29, BGEVENT_ITEM, VictoryRoadHiddenMaxPotion
	bg_event  3, 65, BGEVENT_ITEM, VictoryRoadHiddenFullHeal

	def_object_events
	object_event 9, 65, SPRITE_FALKNER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FalknerScript, EVENT_BEAT_ELITE_FOUR
	object_event 11, 54, SPRITE_BUGSY, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BugsyScript, EVENT_BEAT_ELITE_FOUR
	object_event 10, 39, SPRITE_WHITNEY, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, WhitneyScript, EVENT_BEAT_ELITE_FOUR
	object_event 18, 34, SPRITE_PRYCE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PryceScript, EVENT_BEAT_ELITE_FOUR
	object_event 12, 16, SPRITE_JASMINE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, JasmineScript, EVENT_BEAT_ELITE_FOUR
	object_event 3, 26, SPRITE_MORTY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MortyScript, EVENT_BEAT_ELITE_FOUR
	object_event 18, 13, SPRITE_RIVAL, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_RIVAL_VICTORY_ROAD
	object_event  3, 28, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VictoryRoadTMEarthquake, EVENT_VICTORY_ROAD_TM_EARTHQUAKE
	object_event 12, 48, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VictoryRoadMaxRevive, EVENT_VICTORY_ROAD_MAX_REVIVE
	object_event 18, 29, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VictoryRoadFullRestore, EVENT_VICTORY_ROAD_FULL_RESTORE
	object_event 15, 48, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VictoryRoadFullHeal, EVENT_VICTORY_ROAD_FULL_HEAL
	object_event  7, 38, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VictoryRoadHPUp, EVENT_VICTORY_ROAD_HP_UP
