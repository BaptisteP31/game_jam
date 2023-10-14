extends Node2D

#preload tout les obstacles
var obstacles = []
var rocher = preload("res://rocher.tscn")


# Called when the node enters the scene tree for the first time.
func _ready():
	obstacles.append(rocher)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_timer_timeout():
	var nb_alea = randi_range(0, obstacles.size()-1)
	var new_obstacle = obstacles[nb_alea].instantiate()
	
	add_child(new_obstacle)
