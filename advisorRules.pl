nextClass(Student, Class) :-
	class(Class),
	/* It's required for the major */
	major(Student, Major),	
	required(Major, Class),
	/* Student hasn't already taken it */
	not(hasClass(Student, Class)),
	/* Student has all the prequisites */
	hasPrereqs(Student, Class),
	/* Get the name of the class and prints it */
	className(Class, Y),
	write(Y).
	
/* Checks to see if the student has the required classes to take Class. */
hasPrereqs(Student, Class) :-
	(prereq(Pre, Class) -> 
		hasClass(Student, Pre);
	true).
    
/* Checks to see if a student "has" credit for a class 
   We assume they'll pass their current class */
hasClass(Student, Class) :-
	(creditFor(Student, Class);
	currentlyTaking(Student, Class)).
hasClass(Student, ClassList) :-
	/* Splits up the list into:
	H = the first element of the list as an atom
	T = The rest of the list elements as a list
	(if there's only one list element, T is equal to []) */
	[H|T] = ClassList,
	hasClass(Student, H),
	/* if T isn't equal to [], recursively check the rest of the list's elements */
	(T \= [] -> hasClass(Student, T);true).

/* Which classes are required for which major */
/* NOTE: required/1 does not include electives */
required(_, csc140).
required(_, csc145).
required(_, csc198).
required(_, csc245).
required(_, csc250).
required(_, csc345).
required(_, csc398).

required(cs, csc311).

required(ism, csc130).
required(ism, csc201).
required(ism, csc310).
/* This requires every ISM major to take all electives.
How can I only require one? */
required(ism, Class) :-
	elective(Class).

/*Need to work out:
-Electives
-Internship OR Senior Project

required(X, Y) :-
*/
