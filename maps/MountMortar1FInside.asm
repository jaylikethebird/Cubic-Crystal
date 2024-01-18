	object_const_def
	const MOUNTMORTAR1FINSIDE_CHUCK
	const MOUNTMORTAR1FINSIDE_BOULDER1
	const MOUNTMORTAR1FINSIDE_BOULDER2
	const MOUNTMORTAR1FINSIDE_POKE_BALL1
	const MOUNTMORTAR1FINSIDE_POKE_BALL2
	const MOUNTMORTAR1FINSIDE_POKE_BALL3
	const MOUNTMORTAR1FINSIDE_POKE_BALL4
	const MOUNTMORTAR1FINSIDE_POKE_BALL5
	const MOUNTMORTAR1FINSIDE_SUPER_NERD1
	const MOUNTMORTAR1FINSIDE_SUPER_NERD2
	const MOUNTMORTAR1FINSIDE_POKE_BALL6
	const MOUNTMORTAR1FINSIDE_POKE_BALL7

MountMortar1FInside_MapScripts:
	def_scene_scripts

	def_callbacks

ChuckRockSmash:
	faceplayer
	opentext
	checkevent EVENT_GOT_TM08_ROCK_SMASH
	iffalse .GotTyrogue
	writetext ChuckDoneText
	waitbutton
	closetext
	end

.GotTyrogue:
	writetext ChuckWelcomeText
	promptbutton
	waitsfx
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .NoRoom
	writetext MountMortarB1FReceiveMonText
	playsound SFX_CAUGHT_MON
	waitsfx
	givepoke TYROGUE, 18
	writetext ChuckGotTyrogueText
	setevent EVENT_GOT_TM08_ROCK_SMASH
	waitbutton
	closetext
	end
.NoRoom:
	writetext ChuckFullPartyText
	waitbutton
	closetext
	end

TrainerPokemaniacMiller:
	trainer POKEMANIAC, MILLER, EVENT_BEAT_POKEMANIAC_MILLER, PokemaniacMillerSeenText, PokemaniacMillerBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PokemaniacMillerAfterBattleText
	waitbutton
	closetext
	end

TrainerSupernerdMarkus:
	trainer SUPER_NERD, MARKUS, EVENT_BEAT_SUPER_NERD_MARKUS, SupernerdMarkusSeenText, SupernerdMarkusBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SupernerdMarkusAfterBattleText
	waitbutton
	closetext
	end

MountMortar1FBoulder:
	jumpstd SmashRockScript

MountMortar1FInsideEscapeRope:
	itemball CARBOS

MountMortar1FInsideMaxRevive:
	itemball MAX_REVIVE

MountMortar1FInsideHyperPotion:
	itemball TM_ROCK_SMASH

MountMortar1FInsideMaxPotion:
	itemball MAX_POTION

MountMortar1FInsideNugget:
	itemball NUGGET

MountMortar1FInsideIron:
	itemball IRON

MountMortar1FInsideUltraBall:
	itemball ULTRA_BALL

MountMortar1FInsideHiddenNugget:
	hiddenitem NUGGET, EVENT_MOUNT_MORTAR_1F_INSIDE_HIDDEN_NUGGET


ChuckWelcomeText:
	text "WAHAHAH!"

	para "Hey! I'm CHUCK"
	line "of CIANWOOD CITY."

	para "It's across the"
	line "sea from here, but"

	para "I love training in"
	line "MT.MORTAR. There's"

	para "tons of obstacles"
	line "to test your guts,"

	para "from boulders to"
	line "waterfalls for"

	para "strong #MON to"
	line "weaker rocks for"
	cont "beginners."

	para "Here, let me show"
	line "you what I mean!"

	para "Take this #MON!"
	done

MountMortarB1FReceiveMonText:
	text "<PLAYER> received"
	line "TYROGUE."
	done

ChuckGotTyrogueText:
	text "TYROGUE is a"
	line "fighting-type."

	para "It evolves into a"
	line "powerful #MON"

	para "depending on how"
	line "you raise it."

	para "I trained mine to"
	line "balance attack and"

	para "defense, and it"
	line "evolved into my"
	cont "HITMONTOP!"

	para "For now, though,"
	line "it's only good at"
	cont "using ROCK SMASH."

	para "Try it out!"
	done

ChuckFullPartyText:
	text "Kid, you need more"
	line "room for my ROCK"
	cont "SMASHIN' #MON!"
	done

ChuckDoneText:
	text "With ROCK SMASH,"
	line "your #MON can"

	para "shatter cracked"
	line "stones with just a"

	para "single well-aimed"
	line "smack."

	para "There's a TM for"
	line "it somewhere near"

	para "here, and I hear"
	line "they sell 'em in"
	cont "GOLDENROD CITY."

	para "Get smashin'!"
	done
	
PokemaniacMillerSeenText:
	text "I'm not losing"
	line "this time!"
	done

PokemaniacMillerBeatenText:
	text "I lost to some"
	line "kid…?"
	done

PokemaniacMillerAfterBattleText:
	text "I heard that the"
	line "GYM LEADER from"

	para "CIANWOOD CITY will"
	line "come to this cave"
	cont "to train."

	para "I wonder how he"
	line "gets up that"
	cont "big waterfall…"
	done

SupernerdMarkusSeenText:
	text "Hey! HUGH!"
	done

SupernerdMarkusBeatenText:
	text "I mistook you for"
	line "someone else…"
	done

SupernerdMarkusAfterBattleText:
	text "I came to explore"
	line "MT.MORTAR, but I"

	para "got separated from"
	line "my partner…"

	para "Did you run into a"
	line "trainer who uses a"

	para "SEADRA that knows"
	line "WATERFALL?"
	done

MountMortar1FInside_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 11, 47, MOUNT_MORTAR_1F_OUTSIDE, 5
	warp_event 29, 47, MOUNT_MORTAR_1F_OUTSIDE, 6
	warp_event  5, 39, MOUNT_MORTAR_1F_OUTSIDE, 8
	warp_event 33, 41, MOUNT_MORTAR_1F_OUTSIDE, 9
	warp_event  3, 19, MOUNT_MORTAR_B1F, 1
	warp_event  9,  9, MOUNT_MORTAR_2F_INSIDE, 2

	def_coord_events

	def_bg_events
	bg_event 30, 11, BGEVENT_ITEM, MountMortar1FInsideHiddenNugget

	def_object_events
	object_event 15, 46, SPRITE_CHUCK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, ChuckRockSmash, -1
	object_event 16, 46, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MountMortar1FBoulder, EVENT_GOT_TM08_ROCK_SMASH
	object_event 21, 43, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MountMortar1FBoulder, -1
	object_event 35, 38, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MountMortar1FInsideEscapeRope, EVENT_MOUNT_MORTAR_1F_INSIDE_CARBOS
	object_event 16, 10, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MountMortar1FInsideMaxRevive, EVENT_MOUNT_MORTAR_1F_INSIDE_MAX_REVIVE
	object_event 10, 27, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MountMortar1FInsideHyperPotion, EVENT_MOUNT_MORTAR_1F_INSIDE_HYPER_POTION
	object_event 22, 20, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MountMortar1FInsideMaxPotion, EVENT_MOUNT_MORTAR_1F_INSIDE_MAX_POTION
	object_event 35, 19, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MountMortar1FInsideNugget, EVENT_MOUNT_MORTAR_1F_INSIDE_NUGGET
	object_event 33, 43, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerPokemaniacMiller, -1
	object_event 24, 28, SPRITE_SUPER_NERD, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerSupernerdMarkus, -1
	object_event  8, 16, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MountMortar1FInsideIron, EVENT_MOUNT_MORTAR_1F_INSIDE_IRON
	object_event 17, 17, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MountMortar1FInsideUltraBall, EVENT_MOUNT_MORTAR_1F_INSIDE_ULTRA_BALL
