# Ruff-Platformer-Engine-GMS
A port of a Scratch project to Gamemaker Studio, just to show that it can be done rather easily

## What is this?

This is a platformer engine demo, originally built in Scratch and based off of a old book I have. The original project can be found [here](https://scratch.mit.edu/projects/114215238).

## If Gamemaker already has built-in physics, why does this exist?

I mainly ported this specific project because of its relative simplicity and readability as opposed to some of the other projects I made while I was still active on Scratch.

## How long did it take you/how hard was this to port?

To be honest, it only took around an hour to do the initial port. However, it was buggy as all heck, due to just how _different_ Scratch and Gamemaker are. The biggest difference between the two engines was how GMS and Scratch handle Y-coordinates.
- In Scratch, Y coordinates behave exactly as you'd expect. If you increase the sprite's Y-position, it moves up on the screen
- In GMS, this is reversed. Meaning, if you increase a sprite's Y-position, it will move _down_ instead.

Not to mention the fact that the code for collision checking had to be almost entirely reworked, as GameMaker doesn't have a direct equivalent to Scratch's "if touching (...)" block. 

TL;DR, the initial port was really easy, however, debugging was a nightmare.

## Can I use this?

I don't know why you'd want to, seeing as GameMaker Studio 2 has a better (?) physics engine built-in, but sure! Knock yourself out.
