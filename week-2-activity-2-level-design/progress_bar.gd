extends ProgressBar


@onready var timer = $Timer
@onready var damage_bar = $DamageBar

var health = 0 : set = _set_health

# Called when the node enters the scene tree for the first time.

func _ready() -> void:
	pass # Replace with function body.

func _set_health(new_health):
	pass

func init_health(_health): 
	health = _health
	max_value = health
	value = health
	damage_bar.max_value = health
	damage_bar.value = health
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
