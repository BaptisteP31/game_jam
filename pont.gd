extends Node2D

var speed:int = 10
var Obstacles = []
var obs1 = preload("res://obstacle_1.tscn")
var obs2 = preload("res://obstacle_2.tscn")
var obs3 = preload("res://obstacle_3.tscn")
var obs4 = preload("res://obstacle_4.tscn")
var obs5 = preload("res://obstacle_5.tscn")
var obs6 = preload("res://obstacle_6.tscn")
var obs7 = preload("res://obstacle_7.tscn")
var obs8 = preload("res://obstacle_8.tscn")

func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Obstacles.size()<64:
		Obstacles.append(obs1)
		Obstacles.append(obs2)
		Obstacles.append(obs3)
		Obstacles.append(obs4)
		Obstacles.append(obs5)
		Obstacles.append(obs6)
		Obstacles.append(obs7)
		Obstacles.append(obs8)

func _on_timer_timeout():
	var nb_alea = randi_range(0, Obstacles.size()-1)
	var new_obstacle = Obstacles[nb_alea].instantiate()
	
	add_child(new_obstacle)
