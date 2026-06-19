@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'new vechile cds view'
@Metadata.ignorePropagatedAnnotations: true

define root view entity ZI_VEHICLE_A
  as select from zdb_vehicle
  composition [0..*] of ZI_MAINT_LOG_A as _Maintenance
{
  key vehicle_uuid,
      vehicleid_no,
      modelname,
      last_service_date,

      @Semantics.amount.currencyCode: 'currency_code'
      totalcost,

      currency_code,

      _Maintenance
}
