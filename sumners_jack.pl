% departments %
department(cs, cs111).
department(cs, cs211).
department(cs, cs311).
department(cs, cs315).
department(cs, cs421).
department(cs, cs436).
department(math, math270).
department(math, math242).
department(math, math372).
department(math, math480).
department(physics, phys201).
department(physics, phys301).

% enrolled classes %
enrolled(newton, cs311).
enrolled(newton, cs421).
enrolled(newton, math372).

enrolled(turing, math480).
enrolled(turing, cs421).
enrolled(turing, phys301).

enrolled(galileo, cs436).
enrolled(galileo, cs421).

enrolled(lovelace, phys301).
enrolled(lovelace, math372).


% passed classes %
passed(newton, cs111).
passed(newton, cs211).

passed(lovelace, cs111).
passed(lovelace, cs211).

passed(galileo, cs111).
passed(galileo, cs211).
passed(galileo, cs311).
passed(galileo, math270).
passed(galileo, phys201).
passed(galileo, math242).
passed(galileo, cs436).   

passed(turing, cs111).
passed(turing, cs211).
passed(turing, cs311).
passed(turing, math270).
passed(turing, phys201).
passed(turing, phys301).
passed(turing, math372).


% elective classes %
elective(cs315).
elective(cs436).
elective(math242).
elective(math372).
elective(phys301).


    % checks that a student has passed an elective of each department %
    passed_e_cs(Name) :- passed(Name, cs315); passed(Name,cs436).
    passed_e_math(Name) :- passed(Name, math242); passed(Name, math372).
    passed_e_phys(Name) :- passed(Name, phys301).

    
% checks that one or more elective requirements have been fulfilled %
elective_requirements(Name) :- passed_e_cs(Name), passed_e_math(Name), passed_e_phys(Name). 
    


% checks that a student has passed all core courses %
core_requirements(Name) :- passed(Name,cs111), passed(Name,cs211), passed(Name,cs311), passed(Name,math270), passed(Name,phys201).



% checks that a student has fulfilled the degree requirements %
degree_requirements(Name) :-  elective_requirements(Name), core_requirements(Name).


% lists all electives fulfilled by a student %
electives_fulfilled(Name,Class) :- passed(Name,Class), elective(Class).

