	object_const_def
	const BILLSHOUSE_GRAMPS

BillsHouse_MapScripts:
	def_scene_scripts

	def_callbacks

BillsGrandpa:
	checkevent EVENT_MET_FALKNER_DAD
	iffalse .MeetGrandpa
	faceplayer
	opentext
	checkevent EVENT_SHOWED_LUGIA_TO_BILLS_GRANDPA
	iftrue .ShowedLugia
	checkevent EVENT_SHOWED_Moltres_TO_BILLS_GRANDPA
	iftrue .ShowedMoltres
	checkevent EVENT_SHOWED_Zapdos_TO_BILLS_GRANDPA
	iftrue .ShowedZapdos
	checkevent EVENT_SHOWED_Articuno_TO_BILLS_GRANDPA
	iftrue .ShowedArticuno
	writetext BillsGrandpaArticunoText
	promptbutton
	writetext BillsGrandpaAskToSeeMonText
	yesorno
	iffalse .SaidNo
	scall .ExcitedToSee
	special BillsGrandfather
	iffalse .SaidNo
	ifnotequal ARTICUNO, .WrongPokemon
	scall .CorrectPokemon
	setevent EVENT_SHOWED_Articuno_TO_BILLS_GRANDPA
	sjump .ShowedArticuno 
.MeetGrandpa:
	faceplayer
	opentext
	writetext BillsGrandpaIntroText
	waitbutton
	closetext
	setevent EVENT_MET_FALKNER_DAD
	end

.GotEverstone:
	writetext BillsGrandpaZapdosText
	promptbutton
	writetext BillsGrandpaAskToSeeMonText
	yesorno
	iffalse .SaidNo
	scall .ExcitedToSee
	special BillsGrandfather
	iffalse .SaidNo
	ifnotequal ZAPDOS, .WrongPokemon
	scall .CorrectPokemon
	setevent EVENT_SHOWED_Zapdos_TO_BILLS_GRANDPA
	sjump .ShowedZapdos

.GotLeafStone:
	writetext BillsGrandpaMoltresText
	promptbutton
	writetext BillsGrandpaAskToSeeMonText
	yesorno
	iffalse .SaidNo
	scall .ExcitedToSee
	special BillsGrandfather
	iffalse .SaidNo
	ifnotequal MOLTRES, .WrongPokemon
	scall .CorrectPokemon
	setevent EVENT_SHOWED_Moltres_TO_BILLS_GRANDPA
	sjump .ShowedMoltres

.GotWaterStone:
	writetext BillsGrandpaLugiaText
	promptbutton
	writetext BillsGrandpaAskToSeeMonText
	yesorno
	iffalse .SaidNo
	scall .ExcitedToSee
	special BillsGrandfather
	iffalse .SaidNo
	ifnotequal LUGIA, .WrongPokemon
	scall .CorrectPokemon
	setevent EVENT_SHOWED_LUGIA_TO_BILLS_GRANDPA
	sjump .ShowedLugia

.ShowedArticuno:
	checkevent EVENT_GOT_EVERSTONE_FROM_BILLS_GRANDPA
	iftrue .GotEverstone
	scall .RareCandies
	giveitem RARE_CANDY, 5
	iffalse .BagFull
	setevent EVENT_GOT_EVERSTONE_FROM_BILLS_GRANDPA
	closetext
	end

.ShowedZapdos:
	checkevent EVENT_GOT_LEAF_STONE_FROM_BILLS_GRANDPA
	iftrue .GotLeafStone
	scall .PPupsGet
	giveitem PP_UP, 5
	iffalse .BagFull
	setevent EVENT_GOT_LEAF_STONE_FROM_BILLS_GRANDPA
	closetext
	end

.ShowedMoltres:
	checkevent EVENT_GOT_WATER_STONE_FROM_BILLS_GRANDPA
	iftrue .GotWaterStone
	scall .SilverWingGet
	giveitem SILVER_WING
	iffalse .BagFull
	setevent EVENT_GOT_WATER_STONE_FROM_BILLS_GRANDPA
	closetext
	end

.ShowedLugia
	checkevent EVENT_GOT_FIRE_STONE_FROM_BILLS_GRANDPA
	iftrue .GotThunderstone
	scall .JackpotGet
	giveitem RARE_CANDY, 50
	giveitem PP_UP, 50
	iffalse .BagFull
	setevent EVENT_GOT_FIRE_STONE_FROM_BILLS_GRANDPA
	closetext
	end

.ExcitedToSee:
	writetext BillsGrandpaExcitedToSeeText
	promptbutton
	end

.SaidNo:
	writetext BillsGrandpaYouDontHaveItTextText
	waitbutton
	closetext
	end

.CorrectPokemon:
	writetext BillsGrandpaShownPokemonText
	promptbutton
	end

.RareCandies
	writetext RareCandyText
	promptbutton
	end

.PPupsGet:
	writetext PPUpsText
	promptbutton
	end

.SilverWingGet
	writetext SilverWingText
	promptbutton
	end

.JackpotGet
	writetext Jackpot
	promptbutton
	end

.GotThunderstone:
	writetext BillsGrandpaShownAllThePokemonText
	waitbutton
	closetext
	end

.WrongPokemon:
	writetext BillsGrandpaWrongPokemonText
	waitbutton
	closetext
	end

.BagFull:
	closetext
	end

BillsGrandpaIntroText:
	text "Hm? That ZEPHYR"
	line "BADGE…"

	para "But I don't recall"
	line "battling you."

	para "Ah, you must have"
	line "fought my son"
	cont "FALKNER!"

	para "He took over my"
	line "GYM in VIOLET"
	cont "when I retired."

	para "I moved to KANTO"
	line "to search for"

	para "three LEGENDARY"
	line "BIRDS rumored to"

	para "roost here every"
	line "three years…"
	done

BillsGrandpaAskToSeeMonText:
	text "If you have that"
	line "#MON, may I see"
	cont "it, please?"
	done

BillsGrandpaExcitedToSeeText:
	text "You will show me?"
	line "How good of you!"
	done

BillsGrandpaYouDontHaveItTextText:
	text "You don't have it?"
	line "That's too bad…"
	done

BillsGrandpaShownPokemonText:
	text "Ah, so that is"
	line "@"
	text_ram wStringBuffer3
	text "?"
	done


RareCandyText:
	text "Incredible!"

	para "Its piercing blue"
	line "plumage! That"
	cont "magnificent tail!"

	para "Thank you so much!"
	line "Please take these!"

	para "<PLAYER> received"
	line "five RARE CANDIES."
	done

PPUpsText:
	text "Incredible!"

	para "Its spear of a"
	line "beak! And sharp"
	cont "feathers to match!"

	para "Thank you so much!"
	line "Please take these!"

	para "<PLAYER> received"
	line "five PP UPs."
	done

SilverWingText:
	text "Incredible!"

	para "Its flaming crest!"
	line "The wildfire to"
	cont "HO-OH's rainbow!"

	para "Thank you so much!"
	line "Please take this!"

	para "<PLAYER> received"
	line "SILVER WING."
	done

Jackpot:
	text "You've…"
	line "you've done it."

	para "LEGEND of LEGENDS,"
	line "the lord of sky"
	cont "and sea itself!"

	para "Thank you so much!"
	line "Please take this!"

	para "<PLAYER> received"
	line "FIFTY RARE CANDIES"
	cont "and FIFTY PP UPs!"
	done

BillsGrandpaLugiaText:
	text "That SILVER WING"
	line "is said to belong"

	para "to a #MON that"
	line "rules all three"
	cont "LEGENDARY BIRDS."

	para "Deep in the WHIRL"
	line "ISLANDS in JOHTO"
	cont "dwells LUGIA…"

	para "Or so they say."

	para "Child, if you"
	line "were to find this"

	para "LEGEND of LEGENDS,"
	line "my gratitude would"
	cont "be unending!"
	done

BillsGrandpaShownAllThePokemonText:
	text "You've made my"
	line "greatest dreams"
	cont "come true."

	para "Thank you, thank"
	line "you so much!"
	done

BillsGrandpaWrongPokemonText:
	text "Hm?"

	para "That's not the"
	line "#MON that I was"
	cont "told about."
	done

BillsGrandpaArticunoText:
	text "Hello again!"

	para "I've uncovered"
	line "a lead for the"

	para "LEGENDARY BIRD"
	line "of ICE, ARTICUNO!"

	para "Three years ago"
	line "it was spotted at"
	cont "the SEAFOAM ISLES."
	
	para "I'm too old to"
	line "travel too far,"

	para "but if you were"
	line "to catch it, I"

	para "would love to see"
	line "ARTICUNO!"
	done

BillsGrandpaZapdosText:
	text "Hello again!"

	para "I've uncovered"
	line "a lead for the"

	para "LEGENDARY BIRD"
	line "of LIGHTNING,"
	cont "ZAPDOS!"

	para "Three years ago"
	line "it was spotted at"
	cont "the POWER PLANT."
	
	para "But now that the"
	line "PLANT is in use"

	para "for the MAGNET"
	line "TRAIN, it may be"

	para "roosting in ROCK"
	line "TUNNEL. If you"

	para "were to catch it,"
	line "would love to see"
	cont "ZAPDOS!"
	done

BillsGrandpaMoltresText:
	text "Hello again!"

	para "I've uncovered"
	line "a lead for the"

	para "LEGENDARY BIRD"
	line "of FLAME, MOLTRES!"

	para "Three years ago"
	line "it was spotted in"
	cont "VICTORY ROAD."
	
	para "But my sources"
	line "spotted a fiery"

	para "bird just west"
	line "of VICTORY ROAD,"

	para "on the path to"
	line "MT.SILVER!"

	para "You've impressed me"
	line "so far, but if I"

	para "got to see all"
	line "three BIRDS, I"

	para "would be willing"
	line "to part with my"
	cont "SILVER WING!"
	done

BillsHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, ROUTE_25, 1
	warp_event  3,  7, ROUTE_25, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_FALKNER, SPRITEMOVEDATA_STANDING_UP, 0, 2, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, BillsGrandpa, -1