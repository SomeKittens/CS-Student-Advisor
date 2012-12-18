This project's here because I did it for a class and wanted to show the breadth of my language experience on GitHub.  It's a simple project that (given the history of a student) determines what classes they should take next semester.

Currently, it's only specific to Computer Science students at Roberts Wesleyan College (RWC).  In the future, I plan to make it extensible to other programs/colleges as well.

advisorRules contains the business logic of the program.  The other two files explain themselves.

Running the program
=================
Compile the three files using `[advisorRules, students, classes].`
Queries are in the form `nextStep(*student*, *spring/fall*, *odd/even*).`
For example, to see what I would be taking in Spring 2013, run
`nextStep(randall, spring, odd).`
