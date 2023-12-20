	object_const_def
	const RADIOTOWER4F_FISHER
	const RADIOTOWER4F_TEACHER
	const RADIOTOWER4F_GROWLITHE
	const RADIOTOWER4F_ROCKET1
	const RADIOTOWER4F_ROCKET2
	const RADIOTOWER4F_ROCKET_GIRL
	const RADIOTOWER4F_SCIENTIST

RadioTower4F_MapScripts:
	def_scene_scripts

	def_callbacks

RadioTower4FFisherScript:
	jumptextfaceplayer RadioTower4FFisherText

RadioTower4FDJMaryScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_PINK_BOW_FROM_MARY
	iftrue .GotPinkBow
	checkevent EVENT_CLEARED_RADIO_TOWER
	iftrue .ClearedRockets
	writetext RadioTower4FDJMaryText
	waitbutton
	closetext
	end

.ClearedRockets:
	writetext RadioTower4FDJMaryText_ClearedRockets
	promptbutton
	verbosegiveitem POLKADOT_BOW
	iffalse .NoRoom
	writetext RadioTower4FDJMaryText_GivePinkBow
	waitbutton
	closetext
	setevent EVENT_GOT_PINK_BOW_FROM_MARY
	end

.GotPinkBow:
	writetext RadioTower4FDJMaryText_After
	waitbutton
.NoRoom:
	closetext
	end

RadioTowerMeowth:
	opentext
	writetext RadioTowerMeowthText
	cry MEOWTH
	waitbutton
	closetext
	end

TrainerGruntM10:
	trainer GRUNTM, GRUNTM_10, EVENT_BEAT_ROCKET_GRUNTM_10, GruntM10SeenText, GruntM10BeatenText, 0, .Script

.Script:
    loadmem wNoRematch, 1
	endifjustbattled
	opentext
	writetext GruntM10AfterBattleText
	waitbutton
	closetext
	end

TrainerExecutivem2:
	trainer EXECUTIVEM, EXECUTIVEM_2, EVENT_BEAT_ROCKET_EXECUTIVEM_2, Executivem2SeenText, Executivem2BeatenText, 0, .Script

.Script:
    loadmem wNoRematch, 1
	;endifjustbattled
	opentext
	writetext Executivem2AfterBattleText
	waitbutton
	closetext
	end

TrainerGruntF4:
	trainer GRUNTF, GRUNTF_4, EVENT_BEAT_ROCKET_GRUNTF_4, GruntF4SeenText, GruntF4BeatenText, 0, .Script

.Script:
    loadmem wNoRematch, 1
	endifjustbattled
	opentext
	writetext GruntF4AfterBattleText
	waitbutton
	closetext
	end

TrainerScientistRich:
	trainer SCIENTIST, RICH, EVENT_BEAT_SCIENTIST_RICH, ScientistRichSeenText, ScientistRichBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext ScientistRichAfterBattleText
	waitbutton
	closetext
	end

RadioTower4FProductionSign:
	jumptext RadioTower4FProductionSignText

RadioTower4FStudio2Sign:
	jumptext RadioTower4FStudio2SignText

RadioTower4FFisherText:
	text "I listened to the"
	line "radio while I was"
	cont "at the RUINS."

	para "I heard a strange"
	line "broadcast there."
	done

RadioTower4FDJMaryText:
	text "I don't care"
	line "what happens"
	cont "to me!"

	para "But please save"
	line "my MEOWTH!"
	done

RadioTower4FDJMaryText_ClearedRockets:
	text "You are a hero."

	para "You are strong"
	line "and beautiful."

	para "Will you take this"
	line "as my thanks?"
	done

RadioTower4FDJMaryText_GivePinkBow:
	text "MARY: It's just"
	line "right for #MON"

	para "that know fairy-"
	line "type moves."
	done

RadioTower4FDJMaryText_After:
	text "Let the world"
	line "know about"
	cont "<PLAYER>."

	para "The strong and"
	line "beautiful!"
	done

RadioTowerMeowthText:
	text "MEOWTH: Meowth…"
	done

GruntM10SeenText:
	text "Have you heard"
	line "of the #MON"

	para "KYOGRE and"
	line "GROUDON!"

	para "They are HOEN"
	line "legendary"
	cont "#MON."

	para "They will kill"
	line "us all!"
	done

GruntM10BeatenText:
	text "You fool!"
	done

GruntM10AfterBattleText:
	text "You have doomed"
	line "us all!"
	done

Executivem2SeenText:
	text "Stop!"

	para "I'm known as the"
	line "TEAM ROCKET"
	cont "FORTRESS!"

	para "You're not taking"
	line "another step!"
	done

Executivem2BeatenText:
	text "The fortress has"
	line "fallen!"
	done

Executivem2AfterBattleText:
	text "You've earned my"
	line "respect."

	para "Join us!"

	para "Let us save"
	line "KANTO and JOHTO"
	cont "together."
	done

GruntF4SeenText:
	text "Have you heard"
	line "of the #MON"

	para "KYOGRE and"
	line "GROUDON!"

	para "They are HOEN"
	line "legendary"
	cont "#MON."

	para "They will kill"
	line "us all!"
	done

GruntF4BeatenText:
	text "You fool!"
	done

GruntF4AfterBattleText:
	text "You have doomed"
	line "us all!"
	done

ScientistRichSeenText:
	text "Did I give you"
	line "permission to"
	cont "leave."

	para "Their power will"
	line "be mine."

	para "The HOEN legendary"
	line "#MON."

	para "I will learn to"
	line "control them and"
	cont "rule the world!"

	para "Muhahahaha."
	done

ScientistRichBeatenText:
	text "Tis but a minor"
	line "set back."
	done

ScientistRichAfterBattleText:
	text "Destiny."

	para "You can not"
	line "destroy my"
	cont "destiny."
	done

RadioTower4FProductionSignText:
	text "4F PRODUCTION"
	done

RadioTower4FStudio2SignText:
	text "4F STUDIO 2"
	done

RadioTower4F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  0,  0, RADIO_TOWER_5F, 1
	warp_event  9,  0, RADIO_TOWER_3F, 2
	warp_event 12,  0, RADIO_TOWER_5F, 2
	warp_event 17,  0, RADIO_TOWER_3F, 3

	def_coord_events

	def_bg_events
	bg_event  7,  0, BGEVENT_READ, RadioTower4FProductionSign
	bg_event 15,  0, BGEVENT_READ, RadioTower4FStudio2Sign

	def_object_events
	object_event  6,  4, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, RadioTower4FFisherScript, EVENT_RADIO_TOWER_CIVILIANS_AFTER
	object_event 14,  6, SPRITE_TEACHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, RadioTower4FDJMaryScript, -1
	object_event 12,  7, SPRITE_GROWLITHE, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, RadioTowerMeowth, -1
	;object_event  5,  6, SPRITE_ROCKET, SPRITEMOVEDATA_SPINCLOCKWISE, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerGruntM10, EVENT_RADIO_TOWER_ROCKET_TAKEOVER
	object_event 14,  1, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_LEFT, 2, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerExecutivem2, EVENT_RADIO_TOWER_ROCKET_TAKEOVER
	object_event 12,  4, SPRITE_ROCKET_GIRL, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerGruntF4, EVENT_RADIO_TOWER_ROCKET_TAKEOVER
	object_event  1,  2, SPRITE_SCIENTIST, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerScientistRich, EVENT_RADIO_TOWER_ROCKET_TAKEOVER
