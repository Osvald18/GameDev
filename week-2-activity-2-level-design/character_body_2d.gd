extends CharacterBody2D

const SPEED = 300.0
const JUMP_VELOCITY = -400.0

func _physics_process(delta: float) -> void:
	var direction = Vector2(
		Input.get_axis("move_left", "move_right"),
		Input.get_axis("move_up", "move_down")
	)

	velocity = direction.normalized() * SPEED

	move_and_slide()
	
	# Add the gravity.
	#if not is_on_floor():
		#velocity += get_gravity() * delta



func _process(delta):
	
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
	

		
