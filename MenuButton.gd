extends MenuButton
var pressed
func _ready():
	if(Input.is_action_just_pressed(click)):
		pressed=true 
	

func _process(delta):
	if(pressed==true):
		get_tree().change_scene("res://escenaprueba.tscn")
