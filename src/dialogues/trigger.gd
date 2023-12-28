extends Area2D

@export var dialogue_name: String


func _on_body_entered(body):
	get_parent().trigger_dialogue(dialogue_name)
