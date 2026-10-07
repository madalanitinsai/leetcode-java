select s.student_id,s.student_name,Su.subject_name ,count(E.student_id) attended_exams
from Students s 
cross join Subjects Su
left join Examinations E
on s.student_id=E.student_id and Su.subject_name=E.subject_name
group by s.student_id,s.student_name,Su.subject_name
order by s.student_id,s.student_name , Su.subject_name ;