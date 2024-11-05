extends Node3D


var que : float = 1.1

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$AnimationPlayer.play("mixamo_com")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	#This is for continuing the animation
	que -= delta
	if que < 0:
		$AnimationPlayer.queue("mixamo_com")
		que = 1.1
	
	
