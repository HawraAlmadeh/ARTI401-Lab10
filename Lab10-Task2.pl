user(hawra, 5705).

login :-
    try(3).

try(0) :-
    write('Sorry, you exceeded the maximum number of attempts, try again later.').


try(Attempts) :-
    Attempts > 0,
    write('Enter username: '),
    read(Username),
    write('Enter password: '),
    read(Password),
    check(Username, Password, Attempts).


check(Username, Password, _) :-
    user(Username, Password),
    write('Login Successful').

check(_, _, Attempts) :-
    write('Login Unsuccessful'), nl,
    NewAttempts is Attempts - 1,
    try(NewAttempts).
