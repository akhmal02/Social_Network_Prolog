% QUESTION 1 : AT LEAST 10 FRIENDS WITH 2-WAY RELATIONSHIP
friend(akhmal, danish).
friend(danish, akhmal).

friend(akhmal, imran).
friend(imran, akhmal).

friend(danish, fariz).
friend(fariz, danish).

friend(imran, syakir).
friend(syakir, imran).

friend(fariz, syakir).
friend(syakir, fariz).

friend(akhmal, lina).
friend(lina, akhmal).

friend(fariz, aniq).
friend(aniq, fariz).

friend(syakir, rina).
friend(rina, syakir).

friend(aniq, lina).
friend(lina, aniq).

friend(rina, siti).
friend(siti, rina).

friend(siti, naqib).
friend(naqib, siti).

friend(akhmal, jisoo).
friend(jisoo, akhmal).

% QUESTION 2A : MUTUAL_FRIEND/3
mutual_friend(X,Y,Mutual):-
    friend(X,Mutual),
    friend(Y,Mutual),
    X\=Y.

% QUESTION 2B : FRIEND_OF_FRIENDS/2
friend_of_friend(X,Y):-
    friend(X,Z),
    friend(Z,Y),
    X\=Y.

% QUESTION 2C : POPULAR/2
popular(X, NumFriends) :-
    findall(Y, friend(X, Y), Friends),
    length(Friends, NumFriends),
    NumFriends >= 4.

% QUESTION 2D : CONNECTED/2
connected(X,Y):-
    friend(X,Y).
connected(X,Y):-
    friend(X,Z),
    connected(Z,Y),
    X\=Y.

% QUESTION 2E : COMMON_INTERESTS/3
interest(akhmal, football).
interest(akhmal, coding).

interest(danish, football).
interest(danish, chess).

interest(imran, coding).
interest(imran, chess).

interest(fariz, music).
interest(fariz, football).

interest(syakir, music).
interest(syakir, coding).

interest(lina, painting).
interest(lina, reading).

interest(aniq, football).
interest(aniq, gaming).

interest(rina, hiking).
interest(rina, cooking).

interest(siti, photography).
interest(siti, traveling).

interest(naqib, football).
interest(naqib, chess).

interest(jisoo, music).
interest(jisoo, gaming).

common_interests(X, Y, Interest) :-
    interest(X, Interest),
    interest(Y, Interest),
    X \= Y,
    X@<Y.

% QUESTION 2F : INFLUENCER/2
influencer(X, Count) :-
    findall(Y, friend_of_friend(X, Y), FoF),
    list_to_set(FoF, UniqueFoF),  % Remove duplicates
    length(UniqueFoF, Count),
    Count >= 5.

% QUESTION 3B :
not_popular(Person, Count) :-
    setof(Friend, friend(Person, Friend), Friends),
    length(Friends, Count),
    \+ popular(Person, Count).
% QUERY :not_popular(Person, Count).

% QUESTION 3C :
% Predicate to check if two individuals are not directly connected, but reachable via a chain of friends
not_connected_to(X, Y) :-
    friend(X, Z),     % X is friends with Z
    friend(Z, Y),     % Z is friends with Y
    X \= Y,           % Ensure X is not the same as Y
    \+ friend(X, Y).
% QUERY :not_connected_to(akhmal,Y).
