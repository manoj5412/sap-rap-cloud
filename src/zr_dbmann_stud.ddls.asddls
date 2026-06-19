@AccessControl.authorizationCheck: #MANDATORY
@Metadata.allowExtensions: true
@ObjectModel.sapObjectNodeType.name: 'ZDBMANN_STUD'
@EndUserText.label: '###GENERATED Core Data Service Entity'
define root view entity ZR_DBMANN_STUD
  as select from ZDB_MANN_STUD
{
  key stu_rollno as StuRollno,
  stu_name as StuName,
  stu_f_name as StuFName,
  stu_m_name as StuMName,
  stu_phno as StuPhno,
  school_name as SchoolName,
  @Semantics.user.createdBy: true
  created_by as CreatedBy,
  @Semantics.systemDateTime.createdAt: true
  created_at as CreatedAt,
  @Semantics.user.lastChangedBy: true
  last_changed_by as LastChangedBy,
  @Semantics.systemDateTime.lastChangedAt: true
  last_changed_at as LastChangedAt,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  local_last_changed_at as LocalLastChangedAt
}
