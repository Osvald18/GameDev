extends CharacterBody2D


const SPEED = 100.0
const JUMP_VELOCITY = -400.0
var player_chase = false
var player = null


func _physics_process(delta: float) -> void:
	#print("Chasing:", player_chase)
	#print("Velocity:", velocity)
	if player_chase and player != null:
		var direction = (player.global_position - global_position).normalized()
		velocity = direction * SPEED
	else:
		velocity = Vector2.ZERO
	
	move_and_slide()
	
func _on_detection_area_body_entered(body):
	if body.is_in_group("player"):
		player = body
		player_chase = true

func _on_detection_area_body_exited(body):
	# print("entered:", body.name)
	
	if body == player:
		player = null
		player_chase = false
