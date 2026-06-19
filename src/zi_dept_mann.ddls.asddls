define root view entity ZI_DEPT_MANN
  as select from zdept_mann

  composition [0..*] of ZI_EMP_MANN as _Employee
{
  key dept_id,
      dept_name,
      location,

      _Employee
}
