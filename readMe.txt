READ ME FILE: Prolog Course Database Project

Jack Sumners
12/07/2017
CS 351 

-Uses cmd (WIN) or terminal (MAC)-
-Prolog Must be installed on your machine before being able to run-
-BinProlog #12.00 Open-sourced under GPL v.3 licence at http://www.gnu.org/licensesgpl-3.0.txt.(C-ified standalone)(with heap GC enabled) (64 bits) -

This Program can be used to lookup the class data based on the individual

The program contains the following data collections
-Departments
-Enrolled Classes
-Passed Classes
-Elective Classes


How to run:

> bp				(bin prolog startup)		
> [sumners_jack].		(runs the file within [])


The following commands will allow you to check the requirements

How to check if the degree requirements are satisfied:
degree_requirements(turing).

How to check if the core requirements are satisfied:
core_requirements(turing).

How to find the electives fulfilled by a student:
electives_fulfilled(turing,cs315).
