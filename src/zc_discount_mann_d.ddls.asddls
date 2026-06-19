@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@Endusertext: {
  Label: '###GENERATED Core Data Service Entity'
}
@Objectmodel: {
  Sapobjectnodetype.Name: 'ZDISCOUNT_MANN_D'
}
@AccessControl.authorizationCheck: #MANDATORY
define root view entity ZC_DISCOUNT_MANN_D
  provider contract TRANSACTIONAL_QUERY
  as projection on ZR_DISCOUNT_MANN_D
  association [1..1] to ZR_DISCOUNT_MANN_D as _BaseEntity on $projection.TRAVELID = _BaseEntity.TRAVELID
{
  key Travelid,
  Carrierid,
  Description,
  Originalprice,
  Discountprice,
  Status,
  @Semantics: {
    User.Createdby: true
  }
  Createdby,
  @Semantics: {
    Systemdatetime.Createdat: true
  }
  Createdat,
  @Semantics: {
    User.Lastchangedby: true
  }
  Lastchangedby,
  @Semantics: {
    Systemdatetime.Lastchangedat: true
  }
  Lastchangedat,
  @Semantics: {
    Systemdatetime.Localinstancelastchangedat: true
  }
  Locallastchangedat,
  Draftentitycreationdatetime,
  Draftentitylastchangedatetime,
  Draftadministrativedatauuid,
  Draftentityoperationcode,
  Hasactiveentity,
  Draftfieldchanges,
  _BaseEntity
}
