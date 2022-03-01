extends Area2D

export var _bounce_direction = 1

func _on_area_entered(area):
	if area.name == "Ball":
		prints("Ceil ",area.direction)
#		area.direction = (area.direction + Vector2(0, _bounce_direction)).normalized()
		area.direction.y = ceil(area.direction.y) * -1
		prints("Ceil ",area.direction)
