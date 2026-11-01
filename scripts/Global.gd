extends Node


var score = 0
func reset():
	score = 0
	get_tree().change_scene_to_file("res://scenes/root_game.tscn")
