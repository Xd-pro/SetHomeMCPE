#bridge-file-version: #13
scoreboard objectives add timer dummy
execute @a ~ ~ ~ scoreboard players add @s timer 1
execute @a[scores={timer=41}] ~ ~ ~ scoreboard players set @s timer 0
replaceitem entity @a[scores={timer=40}] slot.inventory 0 writable_book
gamerule commandblockoutput false
execute @e[type=item,name=sethome] ~~~ execute @p[r=3] ~~~ spawnpoint
execute @e[type=item,name=sethome] ~~~ execute @p[r=3] ~~~ tellraw @s {"rawtext":[{"text":"[§bHOMES§r] §dHome Set. Made By Xd_pro."}]}
execute @e[type=item,name=sethome] ~~~ kill @s
execute @e[type=item,name=home] ~~~ gamerule keepinventory true
execute @e[type=item,name=home] ~~~ gamerule doimmediaterespawn true
execute @e[type=item,name=home] ~~~ kill @p[r=3]
execute @a[scores={timer=40}] ~~~ gamerule keepinventory false
execute @a[scores={timer=40}] ~~~ gamerule keepinventory false
execute @a[scores={timer=40}] ~~~ gamerule doimmediaterespawn false
execute @e[type=item,name=home] ~~~ kill @s
execute @e[type=item,name=home] ~~~ execute @p[r=3] ~~~ tellraw @s {"rawtext":[{"text":"[§bHOMES§r] §dWarped Home. Made By Xd_pro."}]}