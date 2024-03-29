	object_const_def
	const RUINSOFALPHOUTSIDE_YOUNGSTER1
	const RUINSOFALPHOUTSIDE_SCIENTIST
	const RUINSOFALPHOUTSIDE_SCIENTIST2
	const RUINSOFALPHOUTSIDE_FISHER
	const RUINSOFALPHOUTSIDE_YOUNGSTER2
	const RUINSOFALPHOUTSIDE_YOUNGSTER3
	const RUINSOFALPHOUTSIDE_ELM

RuinsOfAlphOutside_MapScripts:
	def_scene_scripts
	scene_script RuinsOfAlphOutsideNoop1Scene, SCENE_RUINSOFALPHOUTSIDE_NOOP
	scene_script RuinsOfAlphOutsideNoop2Scene, SCENE_RUINSOFALPHOUTSIDE_GET_UNOWN_DEX

	def_callbacks
	callback MAPCALLBACK_OBJECTS, RuinsOfAlphOutsideScientistCallback

RuinsOfAlphOutsideNoop1Scene:
	end

RuinsOfAlphOutsideNoop2Scene:
	end

RuinsOfAlphOutsideScientistCallback:
	checkflag ENGINE_UNOWN_DEX
	iftrue .NoScientist
	checkevent EVENT_MADE_UNOWN_APPEAR_IN_RUINS
	iftrue .MaybeScientist
	sjump .NoScientist

.MaybeScientist:
	readvar VAR_UNOWNCOUNT
	ifgreater 2, .YesScientist
	sjump .NoScientist

.YesScientist:
	appear RUINSOFALPHOUTSIDE_SCIENTIST
	setscene SCENE_RUINSOFALPHOUTSIDE_GET_UNOWN_DEX
	endcallback

.NoScientist:
	disappear RUINSOFALPHOUTSIDE_SCIENTIST
	setscene SCENE_RUINSOFALPHOUTSIDE_NOOP
	endcallback

RuinsOfAlphOutsideScientistScene1:
	turnobject RUINSOFALPHOUTSIDE_SCIENTIST, UP
	turnobject PLAYER, DOWN
	sjump RuinsOfAlphOutsideScientistSceneContinue

RuinsOfAlphOutsideScientistScene2:
	turnobject RUINSOFALPHOUTSIDE_SCIENTIST, LEFT
	turnobject PLAYER, RIGHT
	sjump RuinsOfAlphOutsideScientistSceneContinue

RuinsOfAlphOutsideScientistScript:
	faceplayer
RuinsOfAlphOutsideScientistSceneContinue:
	opentext
	writetext RuinsOfAlphOutsideScientistText
	waitbutton
	closetext
	playmusic MUSIC_SHOW_ME_AROUND
	follow RUINSOFALPHOUTSIDE_SCIENTIST, PLAYER
	applymovement RUINSOFALPHOUTSIDE_SCIENTIST, RuinsOfAlphOutsideScientistWalkToLabMovement
	disappear RUINSOFALPHOUTSIDE_SCIENTIST
	stopfollow
	applymovement PLAYER, RuinsOfAlphOutsidePlayerEnterLabMovement
	setmapscene RUINS_OF_ALPH_RESEARCH_CENTER, SCENE_RUINSOFALPHRESEARCHCENTER_GET_UNOWN_DEX
	warpcheck
	end

RuinsOfAlphOutsideScientist2Script:
	faceplayer
	opentext
	checkevent EVENT_FOUGHT_EUSINE
	iftrue .Morty
	writetext AlphMortyFan
	waitbutton
	closetext
	end
.Morty
	checkevent EVENT_HI_WILL
	iftrue .MortyHere
	writetext WillIntro
	setevent EVENT_HI_WILL
	waitbutton
.MortyHere
	writetext MortyHere
	waitbutton
	closetext
	end

RuinsOfAlphOutsideFisherScript:
	faceplayer
	opentext
	checkevent EVENT_TALKED_TO_RUINS_COWARD
	iftrue .Next
	setevent EVENT_TALKED_TO_RUINS_COWARD
	writetext RuinsOfAlphOutsideFisherText1
	promptbutton
.Next:
	writetext RuinsOfAlphOutsideFisherText2
	waitbutton
	closetext
	end

RuinsOfAlphOutsideYoungster1Script:
	faceplayer
	opentext
	writetext RuinsOfAlphOutsideYoungster1Text
	waitbutton
	closetext
	end

RuinsOfAlphOutsideYoungster2Script:
	faceplayer
	opentext
	writetext RuinsOfAlphOutsideYoungster2Text
	waitbutton
	closetext
	turnobject RUINSOFALPHOUTSIDE_YOUNGSTER3, UP
	end

RuinsofAlphElmScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_MEW_EGG_FROM_ELM
	iftrue .GotMewEgg
	checkevent EVENT_REFUSED_TO_TAKE_EGG_FROM_ELM
	iftrue .SecondTimeAsking
	writetext RuinsOfAlphOutsideElmText
.AskTakeEgg:
	yesorno
	iffalse .RefusedEgg
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .PartyFull
	giveegg MEW, EGG_LEVEL
	getstring STRING_BUFFER_4, .eggname
	setevent EVENT_GOT_MEW_EGG_FROM_ELM
	writetext RuinsOfAlphOutsideElmGotEgg
	waitbutton
	closetext
	end

.eggname
	db "EGG@"

.PartyFull:
	writetext ElmFullPartyText
	waitbutton
	closetext
	setevent EVENT_REFUSED_TO_TAKE_EGG_FROM_ELM
	end

.RefusedEgg:
	writetext ElmRefuseWhyText
	waitbutton
	closetext
	setevent EVENT_REFUSED_TO_TAKE_EGG_FROM_ELM
	end

.SecondTimeAsking:
	writetext ElmAskAgainText
	sjump .AskTakeEgg

.GotMewEgg
	writetext ElmDoneAlph
	waitbutton
	closetext
	end

TrainerPsychicNathan:
	trainer PSYCHIC_T, NATHAN, EVENT_BEAT_PSYCHIC_NATHAN, PsychicNathanSeenText, PsychicNathanBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PsychicNathanAfterBattleText
	waitbutton
	closetext
	end

TrainerSuperNerdStan: ; unreferenced
	trainer SUPER_NERD, STAN, EVENT_BEAT_SUPER_NERD_STAN, SuperNerdStanSeenText, SuperNerdStanBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SuperNerdStanAfterBattleText
	waitbutton
	closetext
	end

RuinsOfAlphOutsideMysteryChamberSign:
	jumptext RuinsOfAlphOutsideMysteryChamberSignText

RuinsOfAlphSign:
	jumptext RuinsOfAlphSignText

RuinsOfAlphResearchCenterSign:
	jumptext RuinsOfAlphResearchCenterSignText

RuinsOfAlphOutsideScientistWalkToLabMovement:
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step UP
	step UP
	step RIGHT
	step RIGHT
	step UP
	step UP
	step_end

RuinsOfAlphOutsidePlayerEnterLabMovement:
	step UP
	step_end

AlphMortyFan:
	text "ECRUTEAK CITY up"
	line "north has its own"
	cont "ancient buildings."

	para "My theory is that"
	line "the RUINS OF ALPH"

	para "and the TOWERS"
	line "of ECTUTEAK are"
	cont "related somehow."
	done

WillIntro:
	text "Ah, <PLAYER>."
	line "I've been waiting"
	cont "for you."

	para "My name is WILL."
	line "I study the past"
	
	para "to better under-"
	line "stand the future."

	para "I'm also an old"
	line "friend of MORTY"
	cont "and KAREN."
	done

MortyHere:
	text "MORTY has been"
	line "investigating the"
	cont "RUINS OF ALPH,"

	para "but he left for"
	line "UNION CAVE after"

	para "he had a vision"
	line "of the CLEAR BELL."

	para "Strangely, I can"
	line "still sense his"

	para "presence in a"
	line "chamber like the"
	cont "one up ahead."

	para "He must have found"
	line "a hidden passage!"
	done


RuinsOfAlphOutsideScientistText:
	text "Hm? That's a #-"
	line "DEX, isn't it?"
	cont "May I see it?"

	para "There are so many"
	line "kinds of #MON."

	para "Hm? What's this?"

	para "What is this"
	line "#MON?"

	para "It looks like the"
	line "strange writing on"

	para "the walls of the"
	line "RUINS."

	para "If those drawings"
	line "are really #-"
	cont "MON, there should"
	cont "be many more."

	para "I know! Let me up-"
	line "grade your #-"
	cont "DEX. Follow me."
	done

SuperNerdStanSeenText:
	text "What do you want?"
	line "I'm studying--"
	cont "don't disturb me!"
	done

SuperNerdStanBeatenText:
	text "Sorry…"
	line "I'm frustrated by"

	para "our lack of real"
	line "understanding…"
	done

SuperNerdStanAfterBattleText:
	text "The RUINS are from"
	line "about 1500 years"
	cont "ago."

	para "Nobody knows who"
	line "built them."

	para "It's also not"
	line "known if the #-"
	cont "MON statues have"
	cont "any meaning."

	para "It's all one big"
	line "mystery…"
	done

PsychicNathanSeenText:
	text "Hmmm… This is a"
	line "strange place."
	done

PsychicNathanBeatenText:
	text "…"
	done

PsychicNathanAfterBattleText:
	text "I like thinking"
	line "here."
	done

RuinsOfAlphOutsideMysteryChamberSignText:
	text "MYSTERY STONE"
	line "PANEL CHAMBER"
	done

RuinsOfAlphSignText:
	text "RUINS OF ALPH"
	line "VISITORS WELCOME"
	done

RuinsOfAlphResearchCenterSignText:
	text "RUINS OF ALPH"
	line "RESEARCH CENTER"

	para "THE AUTHORITY ON"
	line "THE RUINS OF ALPH"
	done

RuinsOfAlphOutsideFisherText1:
	text "While exploring"
	line "the RUINS, we"

	para "suddenly noticed"
	line "an odd presence."

	para "We all got scared"
	line "and ran away."

	para "You should be"
	line "careful too."
	done

RuinsOfAlphOutsideFisherText2:
	text "The RUINS hide a"
	line "huge secret!"

	para "…I think…"
	done

RuinsOfAlphOutsideYoungster1Text:
	text "There are many"
	line "kinds of UNOWN, so"

	para "we use them for"
	line "our secret codes."
	done

RuinsOfAlphOutsideYoungster2Text:
	text "A… H… E… A… D…"
	line "Hmm…"

	para "What?"

	para "I'm decoding this"
	line "message!"
	done

RuinsOfAlphOutsideElmText:
	text "<PLAYER>! I had"
	line "no idea you were"

	para "interested in the"
	line "RUINS OF ALPH!"

	para "As a researcher of"
	line "#MON origins,"

	para "I'm as intrigued"
	line "by UNOWN as I am"
	cont "by #MON EGGS."

	para "My colleagues here"
	line "say you collected"

	para "data on each UNOWN"
	line "type. Thank you!"

	para "PROF.OAK just gave"
	line "me an EGG from a"

	para "rare #MON his"
	line "grandson caught"
	cont "three years ago."

	para "Or was it his"
	line "grandson's friend?"

	para "Either way, here!"
	done

RuinsOfAlphOutsideElmGotEgg:
	text "Great! Here!"
	done

ElmFullPartyText:
	text "Huh? You don't"
	line "have room for"
	cont "this EGG!"
	done

ElmRefuseWhyText:
	text "Really? Why not?"
	line "It's a super rare"
	cont "find!"
	done

ElmAskAgainText:
	text "I've still got the"
	line "rare EGG from OAK."

	para "It's yours if you"
	line "want it!"
	done

ElmDoneAlph:
	text "<PLAYER>, thank you"
	line "so much for all"
	cont "your help!" 
	done


RuinsOfAlphOutside_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2, 17, RUINS_OF_ALPH_HO_OH_CHAMBER, 1
	warp_event 14,  7, RUINS_OF_ALPH_KABUTO_CHAMBER, 1
	warp_event  2, 29, RUINS_OF_ALPH_OMANYTE_CHAMBER, 1
	warp_event 16, 33, RUINS_OF_ALPH_AERODACTYL_CHAMBER, 1
	warp_event 10, 13, RUINS_OF_ALPH_INNER_CHAMBER, 1
	warp_event 17, 11, RUINS_OF_ALPH_RESEARCH_CENTER, 1
	warp_event  6, 19, UNION_CAVE_B1F, 1
	warp_event  6, 27, UNION_CAVE_B1F, 2
	warp_event  7,  5, ROUTE_36_RUINS_OF_ALPH_GATE, 3
	warp_event 13, 20, ROUTE_32_RUINS_OF_ALPH_GATE, 1
	warp_event 13, 21, ROUTE_32_RUINS_OF_ALPH_GATE, 2

	def_coord_events
	coord_event 11, 14, SCENE_RUINSOFALPHOUTSIDE_GET_UNOWN_DEX, RuinsOfAlphOutsideScientistScene1
	coord_event 10, 15, SCENE_RUINSOFALPHOUTSIDE_GET_UNOWN_DEX, RuinsOfAlphOutsideScientistScene2

	def_bg_events
	bg_event 16,  8, BGEVENT_READ, RuinsOfAlphOutsideMysteryChamberSign
	bg_event 12, 16, BGEVENT_READ, RuinsOfAlphSign
	bg_event 18, 12, BGEVENT_READ, RuinsOfAlphResearchCenterSign

	def_object_events
	object_event  4, 20, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 1, TrainerPsychicNathan, -1
	object_event 11, 15, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RuinsOfAlphOutsideScientistScript, EVENT_RUINS_OF_ALPH_OUTSIDE_SCIENTIST
	object_event 15, 8, SPRITE_WILL, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, RuinsOfAlphOutsideScientist2Script, EVENT_BEAT_MORTY
	object_event 13, 17, SPRITE_FISHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, RuinsOfAlphOutsideFisherScript, EVENT_RUINS_OF_ALPH_OUTSIDE_TOURIST_FISHER
	object_event 14, 11, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, RuinsOfAlphOutsideYoungster1Script, EVENT_RUINS_OF_ALPH_OUTSIDE_TOURIST_YOUNGSTERS
	object_event 12,  8, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, RuinsOfAlphOutsideYoungster2Script, EVENT_RUINS_OF_ALPH_OUTSIDE_TOURIST_YOUNGSTERS
	object_event 16, 12, SPRITE_ELM, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RuinsofAlphElmScript, EVENT_RUINS_OF_ALPH_OUTSIDE_TOURIST_YOUNGSTERS
	