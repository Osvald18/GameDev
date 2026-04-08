extends CharacterBody2D

const SPEED = 300.0
const JUMP_VELOCITY = -400.0

func _physics_process(delta: float) -> void:
	# Add the gravity.
	#if not is_on_floor():
		#velocity += get_gravity() * delta

	# Handle jump.
	#if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		#velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction_x := Input.get_axis("ui_left", "ui_right")
	var direction_y := Input.get_axis("ui_up", "ui_down")
	
	if direction_x || direction_y:
		velocity.x = direction_x * SPEED
		velocity.y = direction_y * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		velocity.y = move_toward(velocity.y,0, SPEED)

	move_and_slide()
	
	
func _process(delta):
	
	# var raw_input := Input.get_vector("move_down","move_left","move_right","move_up")

	if Input.is_action_pressed("move_left"):
		$AnimatedSprite2D.play("move_left")	
	elif Input.is_action_pressed("move_right"):
		$AnimatedSprite2D.play("move_right")
	elif Input.is_action_pressed("move_up"):
		$AnimatedSprite2D.play("move_up")
	elif Input.is_action_pressed("move_down"):
		$AnimatedSprite2D.play("move_down")
	else:
		$AnimatedSprite2D.play("idle")
	

		
