# set ownership
$scoreboard players set $(cityName) cityOwnership $(teamId)

# grant benefits
$execute as @a[team=$(teamName)] run function mythcraft:kill/giveequipment/$(rewardFunction)

# if current quest is to capture this city and is active, set current quest winner to this team and call quest end
$execute if score QuestTracker questWinner matches 0 if score QuestTracker questLocation = $(cityName) locationId run function mythcraft:quests/conquerquestattackreward {cityName:$(cityName), teamId:$(teamId), teamName:$(teamName)}

# respawn troops
$function mythcraft:respawn/spawnall {cityName:$(cityName), teamName:$(teamName)}
$tellraw @a [{"bold":false,"text":"$(teamName)"},{"color":"yellow","text":" troops have regrouped in "},{"bold":false,"text":"$(cityName)"},{"color":"yellow","text":"!"}]
$effect give @e[type=!marker,tag=$(cityName)] resistance 60 4

# reset conquer score
$scoreboard players set $(cityName) cityConquerProgress 0
$scoreboard players set $(cityName)LastChecked cityConquerProgress 0
$tellraw @a [{"color":"yellow","text":"The "},{"bold":true,"text":"$(teamName)"},{"color":"yellow","text":" have conquered "},{"bold":true,"text":"$(cityName)"},{"color":"yellow","text":"!"}]

# add to player's cities conquered statistic (for fun)
scoreboard players add @s citiesConquered 1