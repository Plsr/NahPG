extends Node2D

@onready var player: CharacterBody2D = $Player


# Called when the node enters the scene tree for the first time.
func _ready():
	player.spawn(Vector2(100, 100))
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
