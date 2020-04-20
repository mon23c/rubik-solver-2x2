# rubik-solver-2x2
Logic Programming Final Project
* Adrian Wijaya - 1806205363
* Michael Susanto - 1806205653

## Info
This program gives solutions whice side must be rotated clockwise by 90 degrees.

## Rubik Structure
	  O1 O2
	  O3 O4
G1 G2 W1 W2 B1 B2
G3 G4 W3 W4 B3 B4
	  R1 R2
	  R3 R4
	  Y1 Y2
	  Y3 Y4

## Test Cases
```cmd
?- solve(Solution, cube(w,w,w,w,y,y,y,y,g,o,g,o,r,b,r,b,g,g,r,r,o,o,b,b), C), solved(C).

Output:
Solution = [top],
C = cube(w, w, w, w, y, y, y, y, g, g, g, g, b, b, b, b, r, r, r, r, o, o, o, o) .
```
This means the top side of the rubik should be rotated clockwise by 90 degree.

```cmd
?- solve(Solution, cube(w,o,w,o,y,r,y,r,g,g,g,g,b,b,b,b,r,w,r,w,o,y,o,y), C), solved(C).

Output:
Solution = [right],
C = cube(w, w, w, w, y, y, y, y, g, g, g, g, b, b, b, b, r, r, r, r, o, o, o, o) .
```
This means the right side of the rubik should be rotated clockwise by 90 degree.

```cmd
?- solve(Solution, cube(w,w,b,b,g,g,y,y,g,g,w,w,b,b,y,y,r,r,r,r,o,o,o,o), C), solved(C).

Output:
Solution = [front],
C = cube(w, w, w, w, y, y, y, y, g, g, g, g, b, b, b, b, r, r, r, r, o, o, o, o) .
```
This means the right side of the rubik should be rotated clockwise by 90 degree.