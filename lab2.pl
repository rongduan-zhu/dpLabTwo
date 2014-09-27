%% Question 1
replace(E1, L1, E2, L2) :-
    samelength2(L1, L2),
    append(Head, [E1 | Tail], L1),
    append(Head, [E2 | Tail], L2).

%% Question 2
zip([], [], []).
zip([A | As], [B | Bs], [A-B | ABs]) :-
    samelength3(As, Bs, ABs),
    zip(As, Bs, ABs).

%% Question 3
sublist([X | Xs], [_ | Ys]) :-
    append(_, [X | YTail], Ys),


/* Helper functions */
%% samelength/2
%% calculates if two lists are of the same length
samelength2([], []).
samelength2([_ | Xs], [_ | Ys]) :-
    samelength2(Xs, Ys).

%% samelength/3
%% calculates if three lists are of the same length
samelength3([], [], []).
samelength3([_ | Xs], [_ | Ys], [_ | Zs]) :-
    samelength3(Xs, Ys, Zs).
