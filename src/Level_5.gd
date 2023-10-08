extends Node2D


var origin_vec = Vector2(59, 215)

# Called when the node enters the scene tree for the first time.
func _ready():
	
	RenderingServer.set_default_clear_color(Color.BLACK) 
	
	$player.set_position(PlayerData.player_position)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func switchScene()-> void:
	PlayerData.player_position = $player.global_position
	get_tree().change_scene_to_file("res://src/Level_5_alt.tscn")
