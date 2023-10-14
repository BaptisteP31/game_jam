extends Node2D

var tableaux = []
var tab1 = preload("res://obstacle_1.tscn")

var speed:int = 10
# Called when the node enters the scene tree for the first time.
func _ready():
	tableaux.append(tab1)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):	
	
	#var new_tab = tableaux[nb_alea].instantiate()
	
	#for n in get_children():
	#	remove_child(n)
	#	n.queue_free()
	
	
	var currentTabs = get_children()
	if currentTabs.size() < 2:
		var nb_alea = randi_range(0, tableaux.size()-1)
		add_child(tableaux[nb_alea].instantiate())
		
	if currentTabs.size() < 2: 
		var nb_alea = randi_range(0, tableaux.size()-1)
		var new_tab = tableaux[nb_alea].instantiate()
		print(new_tab.position.x)
		new_tab.position.x = 1920
		print(new_tab.position.x)
		add_child(new_tab)
