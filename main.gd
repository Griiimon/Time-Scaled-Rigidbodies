extends Node2D


const RIGIDBODY_SCENE = preload("res://rigidbody2d_time_scaled.tscn")



func _ready() -> void:
	var rect: Rect2i= get_viewport().get_visible_rect()
	for i in 50:
		var rb= RIGIDBODY_SCENE.instantiate()
		rb.position= Vector2(randi() % rect.size.x, randi() % rect.size.y)
		rb.linear_velocity= Vector2.from_angle(randf() * 2 * PI) * randf_range(10, 200)
		add_child(rb)
