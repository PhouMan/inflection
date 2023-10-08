extends Control



func _on_level_1_pressed():
	get_tree().change_scene_to_file("res://src/level_1.tscn")


func _on_back_pressed():
	get_tree().change_scene_to_file("res://src/menu.tscn")


func _on_level_2_pressed():
	get_tree().change_scene_to_file("res://src/level_2.tscn")


func _on_level_3_pressed():
	get_tree().change_scene_to_file("res://src/level_3.tscn")


func _on_level_5_pressed():
	get_tree().change_scene_to_file("res://src/level_5.tscn")


func _on_level_4_pressed():
	get_tree().change_scene_to_file("res://src/level_4.tscn")
