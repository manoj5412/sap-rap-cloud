@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Maintenance Projection View'
@Metadata.ignorePropagatedAnnotations: true

define view entity ZC_MAINT_LOG_A
  as projection on ZI_MAINT_LOG_A
{
  key loguuid,
      vehicle_uuid,
      maint_date,
      maint_type,

      @Semantics.amount.currencyCode: 'currency_code'
      cost,

      currency_code,
      status
}
