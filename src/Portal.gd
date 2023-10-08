extends Area2D
@export var isFinalDoor := false
@export_file var f

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	$Portal_Anim.play("Idle")

# Teleport to next level
func _on_body_entered(body: Node2D) -> void:
	if body.name == "player":
		if isFinalDoor:
			get_tree().quit()
		else:
			PlayerData.player_position = Vector2(59, 215)
			body.set_position(PlayerData.player_position)
			get_tree().change_scene_to_file(f)
