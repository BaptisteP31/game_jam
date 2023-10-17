extends StaticBody2D

var speed:int = 10

func _ready():
	pass

func _process(delta):
	position = Vector2(position[0]- 5, position[1])
