extends Node2D


var feuFolletBas = preload("res://Collectible/feuFollet.gd")



func _on_timer_timeout():
	var feuFollet = feuFolletBas.instantiate()
	
	var rng = RandomNumberGenerator.new()
	
	var posArray = [[900 + 1300, 450], [12]]
	
