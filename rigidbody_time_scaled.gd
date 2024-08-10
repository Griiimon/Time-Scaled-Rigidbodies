class_name RigidBody2DTimeScaled
extends RigidBody2D


var update_time_scale:= false
var updated_time_scale_factor: float



var time_scale: float= 1:
	set(s):
		if s != time_scale:
			updated_time_scale_factor= s / time_scale
			time_scale= s
			update_time_scale= true


func _integrate_forces(state: PhysicsDirectBodyState2D) -> void:
	if update_time_scale:
		state.linear_velocity= state.linear_velocity * updated_time_scale_factor
		state.angular_velocity= state.angular_velocity * updated_time_scale_factor
		update_time_scale= false
