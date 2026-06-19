@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@EndUserText: {
  label: '###GENERATED Core Data Service Entity'
}
@ObjectModel: {
  sapObjectNodeType.name: 'ZDBMANN_STUD2'
}
@AccessControl.authorizationCheck: #MANDATORY
define root view entity ZC_DBMANN_STUD2
  provider contract transactional_query
  as projection on ZR_DBMANN_STUD2
  association [1..1] to ZR_DBMANN_STUD2 as _BaseEntity on $projection.StuRollno = _BaseEntity.StuRollno
{
  @Consumption.valueHelpDefinition: [{
    entity: {
      name    : 'ZVH_STUDENT',
      element : 'stu_rollno'
    }
  }]
  key StuRollno,

  StuStandard,
  StuMarks,
  StuName,
  @Semantics: {
    user.createdBy: true
  }
  CreatedBy,
  @Semantics: {
    systemDateTime.createdAt: true
  }
  CreatedAt,
  @Semantics: {
    user.lastChangedBy: true
  }
  LastChangedBy,
  @Semantics: {
    systemDateTime.lastChangedAt: true
  }
  LastChangedAt,
  @Semantics: {
    systemDateTime.localInstanceLastChangedAt: true
  }
  LocalLastChangedAt,
  _BaseEntity
}
