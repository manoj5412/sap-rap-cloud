@AccessControl.authorizationCheck: #MANDATORY
@Metadata.allowExtensions: true
@ObjectModel.sapObjectNodeType.name: 'ZDISCOUNT_MANN'
@EndUserText.label: '###GENERATED Core Data Service Entity'
define root view entity ZR_DISCOUNT_MANN
  as select from ZDISCOUNT_MANN
{
  key travelid as Travelid,
  carrierid as Carrierid,
  description as Description,
  originalprice as Originalprice,
  discountprice as Discountprice,
  status as Status,
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
