@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@Endusertext: {
  Label: '###GENERATED Core Data Service Entity'
}
@Objectmodel: {
  Sapobjectnodetype.Name: 'ZDBMANN_STUD'
}
@AccessControl.authorizationCheck: #MANDATORY
define root view entity ZC_DBMANN_STUD
  provider contract TRANSACTIONAL_QUERY
  as projection on ZR_DBMANN_STUD
  association [1..1] to ZR_DBMANN_STUD as _BaseEntity on $projection.STUROLLNO = _BaseEntity.STUROLLNO
{
  key StuRollno,
  StuName,
  StuFName,
  StuMName,
  StuPhno,
  SchoolName,
  @Semantics: {
    User.Createdby: true
  }
  CreatedBy,
  @Semantics: {
    Systemdatetime.Createdat: true
  }
  CreatedAt,
  @Semantics: {
    User.Lastchangedby: true
  }
  LastChangedBy,
  @Semantics: {
    Systemdatetime.Lastchangedat: true
  }
  LastChangedAt,
  @Semantics: {
    Systemdatetime.Localinstancelastchangedat: true
  }
  LocalLastChangedAt,
  _BaseEntity
}
