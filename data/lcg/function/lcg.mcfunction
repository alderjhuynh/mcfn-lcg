$scoreboard players set #lcg lcg.lower $(lower)
$scoreboard players set #lcg lcg.upper $(upper)

#compute range
scoreboard players operation #lcg lcg.range = #lcg lcg.upper
scoreboard players operation #lcg lcg.range -= #lcg lcg.lower 
scoreboard players add #lcg lcg.range 1

#X = a * X
scoreboard players operation #lcg lcg.X *= #lcg lcg.a

#X = X + c
scoreboard players operation #lcg lcg.X += #lcg lcg.c

#modm
scoreboard players operation #lcg lcg.temp = #lcg lcg.X
scoreboard players operation #lcg lcg.temp /= #lcg lcg.m
scoreboard players operation #lcg lcg.temp *= #lcg lcg.m
scoreboard players operation #lcg lcg.X -= #lcg lcg.temp

#output=(Xmodrange)+lower
scoreboard players operation #lcg lcg.temp = #lcg lcg.X
scoreboard players operation #lcg lcg.temp /= #lcg lcg.range
scoreboard players operation #lcg lcg.temp *= #lcg lcg.range
scoreboard players operation #lcg lcg.X -= #lcg lcg.temp

scoreboard players operation #lcg lcg.X += #lcg lcg.lower

scoreboard players operation #lcg lcg.output = #lcg lcg.X