#Remove City tag
tag @e[type=marker,tag=spawnmarker,distance=..20] remove Celak
tag @e[type=marker,tag=spawnmarker,distance=..20] remove Kings-Port
tag @e[type=marker,tag=spawnmarker,distance=..20] remove Athens
tag @e[type=marker,tag=spawnmarker,distance=..20] remove Delphi
tag @e[type=marker,tag=spawnmarker,distance=..20] remove Povertane
tag @e[type=marker,tag=spawnmarker,distance=..20] remove Amnis
tag @e[type=marker,tag=spawnmarker,distance=..20] remove Fronteria
tag @e[type=marker,tag=spawnmarker,distance=..20] remove Colosseum
tag @e[type=marker,tag=spawnmarker,distance=..20] remove FortReference
tag @e[type=marker,tag=spawnmarker,distance=..20] remove ThothUniversity
tag @e[type=marker,tag=spawnmarker,distance=..20] remove AthenaLibrary
#Add City tag
execute as @s[tag=setmarker_celak] run tag @e[type=marker,tag=spawnmarker,distance=..20] add Celak
execute as @s[tag=setmarker_kingsport] run tag @e[type=marker,tag=spawnmarker,distance=..20] add Kings-Port
execute as @s[tag=setmarker_athens] run tag @e[type=marker,tag=spawnmarker,distance=..20] add Athens
execute as @s[tag=setmarker_delphi] run tag @e[type=marker,tag=spawnmarker,distance=..20] add Delphi
execute as @s[tag=setmarker_povertane] run tag @e[type=marker,tag=spawnmarker,distance=..20] add Povertane
execute as @s[tag=setmarker_amnis] run tag @e[type=marker,tag=spawnmarker,distance=..20] add Amnis
execute as @s[tag=setmarker_fronteria] run tag @e[type=marker,tag=spawnmarker,distance=..20] add Fronteria
#Add Location tag
execute as @s[tag=setmarker_colosseum] run tag @e[type=marker,tag=spawnmarker,distance=..20] add Colosseum
execute as @s[tag=setmarker_fortreference] run tag @e[type=marker,tag=spawnmarker,distance=..20] add Fort-Reference
execute as @s[tag=setmarker_thothuniversity] run tag @e[type=marker,tag=spawnmarker,distance=..20] add Thoth-University
execute as @s[tag=setmarker_athenalibrary] run tag @e[type=marker,tag=spawnmarker,distance=..20] add Athena-Library
#Visual Notif
tellraw @a[distance=..20] [{"color":"blue","text":"[Mythcraft Wars Admin] All spawn markers within 20 blocks have had their city/location (re)assigned."}]
execute at @e[type=marker,tag=spawnmarker,distance=..20] run particle block_marker{block_state:"lime_concrete"} ~ ~1.5 ~ 0 0 0 0 1 force
#Kill egg marker
kill @s