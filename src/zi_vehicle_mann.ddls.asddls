@EndUserText.label: 'Vehicle Root CDS'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.ignorePropagatedAnnotations: true

define root view entity ZI_VEHICLE_MANN
  as select from zdb_vehicle
  composition [0..*] of ZI_MAINT_LOG_MANN as _MaintLog
{
  key vehicle_uuid,
      vehicleid_no,
      modelname,
      last_service_date,

      @Semantics.amount.currencyCode: 'currency_code'
      totalcost,

      currency_code,

      _MaintLog
}
