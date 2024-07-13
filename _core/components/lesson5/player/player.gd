extends CharacterBody3D

const SPEED = 5.0
var jump_height : float = 5.0
var apex_duration : float = 0.4
var jump_gravity : float = 250.0
var foll_gravity : float = 10.0

func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		if velocity.y >= 0: 
			velocity.y -= jump_gravity * delta 
		else:
			velocity.y -= foll_gravity * delta

	# Handle jump.
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = 2 * jump_height / apex_duration
		jump_gravity = velocity.y / apex_duration

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var input_dir = Input.get_vector("left", "right", "up", "down")
	var direction = (transform.basis * Vector3(input_dir.x, 0, input_dir.y)).normalized()
	if direction:
		velocity.x = direction.x * SPEED
		velocity.z = direction.z * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		velocity.z = move_toward(velocity.z, 0, SPEED)

	move_and_slide()
