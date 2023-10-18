extends Node2D

var viewWidth = ProjectSettings.get_setting("display/window/size/viewport_width")
var viewHeight = ProjectSettings.get_setting("display/window/size/viewport_height")

var mainAnchor = Vector2(147, 589)

func _ready():
	Engine.get_frames_per_second()

func _process(delta):
	print(Engine.get_frames_per_second())
	

func _ontimer_timeout():
	pass
