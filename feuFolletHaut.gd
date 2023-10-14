extends Node2D


var feuFolletHaut = preload("res://Collectible/feuFollet.tscn")



func _on_timer_timeout():
	var feuFollet = feuFolletHaut.instantiate()
	
	var rng = RandomNumberGenerator.new()
	

	var posArray = [[1920 + 60, 120], [1920 + 100, 230], [1920 + 200, 150], [1920 + 150, 210]]
	
	var indiceRng = rng.randi_range(0, 3)
	feuFollet.position = Vector2(posArray[indiceRng][0], posArray[indiceRng][1])
	
	if Global.maxFeu > Global.currentFeu:
		add_child(feuFollet)
		Global.currentFeu += 1
