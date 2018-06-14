extends Node

export var initial_velocity = -100
export var num_balls = 2

var counter = 0
var delay_counter = 0
var bullet_delay = 3
var counter2 = 0

func _ready():

	pass


func _process(delta):
	if delay_counter >= bullet_delay or delay_counter == 0: 
		var pokeball = preload("res://pokeball.tscn").instance()
		if counter%num_balls == 0:
			counter2 += 1
		counter += 1
		print('vel updated now')
		print(counter2)
		pokeball.set_velocity(counter2*initial_velocity)
		get_parent().add_child(pokeball)
		delay_counter = 0
	delay_counter += delta 