@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Employee Projection'

define view entity ZC_EMP_MANN
  as projection on ZI_EMP_MANN
{
  @UI.lineItem: [{ position: 10 }]
  key dept_id,

  @UI.lineItem: [{ position: 20 }]
  key emp_id,

  @UI.lineItem: [{ position: 30 }]
  first_name,

  @UI.lineItem: [{ position: 40 }]
  last_name,

  _Department : redirected to parent ZC_DEPT_MANN
}
