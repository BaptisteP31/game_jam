extends StaticBody2D

var speed:int = 10
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _process(delta):
	position = Vector2(position[0]- 5, position[1])
