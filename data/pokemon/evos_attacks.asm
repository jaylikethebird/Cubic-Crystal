SECTION "Evolutions and Attacks", ROMX

; Evos+attacks data structure:
; - Evolution methods:
;    * db EVOLVE_LEVEL, level, species
;    * db EVOLVE_ITEM, used item, species
;    * db EVOLVE_TRADE, held item (or -1 for none), species
;    * db EVOLVE_HAPPINESS, TR_* constant (ANYTIME, MORNDAY, NITE), species
;    * db EVOLVE_STAT, level, ATK_*_DEF constant (LT, GT, EQ), species
; - db 0 ; no more evolutions
; - Learnset (in increasing level order):
;    * db level, move
; - db 0 ; no more level-up moves

INCLUDE "data/pokemon/evos_attacks_pointers.asm"
EvosAttacks::

BulbasaurEvosAttacks:
	db EVOLVE_LEVEL, 16, IVYSAUR
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, GROWL
	db 7, LEECH_SEED
	db 10, VINE_WHIP
	db 15, POISONPOWDER
	db 15, SLEEP_POWDER
	db 19, RAZOR_LEAF
	db 25, SLUDGE
	db 32, GROWTH
	db 34, SLUDGE_BOMB
	db 38, SUNNY_DAY
	db 43, LEECH_LIFE
	db 50, SOLARBEAM
	db 0 ; no more level-up moves

IvysaurEvosAttacks:
	db EVOLVE_LEVEL, 32, VENUSAUR
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, GROWL
	db 7, LEECH_SEED
	db 10, VINE_WHIP
	db 15, POISONPOWDER
	db 15, SLEEP_POWDER
	db 22, RAZOR_LEAF
	db 28, SLUDGE
	db 30, STOMP
	db 33, GROWTH
	db 38, SLUDGE_BOMB
	db 42, SUNNY_DAY
	db 46, LEECH_LIFE
	db 53, SOLARBEAM
	db 0 ; no more level-up moves

VenusaurEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, GROWL
	db 7, LEECH_SEED
	db 10, VINE_WHIP
	db 15, POISONPOWDER
	db 15, SLEEP_POWDER
	db 22, RAZOR_LEAF
	db 28, SLUDGE
	db 32, PETAL_DANCE
	db 34, STOMP
	db 36, GROWTH
	db 40, SLUDGE_BOMB
	db 46, SUNNY_DAY
	db 50, LEECH_LIFE
	db 56, SOLARBEAM
	db 0 ; no more level-up moves

CharmanderEvosAttacks:
	db EVOLVE_LEVEL, 16, CHARMELEON
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 4, GROWL
	db 7, EMBER
	db 10, SMOKESCREEN
	db 15, METAL_CLAW
	db 15, RAGE
	db 19, FIRE_SPIN
	db 25, DRAGON_RAGE
	db 30, FLAMETHROWER
	db 34, SLASH
	db 48, SCARY_FACE
	db 43, OUTRAGE
	db 50, FIRE_BLAST
	db 0 ; no more level-up moves

CharmeleonEvosAttacks:
	db EVOLVE_LEVEL, 36, CHARIZARD
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 4, GROWL
	db 7, EMBER
	db 10, SMOKESCREEN
	db 15, METAL_CLAW
	db 15, RAGE
	db 22, FIRE_SPIN
	db 28, DRAGON_RAGE
	db 33, TWISTER
	db 36, FLAMETHROWER
	db 38, SLASH
	db 42, SCARY_FACE
	db 46, OUTRAGE
	db 53, FIRE_BLAST
	db 0 ; no more level-up moves

CharizardEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 4, GROWL
	db 7, EMBER
	db 10, SMOKESCREEN
	db 15, METAL_CLAW
	db 15, RAGE
	db 22, FIRE_SPIN
	db 28, DRAGON_RAGE
	db 33, TWISTER
	db 36, WING_ATTACK
	db 37, FLAMETHROWER
	db 40, SLASH
	db 46, SCARY_FACE
	db 50, OUTRAGE
	db 56, FIRE_BLAST
	db 0 ; no more level-up moves

SquirtleEvosAttacks:
	db EVOLVE_LEVEL, 16, WARTORTLE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, TAIL_WHIP
	db 7, BUBBLE
	db 10, RAPID_SPIN
	db 15, BITE
	db 15, WITHDRAW
	db 19, BUBBLEBEAM
	db 25, SKULL_BASH
	db 30, PROTECT
	db 34, MIRROR_COAT
	db 38, RAIN_DANCE
	db 43, MIST
	db 50, HYDRO_PUMP
	db 0 ; no more level-up moves

WartortleEvosAttacks:
	db EVOLVE_LEVEL, 36, BLASTOISE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, TAIL_WHIP
	db 7, BUBBLE
	db 10, RAPID_SPIN
	db 15, BITE
	db 15, WITHDRAW
	db 22, BUBBLEBEAM
	db 28, SKULL_BASH
	db 33, GUILLOTINE
	db 36, PROTECT
	db 38, MIRROR_COAT
	db 42, RAIN_DANCE
	db 46, MIST
	db 53, HYDRO_PUMP
	db 0 ; no more level-up moves

BlastoiseEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, TAIL_WHIP
	db 7, BUBBLE
	db 10, RAPID_SPIN
	db 15, BITE
	db 15, WITHDRAW
	db 22, BUBBLEBEAM
	db 28, SKULL_BASH
	db 33, GUILLOTINE
	db 36, ICE_BEAM
	db 37, PROTECT
	db 40, MIRROR_COAT
	db 46, RAIN_DANCE
	db 50, MIST
	db 56, HYDRO_PUMP
	db 0 ; no more level-up moves

CaterpieEvosAttacks:
	db EVOLVE_LEVEL, 7, METAPOD
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, STRING_SHOT
	db 0 ; no more level-up moves

MetapodEvosAttacks:
	db EVOLVE_LEVEL, 10, BUTTERFREE
	db 0 ; no more evolutions
	db 1, HARDEN
	db 7, HARDEN
	db 0 ; no more level-up moves

ButterfreeEvosAttacks:
	db 0 ; no more evolutions
	db 1, GUST
	db 10, GUST
	db 14, CONFUSION
	db 18, POISONPOWDER
	db 18, STUN_SPORE
	db 18, SLEEP_POWDER
	db 22, SWEET_SCENT
	db 26, WING_ATTACK
	db 32, PSYBEAM
	db 36, MEGA_DRAIN
	db 40, SAFEGUARD
	db 0 ; no more level-up moves

WeedleEvosAttacks:
	db EVOLVE_LEVEL, 7, KAKUNA
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 1, STRING_SHOT
	db 0 ; no more level-up moves

KakunaEvosAttacks:
	db EVOLVE_LEVEL, 10, BEEDRILL
	db 0 ; no more evolutions
	db 1, HARDEN
	db 7, HARDEN
	db 0 ; no more level-up moves

BeedrillEvosAttacks:
	db 0 ; no more evolutions
	db 1, TWINEEDLE
	db 10, TWINEEDLE
	db 13, FOCUS_ENERGY
	db 16, FURY_ATTACK
	db 19, PURSUIT
	db 22, PIN_MISSILE
	db 26, THRASH
    db 30, SWAGGER
	db 34, FAINT_ATTACK
	db 37, SPIKES
	db 40, MEGAHORN
	db 0 ; no more level-up moves

PidgeyEvosAttacks:
	db EVOLVE_LEVEL, 18, PIDGEOTTO
	db 0 ; no more evolutions
	db 1, TACKLE
	db 5, SAND_ATTACK
	db 8, GUST
	db 10, QUICK_ATTACK
	db 13, SONICBOOM
	db 16, WING_ATTACK
	db 18, WHIRLWIND
	db 21, SWIFT
	db 24, MIRROR_MOVE
	db 29, AGILITY
	db 34, BATON_PASS
	db 40, TWISTER
	db 0 ; no more level-up moves

PidgeottoEvosAttacks:
	db EVOLVE_LEVEL, 36, PIDGEOT
	db 0 ; no more evolutions
	db 1, TACKLE
	db 5, SAND_ATTACK
	db 8, GUST
	db 10, QUICK_ATTACK
	db 13, SONICBOOM
	db 16, WING_ATTACK
	db 20, WHIRLWIND
	db 23, SWIFT
	db 27, MIRROR_MOVE
	db 32, AGILITY
	db 36, BATON_PASS
	db 42, TWISTER
	db 0 ; no more level-up moves

PidgeotEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 5, SAND_ATTACK
	db 8, GUST
	db 10, QUICK_ATTACK
	db 13, SONICBOOM
	db 16, WING_ATTACK
	db 20, WHIRLWIND
	db 23, SWIFT
	db 27, MIRROR_MOVE
	db 32, AGILITY
	db 38, BATON_PASS
	db 44, TWISTER
	db 50, RAZOR_WIND
	db 0 ; no more level-up moves

RattataEvosAttacks:
	db EVOLVE_LEVEL, 20, RATICATE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 8, QUICK_ATTACK
	db 13, HYPER_FANG
	db 18, BITE
	db 22, FOCUS_ENERGY
	db 26, SUPER_FANG
	db 30, CRUNCH
	db 34, PAIN_SPLIT
	db 0 ; no more level-up moves

RaticateEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 8, QUICK_ATTACK
	db 13, HYPER_FANG
	db 18, BITE
	db 20, SCARY_FACE
	db 25, FOCUS_ENERGY
	db 29, SUPER_FANG
	db 33, CRUNCH
	db 37, PAIN_SPLIT
	db 45, SUBMISSION
	db 0 ; no more level-up moves

SpearowEvosAttacks:
	db EVOLVE_LEVEL, 20, FEAROW
	db 0 ; no more evolutions
	db 1, PECK
	db 1, LEER
	db 8, FURY_ATTACK
	db 13, PURSUIT
	db 18, MIRROR_MOVE
	db 23, FAINT_ATTACK
	db 28, DRILL_PECK
	db 32, SWORDS_DANCE
	db 38, BATON_PASS
	db 43, DOUBLE_EDGE
	db 0 ; no more level-up moves

FearowEvosAttacks:
	db 0 ; no more evolutions
	db 1, PECK
	db 1, LEER
	db 8, FURY_ATTACK
	db 13, PURSUIT
	db 18, MIRROR_MOVE
	db 25, FAINT_ATTACK
	db 30, DRILL_PECK
	db 35, SWORDS_DANCE
	db 40, BATON_PASS
	db 45, DOUBLE_EDGE
	db 50, BEAT_UP
	db 0 ; no more level-up moves

EkansEvosAttacks:
	db EVOLVE_LEVEL, 22, ARBOK
	db 0 ; no more evolutions
	db 1, WRAP
	db 4, LEER
	db 8, CONSTRICT
	db 11, POISON_STING
	db 15, BITE
	db 19, SCREECH
	db 22, ACID
	db 25, GLARE
	db 30, CRUNCH
	db 34, SCARY_FACE
	db 38, MEAN_LOOK
	db 0 ; no more level-up moves

ArbokEvosAttacks:
	db 0 ; no more evolutions
	db 1, WRAP
	db 4, LEER
	db 8, CONSTRICT
	db 11, POISON_STING
	db 15, BITE
	db 19, SCREECH
	db 23, ACID
	db 27, GLARE
	db 33, CRUNCH
	db 38, SCARY_FACE
	db 44, MEAN_LOOK
	db 50, SUPER_FANG
	db 0 ; no more level-up moves

PikachuEvosAttacks:
	db EVOLVE_ITEM, THUNDERSTONE, RAICHU
	db 0 ; no more evolutions
	db 1, THUNDERSHOCK
	db 1, GROWL
	db 5, TAIL_WHIP
	db 8, THUNDER_WAVE
	db 11, QUICK_ATTACK
	db 15, DOUBLE_TEAM
	db 20, SLAM
	db 26, THUNDERBOLT
	db 33, RAIN_DANCE
	db 41, THUNDER
	db 50, LIGHT_SCREEN
	db 0 ; no more level-up moves

RaichuEvosAttacks:
	db 0 ; no more evolutions
	db 1, THUNDERSHOCK
	db 1, THUNDER_WAVE
	db 1, QUICK_ATTACK
	db 1, THUNDERBOLT
	db 0 ; no more level-up moves

SandshrewEvosAttacks:
	db EVOLVE_LEVEL, 22, SANDSLASH
	db 0 ; no more evolutions
	db 1, RAPID_SPIN
	db 4, DEFENSE_CURL
	db 8, SAND_ATTACK
	db 11, POISON_STING
	db 15, FURY_SWIPES
	db 19, MAGNITUDE
	db 22, ROLLOUT
	db 25, SLASH
	db 30, SANDSTORM
	db 34, LEECH_LIFE
	db 38, EARTHQUAKE
	db 0 ; no more level-up moves

SandslashEvosAttacks:
	db 0 ; no more evolutions
	db 1, RAPID_SPIN
	db 4, DEFENSE_CURL
	db 8, SAND_ATTACK
	db 11, POISON_STING
	db 15, FURY_SWIPES
	db 19, MAGNITUDE
	db 23, ROLLOUT
	db 27, SLASH
	db 33, SANDSTORM
	db 38, LEECH_LIFE
	db 44, EARTHQUAKE
	db 50, SPIKES
	db 0 ; no more level-up moves

NidoranFEvosAttacks:
	db EVOLVE_LEVEL, 16, NIDORINA
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, GROWL
	db 5, POISON_STING
	db 8, DOUBLE_KICK
	db 11, BITE
	db 14, FURY_SWIPES
	db 17, CHARM
	db 25, TOXIC
	db 28, SLASH
	db 34, CRUNCH
	db 0 ; no more level-up moves

NidorinaEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, NIDOQUEEN
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, GROWL
	db 5, POISON_STING
	db 8, DOUBLE_KICK
	db 11, BITE
	db 14, FURY_SWIPES
	db 20, CHARM
	db 29, TOXIC
	db 33, SLASH
	db 38, CRUNCH
	db 0 ; no more level-up moves

NidoqueenEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, GROWL
    db 1, POISON_STING
	db 1, DOUBLE_KICK
	db 23, BODY_SLAM
	db 38, EARTHQUAKE
	db 0 ; no more level-up moves

NidoranMEvosAttacks:
	db EVOLVE_LEVEL, 16, NIDORINO
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 5, POISON_STING
	db 8, DOUBLE_KICK
	db 11, HORN_ATTACK
	db 14, FURY_ATTACK
	db 17, FOCUS_ENERGY
	db 25, TOXIC
	db 28, DRILL_PECK
	db 34, MEGAHORN
	db 0 ; no more level-up moves

NidorinoEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, NIDOKING
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 5, POISON_STING
	db 8, DOUBLE_KICK
	db 11, HORN_ATTACK
	db 14, FURY_ATTACK
	db 20, FOCUS_ENERGY
	db 29, TOXIC
	db 33, DRILL_PECK
	db 38, MEGAHORN
	db 0 ; no more level-up moves

NidokingEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
    db 1, POISON_STING
	db 1, DOUBLE_KICK
	db 23, THRASH
	db 38, EARTHQUAKE
	db 0 ; no more level-up moves

ClefairyEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, CLEFABLE
	db 0 ; no more evolutions
	db 1, POUND
	db 1, GROWL
	db 4, ENCORE
	db 8, SING
	db 13, DOUBLESLAP
	db 17, MINIMIZE
	db 24, METRONOME
	db 29, 
	db 35, MOON_STONE
	db 40, LIGHT_SCREEN
	db 0 ; no more level-up moves

ClefableEvosAttacks:
	db 0 ; no more evolutions
	db 1, SING
	db 1, DOUBLESLAP
	db 1, METRONOME
	db 1, MOONLIGHT
	db 0 ; no more level-up moves

VulpixEvosAttacks:
	db EVOLVE_ITEM, FIRE_STONE, NINETALES
	db 0 ; no more evolutions
	db 1, EMBER
	db 1, TAIL_WHIP
	db 7, QUICK_ATTACK
	db 13, ROAR
	db 18, CONFUSE_RAY
	db 24, FIRE_SPIN
	db 27, NIGHTMARE
	db 31, SAFEGUARD
	db 37, FLAMETHROWER
	db 41, DESTINY_BOND
	db 0 ; no more level-up moves

NinetalesEvosAttacks:
	db 0 ; no more evolutions
	db 1, SAFEGUARD
	db 1, QUICK_ATTACK
	db 1, CONFUSE_RAY
	db 1, FLAMETHROWER
	db 50, CURSE
	db 0 ; no more level-up moves

JigglypuffEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, WIGGLYTUFF
	db 0 ; no more evolutions
	db 1, POUND
    db 1, SING
	db 4, DEFENSE_CURL
	db 8, DISABLE
	db 13, ROLLOUT
	db 17, REST
	db 24, SNORE
	db 29, BODY_SLAM
	db 35, MORNING_SUN
	db 40, PERISH_SONG
	db 0 ; no more level-up moves

WigglytuffEvosAttacks:
	db 0 ; no more evolutions
	db 1, SING
	db 1, DISABLE
	db 1, DEFENSE_CURL
	db 1, DOUBLESLAP
	db 0 ; no more level-up moves

ZubatEvosAttacks:
	db EVOLVE_LEVEL, 22, GOLBAT
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 3, SUPERSONIC
	db 6, POISON_STING
	db 10, BITE
	db 14, WING_ATTACK
	db 19, CONFUSE_RAY
	db 24, LEECH_LIFE
	db 28, SCREECH
	db 32, MEAN_LOOK
	db 37, DOUBLE_TEAM
	db 41, HAZE
	db 45, RAZOR_WIND
	db 0 ; no more level-up moves

GolbatEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, CROBAT
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 3, SUPERSONIC
	db 6, POISON_STING
	db 10, BITE
	db 14, WING_ATTACK
	db 19, CONFUSE_RAY
	db 26, LEECH_LIFE
	db 30, SCREECH
	db 35, MEAN_LOOK
	db 40, DOUBLE_TEAM
	db 46, HAZE
	db 50, RAZOR_WIND
	db 0 ; no more level-up moves

OddishEvosAttacks:
	db EVOLVE_LEVEL, 21, GLOOM
	db 0 ; no more evolutions
	db 1, ABSORB
	db 7, SWEET_SCENT
	db 14, POISONPOWDER
	db 16, STUN_SPORE
	db 18, SLEEP_POWDER
	db 21, ACID
	db 24, MEGA_DRAIN
	db 29, GROWTH
	db 32, PETAL_DANCE
	db 38, MOONLIGHT
	db 43, SOLARBEAM
	db 0 ; no more level-up moves

GloomEvosAttacks:
	db EVOLVE_ITEM, LEAF_STONE, VILEPLUME
	db EVOLVE_ITEM, SUN_STONE, BELLOSSOM
	db 0 ; no more evolutions
	db 1, ABSORB
	db 7, SWEET_SCENT
	db 14, POISONPOWDER
	db 16, STUN_SPORE
	db 18, SLEEP_POWDER
	db 21, ACID
	db 27, MEGA_DRAIN
	db 33, GROWTH
	db 37, PETAL_DANCE
	db 41, MOONLIGHT
	db 47, SOLARBEAM
	db 0 ; no more level-up moves

VileplumeEvosAttacks:
	db 0 ; no more evolutions
	db 1, ACID
	db 1, SWEET_SCENT
	db 1, POISONPOWDER
	db 1, PETAL_DANCE
	db 45, TOXIC
	db 50, SOLARBEAM
	db 0 ; no more level-up moves

ParasEvosAttacks:
	db EVOLVE_LEVEL, 24, PARASECT
	db 0 ; no more evolutions
	db 1, VICEGRIP
	db 7, STUN_SPORE
	db 12, ABSORB
	db 15, POISONPOWDER
	db 17, LEECH_LIFE
	db 21, SPORE
	db 23, MEGA_DRAIN
	db 27, SLASH
	db 34, GROWTH
	db 37, GIGA_DRAIN
	db 42, PAIN_SPLIT
	db 0 ; no more level-up moves

ParasectEvosAttacks:
	db 0 ; no more evolutions
	db 1, VICEGRIP
	db 7, STUN_SPORE
	db 12, ABSORB
	db 15, POISONPOWDER
	db 17, LEECH_LIFE
	db 21, SPORE
	db 23, MEGA_DRAIN
	db 24, CURSE
	db 31, SLASH
	db 38, GROWTH
	db 42, GIGA_DRAIN
	db 46, PAIN_SPLIT
	db 50, DESTINY_BOND
	db 0 ; no more level-up moves

VenonatEvosAttacks:
	db EVOLVE_LEVEL, 31, VENOMOTH
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DISABLE
	db 3, FORESIGHT
	db 6, SUPERSONIC
	db 10, LEECH_LIFE
	db 13, CONFUSION
	db 17, POISONPOWDER
	db 21, ACID
	db 25, STUN_SPORE
	db 29, PSYBEAM
	db 35, SLEEP_POWDER
	db 40, PSYCHIC_M
	db 0 ; no more level-up moves

VenomothEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DISABLE
	db 3, FORESIGHT
	db 6, SUPERSONIC
	db 10, LEECH_LIFE
	db 13, CONFUSION
	db 17, POISONPOWDER
	db 21, ACID
	db 25, STUN_SPORE
	db 29, PSYBEAM
	db 33, GUST
	db 37, SLEEP_POWDER
	db 45, PSYCHIC_M
	db 0 ; no more level-up moves

DiglettEvosAttacks:
	db EVOLVE_LEVEL, 26, DUGTRIO
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, GROWL
	db 9, DIG
	db 17, MAGNITUDE
	db 22, FAINT_ATTACK
	db 29, SLASH
	db 35, EARTHQUAKE
	db 40, ROCK_SLIDE
	db 0 ; no more level-up moves

DugtrioEvosAttacks:
	db 0 ; no more evolutions
	db 1, TRI_ATTACK
	db 1, SCRATCH
	db 1, GROWL
	db 9, DIG
	db 17, MAGNITUDE
	db 22, FAINT_ATTACK
	db 26, TRI_ATTACK
	db 32, SLASH
	db 39, EARTHQUAKE
	db 45, ROCK_SLIDE
	db 54, BEAT_UP
	db 0 ; no more level-up moves

MeowthEvosAttacks:
	db EVOLVE_LEVEL, 28, PERSIAN
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, GROWL
	db 9, BITE
	db 15, FURY_SWIPES
	db 21, PAY_DAY
	db 28, THIEF
	db 31, SCREECH
	db 35, SLASH
	db 40, SWAGGER
	db 0 ; no more level-up moves

PersianEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, GROWL
	db 9, BITE
	db 15, FURY_SWIPES
	db 21, PAY_DAY
	db 28, FAINT_ATTACK
	db 33, SCREECH
	db 39, SLASH
	db 45, SWAGGER
	db 50, CRUNCH
	db 0 ; no more level-up moves

PsyduckEvosAttacks:
	db EVOLVE_LEVEL, 28, GOLDUCK
	db 0 ; no more evolutions
	db 1, FRUSTRATION
	db 1, SPLASH
	db 1, SCRATCH
	db 4, DISABLE
	db 8, CONFUSION
	db 13, FURY_SWIPES
	db 18, PAIN_SPLIT
	db 22, PSYBEAM
	db 27, PSYCH_UP
	db 33, SLASH
	db 40, PSYCHIC_M
	db 0 ; no more level-up moves

GolduckEvosAttacks:
	db 0 ; no more evolutions
	db 1, FRUSTRATION
	db 1, SPLASH
	db 1, SCRATCH
	db 4, DISABLE
	db 8, CONFUSION
	db 13, FURY_SWIPES
	db 18, PAIN_SPLIT
	db 22, PSYBEAM
	db 27, PSYCH_UP
	db 28, BUBBLEBEAM
	db 35, SLASH
	db 42, PSYCHIC_M
	db 50, HYDRO_PUMP
	db 0 ; no more level-up moves

MankeyEvosAttacks:
	db EVOLVE_LEVEL, 28, PRIMEAPE
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 9, KARATE_CHOP
	db 15, FURY_SWIPES
	db 21, ROLLING_KICK
	db 28, FOCUS_ENERGY
	db 31, SCREECH
	db 35, THRASH
	db 40, CROSS_CHOP
	db 0 ; no more level-up moves

PrimeapeEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 9, KARATE_CHOP
	db 15, FURY_SWIPES
	db 21, ROLLING_KICK
	db 28, RAGE
	db 33, SCREECH
	db 39, THRASH
	db 45, CROSS_CHOP
	db 50, BEAT_UP
	db 0 ; no more level-up moves

GrowlitheEvosAttacks:
	db EVOLVE_ITEM, FIRE_STONE, ARCANINE
	db 0 ; no more evolutions
	db 1, BITE
	db 1, ROAR
	db 7, EMBER
	db 13, LEER
	db 18, DOUBLE_KICK
	db 24, FLAME_WHEEL
	db 27, TAKE_DOWN
	db 31, AGILITY
	db 37, FLAMETHROWER
	db 41, CRUNCH
	db 0 ; no more level-up moves

ArcanineEvosAttacks:
	db 0 ; no more evolutions
	db 1, AGILITY
	db 1, FLAMETHROWER
	db 1, DOUBLE_KICK
	db 1, BITE
	db 50, EXTREMESPEED
	db 0 ; no more level-up moves

PoliwagEvosAttacks:
	db EVOLVE_LEVEL, 25, POLIWHIRL
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 5, HYPNOSIS
	db 9, DOUBLESLAP
	db 14, BUBBLEBEAM
	db 19, RAIN_DANCE
	db 21, BODY_SLAM
	db 27, RECOVER
	db 31, BELLY_DRUM
	db 37, AMNESIA
	db 43, HYDRO_PUMP
	db 0 ; no more level-up moves

PoliwhirlEvosAttacks:
	db EVOLVE_ITEM, WATER_STONE, POLIWRATH
	db EVOLVE_ITEM, KINGS_ROCK, POLITOED
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 5, HYPNOSIS
	db 9, DOUBLESLAP
	db 14, BUBBLEBEAM
	db 19, RAIN_DANCE
	db 21, BODY_SLAM
	db 30, RECOVER
	db 35, BELLY_DRUM
	db 43, AMNESIA
	db 50, HYDRO_PUMP
	db 0 ; no more level-up moves

PoliwrathEvosAttacks:
	db 0 ; no more evolutions
	db 1, BUBBLEBEAM
	db 1, HYPNOSIS
	db 1, DOUBLESLAP
	db 1, SUBMISSION
	db 35, SUBMISSION
	db 50, MIND_READER
	db 0 ; no more level-up moves

AbraEvosAttacks:
	db EVOLVE_LEVEL, 16, KADABRA
	db 0 ; no more evolutions
	db 1, TELEPORT
	db 0 ; no more level-up moves

KadabraEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, ALAKAZAM
	db 0 ; no more evolutions
	db 1, TELEPORT
	db 1, KINESIS
	db 1, CONFUSION
	db 16, CONFUSION
	db 18, DISABLE
	db 21, PSYBEAM
	db 26, RECOVER
	db 31, FUTURE_SIGHT
	db 38, PSYCHIC_M
	db 41, REFLECT
	db 45, MIND_READER
	db 50, PSYCH_UP
	db 0 ; no more level-up moves

AlakazamEvosAttacks:
	db 0 ; no more evolutions
	db 1, TELEPORT
	db 1, KINESIS
	db 1, CONFUSION
	db 16, CONFUSION
	db 18, DISABLE
	db 21, PSYBEAM
	db 26, RECOVER
	db 31, FUTURE_SIGHT
	db 38, PSYCHIC_M
	db 41, REFLECT
	db 45, MIND_READER
	db 50, PSYCH_UP
	db 0 ; no more level-up moves

MachopEvosAttacks:
	db EVOLVE_LEVEL, 28, MACHOKE
	db 0 ; no more evolutions
	db 1, KARATE_CHOP
	db 5, LEER
	db 8, FOCUS_ENERGY
	db 13, LOW_KICK
	db 16, SEISMIC_TOSS
	db 21, FORESIGHT
	db 24, VITAL_THROW
	db 28, SCARY_FACE
	db 34, CROSS_CHOP
	db 39, ROCK_SLIDE
	db 42, SUBMISSION
	db 0 ; no more level-up moves

MachokeEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, MACHAMP
	db 0 ; no more evolutions
	db 1, KARATE_CHOP
	db 5, LEER
	db 8, FOCUS_ENERGY
	db 13, LOW_KICK
	db 16, SEISMIC_TOSS
	db 21, FORESIGHT
	db 24, VITAL_THROW
	db 31, SCARY_FACE
	db 38, CROSS_CHOP
	db 45, ROCK_SLIDE
	db 50, SUBMISSION
	db 0 ; no more level-up moves

MachampEvosAttacks:
	db 0 ; no more evolutions
	db 1, KARATE_CHOP
	db 5, LEER
	db 8, FOCUS_ENERGY
	db 13, LOW_KICK
	db 16, SEISMIC_TOSS
	db 21, FORESIGHT
	db 24, VITAL_THROW
	db 31, SCARY_FACE
	db 38, CROSS_CHOP
	db 45, ROCK_SLIDE
	db 50, SUBMISSION
	db 0 ; no more level-up moves

BellsproutEvosAttacks:
	db EVOLVE_LEVEL, 21, WEEPINBELL
	db 0 ; no more evolutions
	db 1, VINE_WHIP
	db 5, GROWTH
	db 11, WRAP
	db 15, SLEEP_POWDER
	db 17, POISONPOWDER
	db 19, STUN_SPORE
	db 21, ACID
	db 25, RAZOR_LEAF
	db 30, SWEET_SCENT
	db 34, SLAM
	db 39, SWORDS_DANCE
	db 42, SOLARBEAM
	db 0 ; no more level-up moves

WeepinbellEvosAttacks:
	db EVOLVE_ITEM, LEAF_STONE, VICTREEBEL
	db 0 ; no more evolutions
	db 1, VINE_WHIP
	db 5, GROWTH
	db 11, WRAP
	db 15, SLEEP_POWDER
	db 17, POISONPOWDER
	db 19, STUN_SPORE
	db 23, ACID
	db 28, RAZOR_LEAF
	db 33, SWEET_SCENT
	db 37, SLAM
	db 44, SWORDS_DANCE
	db 48, SOLARBEAM
	db 0 ; no more level-up moves

VictreebelEvosAttacks:
	db 0 ; no more evolutions
	db 1, VINE_WHIP
	db 1, SLEEP_POWDER
	db 1, SWEET_SCENT
	db 1, RAZOR_LEAF
	db 0 ; no more level-up moves

TentacoolEvosAttacks:
	db EVOLVE_LEVEL, 30, TENTACRUEL
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 6, SUPERSONIC
	db 10, BUBBLE
	db 16, CONSTRICT
	db 21, ACID
	db 25, BUBBLEBEAM
	db 29, WRAP
	db 33, BARRIER
	db 37, SCREECH
	db 42, MIRROR_COAT
	db 44, HYDRO_PUMP
	db 0 ; no more level-up moves

TentacruelEvosAttacks:
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 6, SUPERSONIC
	db 10, BUBBLE
	db 16, CONSTRICT
	db 21, ACID
	db 25, BUBBLEBEAM
	db 29, WRAP
	db 36, BARRIER
	db 41, SCREECH
	db 46, MIRROR_COAT
	db 50, HYDRO_PUMP
	db 0 ; no more level-up moves

GeodudeEvosAttacks:
	db EVOLVE_LEVEL, 25, GRAVELER
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DEFENSE_CURL
	db 7, ROCK_THROW
	db 12, MAGNITUDE
	db 16, PROTECT
	db 21, SELFDESTRUCT
	db 24, ROLLOUT
	db 28, SANDSTORM
	db 33, EARTHQUAKE
	db 39, ROCK_SLIDE
	db 44, EXPLOSION
	db 0 ; no more level-up moves

GravelerEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, GOLEM
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DEFENSE_CURL
	db 7, ROCK_THROW
	db 12, MAGNITUDE
	db 16, PROTECT
	db 21, SELFDESTRUCT
	db 24, ROLLOUT
	db 30, SANDSTORM
	db 36, EARTHQUAKE
	db 41, ROCK_SLIDE
	db 50, EXPLOSION
	db 0 ; no more level-up moves

GolemEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DEFENSE_CURL
	db 7, ROCK_THROW
	db 12, MAGNITUDE
	db 16, PROTECT
	db 21, SELFDESTRUCT
	db 24, ROLLOUT
	db 30, SANDSTORM
	db 36, EARTHQUAKE
	db 41, ROCK_SLIDE
	db 50, EXPLOSION
	db 0 ; no more level-up moves

PonytaEvosAttacks:
	db EVOLVE_LEVEL, 30, RAPIDASH
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 1, TAIL_WHIP
	db 8, EMBER
	db 12, STOMP
	db 17, FLAME_WHEEL
	db 23, TAKE_DOWN
	db 27, DOUBLE_KICK
	db 34, DOUBLE_EDGE
	db 40, FLAMETHROWER
	db 44, JUMP_KICK
	db 0 ; no more level-up moves

RapidashEvosAttacks:
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 1, TAIL_WHIP
	db 8, EMBER
	db 12, STOMP
	db 17, FLAME_WHEEL
	db 23, TAKE_DOWN
	db 27, DOUBLE_KICK
	db 30, DRILL_PECK
	db 37, DOUBLE_EDGE
	db 43, FLAMETHROWER
	db 49, JUMP_KICK
	db 0 ; no more level-up moves

SlowpokeEvosAttacks:
	db EVOLVE_LEVEL, 27, SLOWBRO
	db EVOLVE_ITEM, KINGS_ROCK, SLOWKING
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, CURSE
	db 6, GROWL
	db 10, WATER_GUN
	db 15, CONFUSION
	db 19, DISABLE
	db 23, HEADBUTT
	db 27, AMNESIA
	db 33, FUTURE_SIGHT
	db 41, RECOVER
	db 45, PSYCHIC_M
	db 0 ; no more level-up moves

SlowbroEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, CURSE
	db 6, GROWL
	db 10, WATER_GUN
	db 15, CONFUSION
	db 19, DISABLE
	db 23, HEADBUTT
	db 27, WITHDRAW
	db 36, FUTURE_SIGHT
	db 43, RECOVER
	db 48, PSYCHIC_M
	db 0 ; no more level-up moves

MagnemiteEvosAttacks:
	db EVOLVE_LEVEL, 30, MAGNETON
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, THUNDERSHOCK
	db 10, SUPERSONIC
	db 14, SONICBOOM
	db 19, SPARK
	db 24, THUNDER_WAVE
	db 28, SWIFT
	db 35, THUNDERBOLT
	db 38, GUILLOTINE
	db 42, LOCK_ON
	db 45, ZAP_CANNON
	db 0 ; no more level-up moves

MagnetonEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, THUNDERSHOCK
	db 10, SUPERSONIC
	db 14, SONICBOOM
	db 19, SPARK
	db 24, THUNDER_WAVE
	db 28, SWIFT
	db 30, TRI_ATTACK
	db 37, THUNDERBOLT
	db 41, GUILLOTINE
	db 45, LOCK_ON
	db 50, ZAP_CANNON
	db 0 ; no more level-up moves

FarfetchDEvosAttacks:
	db 0 ; no more evolutions
	db 1, PECK
	db 4, SAND_ATTACK
	db 8, LEER
	db 13, FURY_ATTACK
	db 19, SWORDS_DANCE
	db 25, AGILITY
	db 31, SLASH
	db 35, RAZOR_WIND
	db 44, FALSE_SWIPE
	db 0 ; no more level-up moves

DoduoEvosAttacks:
	db EVOLVE_LEVEL, 31, DODRIO
	db 0 ; no more evolutions
	db 1, PECK
	db 1, GROWL
	db 7, PURSUIT
	db 11, FURY_ATTACK
	db 17, RAGE
	db 22, JUMP_KICK
	db 28, DRILL_PECK
	db 35, FORESIGHT
	db 41, SWAGGER
	db 45, HI_JUMP_KICK
	db 0 ; no more level-up moves

DodrioEvosAttacks:
	db 0 ; no more evolutions
	db 1, PECK
	db 1, GROWL
	db 7, PURSUIT
	db 11, FURY_ATTACK
	db 17, RAGE
	db 22, JUMP_KICK
	db 28, DRILL_PECK
	db 31, TRI_ATTACK
	db 38, FORESIGHT
	db 45, SWAGGER
	db 49, HI_JUMP_KICK
	db 0 ; no more level-up moves

SeelEvosAttacks:
	db EVOLVE_LEVEL, 27, DEWGONG
	db 0 ; no more evolutions
	db 1, HEADBUTT
	db 5, GROWL
	db 11, AURORA_BEAM
	db 16, REST
	db 20, SNORE
	db 25, TAKE_DOWN
	db 29, ENCORE
	db 33, ICE_BEAM
	db 38, SAFEGUARD
	db 41, BLIZZARD
	db 0 ; no more level-up moves

DewgongEvosAttacks:
	db 0 ; no more evolutions
	db 1, HEADBUTT
	db 5, GROWL
	db 11, AURORA_BEAM
	db 16, REST
	db 20, SNORE
	db 25, TAKE_DOWN
	db 27, BUBBLEBEAM
	db 32, ENCORE
	db 37, ICE_BEAM
	db 42, SAFEGUARD
	db 45, BLIZZARD
	db 0 ; no more level-up moves

GrimerEvosAttacks:
	db EVOLVE_LEVEL, 38, MUK
	db 0 ; no more evolutions
	db 1, POUND
	db 1, POISON_GAS
	db 8, PURSUIT
	db 14, HARDEN
	db 18, SLUDGE
	db 21, MINIMIZE
	db 27, FAINT_ATTACK
	db 33, DISABLE
	db 37, SLUDGE_BOMB
	db 41, ACID_ARMOR
	db 46, BEAT_UP
	db 0 ; no more level-up moves

MukEvosAttacks:
	db 0 ; no more evolutions
	; moves are not sorted by level
	db 1, POUND
	db 1, POISON_GAS
	db 8, PURSUIT
	db 14, HARDEN
	db 18, SLUDGE
	db 21, MINIMIZE
	db 27, FAINT_ATTACK
	db 33, DISABLE
	db 40, SLUDGE_BOMB
	db 44, ACID_ARMOR
	db 50, BEAT_UP
	db 0 ; no more level-up moves

ShellderEvosAttacks:
	db EVOLVE_ITEM, WATER_STONE, CLOYSTER
	db 0 ; no more evolutions
	db 1, RAPID_SPIN
	db 1, WITHDRAW
	db 7, CLAMP
	db 14, SUPERSONIC
	db 19, AURORA_BEAM
	db 26, BUBBLEBEAM
	db 31, PROTECT
	db 37, REFLECT
	db 45, HYDRO_PUMP
	db 0 ; no more level-up moves

CloysterEvosAttacks:
	db 0 ; no more evolutions
	db 1, WITHDRAW
	db 1, CLAMP
	db 1, AURORA_BEAM
	db 1, PROTECT
	db 37, SPIKE_CANNON
	db 45, SPIKES
	db 0 ; no more level-up moves

GastlyEvosAttacks:
	db EVOLVE_LEVEL, 25, HAUNTER
	db 0 ; no more evolutions
	db 1, LICK
	db 1, HYPNOSIS
	db 8, SPITE
	db 13, POISON_GAS
	db 16, NIGHT_SHADE
	db 21, CONFUSE_RAY
	db 24, CURSE
	db 28, NIGHTMARE
	db 34, MEAN_LOOK
	db 39, DREAM_EATER
	db 42, DESTINY_BOND
	db 0 ; no more level-up moves

HaunterEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, GENGAR
	db 0 ; no more evolutions
	db 1, LICK
	db 1, HYPNOSIS
	db 8, SPITE
	db 13, POISON_GAS
	db 16, NIGHT_SHADE
	db 21, CONFUSE_RAY
	db 24, CURSE
	db 31, NIGHTMARE
	db 38, MEAN_LOOK
	db 45, DREAM_EATER
	db 50, DESTINY_BOND
	db 0 ; no more level-up moves

GengarEvosAttacks:
	db 0 ; no more evolutions
	db 1, LICK
	db 1, HYPNOSIS
	db 8, SPITE
	db 13, POISON_GAS
	db 16, NIGHT_SHADE
	db 21, CONFUSE_RAY
	db 24, CURSE
	db 31, NIGHTMARE
	db 38, MEAN_LOOK
	db 45, DREAM_EATER
	db 50, DESTINY_BOND
	db 0 ; no more level-up moves

OnixEvosAttacks:
	db EVOLVE_ITEM, METAL_COAT, STEELIX
	db 0 ; no more evolutions
	db 1, BIND
	db 1, SCREECH
	db 10, ROCK_THROW
	db 17, MAGNITUDE
	db 21, RAGE
	db 23, SANDSTORM
	db 27, SLAM
	db 33, ROCK_SLIDE
	db 37, EARTHQUAKE
	db 44, GUILLOTINE
	db 50, FLAIL
	db 0 ; no more level-up moves

DrowzeeEvosAttacks:
	db EVOLVE_LEVEL, 26, HYPNO
	db 0 ; no more evolutions
	db 1, POUND
	db 1, HYPNOSIS
	db 8, DISABLE
	db 12, CONFUSION
	db 16, PURSUIT
	db 21, HEADBUTT
	db 24, POISON_GAS
	db 27, FAINT_ATTACK
	db 31, MEDITATE
	db 34, PSYCHIC_M
	db 38, CURSE
	db 43, DREAM_EATER
	db 0 ; no more level-up moves

HypnoEvosAttacks:
	db 0 ; no more evolutions
	db 1, POUND
	db 1, HYPNOSIS
	db 8, DISABLE
	db 12, CONFUSION
	db 16, PURSUIT
	db 21, HEADBUTT
	db 24, POISON_GAS
	db 31, FAINT_ATTACK
	db 34, MEDITATE
	db 38, PSYCHIC_M
	db 43, CURSE
	db 50, DREAM_EATER
	db 0 ; no more level-up moves

KrabbyEvosAttacks:
	db EVOLVE_LEVEL, 28, KINGLER
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 3, LEER
	db 9, VICEGRIP
	db 13, MUD_SLAP
	db 16, HARDEN
	db 21, STOMP
	db 26, CRABHAMMER
	db 35, VITAL_THROW
	db 31, PROTECT
	db 44, GUILLOTINE
	db 0 ; no more level-up moves

KinglerEvosAttacks:
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 3, LEER
	db 9, VICEGRIP
	db 13, MUD_SLAP
	db 16, HARDEN
	db 21, STOMP
	db 26, CRABHAMMER
	db 28, METAL_CLAW
	db 38, VITAL_THROW
	db 43, PROTECT
	db 50, GUILLOTINE
	db 0 ; no more level-up moves

VoltorbEvosAttacks:
	db EVOLVE_LEVEL, 30, ELECTRODE
	db 0 ; no more evolutions
	db 1, ROLLOUT
	db 1, THUNDERSHOCK
	db 10, SCREECH
	db 14, SONICBOOM
	db 19, SPARK
	db 24, SELFDESTRUCT
	db 28, SWIFT
	db 35, THUNDERBOLT
	db 41, EXPLOSION
	db 45, MIRROR_COAT
	db 0 ; no more level-up moves

ElectrodeEvosAttacks:
	db 0 ; no more evolutions
	db 1, ROLLOUT
	db 1, THUNDERSHOCK
	db 10, SCREECH
	db 14, SONICBOOM
	db 19, SPARK
	db 24, SELFDESTRUCT
	db 28, SWIFT
	db 30, REFLECT
	db 30, LIGHT_SCREEN
	db 37, THUNDERBOLT
	db 45, EXPLOSION
	db 50, MIRROR_COAT
	db 0 ; no more level-up moves

ExeggcuteEvosAttacks:
	db EVOLVE_ITEM, LEAF_STONE, EXEGGUTOR
	db 0 ; no more evolutions
	db 1, ABSORB
	db 1, HYPNOSIS
	db 12, CONFUSION
	db 15, REFLECT
	db 25, STUN_SPORE
	db 28, POISONPOWDER
	db 31, SLEEP_POWDER
	db 37, PSYCHIC_M
	db 43, SOLARBEAM
	db 0 ; no more level-up moves

ExeggutorEvosAttacks:
	db 0 ; no more evolutions
	db 1, REFLECT
	db 1, HYPNOSIS
	db 1, ABSORB
	db 1, CONFUSION
	db 19, STOMP
	db 23, MEGA_DRAIN
	db 31, GIGA_DRAIN
	db 0 ; no more level-up moves

CuboneEvosAttacks:
	db EVOLVE_LEVEL, 28, MAROWAK
	db 0 ; no more evolutions
	db 1, LEER
	db 1, GROWL
	db 6, BONE_CLUB
	db 10, RAGE
	db 16, FOCUS_ENERGY
	db 22, BONEMERANG
	db 25, HEADBUTT
	db 33, THRASH
	db 39, SPITE
	db 42, BONE_RUSH
	db 0 ; no more level-up moves

MarowakEvosAttacks:
	db 0 ; no more evolutions
	db 1, LEER
	db 1, GROWL
	db 6, BONE_CLUB
	db 10, RAGE
	db 16, FOCUS_ENERGY
	db 22, BONEMERANG
	db 25, HEADBUTT
	db 28, CURSE
	db 37, THRASH
	db 44, SPITE
	db 50, BONE_RUSH
	db 0 ; no more level-up moves

HitmonleeEvosAttacks:
	db 0 ; no more evolutions
	db 20, DOUBLE_KICK
	db 20, MEDITATE
	db 23, FAINT_ATTACK
	db 26, JUMP_KICK
	db 31, ENDURE
	db 34, MIND_READER
	db 37, FORESIGHT
	db 41, HI_JUMP_KICK
	db 44, REVERSAL
	db 49, MEGA_KICK
	db 0 ; no more level-up moves

HitmonchanEvosAttacks:
	db 0 ; no more evolutions
	db 20, COMET_PUNCH
	db 20, AGILITY
	db 25, PURSUIT
	db 30, FIRE_PUNCH
	db 30, ICE_PUNCH
	db 30, THUNDERPUNCH
	db 37, FORESIGHT
	db 41, MACH_PUNCH
	db 44, COUNTER
	db 49, MEGA_PUNCH
	db 0 ; no more level-up moves

LickitungEvosAttacks:
	db 0 ; no more evolutions
	db 1, LICK
	db 7, WRAP
	db 13, DEFENSE_CURL
	db 17, STOMP
	db 19, SUPERSONIC
	db 25, ROLLOUT
	db 29, DISABLE
	db 33, SLAM
	db 39, SCREECH
	db 45, BELLY_DRUM
	db 0 ; no more level-up moves

KoffingEvosAttacks:
	db EVOLVE_LEVEL, 35, WEEZING
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, POISON_GAS
	db 8, SMOG
	db 14, SMOKESCREEN
	db 18, SELFDESTRUCT
	db 21, SLUDGE
	db 27, HAZE
	db 33, PAIN_SPLIT
	db 37, SLUDGE_BOMB
	db 41, EXPLOSION
	db 46, DESTINY_BOND
	db 0 ; no more level-up moves

WeezingEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, POISON_GAS
	db 8, SMOG
	db 14, SMOKESCREEN
	db 18, SELFDESTRUCT
	db 21, SLUDGE
	db 27, HAZE
	db 33, PAIN_SPLIT
	db 40, SLUDGE_BOMB
	db 44, EXPLOSION
	db 50, DESTINY_BOND
	db 0 ; no more level-up moves

RhyhornEvosAttacks:
	db EVOLVE_LEVEL, 36, RHYDON
	db 0 ; no more evolutions
	db 1, HORN_ATTACK
	db 1, TAIL_WHIP
	db 8, ROCK_THROW
	db 13, STOMP
	db 16, FURY_ATTACK
	db 20, MAGNITUDE
	db 24, SCARY_FACE
	db 28, ROCK_SLIDE
	db 32, GUILLOTINE
	db 37, EARTHQUAKE
	db 43, DRILL_PECK
	db 47, MEGAHORN
	db 0 ; no more level-up moves

RhydonEvosAttacks:
	db 0 ; no more evolutions
	db 1, HORN_ATTACK
	db 1, TAIL_WHIP
	db 8, ROCK_THROW
	db 13, STOMP
	db 16, FURY_ATTACK
	db 20, MAGNITUDE
	db 24, SCARY_FACE
	db 28, ROCK_SLIDE
	db 32, GUILLOTINE
	db 36, MEGA_PUNCH
	db 40, EARTHQUAKE
	db 46, DRILL_PECK
	db 52, MEGAHORN
	db 0 ; no more level-up moves

ChanseyEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, BLISSEY
	db 0 ; no more evolutions
	db 1, POUND
	db 5, GROWL
	db 10, SOFTBOILED
	db 14, DOUBLESLAP
	db 18, MINIMIZE
	db 23, SING
	db 28, RETURN
	db 33, DEFENSE_CURL
	db 38, LIGHT_SCREEN
	db 46, HEAL_BELL
	db 0 ; no more level-up moves

TangelaEvosAttacks:
	db 0 ; no more evolutions
	db 1, VINE_WHIP
	db 3, SLEEP_POWDER
	db 10, ABSORB
	db 13, POISONPOWDER
	db 17, BIND
	db 23, STUN_SPORE
	db 27, MEGA_DRAIN
	db 31, SLAM
	db 36, GROWTH
	db 40, SYNTHESIS
	db 44, GIGA_DRAIN
	db 48, SOLARBEAM
	db 0 ; no more level-up moves

KangaskhanEvosAttacks:
	db 0 ; no more evolutions
	db 1, COMET_PUNCH
	db 1, LEER
	db 7, BITE
	db 7, RAGE
	db 14, DIZZY_PUNCH
	db 21, ENDURE
	db 28, MEGA_PUNCH
	db 35, FLAIL
	db 42, FORESIGHT
	db 49, REVERSAL
	db 0 ; no more level-up moves

HorseaEvosAttacks:
	db EVOLVE_LEVEL, 32, SEADRA
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 7, SMOKESCREEN
	db 14, AGILITY
	db 19, TWISTER
	db 22, BUBBLEBEAM
	db 25, DRAGON_RAGE
	db 29, AURORA_BEAM
	db 35, RAIN_DANCE
	db 42, HYDRO_PUMP
	db 0 ; no more level-up moves

SeadraEvosAttacks:
	db EVOLVE_ITEM, DRAGON_SCALE, KINGDRA
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 7, SMOKESCREEN
	db 14, AGILITY
	db 19, TWISTER
	db 22, BUBBLEBEAM
	db 25, DRAGON_RAGE
	db 29, AURORA_BEAM
	db 37, RAIN_DANCE
	db 45, HYDRO_PUMP
	db 0 ; no more level-up moves

GoldeenEvosAttacks:
	db EVOLVE_LEVEL, 33, SEAKING
	db 0 ; no more evolutions
	db 1, PECK
	db 1, TAIL_WHIP
	db 5, WATER_GUN
	db 9, HORN_ATTACK
	db 12, SUPERSONIC
	db 16, FURY_ATTACK
	db 20, FLAIL
	db 25, WATERFALL
	db 29, DRILL_PECK
	db 33, SPIKE_CANNON
	db 36, PIN_MISSILE
	db 42, AGILITY
	db 48, GUILLOTINE
	db 0 ; no more level-up moves

SeakingEvosAttacks:
	db 0 ; no more evolutions
	db 1, PECK
	db 1, TAIL_WHIP
	db 5, WATER_GUN
	db 9, HORN_ATTACK
	db 12, SUPERSONIC
	db 16, FURY_ATTACK
	db 20, FLAIL
	db 25, WATERFALL
	db 29, DRILL_PECK
	db 35, SPIKE_CANNON
	db 39, PIN_MISSILE
	db 45, AGILITY
	db 52, GUILLOTINE
	db 0 ; no more level-up moves

StaryuEvosAttacks:
	db EVOLVE_ITEM, WATER_STONE, STARMIE
	db 0 ; no more evolutions
	db 1, RAPID_SPIN
	db 1, HARDEN
	db 7, WATER_GUN
	db 14, SWIFT
	db 19, RECOVER
	db 26, BUBBLEBEAM
	db 31, MINIMIZE
	db 37, LIGHT_SCREEN
	db 45, HYDRO_PUMP
	db 0 ; no more level-up moves

StarmieEvosAttacks:
	db 0 ; no more evolutions
	db 1, RAPID_SPIN
	db 1, HARDEN
	db 1, RECOVER
	db 1, BUBBLEBEAM
	db 37, CONFUSE_RAY
	db 45, PSYCHIC_M
	db 0 ; no more level-up moves

MrMimeEvosAttacks:
	db 0 ; no more evolutions
	db 1, BARRIER
	db 6, CONFUSION
	db 11, SUBSTITUTE
	db 16, DOUBLESLAP
	db 21, MIMIC
	db 26, LIGHT_SCREEN
	db 26, REFLECT
	db 31, PSYBEAM
	db 36, ENCORE
	db 41, BATON_PASS
	db 46, PSYCHIC_M
	db 51, SAFEGUARD
	db 0 ; no more level-up moves

ScytherEvosAttacks:
	db EVOLVE_ITEM, METAL_COAT, SCIZOR
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 1, LEER
	db 6, FOCUS_ENERGY
	db 12, PURSUIT
	db 18, FALSE_SWIPE
	db 24, AGILITY
	db 30, WING_ATTACK
	db 33, SLASH
	db 37, SWORDS_DANCE
	db 43, DOUBLE_TEAM
	db 48, BATON_PASS
	db 0 ; no more level-up moves

JynxEvosAttacks:
	db 0 ; no more evolutions
    db 1, POWDER_SNOW
	db 7, SWEET_KISS
	db 13, LICK
	db 19, ICE_PUNCH
	db 25, DOUBLESLAP
	db 30, PSYBEAM
	db 33, LOVELY_KISS
	db 39, ICE_BEAM
	db 42, PERISH_SONG
	db 45, PSYCHIC_M
	db 50, BLIZZARD
	db 0 ; no more level-up moves

ElectabuzzEvosAttacks:
	db 0 ; no more evolutions
	db 1, THUNDERSHOCK
	db 7, LEER
	db 13, QUICK_ATTACK
	db 19, THUNDERPUNCH
	db 25, LIGHT_SCREEN
	db 30, KARATE_CHOP
	db 33, RAIN_DANCE
	db 39, THUNDERBOLT
	db 42, SCREECH
	db 45, MEGA_PUNCH
	db 50, THUNDER
	db 0 ; no more level-up moves

MagmarEvosAttacks:
	db 0 ; no more evolutions
	db 1, EMBER
	db 7, LEER
	db 13, SMOG
	db 19, FIRE_PUNCH
	db 25, SMOKESCREEN
	db 30, SLUDGE
	db 33, SUNNY_DAY
	db 39, FLAMETHROWER
	db 42, CONFUSE_RAY
	db 45, SLUDGE_BOMB
	db 50, FIRE_BLAST
	db 0 ; no more level-up moves

PinsirEvosAttacks:
	db 0 ; no more evolutions
	db 1, VICEGRIP
	db 1, FOCUS_ENERGY
	db 8, BIND
	db 15, VITAL_THROW
	db 21, LEECH_LIFE
	db 26, SEISMIC_TOSS
	db 31, SWORDS_DANCE
	db 40, SUBMISSION
	db 46, ROCK_SLIDE
	db 0 ; no more level-up moves

TaurosEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, TAIL_WHIP
	db 8, RAGE
	db 13, HORN_ATTACK
	db 19, SCARY_FACE
	db 23, PURSUIT
	db 27, REST
	db 32, DOUBLE_KICK
	db 37, THRASH
	db 42, SWAGGER
	db 50, DOUBLE_EDGE
	db 0 ; no more level-up moves

MagikarpEvosAttacks:
	db EVOLVE_LEVEL, 20, GYARADOS
	db 0 ; no more evolutions
	db 1, SPLASH
	db 15, TACKLE
	db 30, FLAIL
	db 0 ; no more level-up moves

GyaradosEvosAttacks:
	db 0 ; no more evolutions
	db 1, THRASH
	db 20, BITE
	db 25, DRAGON_RAGE
	db 30, TWISTER
	db 35, CRUNCH
	db 40, HYDRO_PUMP
	db 45, RAZOR_LEAF
	db 50, HYPER_BEAM
	db 55, OUTRAGE
	db 0 ; no more level-up moves

LaprasEvosAttacks:
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 1, SING
	db 4, GROWL
	db 9, MIST
	db 14, BODY_SLAM
	db 19, CONFUSE_RAY
	db 24, BUBBLEBEAM
	db 29, PERISH_SONG
	db 34, ICE_BEAM
	db 39, RAIN_DANCE
	db 44, SAFEGUARD
	db 49, HYDRO_PUMP
	db 0 ; no more level-up moves

DittoEvosAttacks:
	db 0 ; no more evolutions
	db 1, TRANSFORM
	db 0 ; no more level-up moves

EeveeEvosAttacks:
	db EVOLVE_ITEM, THUNDERSTONE, JOLTEON
	db EVOLVE_ITEM, WATER_STONE, VAPOREON
	db EVOLVE_ITEM, FIRE_STONE, FLAREON
	db EVOLVE_HAPPINESS, TR_MORNDAY, ESPEON
	db EVOLVE_HAPPINESS, TR_NITE, UMBREON
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 7, SAND_ATTACK
	db 15, QUICK_ATTACK
	db 21, BITE
	db 26, HEADBUTT
	db 30, SWEET_KISS
	db 34, CHARM
	db 38, FOCUS_ENERGY
	db 41, TAKE_DOWN
	db 45, BATON_PASS
	db 0 ; no more level-up moves

VaporeonEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 7, WATER_GUN
	db 15, QUICK_ATTACK
	db 21, ACID
	db 26, BUBBLEBEAM
	db 30, AURORA_BEAM
	db 36, ACID_ARMOR
	db 41, RAIN_DANCE
	db 47, HYDRO_PUMP
	db 50, BATON_PASS
	db 0 ; no more level-up moves

JolteonEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 7, THUNDERSHOCK
	db 15, QUICK_ATTACK
	db 21, DOUBLE_KICK
	db 26, SPARK
	db 30, PIN_MISSILE
	db 36, AGILITY
	db 41, THUNDER_WAVE
	db 47, THUNDER
	db 50, BATON_PASS
	db 0 ; no more level-up moves

FlareonEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 7, EMBER
	db 15, QUICK_ATTACK
	db 21, SMOG
	db 26, FLAME_WHEEL
	db 30, REVERSAL
	db 36, SWORDS_DANCE
	db 41, SUNNY_DAY
	db 47, FIRE_BLAST
	db 50, BATON_PASS
	db 0 ; no more level-up moves

PorygonEvosAttacks:
	db EVOLVE_ITEM, UP_GRADE, PORYGON2
	db 0 ; no more evolutions
	db 1, CONVERSION
	db 1, CONVERSION2
	db 1, SWIFT
	db 8, SHARPEN
	db 14, AGILITY
	db 19, PSYBEAM
	db 24, RECOVER
	db 31, TRI_ATTACK
	db 36, LOCK_ON
	db 44, ZAP_CANNON
	db 0 ; no more level-up moves

OmanyteEvosAttacks:
	db EVOLVE_LEVEL, 30, OMASTAR
	db 0 ; no more evolutions
	db 1, CONSTRICT
	db 1, WITHDRAW
	db 8, WATER_GUN
	db 13, BITE
	db 18, ANCIENTPOWER
	db 23, PROTECT
	db 27, BUBBLEBEAM
	db 34, ROCK_SLIDE
	db 39, RAIN_DANCE
	db 39, SANDSTORM
	db 44, HYDRO_PUMP
	db 0 ; no more level-up moves

OmastarEvosAttacks:
	db 0 ; no more evolutions
	db 1, CONSTRICT
	db 1, WITHDRAW
	db 8, WATER_GUN
	db 13, BITE
	db 18, ANCIENTPOWER
	db 23, PROTECT
	db 27, BUBBLEBEAM
	db 30, SPIKE_CANNON
	db 37, ROCK_SLIDE
	db 43, RAIN_DANCE
	db 43, SANDSTORM
	db 50, HYDRO_PUMP
	db 0 ; no more level-up moves

KabutoEvosAttacks:
	db EVOLVE_LEVEL, 30, KABUTOPS
	db 0 ; no more evolutions
	db 1, RAPID_SPIN
	db 1, HARDEN
	db 8, WATER_GUN
	db 13, LEECH_LIFE
	db 18, ANCIENTPOWER
	db 23, ENDURE
	db 27, BUBBLEBEAM
	db 34, ROCK_SLIDE
	db 39, RAIN_DANCE
	db 39, SANDSTORM
	db 44, HYDRO_PUMP
	db 0 ; no more level-up moves

KabutopsEvosAttacks:
	db 0 ; no more evolutions
	db 1, RAPID_SPIN
	db 1, HARDEN
	db 8, WATER_GUN
	db 13, LEECH_LIFE
	db 18, ANCIENTPOWER
	db 23, ENDURE
	db 27, BUBBLEBEAM
	db 30, SLASH
	db 37, ROCK_SLIDE
	db 43, RAIN_DANCE
	db 43, SANDSTORM
	db 50, HYDRO_PUMP
	db 0 ; no more level-up moves

AerodactylEvosAttacks:
	db 0 ; no more evolutions
	db 1, WING_ATTACK
	db 1, SUPERSONIC
	db 4, SCARY_FACE
	db 9, BITE
	db 14, TAKE_DOWN
	db 19, SWAGGER
	db 24, ANCIENTPOWER
	db 29, CRUNCH
	db 34, ROCK_SLIDE
	db 39, DOUBLE_EDGE
	db 44, RAZOR_WIND
	db 49, HYPER_BEAM
	db 0 ; no more level-up moves

SnorlaxEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 8, AMNESIA
	db 15, DEFENSE_CURL
	db 22, BELLY_DRUM
	db 29, HEADBUTT
	db 36, SNORE
	db 36, REST
	db 43, BODY_SLAM
	db 50, ROLLOUT
	db 57, HYPER_BEAM
	db 0 ; no more level-up moves

ArticunoEvosAttacks:
	db 0 ; no more evolutions
	db 1, GUST
	db 11, POWDER_SNOW
	db 21, MIST
	db 31, ICE_BEAM
	db 41, RAZOR_WIND
	db 51, REFLECT
	db 61, MIND_READER
	db 71, BLIZZARD
	db 81, AGILITY
	db 0 ; no more level-up moves

ZapdosEvosAttacks:
	db 0 ; no more evolutions
	db 1, PECK
	db 11, THUNDERSHOCK
	db 21, THUNDER_WAVE
	db 31, THUNDERBOLT
	db 41, DRILL_PECK
	db 51, LIGHT_SCREEN
	db 61, DETECT
	db 71, THUNDER
	db 81, AGILITY
	db 0 ; no more level-up moves

MoltresEvosAttacks:
	db 0 ; no more evolutions
	db 1, WING_ATTACK
	db 11, EMBER
	db 21, FIRE_SPIN
	db 31, FLAMETHROWER
	db 41, SKY_ATTACK
	db 51, SAFEGUARD
	db 61, ENDURE
	db 71, FIRE_BLAST
	db 81, AGILITY
	db 0 ; no more level-up moves

DratiniEvosAttacks:
	db EVOLVE_LEVEL, 30, DRAGONAIR
	db 0 ; no more evolutions
	db 1, WRAP
	db 1, LEER
	db 8, THUNDER_WAVE
	db 12, TWISTER
	db 16, DRAGON_RAGE
	db 24, WATERFALL
	db 28, SLAM
	db 34, AGILITY
	db 40, SAFEGUARD
	db 48, OUTRAGE
	db 54, HYPER_BEAM
	db 0 ; no more level-up moves

DragonairEvosAttacks:
	db EVOLVE_LEVEL, 55, DRAGONITE
	db 0 ; no more evolutions
	db 1, WRAP
	db 1, LEER
	db 8, THUNDER_WAVE
	db 12, TWISTER
	db 16, DRAGON_RAGE
	db 24, WATERFALL
	db 28, SLAM
	db 37, AGILITY
	db 45, SAFEGUARD
	db 56, OUTRAGE
	db 60, HYPER_BEAM
	db 0 ; no more level-up moves

DragoniteEvosAttacks:
	db 0 ; no more evolutions
	db 1, WRAP
	db 1, LEER
	db 8, THUNDER_WAVE
	db 12, TWISTER
	db 16, DRAGON_RAGE
	db 24, WATERFALL
	db 28, SLAM
	db 37, AGILITY
	db 45, SAFEGUARD
	db 55, WING_ATTACK
	db 60, OUTRAGE
	db 65, HYPER_BEAM
	db 0 ; no more level-up moves

MewtwoEvosAttacks:
	db 0 ; no more evolutions
	db 1, CONFUSION
	db 1, DISABLE
	db 11, BARRIER
	db 22, SWIFT
	db 33, PSYCH_UP
	db 44, FUTURE_SIGHT
	db 55, MIST
	db 66, PSYCHIC_M
	db 77, AMNESIA
	db 88, RECOVER
	db 99, SAFEGUARD
	db 0 ; no more level-up moves

MewEvosAttacks:
	db 0 ; no more evolutions
	db 1, CONFUSION
	db 1, POUND
	db 1, TRANSFORM
	db 1, METRONOME
	db 10, SAFEGUARD
	db 20, MEGA_PUNCH
	db 30, PSYCHIC_M
	db 40, BATON_PASS
	db 50, ANCIENTPOWER
	db 0 ; no more level-up moves

ChikoritaEvosAttacks:
	db EVOLVE_LEVEL, 16, BAYLEEF
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, SWEET_SCENT
	db 8, RAZOR_LEAF
	db 11, LEECH_SEED
	db 15, REFLECT
	db 15, LIGHT_SCREEN
	db 20, BODY_SLAM
	db 23, MEGA_DRAIN
	db 26, SAFEGUARD
	db 30, SYNTHESIS
	db 34, GROWTH
	db 38, BATON_PASS
	db 43, HEAL_BELL
	db 50, SOLARBEAM
	db 0 ; no more level-up moves

BayleefEvosAttacks:
	db EVOLVE_LEVEL, 32, MEGANIUM
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, SWEET_SCENT
	db 8, RAZOR_LEAF
	db 11, LEECH_SEED
	db 15, REFLECT
	db 15, LIGHT_SCREEN
	db 20, BODY_SLAM
	db 25, MEGA_DRAIN
	db 28, SAFEGUARD
	db 30, ANCIENTPOWER
	db 33, SYNTHESIS
	db 36, GROWTH
	db 40, BATON_PASS
	db 46, HEAL_BELL
	db 53, SOLARBEAM
	db 0 ; no more level-up moves

MeganiumEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, SWEET_SCENT
	db 8, RAZOR_LEAF
	db 11, LEECH_SEED
	db 15, REFLECT
	db 15, LIGHT_SCREEN
	db 20, BODY_SLAM
	db 25, MEGA_DRAIN
	db 28, SAFEGUARD
	db 30, ANCIENTPOWER
	db 32, PETAL_DANCE
	db 35, SYNTHESIS
	db 38, GROWTH
	db 44, BATON_PASS
	db 49, HEAL_BELL
	db 56, SOLARBEAM
	db 0 ; no more level-up moves

CyndaquilEvosAttacks:
	db EVOLVE_LEVEL, 14, QUILAVA
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 6, EMBER
	db 9, SMOKESCREEN
	db 12, QUICK_ATTACK
	db 15, FLAME_WHEEL
	db 18, ROLLOUT
	db 23, SWIFT
	db 27, FIRE_SPIN
	db 30, DEFENSE_CURL
	db 34, FLAMETHROWER
	db 38, SUNNY_DAY
	db 43, EXTREMESPEED
	db 50, FIRE_BLAST
	db 0 ; no more level-up moves

QuilavaEvosAttacks:
	db EVOLVE_LEVEL, 36, TYPHLOSION
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 6, EMBER
	db 9, SMOKESCREEN
	db 12, QUICK_ATTACK
	db 16, FLAME_WHEEL
	db 20, ROLLOUT
	db 25, SWIFT
	db 30, FIRE_SPIN
	db 33, DIG
	db 36, DEFENSE_CURL
	db 38, FLAMETHROWER
	db 42, SUNNY_DAY
	db 46, EXTREMESPEED
	db 53, FIRE_BLAST
	db 0 ; no more level-up moves

TyphlosionEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 6, EMBER
	db 9, SMOKESCREEN
	db 12, QUICK_ATTACK
	db 16, FLAME_WHEEL
	db 20, ROLLOUT
	db 25, SWIFT
	db 30, FIRE_SPIN
	db 33, DIG
	db 36, OUTRAGE
	db 37, DEFENSE_CURL
	db 40, FLAMETHROWER
	db 46, SUNNY_DAY
	db 50, EXTREMESPEED
	db 56, FIRE_BLAST
	db 0 ; no more level-up moves

TotodileEvosAttacks:
	db EVOLVE_LEVEL, 18, CROCONAW
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 7, WATER_GUN
	db 10, SCARY_FACE
	db 13, RAGE
	db 15, BITE
	db 20, HYPER_FANG
	db 23, WATERFALL
	db 26, VITAL_THROW
	db 30, CRUNCH
	db 34, ROCK_SLIDE
	db 38, RAIN_DANCE
	db 43, SUPER_FANG
	db 50, HYDRO_PUMP
	db 0 ; no more level-up moves

CroconawEvosAttacks:
	db EVOLVE_LEVEL, 30, FERALIGATR
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 7, WATER_GUN
	db 10, SCARY_FACE
	db 13, RAGE
	db 15, BITE
	db 22, HYPER_FANG
	db 25, WATERFALL
	db 28, VITAL_THROW
	db 30, SCREECH
	db 34, CRUNCH
	db 38, ROCK_SLIDE
	db 41, RAIN_DANCE
	db 46, SUPER_FANG
	db 53, HYDRO_PUMP
	db 0 ; no more level-up moves

FeraligatrEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 7, WATER_GUN
	db 10, SCARY_FACE
	db 13, RAGE
	db 15, BITE
	db 22, HYPER_FANG
	db 25, WATERFALL
	db 28, VITAL_THROW
	db 30, THRASH
	db 32, SCREECH
	db 36, CRUNCH
	db 42, ROCK_SLIDE
	db 46, RAIN_DANCE
	db 50, SUPER_FANG
	db 56, HYDRO_PUMP
	db 0 ; no more level-up moves

SentretEvosAttacks:
	db EVOLVE_LEVEL, 15, FURRET
	db 0 ; no more evolutions
	db 1, TACKLE
	db 5, DEFENSE_CURL
	db 8, QUICK_ATTACK
	db 13, FURY_SWIPES
	db 17, ROLLOUT
	db 21, ENDURE
	db 25, SLAM
	db 29, REST
	db 33, FLAIL
	db 40, SNORE
	db 0 ; no more level-up moves

FurretEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 5, DEFENSE_CURL
	db 8, QUICK_ATTACK
	db 13, FURY_SWIPES
	db 20, ROLLOUT
	db 23, ENDURE
	db 27, SLAM
	db 31, REST
	db 35, FLAIL
	db 42, SNORE
	db 46, BELLY_DRUM
	db 0 ; no more level-up moves

HoothootEvosAttacks:
	db EVOLVE_LEVEL, 20, NOCTOWL
	db 0 ; no more evolutions
	db 1, PECK
	db 1, GROWL
	db 8, HYPNOSIS
	db 13, CONFUSION
	db 18, REFLECT
	db 23, NIGHTMARE
	db 28, WING_ATTACK
	db 32, AMNESIA
	db 38, BATON_PASS
	db 43, DREAM_EATER
	db 0 ; no more level-up moves

NoctowlEvosAttacks:
	db 0 ; no more evolutions
	db 1, PECK
	db 1, GROWL
	db 8, HYPNOSIS
	db 13, CONFUSION
	db 18, REFLECT
	db 25, NIGHTMARE
	db 30, WING_ATTACK
	db 35, AMNESIA
	db 40, BATON_PASS
	db 45, DREAM_EATER
	db 50, CURSE
	db 0 ; no more level-up moves

LedybaEvosAttacks:
	db EVOLVE_LEVEL, 15, LEDIAN
	db 0 ; no more evolutions
	db 1, SWIFT
	db 5, SUPERSONIC
	db 9, GUST
	db 15, COMET_PUNCH
	db 20, LIGHT_SCREEN
	db 20, REFLECT
	db 20, SAFEGUARD
	db 26, DIZZY_PUNCH
	db 34, AGILITY
	db 40, BATON_PASS
	db 0 ; no more level-up moves

LedianEvosAttacks:
	db 0 ; no more evolutions
	db 1, SWIFT
	db 5, SUPERSONIC
	db 9, GUST
	db 15, COMET_PUNCH
	db 22, LIGHT_SCREEN
	db 22, REFLECT
	db 22, SAFEGUARD
	db 29, DIZZY_PUNCH
	db 36, AGILITY
	db 42, BATON_PASS
	db 48, MACH_PUNCH
	db 0 ; no more level-up moves

SpinarakEvosAttacks:
	db EVOLVE_LEVEL, 15, ARIADOS
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 5, STRING_SHOT
	db 9, BITE
	db 15, CONSTRICT
	db 20, LEECH_LIFE
	db 24, SCARY_FACE
	db 29, MEAN_LOOK
	db 33, SPIKES
	db 36, CRUNCH
	db 40, BATON_PASS
	db 0 ; no more level-up moves

AriadosEvosAttacks:
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 5, STRING_SHOT
	db 9, BITE
	db 15, CONSTRICT
	db 20, LEECH_LIFE
	db 26, SCARY_FACE
	db 31, MEAN_LOOK
	db 35, SPIKES
	db 40, CRUNCH
	db 44, BATON_PASS
	db 48, MEGAHORN
	db 0 ; no more level-up moves

CrobatEvosAttacks:
	db 0 ; no more evolutions
	db 1, TOXIC
	db 1, QUICK_ATTACK
	db 3, SUPERSONIC
	db 6, POISON_STING
	db 10, BITE
	db 14, WING_ATTACK
	db 19, CONFUSE_RAY
	db 26, LEECH_LIFE
	db 30, SCREECH
	db 35, MEAN_LOOK
	db 40, DOUBLE_TEAM
	db 46, HAZE
	db 50, RAZOR_WIND
	db 0 ; no more level-up moves

ChinchouEvosAttacks:
	db EVOLVE_LEVEL, 27, LANTURN
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 1, THUNDER_WAVE
	db 5, SUPERSONIC
	db 13, FLAIL
	db 17, SPARK
	db 23, BUBBLEBEAM
	db 26, CONFUSE_RAY
	db 31, TAKE_DOWN
	db 35, RAIN_DANCE
	db 41, HYDRO_PUMP
	db 41, THUNDER
	db 0 ; no more level-up moves

LanturnEvosAttacks:
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 1, THUNDER_WAVE
	db 5, SUPERSONIC
	db 13, FLAIL
	db 17, SPARK
	db 23, BUBBLEBEAM
	db 26, CONFUSE_RAY
	db 34, TAKE_DOWN
	db 39, RAIN_DANCE
	db 45, HYDRO_PUMP
	db 45, THUNDER
	db 0 ; no more level-up moves

PichuEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, PIKACHU
	db 0 ; no more evolutions
	db 1, THUNDERSHOCK
	db 1, CHARM
	db 6, TAIL_WHIP
	db 8, THUNDER_WAVE
	db 11, SWEET_KISS
	db 0 ; no more level-up moves

CleffaEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, CLEFAIRY
	db 0 ; no more evolutions
	db 1, POUND
	db 1, CHARM
	db 4, ENCORE
	db 8, SING
	db 13, SWEET_KISS
	db 0 ; no more level-up moves

IgglybuffEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, JIGGLYPUFF
	db 0 ; no more evolutions
	db 1, POUND
	db 1, CHARM
	db 4, DEFENSE_CURL
	db 8, SING
	db 13, SWEET_KISS
	db 0 ; no more level-up moves

TogepiEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, TOGETIC
	db 0 ; no more evolutions
	db 1, METRONOME
	db 1, CHARM
	db 7, SWEET_KISS
	db 11, HEADBUTT
	db 16, ENCORE
	db 21, SAFEGUARD
	db 27, MIRROR_MOVE
	db 32, BATON_PASS
	db 40, RETURN
	db 0 ; no more level-up moves

TogeticEvosAttacks:
	db 0 ; no more evolutions
	db 1, METRONOME
	db 1, CHARM
	db 7, SWEET_KISS
	db 11, HEADBUTT
	db 15, WING_ATTACK
	db 16, ENCORE
	db 20, WING_ATTACK
	db 21, SAFEGUARD
	db 24, ANCIENTPOWER
	db 27, MIRROR_MOVE
	db 29, ANCIENTPOWER
	db 32, BATON_PASS
	db 33, BARRIER
	db 38, BARRIER
	db 40, RETURN
	db 0 ; no more level-up moves

NatuEvosAttacks:
	db EVOLVE_LEVEL, 25, XATU
	db 0 ; no more evolutions
	db 1, FUTURE_SIGHT
	db 1, TELEPORT
	db 10, PECK
	db 15, CONFUSION
	db 20, NIGHTMARE
	db 25, PSYBEAM
	db 30, CONFUSE_RAY
	db 35, HAZE
	db 40, DRILL_PECK
	db 45, PSYCHIC_M
	db 0 ; no more level-up moves

XatuEvosAttacks:
	db 0 ; no more evolutions
	db 1, FUTURE_SIGHT
	db 1, TELEPORT
	db 10, PECK
	db 15, CONFUSE_RAY
	db 20, NIGHTMARE
	db 25, FUTURE_SIGHT
	db 30, PSYBEAM
	db 35, CONFUSE_RAY
	db 40, HAZE
	db 45, DRILL_PECK
	db 50, PSYCHIC_M
	db 0 ; no more level-up moves

MareepEvosAttacks:
	db EVOLVE_LEVEL, 15, FLAAFFY
	db 0 ; no more evolutions
	db 1, TACKLE
	db 5, GROWL
	db 7, THUNDERSHOCK
	db 12, THUNDER_WAVE
	db 16, SPARK
	db 19, SWIFT
	db 24, COTTON_SPORE
	db 28, LIGHT_SCREEN
	db 33, THUNDERBOLT
	db 36, CONFUSE_RAY
	db 40, THUNDER
	db 0 ; no more level-up moves

FlaaffyEvosAttacks:
	db EVOLVE_LEVEL, 30, AMPHAROS
	db 0 ; no more evolutions
	db 1, TACKLE
	db 5, GROWL
	db 7, THUNDERSHOCK
	db 12, THUNDER_WAVE
	db 17, SPARK
	db 21, SWIFT
	db 26, COTTON_SPORE
	db 33, LIGHT_SCREEN
	db 38, THUNDERBOLT
	db 41, CONFUSE_RAY
	db 46, THUNDER
	db 0 ; no more level-up moves

AmpharosEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 5, GROWL
	db 7, THUNDERSHOCK
	db 12, THUNDER_WAVE
	db 17, SPARK
	db 21, SWIFT
	db 26, COTTON_SPORE
	db 30, TWISTER
	db 36, LIGHT_SCREEN
	db 42, THUNDERBOLT
	db 47, CONFUSE_RAY
	db 52, THUNDER
	db 0 ; no more level-up moves

BellossomEvosAttacks:
	db 0 ; no more evolutions
	db 1, MEGA_DRAIN
	db 1, SWEET_SCENT
	db 1, STUN_SPORE
	db 1, PETAL_DANCE
	db 45, LEECH_SEED
	db 50, SOLARBEAM
	db 0 ; no more level-up moves

MarillEvosAttacks:
	db EVOLVE_LEVEL, 18, AZUMARILL
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DEFENSE_CURL
	db 6, WATER_GUN
	db 12, TAIL_WHIP
	db 15, ROLLOUT
	db 21, BUBBLEBEAM
	db 26, TAKE_DOWN
	db 32, RAIN_DANCE
	db 36, DOUBLE_EDGE
	db 40, HYDRO_PUMP
	db 0 ; no more level-up moves

AzumarillEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DEFENSE_CURL
	db 6, WATER_GUN
	db 12, TAIL_WHIP
	db 15, ROLLOUT
	db 25, BUBBLEBEAM
	db 30, TAKE_DOWN
	db 36, RAIN_DANCE
	db 41, DOUBLE_EDGE
	db 48, HYDRO_PUMP
	db 0 ; no more level-up moves

SudowoodoEvosAttacks:
	db 0 ; no more evolutions
	db 1, MIMIC
	db 1, ROCK_THROW
	db 11, SLAM
	db 16, LOW_KICK
	db 21, ROCK_SLIDE
	db 26, FAINT_ATTACK
	db 31, FLAIL
	db 36, ENDURE
	db 41, REVERSAL
	db 46, MIRROR_MOVE
	db 0 ; no more level-up moves

PolitoedEvosAttacks:
	db 0 ; no more evolutions
	db 1, BUBBLEBEAM
	db 1, HYPNOSIS
	db 1, DOUBLESLAP
	db 1, PERISH_SONG
	db 35, PERISH_SONG
	db 50, HEAL_BELL
	db 0 ; no more level-up moves

HoppipEvosAttacks:
	db EVOLVE_LEVEL, 18, SKIPLOOM
	db 0 ; no more evolutions
	db 1, LEECH_SEED
	db 1, COTTON_SPORE
	db 5, GUST
	db 10, ABSORB
	db 13, POISONPOWDER
	db 15, STUN_SPORE
	db 17, SLEEP_POWDER
	db 20, MEGA_DRAIN
	db 25, ENCORE
	db 30, FLAIL
	db 35, SUBSTITUTE
	db 40, DESTINY_BOND
	db 0 ; no more level-up moves

SkiploomEvosAttacks:
	db EVOLVE_LEVEL, 27, JUMPLUFF
	db 0 ; no more evolutions
	db 1, LEECH_SEED
	db 1, COTTON_SPORE
	db 5, GUST
	db 10, ABSORB
	db 13, POISONPOWDER
	db 15, STUN_SPORE
	db 17, SLEEP_POWDER
	db 23, MEGA_DRAIN
	db 28, ENCORE
	db 33, FLAIL
	db 38, SUBSTITUTE
	db 43, DESTINY_BOND
	db 0 ; no more level-up moves

JumpluffEvosAttacks:
	db 0 ; no more evolutions
	db 1, LEECH_SEED
	db 1, COTTON_SPORE
	db 5, GUST
	db 10, ABSORB
	db 13, POISONPOWDER
	db 15, STUN_SPORE
	db 17, SLEEP_POWDER
	db 23, MEGA_DRAIN
	db 30, ENCORE
	db 35, FLAIL
	db 40, SUBSTITUTE
	db 45, DESTINY_BOND
	db 0 ; no more level-up moves

AipomEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, TAIL_WHIP
	db 6, AGILITY
	db 10, BATON_PASS
	db 14, FURY_SWIPES
	db 18, PURSUIT
	db 22, DOUBLE_TEAM
	db 26, SWIFT
	db 30, AMNESIA
	db 33, BEAT_UP
	db 36, BARRIER
	db 40, SWORDS_DANCE
	db 0 ; no more level-up moves

SunkernEvosAttacks:
	db EVOLVE_ITEM, SUN_STONE, SUNFLORA
	db 0 ; no more evolutions
	db 1, ABSORB
	db 4, GROWTH
	db 10, MEGA_DRAIN
	db 14, SUNNY_DAY
	db 19, SYNTHESIS
	db 24, GIGA_DRAIN
	db 0 ; no more level-up moves

SunfloraEvosAttacks:
	db 0 ; no more evolutions
	db 1, ABSORB
	db 4, GROWTH
	db 10, RAZOR_LEAF
	db 14, SUNNY_DAY
	db 19, FLAME_WHEEL
	db 24, PETAL_DANCE
	db 28, SLEEP_POWDER
	db 33, FLAMETHROWER
	db 38, AGILITY
	db 45, SOLARBEAM
	db 0 ; no more level-up moves

YanmaEvosAttacks:
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 3, SUPERSONIC
	db 8, GUST
	db 13, SONICBOOM
	db 18, PURSUIT
	db 23, LEECH_LIFE
	db 28, DETECT
	db 33, EXTREMESPEED
	db 38, SCREECH
	db 43, RAZOR_WIND
	db 48, REVERSAL
	db 0 ; no more level-up moves

WooperEvosAttacks:
	db EVOLVE_LEVEL, 20, QUAGSIRE
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 3, TAIL_WHIP
	db 11, FLAIL
	db 15, MAGNITUDE
	db 19, FORESIGHT
	db 23, AMNESIA
	db 29, EARTHQUAKE
	db 36, RAIN_DANCE
	db 43, MIST
	db 43, HAZE
	db 50, SNORE
	db 0 ; no more level-up moves

QuagsireEvosAttacks:
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 3, TAIL_WHIP
	db 11, FLAIL
	db 15, MAGNITUDE
	db 19, FORESIGHT
	db 20, DIZZY_PUNCH
	db 27, AMNESIA
	db 34, EARTHQUAKE
	db 41, RAIN_DANCE
	db 47, MIST
	db 47, HAZE
	db 55, SNORE
	db 0 ; no more level-up moves

EspeonEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 7, CONFUSION
	db 15, QUICK_ATTACK
	db 21, SWIFT
	db 26, PSYBEAM
	db 30, NIGHTMARE
	db 36, PSYCH_UP
	db 41, MORNING_SUN
	db 47, PSYCHIC_M
	db 50, BATON_PASS
	db 0 ; no more level-up moves

UmbreonEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 7, PURSUIT
	db 15, QUICK_ATTACK
	db 21, CONFUSE_RAY
	db 26, FAINT_ATTACK
	db 30, MIRROR_COAT
	db 36, MEAN_LOOK
	db 41, MOONLIGHT
	db 47, BEAT_UP
	db 50, BATON_PASS
	db 0 ; no more level-up moves

MurkrowEvosAttacks:
	db 0 ; no more evolutions
	db 1, THIEF
	db 1, PECK
	db 6, PURSUIT
	db 11, HAZE
	db 16, QUICK_ATTACK
	db 21, NIGHT_SHADE
	db 26, WING_ATTACK
	db 30, FAINT_ATTACK
	db 34, MEAN_LOOK
	db 39, DRILL_PECK
	db 45, BEAT_UP
	db 0 ; no more level-up moves

SlowkingEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, CURSE
	db 6, GROWL
	db 10, WATER_GUN
	db 15, CONFUSION
	db 19, DISABLE
	db 23, HEADBUTT
	db 27, SWAGGER
	db 36, FUTURE_SIGHT
	db 43, RECOVER
	db 48, PSYCHIC_M
	db 0 ; no more level-up moves

MisdreavusEvosAttacks:
	db 0 ; no more evolutions
	db 1, PSYWAVE
	db 1, SCREECH
	db 5, NIGHTMARE
	db 10, PAIN_SPLIT
	db 15, PSYBEAM
	db 20, SPITE
	db 25, CONFUSE_RAY
	db 30, MEAN_LOOK
	db 35, PSYCHIC_M
	db 40, DESTINY_BOND
	db 45, CURSE
	db 50, PERISH_SONG
	db 0 ; no more level-up moves

UnownEvosAttacks:
	db 0 ; no more evolutions
	db 1, HIDDEN_POWER
	db 0 ; no more level-up moves

WobbuffetEvosAttacks:
	db 0 ; no more evolutions
	db 1, COUNTER
	db 1, MIRROR_COAT
	db 1, SAFEGUARD
	db 1, DESTINY_BOND
	db 0 ; no more level-up moves

GirafarigEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 8, CONFUSION
	db 13, AGILITY
	db 17, STOMP
	db 22, BATON_PASS
	db 29, TAKE_DOWN
	db 34, PSYBEAM
	db 38, CRUNCH
	db 43, DOUBLE_EDGE
	db 50, PSYCHIC_M
	db 0 ; no more level-up moves

PinecoEvosAttacks:
	db EVOLVE_LEVEL, 31, FORRETRESS
	db 0 ; no more evolutions
	db 1, RAPID_SPIN
	db 1, PROTECT
	db 10, SELFDESTRUCT
	db 13, PIN_MISSILE
	db 16, DEFENSE_CURL
	db 20, BIDE
	db 23, BODY_SLAM
	db 27, ROLLOUT
	db 35, SPIKES
	db 38, EXPLOSION
	db 45, COUNTER
	db 0 ; no more level-up moves

ForretressEvosAttacks:
	db 0 ; no more evolutions
	db 1, RAPID_SPIN
	db 1, PROTECT
	db 10, SELFDESTRUCT
	db 13, PIN_MISSILE
	db 16, DEFENSE_CURL
	db 20, BIDE
	db 23, BODY_SLAM
	db 27, ROLLOUT
	db 31, GUILLOTINE
	db 33, ROLLOUT
	db 39, SPIKES
	db 45, EXPLOSION
	db 50, COUNTER
	db 0 ; no more level-up moves

DunsparceEvosAttacks:
	db 0 ; no more evolutions
	db 1, RAGE
	db 5, DEFENSE_CURL
	db 11, GLARE
	db 16, SPITE
	db 20, HEADBUTT
	db 25, PURSUIT
	db 29, SCREECH
	db 34, TAKE_DOWN
	db 40, CURSE
	db 46, DOUBLE_EDGE
	db 52, DRAGON_RAGE
	db 0 ; no more level-up moves

GligarEvosAttacks:
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 4, MUD_SLAP
	db 9, VICEGRIP
	db 15, WING_ATTACK
	db 20, QUICK_ATTACK
	db 26, FAINT_ATTACK
	db 31, SCREECH
	db 35, SLASH
	db 39, EARTHQUAKE
	db 45, RAZOR_WIND
	db 0 ; no more level-up moves

SteelixEvosAttacks:
	db 0 ; no more evolutions
	db 1, BIND
	db 1, SCREECH
	db 10, ROCK_THROW
	db 17, MAGNITUDE
	db 21, RAGE
	db 23, SANDSTORM
	db 27, SLAM
	db 33, ROCK_SLIDE
	db 37, EARTHQUAKE
	db 44, GUILLOTINE
	db 50, CRUNCH
	db 0 ; no more level-up moves

SnubbullEvosAttacks:
	db EVOLVE_LEVEL, 23, GRANBULL
	db 0 ; no more evolutions
	db 1, RAGE
	db 1, SCARY_FACE
	db 8, BITE
	db 13, CHARM
	db 17, HEADBUTT
	db 21, ROAR
	db 26, TAKE_DOWN
	db 30, CRUNCH
	db 36, SWAGGER
	db 43, DOUBLE_EDGE
	db 0 ; no more level-up moves

GranbullEvosAttacks:
	db 0 ; no more evolutions
	db 1, RAGE
	db 1, SCARY_FACE
	db 8, BITE
	db 13, CHARM
	db 17, HEADBUTT
	db 21, ROAR
	db 23, MEGA_PUNCH
	db 29, TAKE_DOWN
	db 35, CRUNCH
	db 41, SWAGGER
	db 48, DOUBLE_EDGE
	db 0 ; no more level-up moves

QwilfishEvosAttacks:
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 1, WATER_GUN
	db 10, HARDEN
	db 10, MINIMIZE
	db 20, PIN_MISSILE
	db 20, SPIKE_CANNON
	db 30, TOXIC
	db 30, SPIKES
	db 40, SLUDGE_BOMB
	db 40, HYDRO_PUMP
	db 0 ; no more level-up moves

ScizorEvosAttacks:
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 1, LEER
	db 6, FOCUS_ENERGY
	db 12, PURSUIT
	db 18, FALSE_SWIPE
	db 24, AGILITY
	db 30, METAL_CLAW
	db 33, SLASH
	db 37, SWORDS_DANCE
	db 43, DOUBLE_TEAM
	db 48, BATON_PASS
	db 0 ; no more level-up moves

ShuckleEvosAttacks:
	db 0 ; no more evolutions
	db 1, CONSTRICT
	db 1, WITHDRAW
	db 5, ROCK_THROW
	db 5, WRAP
	db 10, MUD_SLAP
	db 15, ENCORE
	db 20, SAFEGUARD
	db 25, BIDE
	db 30, SANDSTORM
	db 35, ROLLOUT
	db 40, REST
	db 0 ; no more level-up moves

HeracrossEvosAttacks:
	db 0 ; no more evolutions
	db 1, HORN_ATTACK
	db 1, LEER
	db 8, FURY_ATTACK
	db 15, VITAL_THROW
	db 21, TAKE_DOWN
	db 26, COUNTER
	db 31, ENDURE
	db 40, REVERSAL
	db 46, MEGAHORN
	db 0 ; no more level-up moves

SneaselEvosAttacks:
	db 0 ; no more evolutions
	db 1, FURY_SWIPES
	db 6, LEER
	db 11, POWDER_SNOW
	db 16, QUICK_ATTACK
	db 21, FAINT_ATTACK
	db 26, SCREECH
	db 30, SLASH
	db 34, ICE_PUNCH
	db 37, SWORDS_DANCE
	db 41, BEAT_UP
	db 45, METAL_CLAW
	db 0 ; no more level-up moves

TeddiursaEvosAttacks:
	db EVOLVE_LEVEL, 30, URSARING
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 4, SWEET_SCENT
	db 8, FURY_SWIPES
	db 13, FAINT_ATTACK
	db 17, REST
	db 21, SNORE
	db 25, SLASH
	db 30, SLEEP_TALK
	db 34, BODY_SLAM
	db 0 ; no more level-up moves

UrsaringEvosAttacks:
	db 0 ; no more evolutions
	db 1, MEGA_PUNCH
	db 1, LEER
	db 4, SWEET_SCENT
	db 8, FURY_SWIPES
	db 13, FAINT_ATTACK
	db 17, REST
	db 21, SNORE
	db 25, SLASH
	db 30, MEGA_PUNCH
	db 34, SLEEP_TALK
	db 38, BODY_SLAM
	db 44, EARTHQUAKE
	db 50, CRUNCH
	db 0 ; no more level-up moves

SlugmaEvosAttacks:
	db EVOLVE_LEVEL, 24, MAGCARGO
	db 0 ; no more evolutions
	db 1, SMOG
	db 5, EMBER
	db 9, HARDEN
	db 13, ROCK_THROW
	db 17, FLAME_WHEEL
	db 22, BODY_SLAM
	db 26, RECOVER
	db 30, FLAMETHROWER
	db 34, AMNESIA
	db 38, ACID_ARMOR
	db 43, CURSE
	db 0 ; no more level-up moves

MagcargoEvosAttacks:
	db 0 ; no more evolutions
	db 1, SMOG
	db 5, EMBER
	db 9, HARDEN
	db 13, ROCK_THROW
	db 17, FLAME_WHEEL
	db 22, BODY_SLAM
	db 24, ROCK_SLIDE
	db 30, RECOVER
	db 34, FLAMETHROWER
	db 38, AMNESIA
	db 42, ACID_ARMOR
	db 48, CURSE
	db 0 ; no more level-up moves

SwinubEvosAttacks:
	db EVOLVE_LEVEL, 33, PILOSWINE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, POWDER_SNOW
	db 4, MUD_SLAP
	db 8, ENDURE
	db 13, MIST
	db 17, AMNESIA
	db 21, HAZE
	db 25, TAKE_DOWN
	db 30, BODY_SLAM
	db 37, EARTHQUAKE
	db 0 ; no more level-up moves

PiloswineEvosAttacks:
	db 0 ; no more evolutions
	db 1, HORN_ATTACK
	db 1, POWDER_SNOW
	db 4, MUD_SLAP
	db 8, ENDURE
	db 13, MIST
	db 17, AMNESIA
	db 21, HAZE
	db 25, TAKE_DOWN
	db 30, BODY_SLAM
	db 33, HORN_ATTACK
	db 38, ROCK_SLIDE
	db 44, EARTHQUAKE
	db 50, BLIZZARD
	db 0 ; no more level-up moves

CorsolaEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, HARDEN
	db 6, BUBBLE
	db 12, RECOVER
	db 18, ANCIENTPOWER
	db 24, BUBBLEBEAM
	db 30, SPIKE_CANNON
	db 30, SPIKES
	db 36, AMNESIA
	db 42, SAFEGUARD
	db 48, MIRROR_COAT
	db 0 ; no more level-up moves

RemoraidEvosAttacks:
	db EVOLVE_LEVEL, 25, OCTILLERY
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 11, LOCK_ON
	db 22, PSYBEAM
	db 22, AURORA_BEAM
	db 22, BUBBLEBEAM
	db 33, FOCUS_ENERGY
	db 44, ICE_BEAM
	db 44, FLAMETHROWER
	db 44, ZAP_CANNON
	db 55, HYPER_BEAM
	db 0 ; no more level-up moves

OctilleryEvosAttacks:
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 11, CONSTRICT
	db 22, PSYBEAM
	db 22, AURORA_BEAM
	db 22, BUBBLEBEAM
	db 25, OCTAZOOKA
	db 30, OCTAZOOKA
	db 38, FOCUS_ENERGY
	db 49, ICE_BEAM
	db 49, FLAMETHROWER
	db 49, ZAP_CANNON
	db 60, HYPER_BEAM
	db 0 ; no more level-up moves

DelibirdEvosAttacks:
	db 0 ; no more evolutions
	db 1, PRESENT
	db 0 ; no more level-up moves

MantineEvosAttacks:
	db 0 ; no more evolutions
	db 1, GUST
	db 4, GROWL
	db 9, SUPERSONIC
	db 14, BUBBLE
	db 19, TAKE_DOWN
	db 24, TWISTER
	db 29, BUBBLEBEAM
	db 34, RAZOR_WIND
	db 39, CONFUSE_RAY
	db 44, PROTECT
	db 49, AGILITY
	db 0 ; no more level-up moves

SkarmoryEvosAttacks:
	db 0 ; no more evolutions
	db 1, PECK
	db 4, LEER
	db 9, SAND_ATTACK
	db 14, METAL_CLAW
	db 19, FURY_ATTACK
	db 24, PURSUIT
	db 29, SWIFT
	db 34, DRILL_PECK
	db 39, WHIRLWIND
	db 44, PROTECT
	db 49, AGILITY
	db 0 ; no more level-up moves

HoundourEvosAttacks:
	db EVOLVE_LEVEL, 24, HOUNDOOM
	db 0 ; no more evolutions
	db 1, EMBER
	db 1, GROWL
	db 8, BITE
	db 12, ROAR
	db 16, SMOG
	db 20, FAINT_ATTACK
	db 24, FLAME_WHEEL
	db 28, SPITE
	db 33, CRUNCH
	db 39, SCARY_FACE
	db 45, FLAMETHROWER
	db 0 ; no more level-up moves

HoundoomEvosAttacks:
	db 0 ; no more evolutions
	db 1, EMBER
	db 1, GROWL
	db 8, BITE
	db 12, ROAR
	db 16, SMOG
	db 20, FAINT_ATTACK
	db 26, FLAME_WHEEL
	db 31, SPITE
	db 36, CRUNCH
	db 44, SCARY_FACE
	db 49, FLAMETHROWER
	db 0 ; no more level-up moves

KingdraEvosAttacks:
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 7, SMOKESCREEN
	db 14, AGILITY
	db 19, TWISTER
	db 22, BUBBLEBEAM
	db 25, DRAGON_RAGE
	db 29, AURORA_BEAM
	db 37, RAIN_DANCE
	db 41, REST
	db 41, SLEEP_TALK
	db 45, HYDRO_PUMP
	db 50, HYPER_BEAM
	db 0 ; no more level-up moves

PhanpyEvosAttacks:
	db EVOLVE_LEVEL, 25, DONPHAN
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 4, MUD_SLAP
	db 8, DEFENSE_CURL
	db 13, MAGNITUDE
	db 17, FLAIL
	db 21, ROLLOUT
	db 25, GUILLOTINE
	db 30, SANDSTORM
	db 37, EARTHQUAKE
	db 0 ; no more level-up moves

DonphanEvosAttacks:
	db 0 ; no more evolutions
	db 1, HORN_ATTACK
	db 1, GROWL
	db 4, MUD_SLAP
	db 8, DEFENSE_CURL
	db 13, MAGNITUDE
	db 17, FLAIL
	db 21, ROLLOUT
	db 25, HORN_ATTACK
	db 28, GUILLOTINE
	db 34, SANDSTORM
	db 38, RAPID_SPIN
	db 44, EARTHQUAKE
	db 50, DRILL_PECK
	db 0 ; no more level-up moves

Porygon2EvosAttacks:
	db 0 ; no more evolutions
	db 1, CONVERSION
	db 1, CONVERSION2
	db 1, SWIFT
	db 8, DEFENSE_CURL
	db 14, AGILITY
	db 19, PSYBEAM
	db 24, RECOVER
	db 31, TRI_ATTACK
	db 36, LOCK_ON
	db 44, ZAP_CANNON
	db 0 ; no more level-up moves

StantlerEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 8, FORESIGHT
	db 13, HYPNOSIS
	db 17, STOMP
	db 22, NIGHTMARE
	db 29, TAKE_DOWN
	db 33, DOUBLE_KICK
	db 36, CONFUSE_RAY
	db 40, PAIN_SPLIT
	db 44, DOUBLE_EDGE
	db 48, PSYCHIC_M
	db 0 ; no more level-up moves

SmeargleEvosAttacks:
	db 0 ; no more evolutions
	db 1, SKETCH
	db 11, SKETCH
	db 21, SKETCH
	db 31, SKETCH
	db 41, SKETCH
	db 51, SKETCH
	db 61, SKETCH
	db 71, SKETCH
	db 81, SKETCH
	db 91, SKETCH
	db 0 ; no more level-up moves

TyrogueEvosAttacks:
	db EVOLVE_STAT, 20, ATK_LT_DEF, HITMONCHAN
	db EVOLVE_STAT, 20, ATK_GT_DEF, HITMONLEE
	db EVOLVE_STAT, 20, ATK_EQ_DEF, HITMONTOP
	db 0 ; no more evolutions
	db 1, ROCK_SMASH
	db 0 ; no more level-up moves

HitmontopEvosAttacks:
	db 0 ; no more evolutions
	db 20, ROLLING_KICK
	db 20, FOCUS_ENERGY
	db 23, RAPID_SPIN
	db 26, DIG
	db 31, QUICK_ATTACK
	db 34, SWORDS_DANCE
	db 37, FORESIGHT
	db 41, DRILL_PECK
	db 44, FLAIL
	db 49, TRIPLE_KICK
	db 0 ; no more level-up moves

SmoochumEvosAttacks:
	db EVOLVE_LEVEL, 30, JYNX
	db 0 ; no more evolutions
	db 1, POWDER_SNOW
	db 7, SWEET_KISS
	db 13, LICK
	db 19, ICE_PUNCH
	db 25, DOUBLESLAP
	db 31, LOVELY_KISS
	db 35, ICE_BEAM
	db 39, PERISH_SONG
	db 46, BLIZZARD
	db 0 ; no more level-up moves

ElekidEvosAttacks:
	db EVOLVE_LEVEL, 30, ELECTABUZZ
	db 0 ; no more evolutions
	db 1, THUNDERSHOCK
	db 7, LEER
	db 13, QUICK_ATTACK
	db 19, THUNDERPUNCH
	db 25, LIGHT_SCREEN
	db 31, RAIN_DANCE
	db 35, THUNDERBOLT
	db 39, SCREECH
	db 46, THUNDER
	db 0 ; no more level-up moves

MagbyEvosAttacks:
	db EVOLVE_LEVEL, 30, MAGMAR
	db 0 ; no more evolutions
	db 1, EMBER
	db 7, LEER
	db 13, SMOG
	db 19, FIRE_PUNCH
	db 25, SMOKESCREEN
	db 31, SUNNY_DAY
	db 35, FLAMETHROWER
	db 39, CONFUSE_RAY
	db 46, FIRE_BLAST
	db 0 ; no more level-up moves

MiltankEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, GROWL
	db 8, DEFENSE_CURL
	db 13, STOMP
	db 19, CHARM
	db 23, ROLLOUT
	db 27, MILK_DRINK
	db 32, SEISMIC_TOSS
	db 37, BODY_SLAM
	db 42, FORESIGHT
	db 50, HEAL_BELL
	db 0 ; no more level-up moves

BlisseyEvosAttacks:
	db 0 ; no more evolutions
	db 1, POUND
	db 4, GROWL
	db 8, SOFTBOILED
	db 12, DOUBLESLAP
	db 16, MINIMIZE
	db 21, SING
	db 26, RETURN
	db 31, DEFENSE_CURL
	db 36, LIGHT_SCREEN
	db 44, HEAL_BELL
	db 50, RETURN
	db 0 ; no more level-up moves

RaikouEvosAttacks:
	db 0 ; no more evolutions
	db 1, BITE
	db 11, ROAR
	db 21, THUNDERSHOCK
	db 31, QUICK_ATTACK
	db 41, SPARK
	db 51, CRUNCH
	db 61, REFLECT
	db 71, THUNDER
	db 81, HIDDEN_POWER
	db 0 ; no more level-up moves

EnteiEvosAttacks:
	db 0 ; no more evolutions
	db 1, BITE
	db 11, ROAR
	db 21, EMBER
	db 31, STOMP
	db 41, FLAME_WHEEL
	db 51, EARTHQUAKE
	db 61, SWAGGER
	db 71, FIRE_BLAST
	db 81, HIDDEN_POWER
	db 0 ; no more level-up moves

SuicuneEvosAttacks:
	db 0 ; no more evolutions
	db 1, BITE
	db 11, ROAR
	db 21, WATER_GUN
	db 31, AURORA_BEAM
	db 41, WATERFALL
	db 51, MIRROR_COAT
	db 61, MIST
	db 71, HYDRO_PUMP
	db 81, HIDDEN_POWER
	db 0 ; no more level-up moves

LarvitarEvosAttacks:
	db EVOLVE_LEVEL, 30, PUPITAR
	db 0 ; no more evolutions
	db 1, BITE
	db 1, LEER
	db 8, SANDSTORM
	db 12, SCREECH
	db 16, ROCK_SLIDE
	db 24, THRASH
	db 28, SCARY_FACE
	db 34, CRUNCH
	db 40, EARTHQUAKE
	db 48, BEAT_UP
	db 54, HYPER_BEAM
	db 0 ; no more level-up moves

PupitarEvosAttacks:
	db EVOLVE_LEVEL, 55, TYRANITAR
	db 0 ; no more evolutions
	db 1, BITE
	db 1, LEER
	db 8, SANDSTORM
	db 12, SCREECH
	db 16, ROCK_SLIDE
	db 24, THRASH
	db 28, SCARY_FACE
	db 37, CRUNCH
	db 45, EARTHQUAKE
	db 56, BEAT_UP
	db 60, HYPER_BEAM
	db 0 ; no more level-up moves

TyranitarEvosAttacks:
	db 0 ; no more evolutions
	db 1, BITE
	db 1, LEER
	db 8, SANDSTORM
	db 12, SCREECH
	db 16, ROCK_SLIDE
	db 24, THRASH
	db 28, SCARY_FACE
	db 37, CRUNCH
	db 45, EARTHQUAKE
	db 55, MEGA_PUNCH
	db 60, BEAT_UP
	db 65, HYPER_BEAM
	db 0 ; no more level-up moves

LugiaEvosAttacks:
	db 0 ; no more evolutions
	db 1, AEROBLAST
	db 11, SAFEGUARD
	db 22, SWIFT
	db 33, WHIRLWIND
	db 44, HYDRO_PUMP
	db 55, RAIN_DANCE
	db 66, RECOVER
	db 70, AEROBLAST
	db 77, PSYCHIC_M
	db 88, ANCIENTPOWER
	db 99, FUTURE_SIGHT
	db 0 ; no more level-up moves

HoOhEvosAttacks:
	db 0 ; no more evolutions
	db 1, SACRED_FIRE
	db 11, SAFEGUARD
	db 22, SWIFT
	db 33, WHIRLWIND
	db 44, FIRE_BLAST
	db 55, SUNNY_DAY
	db 66, RECOVER
	db 70, SACRED_FIRE
	db 77, RAZOR_WIND
	db 88, ANCIENTPOWER
	db 99, FUTURE_SIGHT
	db 0 ; no more level-up moves

CelebiEvosAttacks:
	db 0 ; no more evolutions
	db 1, CONFUSION
	db 1, LEECH_SEED
	db 1, HEAL_BELL
	db 1, RECOVER
	db 10, SAFEGUARD
	db 20, PERISH_SONG
	db 30, FUTURE_SIGHT
	db 40, BATON_PASS
	db 50, ANCIENTPOWER
	db 0 ; no more level-up moves
