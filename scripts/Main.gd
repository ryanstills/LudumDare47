extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	var path_parameters = Globals.get_path_radius()
	print(path_parameters)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
