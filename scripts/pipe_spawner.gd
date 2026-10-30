extends Node2D
@onready var pipe_scene = preload("res://scenes/pipes.tscn")
var local_x = $".".position.x
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	timer.timeout.connect(_on_timer_timeout())


func _on_timer_timeout() -> void:
	var pipe = pipe_scene.instantiate()
	add_child(pipe)
	var y = 
