	db POLIWRATH ; 062

	db  90,  85,  95,  70,  70,  90
	;   hp  atk  def  spd  sat  sdf

	db WATER, FIGHTING ; type
	db 45 ; catch rate
	db 185 ; base exp
	db NO_ITEM, KINGS_ROCK ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/poliwrath/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_WATER_1, EGG_WATER_1 ; egg groups

	; tm/hm learnset
	tmhm DRAIN_PUNCH, HEADBUTT, CURSE, TOXIC, ROCK_SMASH, HIDDEN_POWER, BLIZZARD, ICE_BEAM, HYPER_BEAM, ICY_WIND, PROTECT, RAIN_DANCE, ENDURE, FRUSTRATION, EARTHQUAKE, EARTH_POWER, ROCK_SLIDE, RETURN, PSYCHIC_M, ICE_PUNCH, SLEEP_TALK, REST, ROCK_SLIDE, SURF, STRENGTH, WHIRLPOOL, WATERFALL, ICE_BEAM, BULK_UP
	; end
