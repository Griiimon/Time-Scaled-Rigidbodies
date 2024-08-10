extends Area2D


@export var time_factor: float= 1



func _on_body_entered(body: Node2D) -> void:
	if body is RigidBody2DTimeScaled:
		body.time_scale= time_factor


func _on_body_exited(body: Node2D) -> void:
	if body is RigidBody2DTimeScaled:
		body.time_scale= 1
