# 左键检测
scoreboard objectives add ld.LeftClick minecraft.mined:dead_brain_coral
scoreboard objectives add ld.LastLeftClick dummy
scoreboard objectives add ld.LeftClickState dummy
    scoreboard players set #Press ld.LeftClickState 1
    scoreboard players set #Hold ld.LeftClickState 2
    scoreboard players set #Release ld.LeftClickState 3
scoreboard objectives add ld.LeftClickHoldTimer dummy

# 右键检测
# scoreboard objectives add ld.RightClick minecraft.used:carrot_on_a_stick
# scoreboard objectives add ld.LastRightClick dummy
# scoreboard objectives add ld.RightClickState dummy
#     scoreboard players set #Press ld.RightClickState 1
#     scoreboard players set #Hold ld.RightClickState 2
#     scoreboard players set #Release ld.RightClickState 3
# scoreboard objectives add ld.RightClickHoldTimer dummy