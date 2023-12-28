extends Node
class_name Dialogue

const StartDialogue = preload("res://dialogues/start.dialogue")
const OptionDialogue = preload("res://dialogues/option.dialogue")
const ReceiveDialogue = preload("res://dialogues/receive.dialogue")


static func create(dialogue_name, game_tree):
	var dialogue_resource
	match dialogue_name:
		"start":
			dialogue_resource = StartDialogue
		"option":
			dialogue_resource = OptionDialogue
		"receive":
			dialogue_resource = ReceiveDialogue
	
	var dialogue = DialogueManager.show_dialogue_balloon(dialogue_resource)
	dialogue.process_mode = PROCESS_MODE_ALWAYS
	game_tree.paused = true
	dialogue.tree_exited.connect(func(): resume(game_tree))


static func resume(game_tree):
	game_tree.paused = false
