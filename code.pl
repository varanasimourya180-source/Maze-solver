% --- MAZE DEFINITION ---
% Maze size (Rows x Columns)
size(3,3).

% Free cells (walkable paths)
free(0,0).
free(0,1).
free(0,2).
free(1,2).
free(2,0).
free(2,1).
free(2,2).

% Start and Goal coordinates
start(0,0).
goal(2,2).

% --- MOVEMENT RULES ---
% Defines how we can move: Down, Up, Right, Left
move(X, Y, X1, Y) :- X1 is X + 1.
move(X, Y, X1, Y) :- X1 is X - 1.
move(X, Y, X, Y1) :- Y1 is Y + 1.
move(X, Y, X, Y1) :- Y1 is Y - 1.

% --- VALIDATION ---
% Checks if a position is within grid bounds AND is a free cell
valid(X, Y) :-
    size(R, C),
    X >= 0, X < R,
    Y >= 0, Y < C,
    free(X, Y).

% --- PATHFINDING (Depth-First Search) ---
% Base Case: We have reached the goal.
path(X, Y, _Visited, [(X,Y)]) :-
    goal(X, Y).

% Recursive Case: Move to a valid, unvisited neighbor.
path(X, Y, Visited, [(X,Y) | Path]) :-
    move(X, Y, X1, Y1),
    valid(X1, Y1),
    \+ member((X1, Y1), Visited),           % \+ means NOT. Prevents infinite loops.
    path(X1, Y1, [(X1, Y1) | Visited], Path).

% --- EXECUTION ---
% Main wrapper to start the search from the start coordinate.
solve(Path) :-
    start(X,Y),
    path(X, Y, [(X,Y)], Path).

% --- AUTOMATIC EXECUTION FOR ONECOMPILER ---
:- initialization(main).

main :-
    solve(Path),
    write('Path found: '), write(Path), nl,
    halt.
