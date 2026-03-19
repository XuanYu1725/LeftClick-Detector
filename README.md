# LeftClick-Detector

A LeftClick Detector base on player mining dead brain coral, also offered a resourcepack to make the corals totally invisible.

## APIs

Players with `ld.listening` tag will be listened by leftclick detector, you can add this tag by `tag @s add ld.listening` command.

Players must hold a pickaxe to trigger leftclick detector, you can get a invisible pickaxe by `/give @s minecraft:diamond_pickaxe[minecraft:item_model="air",minecraft:unbreakable={}]`

`LeftClickState` records players' mouse state,  default state value is `#Press = 1`, `#Hold = 2`, `#Release = 3` . If players released their mouse, they will be set to Release state for **1 tick** and then be reset.

`LeftClickHoldTimer` scoreboard records how long a player have been holding left mouse button

## Examples:

To check if a player just pressed left mouse button:

```mcfunction
execute if score @s LeftClickState = #Press LeftClickState run say I pressed left mouse button
```

To check how long a player have been holding left mouse button:

```mcfunction
execute if score @s LeftClickHoldTimer matches 20.. run say I've been holding left mouse button for over 1 second!
```

## Warnings:

Detector may somehow fail if players are on particular locations and orientations, because there's a gap of hitbox between two corals.

Auto cleaning for corals is not implemented.

All elements rendered via rendertype_lines.fsh and sound event related to `stone` are removed.