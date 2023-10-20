extends CharacterBody2D

var screen_size

@export var speed = 400

@onready var collisionShape2D: CollisionShape2D = $CollisionShape2D
@onready var animation: AnimatedSprite2D = $AnimatedSprite2D


# Called when the node enters the scene tree for the first time.
func _ready():
	screen_size = get_viewport_rect().size
	hide()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	move(delta)
	
func move(delta):
	var velocity = Vector2.ZERO
	
	if Input.is_action_pressed("move_right"):
		velocity.x += 1
	if Input.is_action_pressed("move_left"):
		velocity.x -= 1
	if Input.is_action_pressed("move_up"):
		velocity.y -= 1
	if Input.is_action_pressed("move_down"):
		velocity.y += 1
		
	if velocity.length() > 0:
		velocity = velocity.normalized() * speed

	move_and_collide(velocity * delta)
	
	
	
	


func spawn(pos: Vector2):
	position = pos
	show()
	animation.play('idle')
	# collisionShape2D.disabled = false

