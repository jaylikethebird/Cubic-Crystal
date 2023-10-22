	object_const_def
	const DRAGONSDENB1F_CLAIR
	const DRAGONSDENB1F_RIVAL
	const FIGHTINGDOJO_FALKNER
	const FIGHTINGDOJO_BUGSY
	const FIGHTINGDOJO_WHITNEY
	const FIGHTINGDOJO_PRYCE
	const FIGHTINGDOJO_CHUCK
	const FIGHTINGDOJO_JASMINE
	const FIGHTINGDOJO_MORTY
	const FIGHTINGDOJO_CLAIR
	const DRAGONSDENB1F_POKE_BALL1
	const DRAGONSDENB1F_POKE_BALL2
	const DRAGONSDENB1F_POKE_BALL3

DragonsDenB1F_MapScripts:
	def_scene_scripts
	scene_script DragonsDenB1FNoop1Scene, SCENE_DRAGONSDENB1F_NOOP
	scene_script DragonsDenB1FNoop2Scene, SCENE_DRAGONSDENB1F_CLAIR_GIVES_TM

	def_callbacks
	callback MAPCALLBACK_NEWMAP, DragonsDenB1FCheckRivalCallback

DragonsDenB1FNoop1Scene:
	end

DragonsDenB1FNoop2Scene:
	end

DragonsDenB1FCheckRivalCallback:
	checkevent EVENT_BEAT_RIVAL_IN_MT_MOON
	iftrue .CheckDay
	disappear DRAGONSDENB1F_RIVAL
	endcallback

.CheckDay:
	readvar VAR_WEEKDAY
	ifequal TUESDAY, .AppearRival
	ifequal THURSDAY, .AppearRival
	disappear DRAGONSDENB1F_RIVAL
	endcallback

.AppearRival:
	appear DRAGONSDENB1F_RIVAL
	endcallback

DragonsDenB1F_ClairScene:
	appear DRAGONSDENB1F_CLAIR
	opentext
	writetext ClairText_Wait
	pause 30
	closetext
	showemote EMOTE_SHOCK, PLAYER, 15
	turnobject PLAYER, LEFT
	playmusic MUSIC_CLAIR
	applymovement DRAGONSDENB1F_CLAIR, MovementDragonsDen_ClairWalksToYou
	opentext
	writetext ClairText_GiveDragonbreathDragonDen
	promptbutton
	giveitem TM_DRAGONBREATH
	iffalse .BagFull
	getitemname STRING_BUFFER_3, TM_DRAGONBREATH
	writetext Text_ReceivedTM24
	playsound SFX_ITEM
	waitsfx
	itemnotify
	setevent EVENT_GOT_TM24_DRAGONBREATH
	writetext ClairText_DescribeDragonbreathDragonDen
	promptbutton
	writetext ClairText_WhatsTheMatterDragonDen
	waitbutton
	closetext
	sjump .FinishClair

.BagFull:
	writetext ClairText_NoRoom
	waitbutton
	closetext
.FinishClair:
	applymovement DRAGONSDENB1F_CLAIR, MovementDragonsDen_ClairWalksAway
	special FadeOutMusic
	pause 30
	special RestartMapMusic
	disappear DRAGONSDENB1F_CLAIR
	setscene SCENE_DRAGONSDENB1F_NOOP
	end

DragonsDenB1FRivalScript:
	playmusic MUSIC_RIVAL_ENCOUNTER
	faceplayer
	opentext
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iftrue .RivalTalkAgain
	writetext RivalText_Training1
	waitbutton
	closetext
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	special RestartMapMusic
	end

.RivalTalkAgain:
	writetext RivalText_Training2
	waitbutton
	closetext
	special RestartMapMusic
	end

DojoFalknerScript:
	faceplayer
	opentext
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse .DojoFalknerContinue
	writetext DenLeaderAfterText  
	waitbutton
	closetext
	end

.DojoFalknerContinue
	writetext DojoFalknerIntroText
	yesorno
	iftrue .FightFalkner
	writetext DenLeaderNoText
	waitbutton
	closetext
	end

.FightFalkner
	writetext DenLeaderYesText
	waitbutton
	winlosstext DojoFalknerWinLossText, 0
	loadtrainer CLAIR, CLAIR1
	startbattle
	reloadmapafterbattle
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	end

DojoBugsyScript:
	faceplayer
	opentext
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	iffalse .DojoBugsyContinue
	writetext DenLeaderAfterText  
	waitbutton
	closetext
	end

.DojoBugsyContinue
	writetext DojoBugsyIntroText
	yesorno
	iftrue .FightBugsy
	writetext DenLeaderNoText
	waitbutton
	closetext
	end

.FightBugsy
	writetext DenLeaderYesText
	waitbutton
	winlosstext DojoBugsyWinLossText, 0
	loadtrainer CLAIR, CLAIR1
	startbattle
	reloadmapafterbattle
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	end

DojoWhitneyScript:
	faceplayer
	opentext
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_3
	iffalse .DojoWhitneyContinue
	writetext DenLeaderAfterText  
	waitbutton
	closetext
	end

.DojoWhitneyContinue
	writetext DojoWhitneyIntroText
	yesorno
	iftrue .FightWhitney
	writetext DenLeaderNoText
	waitbutton
	closetext
	end

.FightWhitney
	writetext DenLeaderYesText
	waitbutton
	winlosstext DojoWhitneyWinLossText, 0
	loadtrainer CLAIR, CLAIR1
	startbattle
	reloadmapafterbattle
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_3
	end
	
DojoPryceScript:
	faceplayer
	opentext
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_4
	iffalse .DojoPryceContinue
	writetext DenLeaderAfterText  
	waitbutton
	closetext
	end

.DojoPryceContinue
	writetext DojoPryceIntroText
	yesorno
	iftrue .FightPryce
	writetext DenLeaderNoText
	waitbutton
	closetext
	end

.FightPryce
	writetext DenLeaderYesText
	waitbutton
	winlosstext DojoPryceWinLossText, 0
	loadtrainer CLAIR, CLAIR1
	startbattle
	reloadmapafterbattle
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_4
	end

DojoChuckScript:
	faceplayer
	opentext
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_5
	iffalse .DojoChuckContinue
	writetext DenLeaderAfterText  
	waitbutton
	closetext
	end

.DojoChuckContinue
	writetext DojoChuckIntroText
	yesorno
	iftrue .FightChuck
	writetext DenLeaderNoText
	waitbutton
	closetext
	end

.FightChuck
	writetext DenLeaderYesText
	waitbutton
	winlosstext DojoChuckWinLossText, 0
	loadtrainer CLAIR, CLAIR1
	startbattle
	reloadmapafterbattle
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_5
	end

DojoJasmineScript:
	faceplayer
	opentext
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_6
	iffalse .DojoJasmineContinue
	writetext DenLeaderAfterText  
	waitbutton
	closetext
	end

.DojoJasmineContinue
	writetext DojoJasmineIntroText
	yesorno
	iftrue .FightJasmine
	writetext DenLeaderNoText
	waitbutton
	closetext
	end

.FightJasmine
	writetext DenLeaderYesText
	waitbutton
	winlosstext DojoJasmineWinLossText, 0
	loadtrainer CLAIR, CLAIR1
	startbattle
	reloadmapafterbattle
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_6
	end

DojoMortyScript:
	faceplayer
	opentext
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_7
	iffalse .DojoMortyContinue
	writetext DenLeaderAfterText  
	waitbutton
	closetext
	end

.DojoMortyContinue
	writetext DojoMortyIntroText
	yesorno
	iftrue .FightMorty
	writetext DenLeaderNoText
	waitbutton
	closetext
	end

.FightMorty
	writetext DenLeaderYesText
	waitbutton
	winlosstext DojoMortyWinLossText, 0
	loadtrainer CLAIR, CLAIR1
	startbattle
	reloadmapafterbattle
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_7
	end

DojoClairScript:
	faceplayer
	opentext
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_8
	iffalse .DojoClairContinue
	writetext DenLeaderAfterText  
	waitbutton
	closetext
	end

.DojoClairContinue
	writetext DojoClairIntroText
	yesorno
	iftrue .FightClair
	writetext DenLeaderNoText
	waitbutton
	closetext
	end

.FightClair
	writetext DenLeaderYesText
	waitbutton
	winlosstext DojoClairWinLossText, 0
	loadtrainer CLAIR, CLAIR1
	startbattle
	reloadmapafterbattle
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_8
	end

DragonShrineSignpost:
	jumptext DragonShrineSignpostText

DragonsDenB1FDragonFang:
	itemball DRAGON_FANG

DragonsDenB1FCalcium:
	itemball CALCIUM

DragonsDenB1FMaxElixer:
	itemball MAX_ELIXER

DragonsDenB1FHiddenRevive:
	hiddenitem REVIVE, EVENT_DRAGONS_DEN_B1F_HIDDEN_REVIVE

DragonsDenB1FHiddenMaxPotion:
	hiddenitem MAX_POTION, EVENT_DRAGONS_DEN_B1F_HIDDEN_MAX_POTION

DragonsDenB1FHiddenMaxElixer:
	hiddenitem MAX_ELIXER, EVENT_DRAGONS_DEN_B1F_HIDDEN_MAX_ELIXER

MovementDragonsDen_ClairWalksToYou:
	slow_step RIGHT
	slow_step RIGHT
	slow_step RIGHT
	slow_step RIGHT
	step_end

MovementDragonsDen_ClairWalksAway:
	slow_step LEFT
	slow_step LEFT
	slow_step LEFT
	slow_step LEFT
	step_end

ClairText_Wait:
	text "Wait!"
	done

ClairText_GiveDragonbreathDragonDen:
	text "I'm sorry about"
	line "all this."

	para "Here, take this as"
	line "my apology."
	done

Text_ReceivedTM24:
	text "<PLAYER> received"
	line "TM24."
	done

ClairText_DescribeDragonbreathDragonDen:
	text "That contains"
	line "DRAGONBREATH."

	para "No, it doesn't"
	line "have anything to"
	cont "do with my breath."

	para "If you don't want"
	line "it, you don't have"
	cont "to take it."
	done

ClairText_NoRoom:
	text "Oh? You don't have"
	line "any room for this."

	para "I'm going back to"
	line "the GYM, so make"

	para "room, then come"
	line "see me there."
	done

ClairText_WhatsTheMatterDragonDen:
	text "What's the matter?"
	line "Aren't you gonna"

	para "go fight the?"
	line "#MON LEAGUE?"

	para "Do you know how to"
	line "get there?"

	para "From here, go to"
	line "NEW BARK TOWN."

	para "Then SURF east to"
	line "#MON LEAGUE."

	para "The route there is"
	line "very tough."

	para "Don't you dare"
	line "lose at the #-"
	cont "MON LEAGUE!"

	para "If you do, I'll"
	line "feel even worse"

	para "about having lost"
	line "to you!"

	para "Give it everything"
	line "you've got."
	done

DragonShrineSignpostText:
	text "DRAGON SHRINE"

	para "A shrine honoring"
	line "the dragon #MON"

	para "said to have lived"
	line "in DRAGON'S DEN."
	done

RivalText_Training1:
	text "…"
	line "What? <PLAYER>?"

	para "…No, I won't"
	line "battle you now…"

	para "My #MON aren't"
	line "ready to beat you."

	para "I can't push them"
	line "too hard now."

	para "I have to be dis-"
	line "ciplined to become"

	para "the greatest #-"
	line "MON trainer…"
	done

RivalText_Training2:
	text "…"

	para "Whew…"

	para "Learn to stay out"
	line "of my way…"
	done

DenLeaderAfterText:
	text "Good luck out"
	line "there, <PLAYER>!"
	done

DenLeaderYesText:
	text "Let's go!"
	done

DenLeaderNoText:
	text "No? Okay, next"
	line "time!"
	done

DojoFalknerIntroText:
    text "Hey, <PLAYER>!"

    para "My team is soaring"
    line "higher than ever."

    para "Let's battle!"
    done

DojoFalknerWinLossText:
	text "Ugh, I'm grounded!"
	done

DojoBugsyIntroText:
    text "Hiya <PLAYER>!"

    para "Surprise surprise,"
    line "I’ve been studying"
    cont "hard!"

    para "Wanna see what"
    line "I’ve learned?"
    done

DojoBugsyWinLossText:
	text "Flattened!"
	done

DojoWhitneyIntroText:
    text "<PLAYER>! Hi!"

    para "The CHAMPION, huh?"

    para "Fancy titles won’t"
    line "scare me! C’mon!"
    done

DojoWhitneyWinLossText:
	text "Holy cow!"
	done

DojoPryceIntroText:
	text "Young <PLAYER>,"
	line "good to see you."
	
	para "You made quite the"
	line "impact on CLAIR!"
	
	para "She reached out to"
	line "me for training,"

	para "despite the long"
	line "rivalry between the"

	para "ice trainers of"
	line "MAHOGANY and the"

	para "DRAGON MASTERS of"
	line "BLACKTHORN."

	para "Shall we show the"
	line "DRAGON'S DEN how"
	cont "outsiders battle?" 
	done

DojoPryceWinLossText:
	text "Brr…"
	done

DojoChuckIntroText:
	text "<PLAYER>!"

	para "CLAIR convinced me"
	line "to take a break"

	para "from training in"
	line "MT.MORTAR to spar"

	para "with my fellow"
	line "LEADERS. And the"

	para "new CHAMP too,"
	line "apparently! Let's"
	cont "fight!"
	done

DojoChuckWinLossText:
	text "Oof, no good."
	done

DojoJasmineIntroText:
	text "<PLAYER>!"

	para "No tricks, no"
	line "disguises, let's"
	cont "just battle!"
	done

DojoJasmineWinLossText:
	text "ARGH!"
	done

DojoMortyIntroText
	text "Hello again!"

	para "I must admit, I"
	line "prefer this dojo"
	cont "to that cave."

	para "How about a scrap?"
	done

DojoMortyWinLossText:
	text "Burned!"
	done

DojoClairIntroText:
	text "Hey! You!"

	para "I usually train"
	line "solo, but I gotta"

	para "kick it up a notch"
	line "if I'm gonna put"
	cont "you in your place."

	para "Battle me!"
	done

DojoClairWinLossText:
	text "Come ON! Again!?"
	done

DragonsDenB1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 20,  3, DRAGONS_DEN_1F, 3
	warp_event 19, 29, DRAGON_SHRINE, 1

	def_coord_events
	coord_event 19, 30, SCENE_DRAGONSDENB1F_CLAIR_GIVES_TM, DragonsDenB1F_ClairScene

	def_bg_events
	bg_event 18, 24, BGEVENT_READ, DragonShrineSignpost
	bg_event 33, 29, BGEVENT_ITEM, DragonsDenB1FHiddenRevive
	bg_event 21, 17, BGEVENT_ITEM, DragonsDenB1FHiddenMaxPotion
	bg_event 31, 15, BGEVENT_ITEM, DragonsDenB1FHiddenMaxElixer

	def_object_events
	object_event 14, 30, SPRITE_CLAIR, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_DRAGONS_DEN_CLAIR
	object_event 20, 23, SPRITE_RIVAL, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DragonsDenB1FRivalScript, EVENT_RIVAL_DRAGONS_DEN
	object_event 16, 4, SPRITE_FALKNER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DojoFalknerScript, -1
	object_event 17, 4, SPRITE_BUGSY, SPRITEMOVEDATA_STANDING_DOWN, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DojoBugsyScript, -1
	object_event 18, 4, SPRITE_WHITNEY, SPRITEMOVEDATA_STANDING_DOWN, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DojoWhitneyScript, -1
	object_event 19, 4, SPRITE_PRYCE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DojoPryceScript, -1
	object_event 21, 4, SPRITE_CHUCK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, DojoChuckScript, -1
	object_event 22, 4, SPRITE_JASMINE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, DojoJasmineScript, -1
	object_event 23, 4, SPRITE_MORTY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DojoMortyScript, -1
	object_event 24, 4, SPRITE_CLAIR, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, DojoClairScript, -1
	object_event 35, 16, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DragonsDenB1FDragonFang, EVENT_DRAGONS_DEN_B1F_DRAGON_FANG
	object_event 30,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, DragonsDenB1FCalcium, EVENT_DRAGONS_DEN_B1F_CALCIUM
	object_event  5, 20, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, DragonsDenB1FMaxElixer, EVENT_DRAGONS_DEN_B1F_MAX_ELIXER

