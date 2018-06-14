extends KinematicBody2D

var vel = Vector2()

func _ready():
	randomize()
	position.y = randf()*600
	position.x = 1035
	pass

func _physics_process(delta):
	var collision = move_and_collide(vel*delta)
	if collision != null:
		print(collision.collider.name)
		if collision.collider.has_method("reset"):
            collision.collider.reset()
	move_and_collide(vel*delta)
	pass


func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
	pass

func set_velocity(vel_increment):
	vel.x += vel_increment