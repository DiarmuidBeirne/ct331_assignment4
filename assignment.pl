%Definitions for isElementInList(El, List)

isElementInList(El, [El | _]).

isElementInList(El, [_ | T]) :- isElementInList(El, T).



%Definitions for reverseList(List, ReversedList)

%insertElementIntoListEnd(El, List, NewList)

%Definitions for mergeLists(List1, List2, Merged)

mergeLists([], MyList2, MyList2).

mergeLists([H | T], MyList2, [H | Merged]) :- mergeLists(T, MyList2, Merged).

reverseList([], []).

reverseList([H | T], RList) :- mergeLists(MinList, [H], RList), reverseList(T, MinList).

insertElementIntoListEnd(El, MyList1, NewList) :- mergeLists(MyList1, [El], NewList).

