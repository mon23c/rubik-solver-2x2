:- include('show.pl')
show(cube(W1,W2,W3,W4,Y1,Y2,Y3,Y4,G1,G2,G3,G4,B1,B2,B3,B4,R1,R2,R3,R4,O1,O2,O3,O4)) :-
	print_rubik([' ',' ',' ',' ',O1,' ',O2],
	      [' ',' ',' ',' ',O3,' ',O4],
		  [G1,' ',G2,' ',W1,' ',W2,' ',B1,' ',B2],
		  [G3,' ',G4,' ',W3,' ',W4,' ',B3,' ',B4],
		  [' ',' ',' ',' ',R1,' ',R2],
		  [' ',' ',' ',' ',R3,' ',R4],
		  [' ',' ',' ',' ',Y1,' ',Y2],
		  [' ',' ',' ',' ',Y3,' ',Y4]).

print_rubik([]).
print_rubik([H|T]) :- write(H), nl, print_rubik(T)