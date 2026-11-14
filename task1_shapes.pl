% ARTI 401 - Session 10: Task 1 - Area and Perimeter

% ------------------------------------------------------------


% square(Side, Area, Perimeter)
square(Side, Area, Perimeter) :-
    Area is Side * Side,
    Perimeter is 4 * Side.

% rectangle(Width, Height, Area, Perimeter)
rectangle(Width, Height, Area, Perimeter) :-
    Area is Width * Height,
    Perimeter is 2 * (Width + Height).

% triangle(Base, VerticalHeight, A, B, C, Area, Perimeter)
% A, B and C are the lengths of the three sides.
triangle(Base, Height, A, B, C, Area, Perimeter) :-
    Area is 0.5 * Base * Height,
    Perimeter is A + B + C.
