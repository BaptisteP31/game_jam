extends Node2D

var tableaux = []
var tab1 = preload("res://obstacle_1.tscn")
var tab2 = preload("res://obstacle_2.tscn")
var tab3 = preload("res://obstacle_3.tscn")
var tab4 = preload("res://obstacle_4.tscn")
#var tab1 = preload("res://obstacle_1.tscn") pour le reste en changeant

var speed:int = 10
# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	# tableaux.append(tab1) pour le reste


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	tableaux.append(tab1)
	tableaux.append(tab2)
	tableaux.append(tab3)
	tableaux.append(tab4)


func _on_timer_timeout():
	var aleatoir = randi_range(0, tableaux.size())
	var new_obstacle = tableaux[aleatoir].instantiate()
	
	add_child(new_obstacle)
