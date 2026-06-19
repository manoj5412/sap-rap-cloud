@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@Endusertext: {
  Label: '###GENERATED Core Data Service Entity'
}
@Objectmodel: {
  Sapobjectnodetype.Name: 'ZDISCOUNT_MANN'
}
@AccessControl.authorizationCheck: #MANDATORY
define root view entity ZC_DISCOUNT_MANN
  provider contract TRANSACTIONAL_QUERY
  as projection on ZR_DISCOUNT_MANN
  association [1..1] to ZR_DISCOUNT_MANN as _BaseEntity on $projection.TRAVELID = _BaseEntity.TRAVELID
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
