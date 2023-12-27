# dialogic

Template for creating dialogic in game.

## Guide

### Scenes

1. Root & game

The scene `root` is the entry point of the game. It contains only one child node: the `game` scene.

2. Player

The `player` only has movement logic implemented:

* Left-right movement
* Jump from the ground

3. Map

Basic map has been implemented. Not all assets are imported into the tile set. You may import more if you wish.

### Collision

#### Layers

* Layer 1: player
* Layer 2: map

#### Mask

* Player: mask 2
* Map: no mask

## Acknowledgements

Assets are obtained from [mossy cavern](https://maaot.itch.io/mossy-cavern).
