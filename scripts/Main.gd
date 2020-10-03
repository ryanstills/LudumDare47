extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	var generated_track = Path2D.new()
	generated_track.set_curve(Globals.build_track())
	for point in generated_track.get_curve().get_baked_points():
		print(point)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
