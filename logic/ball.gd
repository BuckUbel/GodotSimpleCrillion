extends Area2D

const PLAYER_MOVE_LEFT = "player_move_left"
const PLAYER_MOVE_RIGHT = "player_move_right"

const MOVE_SPEED = 100
const DEFAULT_SPEED = 100
var _speed = DEFAULT_SPEED
var direction = Vector2(0,1)

onready var _screen_size_x = get_viewport_rect().size.x

onready var _initial_pos = position



var rng = RandomNumberGenerator.new()
func _ready():
	rng.randomize()
#	var dirX = rng.randf_range(-1, 1)
#	var dirY = rng.randf_range(-1, 1)
#	var dirRandomSelect = rng.randi_range(0,1)
#	if dirRandomSelect == 1 && dirY != 1:
#		dirX = 1;
#	if dirRandomSelect == 0 && dirX != 1:
#		dirY = 1;
#	direction = Vector2(dirX, dirY)


func _process(delta):
	_speed += delta * 2
	var positionChangeVector = position + (_speed * delta * direction)
	position.y = positionChangeVector.y
#	position.x += _speed * delta * direction.x
#	position += _speed * delta * direction

	
	var input = Input.get_action_strength(PLAYER_MOVE_RIGHT) - Input.get_action_strength(PLAYER_MOVE_LEFT)
	position.x = clamp(position.x + input * MOVE_SPEED * delta, 16, _screen_size_x - 16)


func reset():
	direction = Vector2.LEFT
	position = _initial_pos
	_speed = DEFAULT_SPEED
