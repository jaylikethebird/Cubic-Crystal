	object_const_def
	const GOLDENRODFLOWERSHOP_TEACHER
	const GOLDENRODFLOWERSHOP_FLORIA
	const GOLDENROD_ERIKA

GoldenrodFlowerShop_MapScripts:
	def_scene_scripts

	def_callbacks

FlowerShopTeacherScript:
	checkevent EVENT_ERIKA_RETURNS
	iftrue .Erika
	checkevent EVENT_GOT_METAL_COAT_FROM_GRANDPA_ON_SS_AQUA
	iftrue .Wherika
	checkevent EVENT_FOUGHT_SUDOWOODO
	iftrue .Lalala
	checkevent EVENT_GOT_SQUIRTBOTTLE
	iftrue .GotSquirtbottle
	checkevent EVENT_MET_FLORIA
	iffalse .HaventMetFloria
	checkevent EVENT_TALKED_TO_FLORIA_AT_FLOWER_SHOP
	iffalse .Lalala
	checkflag ENGINE_PLAINBADGE
	iffalse .NoPlainBadge
	faceplayer
	opentext
	writetext GoldenrodFlowerShopTeacherHeresTheSquirtbottleText
	promptbutton
	verbosegiveitem SQUIRTBOTTLE
	setevent EVENT_GOT_SQUIRTBOTTLE
	closetext
	setevent EVENT_FLORIA_AT_SUDOWOODO
	clearevent EVENT_FLORIA_AT_FLOWER_SHOP
	end

.Erika
	jumptextfaceplayer GoldenrodFlowerShopTeacherErika
	waitbutton
	closetext
	end
.Wherika
	jumptextfaceplayer GoldenrodFlowerShopTeacherWherika
	waitbutton
	closetext
	end

.Lalala:
	turnobject GOLDENRODFLOWERSHOP_TEACHER, LEFT
	opentext
	writetext GoldenrodFlowerShopTeacherLalalaHavePlentyOfWaterText
	waitbutton
	closetext
	end

.GotSquirtbottle:
	jumptextfaceplayer GoldenrodFlowerShopTeacherDontDoAnythingDangerousText

.NoPlainBadge:
	jumptextfaceplayer GoldenrodFlowerShopTeacherAskWantToBorrowWaterBottleText

.HaventMetFloria:
	jumptextfaceplayer GoldenrodFlowerShopTeacherMySisterWentToSeeWigglyTreeRoute36Text

FlowerShopFloriaScript:
	checkevent EVENT_ERIKA_RETURNS
	iftrue .ErikaFlor
	checkevent EVENT_GOT_METAL_COAT_FROM_GRANDPA_ON_SS_AQUA
	iftrue .WherikaFlor
	checkevent EVENT_FOUGHT_SUDOWOODO
	iftrue .FoughtSudowoodo
	checkevent EVENT_GOT_SQUIRTBOTTLE
	iftrue .GotSquirtbottle
	faceplayer
	opentext
	writetext GoldenrodFlowerShopFloriaWonderIfSisWillLendWaterBottleText
	waitbutton
	closetext
	setevent EVENT_TALKED_TO_FLORIA_AT_FLOWER_SHOP
	setevent EVENT_FLORIA_AT_FLOWER_SHOP
	clearevent EVENT_FLORIA_AT_SUDOWOODO
	end

.ErikaFlor
	jumptextfaceplayer GoldenrodFlowerShopTeacherErikaFlor
	waitbutton
	closetext
	end

.WherikaFlor
	jumptextfaceplayer GoldenrodFlowerShopTeacherWherikaFlor
	waitbutton
	closetext
	end

.GotSquirtbottle:
	jumptextfaceplayer GoldenrodFlowerShopFloriaYouBeatWhitneyText
	waitbutton
	closetext
	end

.FoughtSudowoodo:
	jumptextfaceplayer GoldenrodFlowerShopFloriaItReallyWasAMonText
	waitbutton
	closetext
	end

FlowerShopErikaScript:
	checkevent EVENT_RESTORED_POWER_TO_KANTO
	iftrue .ErikaReturn
	checkevent EVENT_GOT_METAL_COAT_FROM_GRANDPA_ON_SS_AQUA
	iftrue .ErikaWantsReturn
	checkevent EVENT_FOUGHT_SUDOWOODO
	iftrue .ErikaSudoWoodo
	faceplayer
	opentext
	writetext ErikaBasic
	waitbutton
	closetext
	end

.ErikaReturn:
	faceplayer
	opentext
	writetext ErikaReturn
	waitbutton
	closetext
	special FadeBlackQuickly
	special ReloadSpritesNoPalettes
	disappear GOLDENROD_ERIKA
	setevent EVENT_ERIKA_RETURNS
	pause 15
	special FadeInQuickly
	end

.ErikaWantsReturn:
	faceplayer
	opentext
	writetext ErikaWantsReturn
	waitbutton
	closetext
	end

.ErikaSudoWoodo
	faceplayer
	opentext
	writetext ErikaSudowoodo
	waitbutton
	closetext
	end

FlowerShopShelf1: ; unreferenced
	jumpstd PictureBookshelfScript

FlowerShopShelf2: ; unreferenced
	jumpstd MagazineBookshelfScript

FlowerShopRadio: ; unreferenced
	jumpstd Radio2Script

GoldenrodFlowerShopTeacherErika:
	text "Now ERIKA!"
	line "There's a GYM"

	para "LEADER who can"
	line "appreciate the"

	para "finer things in"
	line "life!"
	done

GoldenrodFlowerShopTeacherWherika:
	text "ERIKA said she"
	line "was heading on"

	para "home, but she"
	line "can't go until"
	cont "the TRAIN works."
	done

GoldenrodFlowerShopTeacherErikaFlor:
	text "I love flowers"
	line "as much as sis,"

	para "but I wanna"
	line "train #MON"
	cont "like ERIKA!"
	done

GoldenrodFlowerShopTeacherWherikaFlor:
	text "ERIKA sure has"
	line "been here a while."

	para "Er, not that I'm"
	line "complaining!"
	done

GoldenrodFlowerShopTeacherMySisterWentToSeeWigglyTreeRoute36Text:
	text "Have you seen that"
	line "wiggly tree that's"

	para "growing on ROUTE"
	line "36?"

	para "My little sister"
	line "got all excited"

	para "and went to see"
	line "it…"

	para "I'm worried… Isn't"
	line "it dangerous?"
	done

GoldenrodFlowerShopTeacherAskWantToBorrowWaterBottleText:
	text "Do you want to"
	line "borrow the water"

	para "bottle too?"
	line "I don't want you"

	para "doing anything"
	line "dangerous with it."
	done

GoldenrodFlowerShopTeacherHeresTheSquirtbottleText:
	text "Oh, you're better"
	line "than WHITNEY…"

	para "You'll be OK,"
	line "then. Here's the"
	cont "SQUIRTBOTTLE!"
	done

GoldenrodFlowerShopTeacherDontDoAnythingDangerousText:
	text "Don't do anything"
	line "too dangerous!"
	done

GoldenrodFlowerShopTeacherLalalaHavePlentyOfWaterText:
	text "Lalala lalalala."
	line "Have plenty of"
	cont "water, my lovely!"
	done

GoldenrodFlowerShopFloriaWonderIfSisWillLendWaterBottleText:
	text "When I told my sis"
	line "about the jiggly"

	para "tree, she told me"
	line "it's dangerous."

	para "If I beat WHITNEY,"
	line "I wonder if she'll"

	para "lend me her water"
	line "bottle…"

	para "My cousin ERIKA"
	line "is a GYM LEADER"

	para "in KANTO, but I"
	line "don't wanna bug"

	para "her while she's"
	line "on vacation…"
	done

GoldenrodFlowerShopFloriaYouBeatWhitneyText:
	text "Wow, you beat"
	line "WHITNEY? Cool!"

	para "But I doubt you"
	line "could beat my"
	cont "cousin ERIKA!"
	done

GoldenrodFlowerShopFloriaItReallyWasAMonText:
	text "So it really was a"
	line "#MON!"
	done

ErikaReturn:
	text "…what's that?"
	line "The MAGNET TRAIN"
	cont "is fixed?"

	para "Then I suppose my"
	line "visit has come"
	cont "to an end…"

	para "Perhaps you'll"
	line "come by my GYM"

	para "in CELADON for a"
	line "battle?"

	para "Yes, I think I'd"
	line "like that."
	done

ErikaWantsReturn:
	text "Hello…"

	para "Oh wow, you're"
	line "the CHAMPION?"

	para "Aren't you that"
	line "trainer who beat"
	cont "WHITNEY?"

	para "Time flies."
	done

ErikaSudowoodo:
	text "Oh…"

	para "The strange tree"
	line "was a #MON…"

	para "I ought to add"
	line "one to my team."
	done

ErikaBasic:
	text "Ah…"
	line "Oh, hello. I am"
	cont "ERIKA of CELADON."

	para "Sorry, I was lost"
	line "in the fragrance"
	
	para "of my cousin's"
	line "flowers."

	para "Don't mind me."
	done

GoldenrodFlowerShop_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, GOLDENROD_CITY, 6
	warp_event  3,  7, GOLDENROD_CITY, 6

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  4, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FlowerShopTeacherScript, -1
	object_event  5,  6, SPRITE_LASS, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, FlowerShopFloriaScript, EVENT_FLORIA_AT_FLOWER_SHOP
	object_event  3,  4, SPRITE_ERIKA, SPRITEMOVEDATA_STANDING_LEFT, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, FlowerShopErikaScript, EVENT_ERIKA_RETURNS
