extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Engine.time_scale = 0
func _input(event):
	if event.is_action_pressed("ui_accept"):
		Engine.time_scale = 1
