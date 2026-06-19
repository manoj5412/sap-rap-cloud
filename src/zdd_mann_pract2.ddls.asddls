@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'practice for view in view'
@Metadata.ignorePropagatedAnnotations: true
define view entity zdd_mann_pract2 as select from zdb_mann_emp
{
  @Semantics.user.createdBy: true
    created_by,
    
    
    emp_name
    
}
