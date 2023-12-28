extends Node
class_name StateManager

signal grass_taken
var is_grass_taken = false

signal grass_completed
var is_completed = false

static var instance = StateManager.new()

static func get_instance():
	return instance


func take_grass():
	is_grass_taken = true
	grass_taken.emit()


func reunite_grass():
	is_completed = true
	grass_completed.emit()
