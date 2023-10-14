extends Node2D

var viewWidth = ProjectSettings.get_setting("display/window/size/viewport_width")
var viewHeight = ProjectSettings.get_setting("display/window/size/viewport_height")

#preload tout les obstacles
var obstacles = []
var rocher = preload("res://rocher.tscn")

var mainAnchor = Vector2(147, 589)

func _ready():
	pass

func _process(delta):
	#append tout les obstacles dans le tableau
	obstacles.append(rocher)

func _on_timer_timeout():
	var nb_alea = randi_range(0, obstacles.size()-1)
	var new_obstacle = obstacles[nb_alea].instantiate()
	
	add_child(new_obstacle)
