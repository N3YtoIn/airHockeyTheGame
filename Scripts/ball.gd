extends RigidBody2D

var dir = [-1, 1]
var spd = 500

var score1 = 0
var score2 = 0

func _ready() -> void:
	
	reset()
	
	pass

func _process(delta: float) -> void:
	score()
	
	pass

func reset():
	
	global_position = get_viewport_rect().size / 2
	freeze = true
	await get_tree().create_timer(1.5).timeout
	freeze = false
	
	apply_central_impulse(Vector2( dir[randi() % dir.size()] * spd, dir[randi() % dir.size()] * spd))
	
	pass

func score():
	
	if global_position.x >= get_viewport_rect().size.x:
		reset()
		print("Ponto para o Player1")
		score1 += 1
		
	if global_position.x <= 0:
		reset()
		print("Ponto para o Player2")
		score2 += 1
	
	$"../Score".text = str(score1) + "   " + str(score2)
	pass
