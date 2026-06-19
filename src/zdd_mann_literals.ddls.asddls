@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'literals in cds'
@Metadata.ignorePropagatedAnnotations: true
define view entity zdd_mann_literals as select from zdb_mann_emp
{
    key emp_id,
    emp_name,
    department,
    
    'ACTIVE' as StatusText
}
