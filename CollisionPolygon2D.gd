extends CollisionPolygon2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position = Vector2(position[0]- 0.5, position[1])
	
	var viewWidth = ProjectSettings.get_setting("display/window/size/viewport_width")
	var viewHeight = ProjectSettings.get_setting("display/window/size/viewport_height")
	
	if position.x <= -viewWidth:
		# Réinitialise la position du sprite à la limite droite de l'écran
		position.x = viewWidth
