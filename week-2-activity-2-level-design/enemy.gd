extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0
var player_chase = false
var player = null


func _physics_process(delta: float) -> void:
	if player_chase:
		position += (player.position - position) / SPEED
	
func _on_detection_area_body_entered(body):
	player = body
	player_chase = true

func _on_detection_area_body_exited(body):
	player = null
	player_chase = false
