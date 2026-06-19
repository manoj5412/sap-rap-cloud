@AccessControl.authorizationCheck: #MANDATORY
@Metadata.allowExtensions: true
@ObjectModel.sapObjectNodeType.name: 'ZSTUDENT_DB1'
@EndUserText.label: '###GENERATED Core Data Service Entity'
define root view entity ZR_STUDENT_DB1
  as select from ZSTUDENT_DB1
{
  key student_id as StudentID,
  student_name as StudentName,
  department as Department,
  age as Age,
  city as City,
  @Semantics.user.createdBy: true
  created_by as CreatedBy,
  @Semantics.systemDateTime.createdAt: true
  created_at as CreatedAt,
  @Semantics.user.localInstanceLastChangedBy: true
  local_last_changed_by as LocalLastChangedBy,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  local_last_changed_at as LocalLastChangedAt,
  @Semantics.systemDateTime.lastChangedAt: true
  last_changed_at as LastChangedAt
}
