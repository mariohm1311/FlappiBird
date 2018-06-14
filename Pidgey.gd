extends KinematicBody2D

export var increment = 300
var vel = Vector2()

func _physics_process(delta):
	
	vel.y += 20
	if (Input.is_action_just_pressed("go_up")):
		$'./AnimatedSprite/fapping'.play('fly')
		vel.y = -500
	

	if position.x > 1024:
		vel.x = 0
		position.x = 1024
	if position.x < 0:
		vel.x = 0
		position.x = 0
	if position.y < 0:
		vel.y = 0
		position.y = 0
	if position.y > 600:
		reset()
	
	move_and_slide(vel, Vector2(0, -1))


func _ready():
	pass

func reset():
	get_tree().change_scene("res://GameOver.tscn")
#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
