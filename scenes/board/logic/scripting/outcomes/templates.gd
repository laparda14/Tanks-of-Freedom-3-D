
var templates = {
    'story' : preload("res://scenes/board/logic/scripting/outcomes/story.gd"),

    'message' : preload("res://scenes/board/logic/scripting/outcomes/message.gd"),
    'lock' : preload("res://scenes/board/logic/scripting/outcomes/lock_hud.gd"),
    'unlock' : preload("res://scenes/board/logic/scripting/outcomes/unlock_hud.gd"),
    'camera' : preload("res://scenes/board/logic/scripting/outcomes/camera.gd"),
    'spawn' : preload("res://scenes/board/logic/scripting/outcomes/spawn.gd"),
    'move' : preload("res://scenes/board/logic/scripting/outcomes/move.gd"),
    'end_game' : preload("res://scenes/board/logic/scripting/outcomes/end_game.gd"),
    'terrain_add' : preload("res://scenes/board/logic/scripting/outcomes/terrain_add.gd"),
    'terrain_remove' : preload("res://scenes/board/logic/scripting/outcomes/terrain_remove.gd"),
    'attack' : preload("res://scenes/board/logic/scripting/outcomes/attack.gd"),
    'claim' : preload("res://scenes/board/logic/scripting/outcomes/claim.gd"),
    'die' : preload("res://scenes/board/logic/scripting/outcomes/die.gd"),
    'despawn' : preload("res://scenes/board/logic/scripting/outcomes/despawn.gd"),
    'trigger' : preload("res://scenes/board/logic/scripting/outcomes/trigger.gd"),
    'ap' : preload("res://scenes/board/logic/scripting/outcomes/ap.gd"),
    'level_up' : preload("res://scenes/board/logic/scripting/outcomes/level_up.gd"),
    'target_vip' : preload("res://scenes/board/logic/scripting/outcomes/target_vip.gd"),
    'ban_unit' : preload("res://scenes/board/logic/scripting/outcomes/ban_unit.gd"),
    'pause_ai' : preload("res://scenes/board/logic/scripting/outcomes/pause_ai.gd"),
    'hero_ability' : preload("res://scenes/board/logic/scripting/outcomes/hero_ability.gd"),
    'side' : preload("res://scenes/board/logic/scripting/outcomes/side.gd"),
    'use_ability' : preload("res://scenes/board/logic/scripting/outcomes/use_ability.gd"),
    'activate_hero' : preload("res://scenes/board/logic/scripting/outcomes/activate_hero.gd"),
    'objective' : preload("res://scenes/board/logic/scripting/outcomes/objective.gd"),
    'trigger_group' : preload("res://scenes/board/logic/scripting/outcomes/trigger_group.gd"),

    'revive_player' : preload("res://scenes/board/logic/scripting/outcomes/revive_player.gd"),
    'eliminate_player' : preload("res://scenes/board/logic/scripting/outcomes/eliminate_player.gd")
}

func get_outcome(name):
    return self.templates[name].new()
    
