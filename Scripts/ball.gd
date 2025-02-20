extends RigidBody2D

var dir = [-1, 1]
var spd = 500

func _ready() -> void:
	
	reset()
	
	pass


func _process(delta: float) -> void:
	pass


func reset():
	
	global_position = get_viewport_rect().size / 2
	apply_central_impulse(Vector2( dir[randi() % dir.size()] * spd, dir[randi() % dir.size()] * spd))
	
	pass
