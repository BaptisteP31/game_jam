extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _input(event):
	var parent = get_parent()
	if parent.isForeground and Input.is_action_just_pressed("Teleport_up"):
		scale.y = 0.8
		scale.x = 0.8
