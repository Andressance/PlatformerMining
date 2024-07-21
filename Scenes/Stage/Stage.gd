class_name StageClass
extends Node2D


@export var stageName : String

@onready var progressBar : ProgressBar = $Container/VBoxContainer/ProgressBar
@onready var stageNameLabel : Label = $Container/VBoxContainer/Name

var time : float = 120.0:
	get:
		return time
	set(value):
		time = value
		updateProgressBar()

# Called when the node enters the scene tree for the first time.
func _ready():

	Singleton.timeOut.connect(Callable(self, "timeReduce"))
	stageNameLabel.text = stageName
	updateProgressBar()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

func updateProgressBar():
	progressBar.value = time

func timeReduce():
	time -= 1

