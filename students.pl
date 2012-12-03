/* Kinda breaks the abstraction I had going, but there's no good place for it */
nextSemester(spring, odd).

major(randall, cs).
major(john, cs).
major(curtis, cs).
major(willhoft, cs).
major(philbert, ism).

accepted(randall).
accepted(curtis).
accepted(willhoft).

currentlyTaking(randall, csc312).
currentlyTaking(john, csc140).
currentlyTaking(philbert, csc245).
currentlyTaking(philbert, csc130).

:- dynamic(freeCredits/2). % Indicates that we'll be changing this fact.
freeCredits(randall, 6). /* reports dot com */
freeCredits(curtis, 3).
freeCredits(john, 6).

creditFor(randall, csc130).
creditFor(randall, csc140).
creditFor(randall, csc145).
creditFor(randall, csc180).
creditFor(randall, csc198).
creditFor(randall, csc245).
creditFor(randall, csc250).
creditFor(randall, csc311).
creditFor(philbert, csc140).
creditFor(philbert, csc145).
creditFor(willhoft, _).

/* Abstraction for record-keeping purposes */
creditFor(Student, Class) :-
	waived(Student, Class).
waived(curtis, csc145).
