% Solved state of cube
solved(cube(A,A,A,A,B,B,B,B,C,C,C,C,D,D,D,D,E,E,E,E,F,F,F,F)).

% Main logic
solve([], C, C).
solve([NR | R], C, Res) :- solve(R, Cur, Res), rotate(NR, C, Cur).

% Rotations logic
rotate(
	top,
	cube(
		W1,W2,W3,W4,
		Y1,Y2,Y3,Y4,
		G1,G2,G3,G4,
		B1,B2,B3,B4,
		R1,R2,R3,R4,
		O1,O2,O3,O4
	),
	cube(
		W3,W1,W4,W2,
		Y1,Y2,Y3,Y4,
		G1,R1,G3,R2,
		O3,B2,O4,B4,
		B3,B1,R3,R4,
		O1,O2,G4,G2
	)
).

rotate(
	front,
	cube(
		W1,W2,W3,W4,
		Y1,Y2,Y3,Y4,
		G1,G2,G3,G4,
		B1,B2,B3,B4,
		R1,R2,R3,R4,
		O1,O2,O3,O4
	),
	cube(
		W1,W2,G3,G4,
		B4,B3,Y3,Y4,
		G1,G2,Y2,Y1,
		B1,B2,W3,W4,
		R3,R1,R4,R2,
		O1,O2,O3,O4
	)
).

rotate(
	right,
	cube(
		W1,W2,W3,W4,
		Y1,Y2,Y3,Y4,
		G1,G2,G3,G4,
		B1,B2,B3,B4,
		R1,R2,R3,R4,
		O1,O2,O3,O4
	),
	cube(
		W1,R2,W3,R4,
		Y1,O2,Y3,O4,
		G1,G2,G3,G4,
		B3,B1,B4,B2,
		R1,Y2,R3,Y4,
		O1,W2,O3,W4
	)
).