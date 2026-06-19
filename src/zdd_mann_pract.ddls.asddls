@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'data definition for practice'
@Metadata.ignorePropagatedAnnotations: true
define view entity zdd_mann_pract as select from zdb_mann_emp
{
  key emp_id as EmpID,
  emp_name as EmpName,
  department,
  salary
  
}
