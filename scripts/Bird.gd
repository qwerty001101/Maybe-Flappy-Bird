extends CharacterBody2D

@onready var _animated_sprite = $AnimatedSprite2D
const SPEED = 300.0
const JUMP_VELOCITY = -150.0
const gravity_multi = 0.5

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta * gravity_multi

	# Handle jump.
	if Input.is_action_just_pressed("ui_accept"):
		velocity.y = JUMP_VELOCITY
		print("Should jump")
		_animated_sprite.play("Jump")
	elif velocity.y>=0:
		_animated_sprite.play("Idle")
		

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	

	move_and_slide()
