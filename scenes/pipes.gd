extends Node2D


var speed = -75
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	self.global_position.x += delta * speed
	if(self.global_position.x < -700):
		self.queue_free()
