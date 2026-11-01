extends Node2D
const speed = -75

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float):
	$".".global_position = Vector2($".".global_position.x + speed * delta , $".".global_position.y)





func _on_body_entered(body: Node2D) :
	print("Touched a pipe")
	get_tree().change_scene_to_file("res://scenes/control.tscn")
