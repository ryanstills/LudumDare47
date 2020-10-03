extends Node


var screen_width = 1024
var screen_height = 600

## play field variables
var circle_field_start = 48
var circle_field_end = 976
var max_circle_space = 928


func get_screen_size():
	return Vector2(screen_width, screen_height)
	
func get_path_radius(size=32, num_sides=8):
	print(size)
	print(num_sides)
	return Vector3(size / (2 *  sin(PI/num_sides)), size, num_sides)
	
func get_angle_size(num_sides):
	return 360 / num_sides
	
func build_track(origin_point, radius, angle):
	
	
	pass
