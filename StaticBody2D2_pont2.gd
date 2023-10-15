extends StaticBody2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var parent = get_parent()
	position = Vector2(position[0]- parent.speed, position[1])
	
	var sprite_size = 9600
	
	if position.x <= - (sprite_size):
		# Réinitialise la position du sprite à la limite droite de l'écran
		position.x = 0
