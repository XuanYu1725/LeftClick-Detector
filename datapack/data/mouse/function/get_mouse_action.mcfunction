# 左键检测
execute if score @s ld.LeftClick matches 1.. unless score @s ld.LastLeftClick matches 1.. run scoreboard players operation @s ld.LeftClickState = #Press ld.LeftClickState
execute if score @s ld.LeftClick matches 1.. if score @s ld.LastLeftClick matches 1.. run scoreboard players operation @s ld.LeftClickState = #Hold ld.LeftClickState
execute unless score @s ld.LeftClick matches 1.. if score @s ld.LastLeftClick matches 1.. run scoreboard players operation @s ld.LeftClickState = #Release ld.LeftClickState
execute unless score @s ld.LeftClick matches 1.. unless score @s ld.LastLeftClick matches 1.. run scoreboard players reset @s ld.LeftClickState
scoreboard players operation @s ld.LastLeftClick = @s ld.LeftClick
scoreboard players reset @s ld.LeftClick
execute at @s anchored eyes run fill ^-3 ^-3 ^-3 ^3 ^3 ^3 dead_brain_coral[waterlogged=false] keep
execute if score @s ld.LeftClickState = #Press ld.LeftClickState run scoreboard players reset @s ld.LeftClickHoldTimer
execute if score @s ld.LeftClickState = #Hold ld.LeftClickState run scoreboard players add @s ld.LeftClickHoldTimer 1

# 右键检测
# execute if score @s ld.RightClick matches 1.. unless score @s ld.LastRightClick matches 1.. run scoreboard players operation @s ld.RightClickState = #Press ld.RightClickState
# execute if score @s ld.RightClick matches 1.. if score @s ld.LastRightClick matches 1.. run scoreboard players operation @s ld.RightClickState = #Hold ld.RightClickState
# execute unless score @s ld.RightClick matches 1.. if score @s ld.LastRightClick matches 1.. run scoreboard players operation @s ld.RightClickState = #Release ld.RightClickState
# execute unless score @s ld.RightClick matches 1.. unless score @s ld.LastRightClick matches 1.. run scoreboard players reset @s ld.RightClickState
# scoreboard players operation @s ld.LastRightClick = @s ld.RightClick
# scoreboard players reset @s ld.RightClick
# execute if score @s ld.RightClickState = #Press ld.RightClickState run scoreboard players reset @s ld.RightClickHoldTimer
# execute if score @s ld.RightClickState = #Hold ld.RightClickState run scoreboard players add @s ld.RightClickHoldTimer 1