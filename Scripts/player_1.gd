extends StaticBody2D


var dir = Vector2()
var spd = 400

@export var up = KEY_W
@export var down = KEY_S
@export var left = KEY_A
@export var right = KEY_D


func _ready() -> void:
	pass # Replace with function body.


func _physics_process(delta: float) -> void:
	
	move(delta)
	
	pass


func move(delta):
	
	dir = Vector2()
	
	if Input.is_key_pressed(up):
		dir += Vector2.UP
	
	if Input.is_key_pressed(down):
		dir += Vector2.DOWN
	
	if Input.is_key_pressed(left):
		dir += Vector2.LEFT
	
	if Input.is_key_pressed(right):
		dir += Vector2.RIGHT
	
	global_position+= dir * spd * delta
	
	
	
	
	pass
