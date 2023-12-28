extends Node2D

const start_dialogue = preload("res://dialogues/start.dialogue")

var dialogue


func _on_start_dialogue_timer_timeout():
	Dialogue.create("start", get_tree())
