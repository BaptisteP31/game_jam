extends StaticBody2D

var speed:int = 10
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position = Vector2(position[0]- 10, position[1])

	if position.x <= - (1920):
		var parent = get_parent()
		parent.queue_free()
		
		
