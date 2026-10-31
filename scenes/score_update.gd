extends Area2D

var speed = -75



# Called every frame. 'delta' is the elapsed time since the previous frame.


func _process(delta: float):
	self.global_position.x+=speed * delta


func _on_body_entered(body: Node2D) :
	Global.score += 1
