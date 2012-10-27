/* most of the CSC classes Roberts offers */
class(csc101).
class(csc130).
class(csc140).
class(csc145).
class(csc180).
class(csc198).
class(csc201).
class(csc207).
class(csc215).
class(csc245).
class(csc250).
class(csc306).
class(csc310).
class(csc311).
class(csc312).
class(csc320).
class(csc345).
class(csc398).
class(csc402).
class(csc403).
/*error: class not found*/
class(csc404).
class(csc406).
class(csc411).
class(csc449).
class(csc450).
class(csc495).
class(csc498).

/* Full names of the class */
className(csc101, 'Introduction to Computers & Applications').
className(csc130, 'Intro to MIS').
className(csc140, 'Intro to CS').
className(csc145, 'Intro to OOP').
className(csc180, 'C/C++ Programming').
className(csc198, 'Intro to Computer Professions').
className(csc201, 'HCI: Issues and Methods').
className(csc207, 'Applied Technologies').
className(csc215, 'Web Design I').
className(csc245, 'Data Structures').
className(csc250, 'Computer Organization and Architecture').
className(csc306, 'Information Security').
className(csc310, 'Database Management Systems').
className(csc311, 'Sequential & Parallel Algorithms').
className(csc312, 'Artificial Intelligence').
className(csc320, 'Special Topics: Computer Science').
className(csc345, 'Software Engineering').
className(csc398, 'Intro to Research in Computer Sciences').
className(csc402, 'Operating Systems').
className(csc403, 'Programming Languages').
className(csc404, 'Computer Networks & Distributed Systems').
className(csc406, 'Computer Forensics').
className(csc411, 'Computer Graphics').
className(csc449, 'Internship Preparation').
className(csc450, 'Computer Science Internship').
className(csc495, 'Independent Study').
className(csc498, 'Senior Project').

/* 300/400 level electives */
elective(csc306).
elective(csc310).
elective(csc312).
elective(csc402).
elective(csc403).
elective(csc404).
elective(csc406).
elective(csc411).
   
/* Prerequisites */
/* INCOMPLETE, need to figure out how to multiple prereq */
prereq(csc140, csc145).
prereq(csc140, csc180).
prereq(csc140, csc198).
prereq([csc140, csc130], csc201).
prereq(csc145, csc201).
prereq(csc101, csc207).
prereq(csc145, csc245).
prereq(csc145, csc250).
prereq(csc306, csc140).
prereq(csc245, csc310).
prereq(csc245, csc311).
prereq(csc245, csc312).
prereq(csc245, csc345).
prereq([csc250, csc245], csc398).
prereq(csc250, csc402).
prereq(csc245, csc403).
prereq([csc145, csc250], csc404).
prereq([csc101, csc140, csc250], csc406).
prereq([csc245, csc250], csc411).
