% Факты о людях и их поле
person("Вячеслав", male).
person("Ольга", female).
person("Георгий", male).
person("Юлия", female).
person("Иван", male).
person("Валентина", female).
person("Игорь", male).
person("Ксения", female).
person("Николай", male).
person("Ирина", female).
person("Петр", male).
person("Дмитрий", male).
person("Федор", male).
person("Наталья", female).
person("Макар", male).
person("Игнат", male).
person("Игнат", male).


% Дети Вячеслава и Ольги
parent("Вячеслав", "Макар").
parent("Вячеслав", "Игнат").
parent("Вячеслав", "Юлия").
parent("Ольга", "Макар").
parent("Ольга", "Игнат").
parent("Ольга", "Юлия").

parent("Георгий", "Иван").
parent("Юлия", "Иван").
% Дети Ивана и Валентины
parent("Иван", "Николай").
parent("Иван", "Ксения").
parent("Валентина", "Николай").
parent("Валентина", "Ксения").
% Дети Ксении и Петра
parent("Ксения", "Петр").
parent("Ксения", "Дмитрий").
parent("Игорь", "Петр").
parent("Игорь", "Дмитрий").
% Дети Ивана и Валентины
parent("Николай", "Федор").
parent("Николай", "Наталья").
parent("Ирина", "Федор").
parent("Ирина", "Наталья").


% Правила для определения отца, брата и предка
father(X, Y) :-
    parent(X, Y),
    person(X, male).

daughter(X, Y) :-
    parent(X, Y),
    person(X, male),
    person(Y, female).

brother(X, Y) :-
    parent(Z, X),
    parent(Z, Y),
    person(X, male),
    X \= Y.

sister(X, Y) :-
    parent(Z, X),
    parent(Z, Y),
    person(X, female),
    person(Y, female),
    X \= Y.

ancestor(X, Y) :-
    parent(X, Y).

ancestor(X, Y) :-
    parent(X, Z),
    ancestor(Z, Y).

% Запуск функций 
run :-
    nl, write("отец - дочь"), nl,
    daughter(X, Y),
    format('~w отец ~w', [X, Y]), nl,
    fail.
run :-
    nl, write("сестра - сестра"), nl,
    setof((X, Y), sister(X, Y), Sisters),
    member((X, Y), Sisters),
    format('~w сестра ~w', [X, Y]), nl,
    fail.
run :-
    nl, write("Потомки Валентины"), nl,
    ancestor("Валентина", X),
    format('~w потомок Валентины', [X]), nl,
    fail.

run :-
    write("End"), nl.

% Для запуска программы
:- run.
