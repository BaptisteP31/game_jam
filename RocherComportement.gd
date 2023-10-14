extends Node2D

func _ready():
	pass

func _process(delta):
	position = Vector2(position[0]- 10, position[1])
