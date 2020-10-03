extends Node


var screen_width = 1024
var screen_height = 600
var screen_middle = 300

## play field variables
var circle_field_start = 48
var circle_field_end = 976
var max_circle_space = 928
var current_origin = Vector2(48, 300)


func get_screen_size():
	return Vector2(screen_width, screen_height)
	
func get_path_params(size=32, num_sides=8):
	return Vector3(size / (2 *  sin(PI/num_sides)), size, num_sides)
	
func get_angle_size(num_sides):
	return 360 / num_sides
	
func get_x_y_from_radius_and_angle(origin, radius, angle):
	return Vector2(origin.x + radius * cos(angle * (PI/180)), origin.y + radius * sin(angle * PI/180))
	
func build_track():
	
	var track_path = Curve2D.new()
	var total_angle_complete = 0
	
	var path_params = get_path_params()
	var angle = get_angle_size(path_params[2])
	
	while total_angle_complete < 360:
		
		track_path.add_point(get_x_y_from_radius_and_angle(current_origin, path_params[0], total_angle_complete))
		total_angle_complete = total_angle_complete + angle
	
	current_origin = current_origin.x + path_params[0] 
	return track_path
	
	
