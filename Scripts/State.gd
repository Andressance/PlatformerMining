class_name StateClass
extends Node

func on_enter():
    push_warning("on_enter() not implemented in {}".format(get_class()))

func on_exit():
    push_warning("on_exit() not implemented in {}".format(get_class()))

func update(_delta):
    push_warning("update() not implemented in {}".format(get_class()))

func manage_input(_event):
    push_warning("manage_input() not implemented in {}".format(get_class()))