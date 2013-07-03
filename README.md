Therapists
==========

This app uses the has_many :through relationship. Therapists have many schools through assignments. 

The therapist resource keeps track of a therapist’s name, email, therapist type (speech, physical, occupational), and FTE (1.0 = full time employment). 
A therapist will have several assignments, which consist of caseload (number of students), days of the week therapist is needed, and FTE (in this case, the amount of time the assignment requires). 
The schools resource, which can have several therapists through assignments, keeps track of the school name, level (elementary, middle, high), and the school address.

This relationship setup makes it easy to see all of the assignments (the total caseload population), which can help inform staffing decisions. 
You can look at all therapists and all schools, or you can look at a specific therapist and see all of their assignments and schools.
