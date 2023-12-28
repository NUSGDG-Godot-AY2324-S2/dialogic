extends Node2D

const start_dialogue = preload("res://dialogues/start.dialogue")

var dialogue


func _ready():
	StateManager.get_instance().grass_taken.connect(remove_grass)
	StateManager.get_instance().grass_completed.connect(remove_other_grass)


func trigger_dialogue(dialogue_name):
	Dialogue.create(dialogue_name, get_tree())


func _on_start_dialogue_timer_timeout():
	trigger_dialogue("start")


func remove_grass():
	$grass.queue_free()


func remove_other_grass():
	$second_grass.queue_free()
