@EndUserText.label: 'Maintenance Log CDS'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.ignorePropagatedAnnotations: true

define view entity ZI_MAINT_LOG_MANN
  as select from zdb_maint_log

  association to parent ZI_VEHICLE_MANN as _Vehicle
    on $projection.vehicle_uuid = _Vehicle.vehicle_uuid
{
  key loguuid,
      vehicle_uuid,
      maint_date,
      maint_type,

      @Semantics.amount.currencyCode: 'currency_code'
      cost,

      currency_code,

      status,

      _Vehicle
}
