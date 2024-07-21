class_name StateMachine
extends Node

var currentState : StateClass = IdleClass
var nextState : StateClass = null

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if nextState != null:
		currentState.on_exit()
		currentState = nextState
		nextState = null
		currentState.on_enter()
	
	currentState.update(delta)

func _input(event):
	currentState.manage_input(event)