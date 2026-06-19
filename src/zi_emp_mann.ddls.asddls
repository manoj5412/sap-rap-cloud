@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Employee'
@Metadata.ignorePropagatedAnnotations: true

define view entity ZI_EMP_MANN
  as select from zemp_mann

  association to parent ZI_DEPT_mann as _Department
    on $projection.dept_id = _Department.dept_id
{
  key dept_id,
  key emp_id,
      first_name,
      last_name,

      _Department
}
