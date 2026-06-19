@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Department Projection'

@UI.headerInfo: {
  typeName: 'Department',
  typeNamePlural: 'Departments',
  title: { value: 'dept_name' }
}

define root view entity ZC_DEPT_MANN
  as projection on ZI_DEPT_MANN
{
  @UI.lineItem: [{ position: 10 }]
  key dept_id,

  @UI.lineItem: [{ position: 20 }]
  dept_name,

  @UI.lineItem: [{ position: 30 }]
  location,

  @UI.facet: [{
    id: 'Employees',
    label: 'Employees',
    type: #LINEITEM_REFERENCE,
    targetElement: '_Employee',
    position: 10
}]
_Employee : redirected to composition child ZC_EMP_MANN
}
