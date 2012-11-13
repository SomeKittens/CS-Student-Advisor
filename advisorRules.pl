nextClass(Student, Class) :-
	% It's required for the major
	major(Student, Major),
	required(Major, Class),
	% Student hasn't already taken it
	not(hasClass(Student, Class)),
	% Student has all the prequisites
	hasPrereqs(Student, Class).
	
/**
 * Determines if a student can graduate.
 * If the student can, this prints out a congradulatory statement
 * Else, it returns what courses the student should take next semester
 * 
 * We're skirting around the electives problem.  The group of classes that the
 * student "needs" to graduate will return ALL electives that the student doesn't
 * have credit for.
 * We've got a error when there are more electives offered than the student needs.
 * Perhaps we could track the students' elective credits as well?
 */
nextStep(Student, Season, YearModulo2) :-
	%Find the classes that the student needs to graduate
	nextClass(Student, StudentNextClasses),
	%Determine which of those classes will be offered next semester
	offered(StudentNextClasses, Season, YearModulo2),
	%Classes will be prioritized by rarity
	pruneClassesByCredit(Student, StudentNextClasses),
	% Forces Prolog to write out all the options, then false.
	% Remove if you're ever using nextStep in another function.
	writeln(StudentNextClasses),
	false.
	
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

canGraduate(Student) :-
  

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
