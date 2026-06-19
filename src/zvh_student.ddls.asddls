@EndUserText.label: 'Student Roll Number Value Help'

define view entity ZVH_STUDENT
  as select from zdb_mann_stud
{
  key stu_rollno,
      stu_name
}
