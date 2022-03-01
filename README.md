# Simple Crillion with GDScript

Language: GDScript

Renderer: GLES 3

Based on this demo on the asset library of godot: https://godotengine.org/asset-library/asset/121

## How does the demo work?

A simple Pong game. This demo shows best practices
for game development in Godot, including
[signals](https://docs.godotengine.org/en/latest/getting_started/step_by_step/signals.html).

The walls, paddle, and ball are all
[`Area2D`](https://docs.godotengine.org/en/latest/classes/class_area2d.html)
nodes. When the ball touches the walls or the paddles,
they emit signals and modify the ball.

## How should the game work?

The paddles should no longer exist.

The ball will move by itself.

The wall and other elements should modify the movement of the ball. Maybe the ball should modify itself when it touches another element.

## Screenshots

![Screenshot](screenshots/pong.png)
