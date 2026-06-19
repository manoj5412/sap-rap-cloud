@AccessControl.authorizationCheck: #MANDATORY
@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@Endusertext: {
  Label: 'data definition for practice'
}
define view entity ZC_DD_MANN_PRACT
  as select from ZDD_MANN_PRACT
  association [1..1] to ZDD_MANN_PRACT as _BaseEntity on $projection.EMPID = _BaseEntity.EMPID
{
  key EmpID,
  EmpName,
  department,
  salary,
  _BaseEntity
}
