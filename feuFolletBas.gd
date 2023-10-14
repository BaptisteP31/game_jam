extends Node2D


var feuFolletBas = preload("res://Collectible/feuFollet.tscn")



func _on_timer_timeout():
	var feuFollet = feuFolletBas.instantiate()
	
	var rng = RandomNumberGenerator.new()
	
	var posArray = [[1920 + 60, 450], [1920 + 100, 550], [1920 + 200, 450], [1920 + 150, 550]]
	
	var indiceRng = rng.randi_range(0, 3)
	feuFollet.position = Vector2(posArray[indiceRng][0], posArray[indiceRng][1])
	
	if Global.maxFeu > Global.currentFeu:
		add_child(feuFollet)
		Global.currentFeu += 1
	
