extends CharacterBody2D

const SPEED = 150.0

var max_health := 100.0

var health = 100.0:
	set(value):
		health = clamp(value, 0, max_health)



func _physics_process(delta):

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	velocity = direction * SPEED

	move_and_slide()
