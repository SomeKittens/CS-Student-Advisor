nextClass(Student, Class) :-
	class(Class),
	% It's required for the major
	major(Student, Major),	
	required(Major, Class),
	% Student hasn't already taken it
	not(hasClass(Student, Class)),
	% Student has all the prequisites
	hasPrereqs(Student, Class),
	pruneClassesByCredit(Student, Class),
	% Get the name of the class and prints it 
	className(Class, Y),
	writeln(Y),
	% Forces Prolog to write out all the options, then false.
	% Remove if you're ever using nextClass in another function.
	fail.

/* hasPrereqs/2 and hasClass/2 created using suggestions from mndrix 
http://stackoverflow.com/a/13095799/1216976	*/
/* Checks to see if the student has the required classes to take Class. */
hasPrereqs(Student, Class) :-
  prereq(Class, Pres),
  forall(member(Pre, Pres), hasClass(Student, Pre)).
/* Checks to see if a student "has" credit for a class 
   We assume they'll pass their current class */
hasClass(Student, Class) :-
  (creditFor(Student, Class);
  currentlyTaking(Student, Class)).

/* Takes a set of classes and only returns the ones
that the student can fit in their schedule */
pruneClassesByCredit(Student, Class) :-
	freeCredits(Student, SCredits),
	credits(Class, CCredits),
	(SCredits >= CCredits ->
		/* Modify student's freeCredits */
		retract(freeCredits(Student, SCredits)),
		RemainingCredits is SCredits - CCredits,
		assert(freeCredits(Student, RemainingCredits));
	false).
	

/* Which classes are required for which major */
/* NOTE: required/2 does not include electives */
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
required(cs, Class) :-
	elective(Class).

/*Need to work out:
-Electives
-Internship OR Senior Project

required(X, Y) :-
*/
