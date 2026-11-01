extends Label

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Engine.time_scale == 0:
		self.text = "Press Space to play"
	else :
		self.text = "Score: " + str(Global.score)
