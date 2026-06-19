@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Gadget Inventory CDS View'
@Metadata.ignorePropagatedAnnotations: true

define root view entity ZI_GADGET_MM
  as select from ztgadget_mm
{
  key gadget_uuid     as GadgetUUID,
      gadget_name     as GadgetName,
      brand           as Brand,
      price           as Price,
      currency        as Currency,
      last_changed_at as LastChangedAt
}
