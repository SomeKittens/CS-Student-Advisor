major(randall, cs).
major(john, cs).
major(philbert, ism).

accepted(randall).

currentlyTaking(randall, csc312).
currentlyTaking(john, csc140).
currentlyTaking(philbert, csc245).
currentlyTaking(philbert, csc130).

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

/* Abstraction for record-keeping purposes */
waived(Student, Class) :-
	creditFor(Student, Class).
