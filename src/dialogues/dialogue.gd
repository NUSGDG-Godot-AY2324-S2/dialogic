extends Node
class_name Dialogue

const start_dialogue = preload("res://dialogues/start.dialogue")


static func create(dialogue_name, game_tree):
	var dialogue_resource
	match dialogue_name:
		"start":
			dialogue_resource = start_dialogue
	
	var dialogue = DialogueManager.show_dialogue_balloon(dialogue_resource)
	dialogue.process_mode = PROCESS_MODE_ALWAYS
	game_tree.paused = true
	dialogue.tree_exited.connect(func(): resume(game_tree))


static func resume(game_tree):
	game_tree.paused = false
