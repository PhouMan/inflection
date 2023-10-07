extends Control



func _on_level_1_pressed():
	get_tree().change_scene_to_file("res://src/level_1.tscn")


func _on_back_pressed():
	get_tree().change_scene_to_file("res://src/menu.tscn")
