extends StaticBody2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var parent = get_parent()
	position = Vector2(position[0]- parent.speed, position[1])
	
	# var main_node = get_node("../MainNode")
	
	var sprite_size = 1920
	
	if position.x <= - (sprite_size):
		# Réinitialise la position du sprite à la limite droite de l'écran
		position.x = sprite_size
		print("Fin de fond")
