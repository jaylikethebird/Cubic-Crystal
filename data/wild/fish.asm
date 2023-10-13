DEF time_group EQUS "0," ; use the nth TimeFishGroups entry

MACRO fishgroup
; chance, old rod, good rod, super rod
	db \1
	dw \2, \3, \4
ENDM

FishGroups:
; entries correspond to FISHGROUP_* constants
	table_width FISHGROUP_DATA_LENGTH, FishGroups
	fishgroup 50 percent + 1, .Shore_Old,            .Shore_Good,            .Shore_Super
	fishgroup 50 percent + 1, .Ocean_Old,            .Ocean_Good,            .Ocean_Super
	fishgroup 50 percent + 1, .Lake_Old,             .Lake_Good,             .Lake_Super
	fishgroup 50 percent + 1, .Pond_Old,             .Pond_Good,             .Pond_Super
	fishgroup 50 percent + 1, .Dratini_Old,          .Dratini_Good,          .Dratini_Super
	fishgroup 50 percent + 1, .Qwilfish_Swarm_Old,   .Qwilfish_Swarm_Good,   .Qwilfish_Swarm_Super
	fishgroup 50 percent + 1, .Remoraid_Swarm_Old,   .Remoraid_Swarm_Good,   .Remoraid_Swarm_Super
	fishgroup 50 percent + 1, .Gyarados_Old,         .Gyarados_Good,         .Gyarados_Super
	fishgroup 50 percent + 1, .Dratini_2_Old,        .Dratini_2_Good,        .Dratini_2_Super
	fishgroup 50 percent + 1, .WhirlIslands_Old,     .WhirlIslands_Good,     .WhirlIslands_Super
	fishgroup 50 percent + 1, .Qwilfish_Old,         .Qwilfish_Good,         .Qwilfish_Super
	fishgroup 50 percent + 1, .Remoraid_Old,         .Remoraid_Good,         .Remoraid_Super
	fishgroup 50 percent + 1, .Qwilfish_NoSwarm_Old, .Qwilfish_NoSwarm_Good, .Qwilfish_NoSwarm_Super
	assert_table_length NUM_FISHGROUPS

.Shore_Old:
	db  70 percent + 1, MAGIKARP,   10
	db  85 percent + 1, KRABBY,   10
	db 100 percent,     KRABBY,     10
.Shore_Good:
	db  35 percent,     MAGIKARP,   25
	db  70 percent,     KRABBY,     25
	db  90 percent + 1, KRABBY,     25
	db 100 percent,     time_group 0
.Shore_Super:
	db  40 percent,     GYARADOS,   50
	db  70 percent,     time_group 1
	db  90 percent + 1, KINGLER,    50
	db 100 percent,     KINGLER,    50

.Ocean_Old:
	db  70 percent + 1, MAGIKARP,   10
	db  85 percent + 1, TENTACOOL,   10
	db 100 percent,     TENTACOOL,  10
.Ocean_Good:
	db  35 percent,     TENTACOOL,  25
	db  70 percent,     CHINCHOU,   25
	db  90 percent + 1, CHINCHOU,   25
	db 100 percent,     time_group 2
.Ocean_Super:
	db  40 percent,     LANTURN,   50
	db  70 percent,     time_group 3
	db  90 percent + 1, TENTACRUEL, 50
	db 100 percent,     LANTURN,    50

.Lake_Old:
	db  70 percent + 1, MAGIKARP,   10
	db  85 percent + 1, GOLDEEN,   10
	db 100 percent,     GOLDEEN,    10
.Lake_Good:
	db  35 percent,     MAGIKARP,   25
	db  70 percent,     GOLDEEN,    25
	db  90 percent + 1, GOLDEEN,    25
	db 100 percent,     time_group 4
.Lake_Super:
	db  40 percent,     GOLDEEN,    40
	db  70 percent,     time_group 5
	db  90 percent + 1, SEAKING,    40
	db 100 percent,     SEAKING,    40

.Pond_Old:
	db  70 percent + 1, MAGIKARP,   10
	db  85 percent + 1, POLIWAG,   10
	db 100 percent,     POLIWAG,    10
.Pond_Good:
	db  35 percent,     MAGIKARP,   25
	db  70 percent,     POLIWAG,    25
	db  90 percent + 1, POLIWAG,    25
	db 100 percent,     time_group 6
.Pond_Super:
	db  40 percent,     POLIWHIRL,    50
	db  70 percent,     time_group 7
	db  90 percent + 1, POLIWHIRL,  50
	db 100 percent,     POLIWHIRL,  50

.Dratini_Old:
	db  70 percent + 1, MAGIKARP,   10
	db  85 percent + 1, MAGIKARP,   10
	db 100 percent,     DRATINI,    10
.Dratini_Good:
	db  35 percent,     MAGIKARP,   25
	db  70 percent,     MAGIKARP,   25
	db  90 percent + 1, DRATINI,    25
	db 100 percent,     time_group 8
.Dratini_Super:
	db  40 percent,     DRATINI,   50
	db  70 percent,     time_group 9
	db  90 percent + 1, GYARADOS,   50
	db 100 percent,     DRAGONAIR,  50

.Qwilfish_Swarm_Old:
	db  70 percent + 1, MAGIKARP,   10
	db  85 percent + 1, QWILFISH,   10
	db 100 percent,     QWILFISH,   10
.Qwilfish_Swarm_Good:
	db  35 percent,     MAGIKARP,   25
	db  70 percent,     QWILFISH,   25
	db  90 percent + 1, QWILFISH,   25
	db 100 percent,     time_group 10
.Qwilfish_Swarm_Super:
	db  40 percent,     QWILFISH,   50
	db  70 percent,     time_group 11
	db  90 percent + 1, QWILFISH,   50
	db 100 percent,     QWILFISH,   50

.Remoraid_Swarm_Old:
	db  70 percent + 1, MAGIKARP,   10
	db  85 percent + 1, MAGIKARP,   10
	db 100 percent,     REMORAID,   10
.Remoraid_Swarm_Good:
	db  35 percent,     MAGIKARP,   25
	db  70 percent,     REMORAID,   25
	db  90 percent + 1, REMORAID,   25
	db 100 percent,     time_group 12
.Remoraid_Swarm_Super:
	db  40 percent,     REMORAID,   50
	db  70 percent,     time_group 13
	db  90 percent + 1, REMORAID,   50
	db 100 percent,     REMORAID,   50

.Gyarados_Old:
	db  70 percent + 1, MAGIKARP,   10
	db  85 percent + 1, MAGIKARP,   10
	db 100 percent,     MAGIKARP,   10
.Gyarados_Good:
	db  35 percent,     MAGIKARP,   25
	db  70 percent,     MAGIKARP,   25
	db  90 percent + 1, GYARADOS,   25
	db 100 percent,     time_group 14
.Gyarados_Super:
	db  40 percent,     GYARADOS,   50
	db  70 percent,     time_group 15
	db  90 percent + 1, GYARADOS,   50
	db 100 percent,     GYARADOS,   50

.Dratini_2_Old:
	db  70 percent + 1, MAGIKARP,   10
	db  85 percent + 1, MAGIKARP,   10
	db 100 percent,     MAGIKARP,   10
.Dratini_2_Good:
	db  35 percent,     MAGIKARP,   10
	db  70 percent,     MAGIKARP,   10
	db  90 percent + 1, MAGIKARP,   10
	db 100 percent,     time_group 16
.Dratini_2_Super:
	db  40 percent,     MAGIKARP,   10
	db  70 percent,     time_group 17
	db  90 percent + 1, MAGIKARP,   10
	db 100 percent,     DRAGONAIR,  10

.WhirlIslands_Old:
	db  70 percent + 1, HORSEA,   10
	db  85 percent + 1, HORSEA,   10
	db 100 percent,     HORSEA,     10
.WhirlIslands_Good:
	db  35 percent,     SHELLDER,   20
	db  70 percent,     HORSEA,     20
	db  90 percent + 1, SHELLDER,     20
	db 100 percent,     time_group 18
.WhirlIslands_Super:
	db  40 percent,     SHELLDER,     40
	db  70 percent,     time_group 19
	db  90 percent + 1, CLOYSTER,    40
	db 100 percent,     KINGDRA,     40

.Qwilfish_NoSwarm_Old:
.Qwilfish_Old:
	db  70 percent + 1, MAGIKARP,   10
	db  85 percent + 1, MAGIKARP,   10
	db 100 percent,     MAGIKARP,  10
.Qwilfish_NoSwarm_Good:
.Qwilfish_Good:
	db  35 percent,     MAGIKARP,   25
	db  70 percent,     QWILFISH,  25
	db  90 percent + 1, QWILFISH,  25
	db 100 percent,     time_group 20
.Qwilfish_NoSwarm_Super:
.Qwilfish_Super:
	db  40 percent,     GYARADOS,  50
	db  70 percent,     time_group 21
	db  90 percent + 1, QWILFISH,   50
	db 100 percent,     QWILFISH,   50

.Remoraid_Old:
	db  70 percent + 1, MAGIKARP,   10
	db  85 percent + 1, REMORAID,   10
	db 100 percent,     REMORAID,    10
.Remoraid_Good:
	db  35 percent,     MAGIKARP,   25
	db  70 percent,     REMORAID,    25
	db  90 percent + 1, REMORAID,    25
	db 100 percent,     time_group 12
.Remoraid_Super:
	db  40 percent,     REMORAID,    50
	db  70 percent,     time_group 13
	db  90 percent + 1, REMORAID,   50
	db 100 percent,     OCTILLERY,   50

TimeFishGroups:
	;  day              nite
	db CORSOLA,    25,  STARYU,     25 ; 0
	db CORSOLA,    50,  STARMIE,    50 ; 1
	db SHELLDER,   25,  SHELLDER,   25 ; 2
	db CLOYSTER,   50,  CLOYSTER,   50 ; 3
	db GOLDEEN,    25,  GOLDEEN,    25 ; 4
	db SEAKING,    50,  SEAKING,    50 ; 5
	db POLIWHIRL,  25,  POLIWHIRL,  25 ; 6
	db POLIWRATH,  50,  POLITOED,   50 ; 7
	db DRATINI,    25,  DRATINI,    25 ; 8
	db DRAGONAIR,  50,  DRAGONAIR,  50 ; 9
	db QWILFISH,   25,  QWILFISH,   25 ; 10
	db QWILFISH,   50,  QWILFISH,   50 ; 11
	db REMORAID,   25,  REMORAID,   25 ; 12
	db OCTILLERY,   50,  OCTILLERY,   50 ; 13
	db GYARADOS,   25,  GYARADOS,   25 ; 14
	db GYARADOS,   50,  GYARADOS,   50 ; 15
	db DRATINI,    10,  DRATINI,    15 ; 16
	db DRATINI,    10,  DRATINI,    10 ; 17
	db HORSEA,     25,  HORSEA,     25 ; 18
	db SEADRA,     50,  SEADRA,     50 ; 19
	db QWILFISH,  25,  QWILFISH,  25 ; 20
	db QWILFISH,  50,  QWILFISH,  50 ; 21
