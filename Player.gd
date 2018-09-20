extends Spatial

var speed = 5
var rotSpeed = 2
var moving = true

func _ready():
	pass
	
func _process(delta):
	if Input.is_action_pressed("move_up"):
		rotate(Vector3(1,0,0), rotSpeed * delta)
	if Input.is_action_pressed("move_down"):
		rotate(Vector3(-1,0,0), rotSpeed * delta)
	if Input.is_action_pressed("move_left"):
		rotate(Vector3(0,1,0), rotSpeed * delta)
	if Input.is_action_pressed("move_right"):
		rotate(Vector3(0,-1,0), rotSpeed * delta)
		
	if Input.is_action_just_pressed("move_stop"):
		moving = !moving
	
	if moving:
		translate(Vector3(0,0,-speed * delta))