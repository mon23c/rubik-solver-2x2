# rubik-solver-2x2
Logic Programming Final Project
* **[Adrian Wijaya](https://github.com/mon23c)** - 1806205363
* **[Michael Susanto](https://github.com/michaelsusanto81)** - 1806205653

## Description
* This app lets you play 2x2 rubik interactively on web browser.
* There are 3 difficulties (based on how many turns you have to solve the rubik):
	* Easy (50 turns)
	* Medium (35 turns)
	* Hard (25 turns)
* There are only 3 moves of the rubik:
	* Top (rotate top side of rubik by 90 degree clockwise)
	* Front (rotate front side of rubik by 90 degree clockwise)
	* Right (rotate right side of rubik by 90 degree clockwise)
* If you're stuck in the game, you can hit **Hint** button.
* If you're clicking the wrong move, you can hit **Undo** button.
* [Click Here](https://rubiks2x2.herokuapp.com/) to see live demo.

## Tools used
* SWI Prolog
	* The main program in the backend uses SWI Prolog as main language.
* SWI Prolog http library
	* This http library of SWI Prolog is used for routing/mapping/handling requests coming from the frontend.
* Prolog Web Pages (PWP)
	* PWP is used for rendering dynamic contents of frontend, along with HTML, CSS, and JavaScript to give best experience of users.

## Rubik Structure
```
      O1 O2					
      O3 O4                 BACK
G1 G2 W1 W2 B1 B2      LEFT TOP RIGHT
G3 G4 W3 W4 B3 B4           FRONT
      R1 R2                 BOTTOM
      R3 R4
      Y1 Y2
      Y3 Y4
```

## How to run the game
* Clone this repository
```cmd
git clone https://github.com/mon23c/rubik-solver-2x2.git
```

* Go inside the directory
```cmd
cd rubik-solver-2x2
```

* Run the command
```cmd
swipl api.pl
```

* Open localhost:5000 in your browser

* Follow the instructions given in the game!

## Unit Test Cases
* Rotate Top
```cmd
?- solve(Solution, cube(w,w,w,w,y,y,y,y,g,o,g,o,r,b,r,b,g,g,r,r,o,o,b,b), C), solved(C).

Output:
Solution = [top],
C = cube(w, w, w, w, y, y, y, y, g, g, g, g, b, b, b, b, r, r, r, r, o, o, o, o) .
```
This means the top side of the rubik should be rotated clockwise by 90 degree.

* Rotate Right
```cmd
?- solve(Solution, cube(w,o,w,o,y,r,y,r,g,g,g,g,b,b,b,b,r,w,r,w,o,y,o,y), C), solved(C).

Output:
Solution = [right],
C = cube(w, w, w, w, y, y, y, y, g, g, g, g, b, b, b, b, r, r, r, r, o, o, o, o) .
```
This means the right side of the rubik should be rotated clockwise by 90 degree.

* Rotate Front
```cmd
?- solve(Solution, cube(w,w,b,b,g,g,y,y,g,g,w,w,b,b,y,y,r,r,r,r,o,o,o,o), C), solved(C).

Output:
Solution = [front],
C = cube(w, w, w, w, y, y, y, y, g, g, g, g, b, b, b, b, r, r, r, r, o, o, o, o) .
```
This means the front side of the rubik should be rotated clockwise by 90 degree.

## Complex Test Case
* Sample randomized rubik's state
```cmd
?- solve(Solution, cube(y,o,r,g,b,r,o,o,g,o,r,y,b,b,r,w,b,y,w,g,w,w,g,y), C), solved(C).

Output:
Solution = [right, front, top, top, top, front, top, front, front, front, top, right, top, top],
C = cube(g, g, g, g, b, b, b, b, y, y, y, y, w, w, w, w, r, r, r, r, o, o, o, o) .
```