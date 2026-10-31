extends Node2D
@onready var pipe_scene = preload("res://scenes/pipes.tscn")

@onready var timer = $Timer
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _ready():
	timer.timeout.connect(_on_timer_timeout)
func _process(delta):
	pass
	

func _on_timer_timeout():
	var pipe = pipe_scene.instantiate()
	add_child(pipe)
	var y = randf_range(-91,91)
	print("Spawned a pipe")
	pipe.global_position = Vector2($".".global_position.x, y)
	timer.start(randf_range(2,3))
	
	
