@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Vehicle Projection View'
@Metadata.ignorePropagatedAnnotations: true

define root view entity ZC_VEHICLE_A
  provider contract transactional_query
  as projection on ZI_VEHICLE_A
{
  key vehicle_uuid,
      vehicleid_no,
      modelname,
      last_service_date,

      @Semantics.amount.currencyCode: 'currency_code'
      totalcost,

      currency_code
}
