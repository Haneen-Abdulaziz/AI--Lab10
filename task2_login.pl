% ARTI 401 - Session 10: Task 2 - Login Page
% Run with:  ?- login.

% ------------------------------------------------------------


% The dataset of users: user(Username, Password)
user(haneen, 1234).
user(sara, 5678).
user(admin, admin123).

% The user gets 3 attempts in total (1 + 2 more).
login :- attempt(3).

attempt(0) :- !,
    write('Sorry, you exceeded the maximum number of attempts, try again later.'), nl.

attempt(N) :-
    write('Enter username: '), nl,
    read(Username),
    write('Enter password: '), nl,
    read(Password),
    check(Username, Password, N).

check(Username, Password, _) :-
    user(Username, Password), !,
    write('Login Successful'), nl.

check(_, _, N) :-
    write('Login Unsuccessful'), nl,
    N1 is N - 1,
    ( N1 > 0 ->
        write('You have '), write(N1), write(' more attempt(s).'), nl
    ; true ),
    attempt(N1).
