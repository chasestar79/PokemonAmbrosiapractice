	db HO_OH ; 250

	db 106, 130,  90,  90, 110, 154
	;   hp  atk  def  spd  sat  sdf

	db FIRE, FLYING ; type
	db 3 ; catch rate
	db 220 ; base exp
	db SACRED_ASH, SACRED_ASH ; items
	db GENDER_UNKNOWN ; gender ratio
	db 100 ; unknown 1
	db 120 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/ho_oh/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm CURSE, ROAR, TOXIC, ZAP_CANNON, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, PROTECT, RAIN_DANCE, GIGA_DRAIN, ENDURE, FRUSTRATION, SOLARBEAM, DRAGON_PULSE, THUNDER, EARTHQUAKE, EARTH_POWER, RETURN, PSYCHIC_M, CALM_MIND, BULK_UP, AURA_SPHERE, SHADOW_BALL, DARK_PULSE, SLEEP_TALK, SANDSTORM, FIRE_BLAST, SWIFT, DREAM_EATER, REST, FLY, ROOST, AIR_SLASH, STRENGTH, FLASH, FLAMETHROWER, THUNDERBOLT
	; end
