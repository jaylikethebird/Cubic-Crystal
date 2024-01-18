	object_const_def
	const MOUNTMORTARB1F_POKE_BALL1
	const MOUNTMORTARB1F_POKE_BALL2
	const MOUNTMORTARB1F_BOULDER
	const MOUNTMORTARB1F_CHUCK
	const MOUNTMORTARB1F_POKE_BALL3
	const MOUNTMORTARB1F_POKE_BALL4
	const MOUNTMORTARB1F_POKE_BALL5

MountMortarB1F_MapScripts:
	def_scene_scripts

	def_callbacks

MountMortarB1FKiyoScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_ITEM_FROM_CHUCK
	iftrue .GotTyrogue
	checkevent EVENT_BEAT_BLACKBELT_KIYO
	iftrue .BeatKiyo
	writetext MountMortarB1FKiyoIntroText
	waitbutton
	closetext
	winlosstext MountMortarB1FKiyoWinText, 0
	loadtrainer CHUCK, CHUCK2
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_BLACKBELT_KIYO
	opentext
.BeatKiyo:
	writetext MountMortarB1FTyrogueRewardText
	promptbutton
	verbosegiveitem LUCKY_EGG
	iffalse .NoRoom
	setevent EVENT_GOT_ITEM_FROM_CHUCK
.GotTyrogue:
	writetext MountMortarB1FKiyoGotTyrogueText
	waitbutton
	closetext
	end

.NoRoom:
	writetext MountMortarB1FKiyoFullPartyText
	waitbutton
	closetext
	end

MountMortarB1FBoulder:
	jumpstd StrengthBoulderScript

MountMortarB1FHyperPotion:
	itemball HYPER_POTION

MountMortarB1FCarbos:
	itemball CARBOS

MountMortarB1FFullRestore:
	itemball FULL_RESTORE

MountMortarB1FMaxEther:
	itemball MAX_ETHER

MountMortarB1FPPUp:
	itemball PP_UP

MountMortarB1FHiddenMaxRevive:
	hiddenitem MAX_REVIVE, EVENT_MOUNT_MORTAR_B1F_HIDDEN_MAX_REVIVE

MountMortarB1FKiyoIntroText:
	text "Hey! Kid!"

	para "Yeah, I'm back in"
	line "MT.MORTAR to train"
	cont "my #MON."

	para "Good job getting"
	line "up the waterfall!"

	para "Your #MON must"
	line "have gotten even"
	cont "buffer!"

	para "Come on!"
	line "Let's see how far"
	cont "they've come!"
	done

MountMortarB1FKiyoWinText:
	text "ARGH!"
	done

MountMortarB1FTyrogueRewardText:
	text "Yeesh, I dunno if"
	line "I've gotten soft"

	para "or if kids these"
	line "days are gettin'"
	cont "tougher."

	para "Either way, you"
	line "deserve a reward"

	para "for showing me up"
	line "twice. Here!"
	done

MountMortarB1FKiyoGotTyrogueText:
	text "Training can be"
	line "tough on your own."

	para "This LUCKY EGG can"
	line "speed things up!"

	para "Keep up the hard"
	line "work. I'll keep"
	cont "training too."
	done

MountMortarB1FKiyoFullPartyText:
	text "Kid, your bag is"
	line "full. Make room!"
	done

MountMortarB1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  3, MOUNT_MORTAR_1F_INSIDE, 5
	warp_event 19, 29, MOUNT_MORTAR_1F_OUTSIDE, 7

	def_coord_events

	def_bg_events
	bg_event  4,  6, BGEVENT_ITEM, MountMortarB1FHiddenMaxRevive

	def_object_events
	object_event 29, 12, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MountMortarB1FHyperPotion, EVENT_MOUNT_MORTAR_B1F_HYPER_POTION
	object_event  4, 16, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MountMortarB1FCarbos, EVENT_MOUNT_MORTAR_B1F_CARBOS
	object_event  9, 10, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MountMortarB1FBoulder, -1
	object_event 16,  4, SPRITE_CHUCK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, MountMortarB1FKiyoScript, -1
	object_event 34, 24, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MountMortarB1FFullRestore, EVENT_MOUNT_MORTAR_B1F_FULL_RESTORE
	object_event 32,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MountMortarB1FMaxEther, EVENT_MOUNT_MORTAR_B1F_MAX_ETHER
	object_event 21, 26, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MountMortarB1FPPUp, EVENT_MOUNT_MORTAR_B1F_PP_UP
