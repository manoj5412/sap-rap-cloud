@AccessControl.authorizationCheck: #MANDATORY
@Metadata.allowExtensions: true
@ObjectModel.sapObjectNodeType.name: 'ZDBMANN_STUD2'
@EndUserText.label: '###GENERATED Core Data Service Entity'

define root view entity ZR_DBMANN_STUD2
  as select from zdb_mann_stud2
{
  @Consumption.valueHelpDefinition: [{
    entity: {
      name    : 'ZVH_STUDENT',
      element : 'stu_rollno'
    }
  }]
  key stu_rollno as StuRollno,

  stu_standard as StuStandard,
  stu_marks as StuMarks,
  stu_name as StuName,

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
